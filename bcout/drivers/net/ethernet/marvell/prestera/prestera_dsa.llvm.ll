; ModuleID = '../bcout/drivers/net/ethernet/marvell/prestera/prestera_dsa.llvm.bc'
source_filename = "drivers/net/ethernet/marvell/prestera/prestera_dsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.prestera_dsa = type { %struct.prestera_dsa_vlan, i32, i32 }
%struct.prestera_dsa_vlan = type { i16, i8, i8, i8 }

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @prestera_dsa_parse(%struct.prestera_dsa* %dsa, i8* %dsa_buf) #0 !dbg !22 {
entry:
  %retval = alloca i32, align 4
  %dsa.addr = alloca %struct.prestera_dsa*, align 8
  %dsa_buf.addr = alloca i8*, align 8
  %dsa_words = alloca i32*, align 8
  %cmd = alloca i32, align 4
  %words = alloca [4 x i32], align 16
  %field = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp108 = alloca i64, align 8
  %tmp127 = alloca i64, align 8
  %tmp146 = alloca i64, align 8
  %tmp165 = alloca i64, align 8
  %tmp181 = alloca i64, align 8
  %tmp197 = alloca i64, align 8
  %tmp214 = alloca i64, align 8
  %tmp231 = alloca i64, align 8
  %tmp253 = alloca i64, align 8
  %tmp272 = alloca i64, align 8
  %tmp288 = alloca i64, align 8
  %tmp304 = alloca i64, align 8
  %tmp322 = alloca i64, align 8
  %tmp338 = alloca i64, align 8
  %tmp355 = alloca i64, align 8
  store %struct.prestera_dsa* %dsa, %struct.prestera_dsa** %dsa.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.prestera_dsa** %dsa.addr, metadata !51, metadata !DIExpression()), !dbg !52
  store i8* %dsa_buf, i8** %dsa_buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dsa_buf.addr, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32** %dsa_words, metadata !55, metadata !DIExpression()), !dbg !56
  %0 = load i8*, i8** %dsa_buf.addr, align 8, !dbg !57
  %1 = bitcast i8* %0 to i32*, !dbg !58
  store i32* %1, i32** %dsa_words, align 8, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [4 x i32]* %words, metadata !61, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %field, metadata !66, metadata !DIExpression()), !dbg !67
  %2 = load i32*, i32** %dsa_words, align 8, !dbg !68
  %arrayidx = getelementptr i32, i32* %2, i64 0, !dbg !68
  %3 = load i32, i32* %arrayidx, align 4, !dbg !68
  %4 = call i1 @llvm.is.constant.i32(i32 %3), !dbg !68
  br i1 %4, label %cond.true, label %cond.false, !dbg !68

cond.true:                                        ; preds = %entry
  %5 = load i32*, i32** %dsa_words, align 8, !dbg !68
  %arrayidx1 = getelementptr i32, i32* %5, i64 0, !dbg !68
  %6 = load i32, i32* %arrayidx1, align 4, !dbg !68
  %and = and i32 %6, 255, !dbg !68
  %shl = shl i32 %and, 24, !dbg !68
  %7 = load i32*, i32** %dsa_words, align 8, !dbg !68
  %arrayidx2 = getelementptr i32, i32* %7, i64 0, !dbg !68
  %8 = load i32, i32* %arrayidx2, align 4, !dbg !68
  %and3 = and i32 %8, 65280, !dbg !68
  %shl4 = shl i32 %and3, 8, !dbg !68
  %or = or i32 %shl, %shl4, !dbg !68
  %9 = load i32*, i32** %dsa_words, align 8, !dbg !68
  %arrayidx5 = getelementptr i32, i32* %9, i64 0, !dbg !68
  %10 = load i32, i32* %arrayidx5, align 4, !dbg !68
  %and6 = and i32 %10, 16711680, !dbg !68
  %shr = lshr i32 %and6, 8, !dbg !68
  %or7 = or i32 %or, %shr, !dbg !68
  %11 = load i32*, i32** %dsa_words, align 8, !dbg !68
  %arrayidx8 = getelementptr i32, i32* %11, i64 0, !dbg !68
  %12 = load i32, i32* %arrayidx8, align 4, !dbg !68
  %and9 = and i32 %12, -16777216, !dbg !68
  %shr10 = lshr i32 %and9, 24, !dbg !68
  %or11 = or i32 %or7, %shr10, !dbg !68
  br label %cond.end, !dbg !68

cond.false:                                       ; preds = %entry
  %13 = load i32*, i32** %dsa_words, align 8, !dbg !68
  %arrayidx12 = getelementptr i32, i32* %13, i64 0, !dbg !68
  %14 = load i32, i32* %arrayidx12, align 4, !dbg !68
  %call = call i32 @__fswab32(i32 %14) #5, !dbg !68
  br label %cond.end, !dbg !68

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or11, %cond.true ], [ %call, %cond.false ], !dbg !68
  %arrayidx13 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !69
  store i32 %cond, i32* %arrayidx13, align 16, !dbg !70
  %15 = load i32*, i32** %dsa_words, align 8, !dbg !71
  %arrayidx14 = getelementptr i32, i32* %15, i64 1, !dbg !71
  %16 = load i32, i32* %arrayidx14, align 4, !dbg !71
  %17 = call i1 @llvm.is.constant.i32(i32 %16), !dbg !71
  br i1 %17, label %cond.true15, label %cond.false31, !dbg !71

cond.true15:                                      ; preds = %cond.end
  %18 = load i32*, i32** %dsa_words, align 8, !dbg !71
  %arrayidx16 = getelementptr i32, i32* %18, i64 1, !dbg !71
  %19 = load i32, i32* %arrayidx16, align 4, !dbg !71
  %and17 = and i32 %19, 255, !dbg !71
  %shl18 = shl i32 %and17, 24, !dbg !71
  %20 = load i32*, i32** %dsa_words, align 8, !dbg !71
  %arrayidx19 = getelementptr i32, i32* %20, i64 1, !dbg !71
  %21 = load i32, i32* %arrayidx19, align 4, !dbg !71
  %and20 = and i32 %21, 65280, !dbg !71
  %shl21 = shl i32 %and20, 8, !dbg !71
  %or22 = or i32 %shl18, %shl21, !dbg !71
  %22 = load i32*, i32** %dsa_words, align 8, !dbg !71
  %arrayidx23 = getelementptr i32, i32* %22, i64 1, !dbg !71
  %23 = load i32, i32* %arrayidx23, align 4, !dbg !71
  %and24 = and i32 %23, 16711680, !dbg !71
  %shr25 = lshr i32 %and24, 8, !dbg !71
  %or26 = or i32 %or22, %shr25, !dbg !71
  %24 = load i32*, i32** %dsa_words, align 8, !dbg !71
  %arrayidx27 = getelementptr i32, i32* %24, i64 1, !dbg !71
  %25 = load i32, i32* %arrayidx27, align 4, !dbg !71
  %and28 = and i32 %25, -16777216, !dbg !71
  %shr29 = lshr i32 %and28, 24, !dbg !71
  %or30 = or i32 %or26, %shr29, !dbg !71
  br label %cond.end34, !dbg !71

cond.false31:                                     ; preds = %cond.end
  %26 = load i32*, i32** %dsa_words, align 8, !dbg !71
  %arrayidx32 = getelementptr i32, i32* %26, i64 1, !dbg !71
  %27 = load i32, i32* %arrayidx32, align 4, !dbg !71
  %call33 = call i32 @__fswab32(i32 %27) #5, !dbg !71
  br label %cond.end34, !dbg !71

cond.end34:                                       ; preds = %cond.false31, %cond.true15
  %cond35 = phi i32 [ %or30, %cond.true15 ], [ %call33, %cond.false31 ], !dbg !71
  %arrayidx36 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 1, !dbg !72
  store i32 %cond35, i32* %arrayidx36, align 4, !dbg !73
  %28 = load i32*, i32** %dsa_words, align 8, !dbg !74
  %arrayidx37 = getelementptr i32, i32* %28, i64 2, !dbg !74
  %29 = load i32, i32* %arrayidx37, align 4, !dbg !74
  %30 = call i1 @llvm.is.constant.i32(i32 %29), !dbg !74
  br i1 %30, label %cond.true38, label %cond.false54, !dbg !74

cond.true38:                                      ; preds = %cond.end34
  %31 = load i32*, i32** %dsa_words, align 8, !dbg !74
  %arrayidx39 = getelementptr i32, i32* %31, i64 2, !dbg !74
  %32 = load i32, i32* %arrayidx39, align 4, !dbg !74
  %and40 = and i32 %32, 255, !dbg !74
  %shl41 = shl i32 %and40, 24, !dbg !74
  %33 = load i32*, i32** %dsa_words, align 8, !dbg !74
  %arrayidx42 = getelementptr i32, i32* %33, i64 2, !dbg !74
  %34 = load i32, i32* %arrayidx42, align 4, !dbg !74
  %and43 = and i32 %34, 65280, !dbg !74
  %shl44 = shl i32 %and43, 8, !dbg !74
  %or45 = or i32 %shl41, %shl44, !dbg !74
  %35 = load i32*, i32** %dsa_words, align 8, !dbg !74
  %arrayidx46 = getelementptr i32, i32* %35, i64 2, !dbg !74
  %36 = load i32, i32* %arrayidx46, align 4, !dbg !74
  %and47 = and i32 %36, 16711680, !dbg !74
  %shr48 = lshr i32 %and47, 8, !dbg !74
  %or49 = or i32 %or45, %shr48, !dbg !74
  %37 = load i32*, i32** %dsa_words, align 8, !dbg !74
  %arrayidx50 = getelementptr i32, i32* %37, i64 2, !dbg !74
  %38 = load i32, i32* %arrayidx50, align 4, !dbg !74
  %and51 = and i32 %38, -16777216, !dbg !74
  %shr52 = lshr i32 %and51, 24, !dbg !74
  %or53 = or i32 %or49, %shr52, !dbg !74
  br label %cond.end57, !dbg !74

cond.false54:                                     ; preds = %cond.end34
  %39 = load i32*, i32** %dsa_words, align 8, !dbg !74
  %arrayidx55 = getelementptr i32, i32* %39, i64 2, !dbg !74
  %40 = load i32, i32* %arrayidx55, align 4, !dbg !74
  %call56 = call i32 @__fswab32(i32 %40) #5, !dbg !74
  br label %cond.end57, !dbg !74

cond.end57:                                       ; preds = %cond.false54, %cond.true38
  %cond58 = phi i32 [ %or53, %cond.true38 ], [ %call56, %cond.false54 ], !dbg !74
  %arrayidx59 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 2, !dbg !75
  store i32 %cond58, i32* %arrayidx59, align 8, !dbg !76
  %41 = load i32*, i32** %dsa_words, align 8, !dbg !77
  %arrayidx60 = getelementptr i32, i32* %41, i64 3, !dbg !77
  %42 = load i32, i32* %arrayidx60, align 4, !dbg !77
  %43 = call i1 @llvm.is.constant.i32(i32 %42), !dbg !77
  br i1 %43, label %cond.true61, label %cond.false77, !dbg !77

cond.true61:                                      ; preds = %cond.end57
  %44 = load i32*, i32** %dsa_words, align 8, !dbg !77
  %arrayidx62 = getelementptr i32, i32* %44, i64 3, !dbg !77
  %45 = load i32, i32* %arrayidx62, align 4, !dbg !77
  %and63 = and i32 %45, 255, !dbg !77
  %shl64 = shl i32 %and63, 24, !dbg !77
  %46 = load i32*, i32** %dsa_words, align 8, !dbg !77
  %arrayidx65 = getelementptr i32, i32* %46, i64 3, !dbg !77
  %47 = load i32, i32* %arrayidx65, align 4, !dbg !77
  %and66 = and i32 %47, 65280, !dbg !77
  %shl67 = shl i32 %and66, 8, !dbg !77
  %or68 = or i32 %shl64, %shl67, !dbg !77
  %48 = load i32*, i32** %dsa_words, align 8, !dbg !77
  %arrayidx69 = getelementptr i32, i32* %48, i64 3, !dbg !77
  %49 = load i32, i32* %arrayidx69, align 4, !dbg !77
  %and70 = and i32 %49, 16711680, !dbg !77
  %shr71 = lshr i32 %and70, 8, !dbg !77
  %or72 = or i32 %or68, %shr71, !dbg !77
  %50 = load i32*, i32** %dsa_words, align 8, !dbg !77
  %arrayidx73 = getelementptr i32, i32* %50, i64 3, !dbg !77
  %51 = load i32, i32* %arrayidx73, align 4, !dbg !77
  %and74 = and i32 %51, -16777216, !dbg !77
  %shr75 = lshr i32 %and74, 24, !dbg !77
  %or76 = or i32 %or72, %shr75, !dbg !77
  br label %cond.end80, !dbg !77

cond.false77:                                     ; preds = %cond.end57
  %52 = load i32*, i32** %dsa_words, align 8, !dbg !77
  %arrayidx78 = getelementptr i32, i32* %52, i64 3, !dbg !77
  %53 = load i32, i32* %arrayidx78, align 4, !dbg !77
  %call79 = call i32 @__fswab32(i32 %53) #5, !dbg !77
  br label %cond.end80, !dbg !77

cond.end80:                                       ; preds = %cond.false77, %cond.true61
  %cond81 = phi i32 [ %or76, %cond.true61 ], [ %call79, %cond.false77 ], !dbg !77
  %arrayidx82 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 3, !dbg !78
  store i32 %cond81, i32* %arrayidx82, align 4, !dbg !79
  br label %do.body, !dbg !80

do.body:                                          ; preds = %cond.end80
  br label %do.end, !dbg !83

do.end:                                           ; preds = %do.body
  br label %do.body83, !dbg !80

do.body83:                                        ; preds = %do.end
  br label %do.end84, !dbg !85

do.end84:                                         ; preds = %do.body83
  br label %do.body85, !dbg !80

do.body85:                                        ; preds = %do.end84
  br label %do.end86, !dbg !87

do.end86:                                         ; preds = %do.body85
  br label %do.body87, !dbg !80

do.body87:                                        ; preds = %do.end86
  br label %do.end88, !dbg !89

do.end88:                                         ; preds = %do.body87
  br label %do.body89, !dbg !80

do.body89:                                        ; preds = %do.end88
  br label %do.end90, !dbg !91

do.end90:                                         ; preds = %do.body89
  %arrayidx91 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !93
  %54 = load i32, i32* %arrayidx91, align 16, !dbg !93
  %conv = zext i32 %54 to i64, !dbg !93
  %and92 = and i64 %conv, 3221225472, !dbg !93
  %shr93 = lshr i64 %and92, 30, !dbg !93
  store i64 %shr93, i64* %tmp, align 8, !dbg !93
  %55 = load i64, i64* %tmp, align 8, !dbg !93
  %conv94 = trunc i64 %55 to i32, !dbg !94
  store i32 %conv94, i32* %cmd, align 4, !dbg !95
  %56 = load i32, i32* %cmd, align 4, !dbg !96
  %cmp = icmp ne i32 %56, 0, !dbg !96
  %lnot = xor i1 %cmp, true, !dbg !96
  %lnot96 = xor i1 %lnot, true, !dbg !96
  %lnot.ext = zext i1 %lnot96 to i32, !dbg !96
  %conv97 = sext i32 %lnot.ext to i64, !dbg !96
  %tobool = icmp ne i64 %conv97, 0, !dbg !96
  br i1 %tobool, label %if.then, label %if.end, !dbg !98

if.then:                                          ; preds = %do.end90
  store i32 -22, i32* %retval, align 4, !dbg !99
  br label %return, !dbg !99

if.end:                                           ; preds = %do.end90
  br label %do.body98, !dbg !100

do.body98:                                        ; preds = %if.end
  br label %do.end99, !dbg !104

do.end99:                                         ; preds = %do.body98
  br label %do.body100, !dbg !100

do.body100:                                       ; preds = %do.end99
  br label %do.end101, !dbg !106

do.end101:                                        ; preds = %do.body100
  br label %do.body102, !dbg !100

do.body102:                                       ; preds = %do.end101
  br label %do.end103, !dbg !108

do.end103:                                        ; preds = %do.body102
  br label %do.body104, !dbg !100

do.body104:                                       ; preds = %do.end103
  br label %do.end105, !dbg !110

do.end105:                                        ; preds = %do.body104
  br label %do.body106, !dbg !100

do.body106:                                       ; preds = %do.end105
  br label %do.end107, !dbg !112

do.end107:                                        ; preds = %do.body106
  %arrayidx109 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !114
  %57 = load i32, i32* %arrayidx109, align 16, !dbg !114
  %conv110 = zext i32 %57 to i64, !dbg !114
  %and111 = and i64 %conv110, 4096, !dbg !114
  %shr112 = lshr i64 %and111, 12, !dbg !114
  store i64 %shr112, i64* %tmp108, align 8, !dbg !114
  %58 = load i64, i64* %tmp108, align 8, !dbg !114
  %cmp113 = icmp eq i64 %58, 0, !dbg !115
  br i1 %cmp113, label %if.then115, label %if.end116, !dbg !116

if.then115:                                       ; preds = %do.end107
  store i32 -22, i32* %retval, align 4, !dbg !117
  br label %return, !dbg !117

if.end116:                                        ; preds = %do.end107
  br label %do.body117, !dbg !118

do.body117:                                       ; preds = %if.end116
  br label %do.end118, !dbg !122

do.end118:                                        ; preds = %do.body117
  br label %do.body119, !dbg !118

do.body119:                                       ; preds = %do.end118
  br label %do.end120, !dbg !124

do.end120:                                        ; preds = %do.body119
  br label %do.body121, !dbg !118

do.body121:                                       ; preds = %do.end120
  br label %do.end122, !dbg !126

do.end122:                                        ; preds = %do.body121
  br label %do.body123, !dbg !118

do.body123:                                       ; preds = %do.end122
  br label %do.end124, !dbg !128

do.end124:                                        ; preds = %do.body123
  br label %do.body125, !dbg !118

do.body125:                                       ; preds = %do.end124
  br label %do.end126, !dbg !130

do.end126:                                        ; preds = %do.body125
  %arrayidx128 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 1, !dbg !132
  %59 = load i32, i32* %arrayidx128, align 4, !dbg !132
  %conv129 = zext i32 %59 to i64, !dbg !132
  %and130 = and i64 %conv129, 2147483648, !dbg !132
  %shr131 = lshr i64 %and130, 31, !dbg !132
  store i64 %shr131, i64* %tmp127, align 8, !dbg !132
  %60 = load i64, i64* %tmp127, align 8, !dbg !132
  %cmp132 = icmp eq i64 %60, 0, !dbg !133
  br i1 %cmp132, label %if.then134, label %if.end135, !dbg !134

if.then134:                                       ; preds = %do.end126
  store i32 -22, i32* %retval, align 4, !dbg !135
  br label %return, !dbg !135

if.end135:                                        ; preds = %do.end126
  br label %do.body136, !dbg !136

do.body136:                                       ; preds = %if.end135
  br label %do.end137, !dbg !140

do.end137:                                        ; preds = %do.body136
  br label %do.body138, !dbg !136

do.body138:                                       ; preds = %do.end137
  br label %do.end139, !dbg !142

do.end139:                                        ; preds = %do.body138
  br label %do.body140, !dbg !136

do.body140:                                       ; preds = %do.end139
  br label %do.end141, !dbg !144

do.end141:                                        ; preds = %do.body140
  br label %do.body142, !dbg !136

do.body142:                                       ; preds = %do.end141
  br label %do.end143, !dbg !146

do.end143:                                        ; preds = %do.body142
  br label %do.body144, !dbg !136

do.body144:                                       ; preds = %do.end143
  br label %do.end145, !dbg !148

do.end145:                                        ; preds = %do.body144
  %arrayidx147 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 2, !dbg !150
  %61 = load i32, i32* %arrayidx147, align 8, !dbg !150
  %conv148 = zext i32 %61 to i64, !dbg !150
  %and149 = and i64 %conv148, 2147483648, !dbg !150
  %shr150 = lshr i64 %and149, 31, !dbg !150
  store i64 %shr150, i64* %tmp146, align 8, !dbg !150
  %62 = load i64, i64* %tmp146, align 8, !dbg !150
  %cmp151 = icmp eq i64 %62, 0, !dbg !151
  br i1 %cmp151, label %if.then153, label %if.end154, !dbg !152

if.then153:                                       ; preds = %do.end145
  store i32 -22, i32* %retval, align 4, !dbg !153
  br label %return, !dbg !153

if.end154:                                        ; preds = %do.end145
  br label %do.body155, !dbg !154

do.body155:                                       ; preds = %if.end154
  br label %do.end156, !dbg !157

do.end156:                                        ; preds = %do.body155
  br label %do.body157, !dbg !154

do.body157:                                       ; preds = %do.end156
  br label %do.end158, !dbg !159

do.end158:                                        ; preds = %do.body157
  br label %do.body159, !dbg !154

do.body159:                                       ; preds = %do.end158
  br label %do.end160, !dbg !161

do.end160:                                        ; preds = %do.body159
  br label %do.body161, !dbg !154

do.body161:                                       ; preds = %do.end160
  br label %do.end162, !dbg !163

do.end162:                                        ; preds = %do.body161
  br label %do.body163, !dbg !154

do.body163:                                       ; preds = %do.end162
  br label %do.end164, !dbg !165

do.end164:                                        ; preds = %do.body163
  %arrayidx166 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 3, !dbg !167
  %63 = load i32, i32* %arrayidx166, align 4, !dbg !167
  %conv167 = zext i32 %63 to i64, !dbg !167
  %and168 = and i64 %conv167, 2013265920, !dbg !167
  %shr169 = lshr i64 %and168, 27, !dbg !167
  store i64 %shr169, i64* %tmp165, align 8, !dbg !167
  %64 = load i64, i64* %tmp165, align 8, !dbg !167
  %conv170 = trunc i64 %64 to i32, !dbg !168
  store i32 %conv170, i32* %field, align 4, !dbg !169
  br label %do.body171, !dbg !170

do.body171:                                       ; preds = %do.end164
  br label %do.end172, !dbg !173

do.end172:                                        ; preds = %do.body171
  br label %do.body173, !dbg !170

do.body173:                                       ; preds = %do.end172
  br label %do.end174, !dbg !175

do.end174:                                        ; preds = %do.body173
  br label %do.body175, !dbg !170

do.body175:                                       ; preds = %do.end174
  br label %do.end176, !dbg !177

do.end176:                                        ; preds = %do.body175
  br label %do.body177, !dbg !170

do.body177:                                       ; preds = %do.end176
  br label %do.end178, !dbg !179

do.end178:                                        ; preds = %do.body177
  br label %do.body179, !dbg !170

do.body179:                                       ; preds = %do.end178
  br label %do.end180, !dbg !181

do.end180:                                        ; preds = %do.body179
  %arrayidx182 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !183
  %65 = load i32, i32* %arrayidx182, align 16, !dbg !183
  %conv183 = zext i32 %65 to i64, !dbg !183
  %and184 = and i64 %conv183, 536870912, !dbg !183
  %shr185 = lshr i64 %and184, 29, !dbg !183
  store i64 %shr185, i64* %tmp181, align 8, !dbg !183
  %66 = load i64, i64* %tmp181, align 8, !dbg !183
  %tobool186 = icmp ne i64 %66, 0, !dbg !184
  %67 = load %struct.prestera_dsa*, %struct.prestera_dsa** %dsa.addr, align 8, !dbg !185
  %vlan = getelementptr inbounds %struct.prestera_dsa, %struct.prestera_dsa* %67, i32 0, i32 0, !dbg !186
  %is_tagged = getelementptr inbounds %struct.prestera_dsa_vlan, %struct.prestera_dsa_vlan* %vlan, i32 0, i32 3, !dbg !187
  %frombool = zext i1 %tobool186 to i8, !dbg !188
  store i8 %frombool, i8* %is_tagged, align 4, !dbg !188
  br label %do.body187, !dbg !189

do.body187:                                       ; preds = %do.end180
  br label %do.end188, !dbg !192

do.end188:                                        ; preds = %do.body187
  br label %do.body189, !dbg !189

do.body189:                                       ; preds = %do.end188
  br label %do.end190, !dbg !194

do.end190:                                        ; preds = %do.body189
  br label %do.body191, !dbg !189

do.body191:                                       ; preds = %do.end190
  br label %do.end192, !dbg !196

do.end192:                                        ; preds = %do.body191
  br label %do.body193, !dbg !189

do.body193:                                       ; preds = %do.end192
  br label %do.end194, !dbg !198

do.end194:                                        ; preds = %do.body193
  br label %do.body195, !dbg !189

do.body195:                                       ; preds = %do.end194
  br label %do.end196, !dbg !200

do.end196:                                        ; preds = %do.body195
  %arrayidx198 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 1, !dbg !202
  %68 = load i32, i32* %arrayidx198, align 4, !dbg !202
  %conv199 = zext i32 %68 to i64, !dbg !202
  %and200 = and i64 %conv199, 1073741824, !dbg !202
  %shr201 = lshr i64 %and200, 30, !dbg !202
  store i64 %shr201, i64* %tmp197, align 8, !dbg !202
  %69 = load i64, i64* %tmp197, align 8, !dbg !202
  %conv202 = trunc i64 %69 to i8, !dbg !203
  %70 = load %struct.prestera_dsa*, %struct.prestera_dsa** %dsa.addr, align 8, !dbg !204
  %vlan203 = getelementptr inbounds %struct.prestera_dsa, %struct.prestera_dsa* %70, i32 0, i32 0, !dbg !205
  %cfi_bit = getelementptr inbounds %struct.prestera_dsa_vlan, %struct.prestera_dsa_vlan* %vlan203, i32 0, i32 2, !dbg !206
  store i8 %conv202, i8* %cfi_bit, align 1, !dbg !207
  br label %do.body204, !dbg !208

do.body204:                                       ; preds = %do.end196
  br label %do.end205, !dbg !211

do.end205:                                        ; preds = %do.body204
  br label %do.body206, !dbg !208

do.body206:                                       ; preds = %do.end205
  br label %do.end207, !dbg !213

do.end207:                                        ; preds = %do.body206
  br label %do.body208, !dbg !208

do.body208:                                       ; preds = %do.end207
  br label %do.end209, !dbg !215

do.end209:                                        ; preds = %do.body208
  br label %do.body210, !dbg !208

do.body210:                                       ; preds = %do.end209
  br label %do.end211, !dbg !217

do.end211:                                        ; preds = %do.body210
  br label %do.body212, !dbg !208

do.body212:                                       ; preds = %do.end211
  br label %do.end213, !dbg !219

do.end213:                                        ; preds = %do.body212
  %arrayidx215 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !221
  %71 = load i32, i32* %arrayidx215, align 16, !dbg !221
  %conv216 = zext i32 %71 to i64, !dbg !221
  %and217 = and i64 %conv216, 57344, !dbg !221
  %shr218 = lshr i64 %and217, 13, !dbg !221
  store i64 %shr218, i64* %tmp214, align 8, !dbg !221
  %72 = load i64, i64* %tmp214, align 8, !dbg !221
  %conv219 = trunc i64 %72 to i8, !dbg !222
  %73 = load %struct.prestera_dsa*, %struct.prestera_dsa** %dsa.addr, align 8, !dbg !223
  %vlan220 = getelementptr inbounds %struct.prestera_dsa, %struct.prestera_dsa* %73, i32 0, i32 0, !dbg !224
  %vpt = getelementptr inbounds %struct.prestera_dsa_vlan, %struct.prestera_dsa_vlan* %vlan220, i32 0, i32 1, !dbg !225
  store i8 %conv219, i8* %vpt, align 2, !dbg !226
  br label %do.body221, !dbg !227

do.body221:                                       ; preds = %do.end213
  br label %do.end222, !dbg !230

do.end222:                                        ; preds = %do.body221
  br label %do.body223, !dbg !227

do.body223:                                       ; preds = %do.end222
  br label %do.end224, !dbg !232

do.end224:                                        ; preds = %do.body223
  br label %do.body225, !dbg !227

do.body225:                                       ; preds = %do.end224
  br label %do.end226, !dbg !234

do.end226:                                        ; preds = %do.body225
  br label %do.body227, !dbg !227

do.body227:                                       ; preds = %do.end226
  br label %do.end228, !dbg !236

do.end228:                                        ; preds = %do.body227
  br label %do.body229, !dbg !227

do.body229:                                       ; preds = %do.end228
  br label %do.end230, !dbg !238

do.end230:                                        ; preds = %do.body229
  %arrayidx232 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !240
  %74 = load i32, i32* %arrayidx232, align 16, !dbg !240
  %conv233 = zext i32 %74 to i64, !dbg !240
  %and234 = and i64 %conv233, 4095, !dbg !240
  %shr235 = lshr i64 %and234, 0, !dbg !240
  store i64 %shr235, i64* %tmp231, align 8, !dbg !240
  %75 = load i64, i64* %tmp231, align 8, !dbg !240
  %conv236 = trunc i64 %75 to i16, !dbg !241
  %76 = load %struct.prestera_dsa*, %struct.prestera_dsa** %dsa.addr, align 8, !dbg !242
  %vlan237 = getelementptr inbounds %struct.prestera_dsa, %struct.prestera_dsa* %76, i32 0, i32 0, !dbg !243
  %vid = getelementptr inbounds %struct.prestera_dsa_vlan, %struct.prestera_dsa_vlan* %vlan237, i32 0, i32 0, !dbg !244
  store i16 %conv236, i16* %vid, align 4, !dbg !245
  %77 = load %struct.prestera_dsa*, %struct.prestera_dsa** %dsa.addr, align 8, !dbg !246
  %vlan238 = getelementptr inbounds %struct.prestera_dsa, %struct.prestera_dsa* %77, i32 0, i32 0, !dbg !247
  %vid239 = getelementptr inbounds %struct.prestera_dsa_vlan, %struct.prestera_dsa_vlan* %vlan238, i32 0, i32 0, !dbg !248
  %78 = load i16, i16* %vid239, align 4, !dbg !249
  %conv240 = zext i16 %78 to i64, !dbg !249
  %and241 = and i64 %conv240, -61441, !dbg !249
  %conv242 = trunc i64 %and241 to i16, !dbg !249
  store i16 %conv242, i16* %vid239, align 4, !dbg !249
  br label %do.body243, !dbg !250

do.body243:                                       ; preds = %do.end230
  br label %do.end244, !dbg !253

do.end244:                                        ; preds = %do.body243
  br label %do.body245, !dbg !250

do.body245:                                       ; preds = %do.end244
  br label %do.end246, !dbg !255

do.end246:                                        ; preds = %do.body245
  br label %do.body247, !dbg !250

do.body247:                                       ; preds = %do.end246
  br label %do.end248, !dbg !257

do.end248:                                        ; preds = %do.body247
  br label %do.body249, !dbg !250

do.body249:                                       ; preds = %do.end248
  br label %do.end250, !dbg !259

do.end250:                                        ; preds = %do.body249
  br label %do.body251, !dbg !250

do.body251:                                       ; preds = %do.end250
  br label %do.end252, !dbg !261

do.end252:                                        ; preds = %do.body251
  %79 = load i32, i32* %field, align 4, !dbg !263
  %conv254 = zext i32 %79 to i64, !dbg !263
  %shl255 = shl i64 %conv254, 12, !dbg !263
  %and256 = and i64 %shl255, 61440, !dbg !263
  store i64 %and256, i64* %tmp253, align 8, !dbg !263
  %80 = load i64, i64* %tmp253, align 8, !dbg !263
  %81 = load %struct.prestera_dsa*, %struct.prestera_dsa** %dsa.addr, align 8, !dbg !264
  %vlan257 = getelementptr inbounds %struct.prestera_dsa, %struct.prestera_dsa* %81, i32 0, i32 0, !dbg !265
  %vid258 = getelementptr inbounds %struct.prestera_dsa_vlan, %struct.prestera_dsa_vlan* %vlan257, i32 0, i32 0, !dbg !266
  %82 = load i16, i16* %vid258, align 4, !dbg !267
  %conv259 = zext i16 %82 to i64, !dbg !267
  %or260 = or i64 %conv259, %80, !dbg !267
  %conv261 = trunc i64 %or260 to i16, !dbg !267
  store i16 %conv261, i16* %vid258, align 4, !dbg !267
  br label %do.body262, !dbg !268

do.body262:                                       ; preds = %do.end252
  br label %do.end263, !dbg !271

do.end263:                                        ; preds = %do.body262
  br label %do.body264, !dbg !268

do.body264:                                       ; preds = %do.end263
  br label %do.end265, !dbg !273

do.end265:                                        ; preds = %do.body264
  br label %do.body266, !dbg !268

do.body266:                                       ; preds = %do.end265
  br label %do.end267, !dbg !275

do.end267:                                        ; preds = %do.body266
  br label %do.body268, !dbg !268

do.body268:                                       ; preds = %do.end267
  br label %do.end269, !dbg !277

do.end269:                                        ; preds = %do.body268
  br label %do.body270, !dbg !268

do.body270:                                       ; preds = %do.end269
  br label %do.end271, !dbg !279

do.end271:                                        ; preds = %do.body270
  %arrayidx273 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 3, !dbg !281
  %83 = load i32, i32* %arrayidx273, align 4, !dbg !281
  %conv274 = zext i32 %83 to i64, !dbg !281
  %and275 = and i64 %conv274, 127, !dbg !281
  %shr276 = lshr i64 %and275, 0, !dbg !281
  store i64 %shr276, i64* %tmp272, align 8, !dbg !281
  %84 = load i64, i64* %tmp272, align 8, !dbg !281
  %conv277 = trunc i64 %84 to i32, !dbg !282
  store i32 %conv277, i32* %field, align 4, !dbg !283
  br label %do.body278, !dbg !284

do.body278:                                       ; preds = %do.end271
  br label %do.end279, !dbg !287

do.end279:                                        ; preds = %do.body278
  br label %do.body280, !dbg !284

do.body280:                                       ; preds = %do.end279
  br label %do.end281, !dbg !289

do.end281:                                        ; preds = %do.body280
  br label %do.body282, !dbg !284

do.body282:                                       ; preds = %do.end281
  br label %do.end283, !dbg !291

do.end283:                                        ; preds = %do.body282
  br label %do.body284, !dbg !284

do.body284:                                       ; preds = %do.end283
  br label %do.end285, !dbg !293

do.end285:                                        ; preds = %do.body284
  br label %do.body286, !dbg !284

do.body286:                                       ; preds = %do.end285
  br label %do.end287, !dbg !295

do.end287:                                        ; preds = %do.body286
  %arrayidx289 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !297
  %85 = load i32, i32* %arrayidx289, align 16, !dbg !297
  %conv290 = zext i32 %85 to i64, !dbg !297
  %and291 = and i64 %conv290, 520093696, !dbg !297
  %shr292 = lshr i64 %and291, 24, !dbg !297
  store i64 %shr292, i64* %tmp288, align 8, !dbg !297
  %86 = load i64, i64* %tmp288, align 8, !dbg !297
  %conv293 = trunc i64 %86 to i32, !dbg !298
  %87 = load %struct.prestera_dsa*, %struct.prestera_dsa** %dsa.addr, align 8, !dbg !299
  %hw_dev_num = getelementptr inbounds %struct.prestera_dsa, %struct.prestera_dsa* %87, i32 0, i32 1, !dbg !300
  store i32 %conv293, i32* %hw_dev_num, align 4, !dbg !301
  br label %do.body294, !dbg !302

do.body294:                                       ; preds = %do.end287
  br label %do.end295, !dbg !305

do.end295:                                        ; preds = %do.body294
  br label %do.body296, !dbg !302

do.body296:                                       ; preds = %do.end295
  br label %do.end297, !dbg !307

do.end297:                                        ; preds = %do.body296
  br label %do.body298, !dbg !302

do.body298:                                       ; preds = %do.end297
  br label %do.end299, !dbg !309

do.end299:                                        ; preds = %do.body298
  br label %do.body300, !dbg !302

do.body300:                                       ; preds = %do.end299
  br label %do.end301, !dbg !311

do.end301:                                        ; preds = %do.body300
  br label %do.body302, !dbg !302

do.body302:                                       ; preds = %do.end301
  br label %do.end303, !dbg !313

do.end303:                                        ; preds = %do.body302
  %88 = load i32, i32* %field, align 4, !dbg !315
  %conv305 = zext i32 %88 to i64, !dbg !315
  %shl306 = shl i64 %conv305, 5, !dbg !315
  %and307 = and i64 %shl306, 4064, !dbg !315
  store i64 %and307, i64* %tmp304, align 8, !dbg !315
  %89 = load i64, i64* %tmp304, align 8, !dbg !315
  %90 = load %struct.prestera_dsa*, %struct.prestera_dsa** %dsa.addr, align 8, !dbg !316
  %hw_dev_num308 = getelementptr inbounds %struct.prestera_dsa, %struct.prestera_dsa* %90, i32 0, i32 1, !dbg !317
  %91 = load i32, i32* %hw_dev_num308, align 4, !dbg !318
  %conv309 = zext i32 %91 to i64, !dbg !318
  %or310 = or i64 %conv309, %89, !dbg !318
  %conv311 = trunc i64 %or310 to i32, !dbg !318
  store i32 %conv311, i32* %hw_dev_num308, align 4, !dbg !318
  br label %do.body312, !dbg !319

do.body312:                                       ; preds = %do.end303
  br label %do.end313, !dbg !322

do.end313:                                        ; preds = %do.body312
  br label %do.body314, !dbg !319

do.body314:                                       ; preds = %do.end313
  br label %do.end315, !dbg !324

do.end315:                                        ; preds = %do.body314
  br label %do.body316, !dbg !319

do.body316:                                       ; preds = %do.end315
  br label %do.end317, !dbg !326

do.end317:                                        ; preds = %do.body316
  br label %do.body318, !dbg !319

do.body318:                                       ; preds = %do.end317
  br label %do.end319, !dbg !328

do.end319:                                        ; preds = %do.body318
  br label %do.body320, !dbg !319

do.body320:                                       ; preds = %do.end319
  br label %do.end321, !dbg !330

do.end321:                                        ; preds = %do.body320
  %arrayidx323 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !332
  %92 = load i32, i32* %arrayidx323, align 16, !dbg !332
  %conv324 = zext i32 %92 to i64, !dbg !332
  %and325 = and i64 %conv324, 16252928, !dbg !332
  %shr326 = lshr i64 %and325, 19, !dbg !332
  store i64 %shr326, i64* %tmp322, align 8, !dbg !332
  %93 = load i64, i64* %tmp322, align 8, !dbg !332
  %shl327 = shl i64 %93, 0, !dbg !333
  br label %do.body328, !dbg !334

do.body328:                                       ; preds = %do.end321
  br label %do.end329, !dbg !337

do.end329:                                        ; preds = %do.body328
  br label %do.body330, !dbg !334

do.body330:                                       ; preds = %do.end329
  br label %do.end331, !dbg !339

do.end331:                                        ; preds = %do.body330
  br label %do.body332, !dbg !334

do.body332:                                       ; preds = %do.end331
  br label %do.end333, !dbg !341

do.end333:                                        ; preds = %do.body332
  br label %do.body334, !dbg !334

do.body334:                                       ; preds = %do.end333
  br label %do.end335, !dbg !343

do.end335:                                        ; preds = %do.body334
  br label %do.body336, !dbg !334

do.body336:                                       ; preds = %do.end335
  br label %do.end337, !dbg !345

do.end337:                                        ; preds = %do.body336
  %arrayidx339 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 1, !dbg !347
  %94 = load i32, i32* %arrayidx339, align 4, !dbg !347
  %conv340 = zext i32 %94 to i64, !dbg !347
  %and341 = and i64 %conv340, 3072, !dbg !347
  %shr342 = lshr i64 %and341, 10, !dbg !347
  store i64 %shr342, i64* %tmp338, align 8, !dbg !347
  %95 = load i64, i64* %tmp338, align 8, !dbg !347
  %shl343 = shl i64 %95, 5, !dbg !348
  %or344 = or i64 %shl327, %shl343, !dbg !349
  br label %do.body345, !dbg !350

do.body345:                                       ; preds = %do.end337
  br label %do.end346, !dbg !353

do.end346:                                        ; preds = %do.body345
  br label %do.body347, !dbg !350

do.body347:                                       ; preds = %do.end346
  br label %do.end348, !dbg !355

do.end348:                                        ; preds = %do.body347
  br label %do.body349, !dbg !350

do.body349:                                       ; preds = %do.end348
  br label %do.end350, !dbg !357

do.end350:                                        ; preds = %do.body349
  br label %do.body351, !dbg !350

do.body351:                                       ; preds = %do.end350
  br label %do.end352, !dbg !359

do.end352:                                        ; preds = %do.body351
  br label %do.body353, !dbg !350

do.body353:                                       ; preds = %do.end352
  br label %do.end354, !dbg !361

do.end354:                                        ; preds = %do.body353
  %arrayidx356 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 2, !dbg !363
  %96 = load i32, i32* %arrayidx356, align 8, !dbg !363
  %conv357 = zext i32 %96 to i64, !dbg !363
  %and358 = and i64 %conv357, 1048576, !dbg !363
  %shr359 = lshr i64 %and358, 20, !dbg !363
  store i64 %shr359, i64* %tmp355, align 8, !dbg !363
  %97 = load i64, i64* %tmp355, align 8, !dbg !363
  %shl360 = shl i64 %97, 7, !dbg !364
  %or361 = or i64 %or344, %shl360, !dbg !365
  %conv362 = trunc i64 %or361 to i32, !dbg !366
  %98 = load %struct.prestera_dsa*, %struct.prestera_dsa** %dsa.addr, align 8, !dbg !367
  %port_num = getelementptr inbounds %struct.prestera_dsa, %struct.prestera_dsa* %98, i32 0, i32 2, !dbg !368
  store i32 %conv362, i32* %port_num, align 4, !dbg !369
  store i32 0, i32* %retval, align 4, !dbg !370
  br label %return, !dbg !370

return:                                           ; preds = %do.end354, %if.then153, %if.then134, %if.then115, %if.then
  %99 = load i32, i32* %retval, align 4, !dbg !371
  ret i32 %99, !dbg !371
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #2

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #3 !dbg !372 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load i32, i32* %val.addr, align 4, !dbg !378
  %call = call i32 @__arch_swab32(i32 %0) #5, !dbg !379
  ret i32 %call, !dbg !380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @prestera_dsa_build(%struct.prestera_dsa* %dsa, i8* %dsa_buf) #0 !dbg !381 {
entry:
  %dsa.addr = alloca %struct.prestera_dsa*, align 8
  %dsa_buf.addr = alloca i8*, align 8
  %dsa_words = alloca i32*, align 8
  %dev_num = alloca i32, align 4
  %words = alloca [4 x i32], align 16
  %tmp = alloca i64, align 8
  %tmp20 = alloca i64, align 8
  %tmp36 = alloca i64, align 8
  %tmp50 = alloca i64, align 8
  %tmp68 = alloca i64, align 8
  %tmp86 = alloca i64, align 8
  %tmp101 = alloca i64, align 8
  %tmp116 = alloca i64, align 8
  store %struct.prestera_dsa* %dsa, %struct.prestera_dsa** %dsa.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.prestera_dsa** %dsa.addr, metadata !387, metadata !DIExpression()), !dbg !388
  store i8* %dsa_buf, i8** %dsa_buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dsa_buf.addr, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata i32** %dsa_words, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load i8*, i8** %dsa_buf.addr, align 8, !dbg !393
  %1 = bitcast i8* %0 to i32*, !dbg !394
  store i32* %1, i32** %dsa_words, align 8, !dbg !392
  call void @llvm.dbg.declare(metadata i32* %dev_num, metadata !395, metadata !DIExpression()), !dbg !396
  %2 = load %struct.prestera_dsa*, %struct.prestera_dsa** %dsa.addr, align 8, !dbg !397
  %hw_dev_num = getelementptr inbounds %struct.prestera_dsa, %struct.prestera_dsa* %2, i32 0, i32 1, !dbg !398
  %3 = load i32, i32* %hw_dev_num, align 4, !dbg !398
  store i32 %3, i32* %dev_num, align 4, !dbg !396
  call void @llvm.dbg.declare(metadata [4 x i32]* %words, metadata !399, metadata !DIExpression()), !dbg !400
  %4 = bitcast [4 x i32]* %words to i8*, !dbg !400
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 16, i1 false), !dbg !400
  br label %do.body, !dbg !401

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !404

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !401

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !406

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !401

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !408

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !401

do.body5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !410

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !401

do.body7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !412

do.end8:                                          ; preds = %do.body7
  store i64 1073741824, i64* %tmp, align 8, !dbg !414
  %5 = load i64, i64* %tmp, align 8, !dbg !414
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !415
  %6 = load i32, i32* %arrayidx, align 16, !dbg !416
  %conv = zext i32 %6 to i64, !dbg !416
  %or = or i64 %conv, %5, !dbg !416
  %conv9 = trunc i64 %or to i32, !dbg !416
  store i32 %conv9, i32* %arrayidx, align 16, !dbg !416
  br label %do.body10, !dbg !417

do.body10:                                        ; preds = %do.end8
  br label %do.end11, !dbg !420

do.end11:                                         ; preds = %do.body10
  br label %do.body12, !dbg !417

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !422

do.end13:                                         ; preds = %do.body12
  br label %do.body14, !dbg !417

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !424

do.end15:                                         ; preds = %do.body14
  br label %do.body16, !dbg !417

do.body16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !426

do.end17:                                         ; preds = %do.body16
  br label %do.body18, !dbg !417

do.body18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !428

do.end19:                                         ; preds = %do.body18
  %7 = load i32, i32* %dev_num, align 4, !dbg !430
  %conv21 = zext i32 %7 to i64, !dbg !430
  %shl = shl i64 %conv21, 24, !dbg !430
  %and = and i64 %shl, 520093696, !dbg !430
  store i64 %and, i64* %tmp20, align 8, !dbg !430
  %8 = load i64, i64* %tmp20, align 8, !dbg !430
  %arrayidx22 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !431
  %9 = load i32, i32* %arrayidx22, align 16, !dbg !432
  %conv23 = zext i32 %9 to i64, !dbg !432
  %or24 = or i64 %conv23, %8, !dbg !432
  %conv25 = trunc i64 %or24 to i32, !dbg !432
  store i32 %conv25, i32* %arrayidx22, align 16, !dbg !432
  br label %do.body26, !dbg !433

do.body26:                                        ; preds = %do.end19
  br label %do.end27, !dbg !436

do.end27:                                         ; preds = %do.body26
  br label %do.body28, !dbg !433

do.body28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !438

do.end29:                                         ; preds = %do.body28
  br label %do.body30, !dbg !433

do.body30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !440

do.end31:                                         ; preds = %do.body30
  br label %do.body32, !dbg !433

do.body32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !442

do.end33:                                         ; preds = %do.body32
  br label %do.body34, !dbg !433

do.body34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !444

do.end35:                                         ; preds = %do.body34
  %10 = load i32, i32* %dev_num, align 4, !dbg !446
  %conv37 = zext i32 %10 to i64, !dbg !446
  %and38 = and i64 %conv37, 4064, !dbg !446
  %shr = lshr i64 %and38, 5, !dbg !446
  store i64 %shr, i64* %tmp36, align 8, !dbg !446
  %11 = load i64, i64* %tmp36, align 8, !dbg !446
  %conv39 = trunc i64 %11 to i32, !dbg !447
  store i32 %conv39, i32* %dev_num, align 4, !dbg !448
  br label %do.body40, !dbg !449

do.body40:                                        ; preds = %do.end35
  br label %do.end41, !dbg !452

do.end41:                                         ; preds = %do.body40
  br label %do.body42, !dbg !449

do.body42:                                        ; preds = %do.end41
  br label %do.end43, !dbg !454

do.end43:                                         ; preds = %do.body42
  br label %do.body44, !dbg !449

do.body44:                                        ; preds = %do.end43
  br label %do.end45, !dbg !456

do.end45:                                         ; preds = %do.body44
  br label %do.body46, !dbg !449

do.body46:                                        ; preds = %do.end45
  br label %do.end47, !dbg !458

do.end47:                                         ; preds = %do.body46
  br label %do.body48, !dbg !449

do.body48:                                        ; preds = %do.end47
  br label %do.end49, !dbg !460

do.end49:                                         ; preds = %do.body48
  %12 = load i32, i32* %dev_num, align 4, !dbg !462
  %conv51 = zext i32 %12 to i64, !dbg !462
  %shl52 = shl i64 %conv51, 0, !dbg !462
  %and53 = and i64 %shl52, 127, !dbg !462
  store i64 %and53, i64* %tmp50, align 8, !dbg !462
  %13 = load i64, i64* %tmp50, align 8, !dbg !462
  %arrayidx54 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 3, !dbg !463
  %14 = load i32, i32* %arrayidx54, align 4, !dbg !464
  %conv55 = zext i32 %14 to i64, !dbg !464
  %or56 = or i64 %conv55, %13, !dbg !464
  %conv57 = trunc i64 %or56 to i32, !dbg !464
  store i32 %conv57, i32* %arrayidx54, align 4, !dbg !464
  br label %do.body58, !dbg !465

do.body58:                                        ; preds = %do.end49
  br label %do.end59, !dbg !468

do.end59:                                         ; preds = %do.body58
  br label %do.body60, !dbg !465

do.body60:                                        ; preds = %do.end59
  br label %do.end61, !dbg !470

do.end61:                                         ; preds = %do.body60
  br label %do.body62, !dbg !465

do.body62:                                        ; preds = %do.end61
  br label %do.end63, !dbg !472

do.end63:                                         ; preds = %do.body62
  br label %do.body64, !dbg !465

do.body64:                                        ; preds = %do.end63
  br label %do.end65, !dbg !474

do.end65:                                         ; preds = %do.body64
  br label %do.body66, !dbg !465

do.body66:                                        ; preds = %do.end65
  br label %do.end67, !dbg !476

do.end67:                                         ; preds = %do.body66
  %15 = load %struct.prestera_dsa*, %struct.prestera_dsa** %dsa.addr, align 8, !dbg !478
  %port_num = getelementptr inbounds %struct.prestera_dsa, %struct.prestera_dsa* %15, i32 0, i32 2, !dbg !478
  %16 = load i32, i32* %port_num, align 4, !dbg !478
  %conv69 = zext i32 %16 to i64, !dbg !478
  %shl70 = shl i64 %conv69, 7, !dbg !478
  %and71 = and i64 %shl70, 16777088, !dbg !478
  store i64 %and71, i64* %tmp68, align 8, !dbg !478
  %17 = load i64, i64* %tmp68, align 8, !dbg !478
  %arrayidx72 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 3, !dbg !479
  %18 = load i32, i32* %arrayidx72, align 4, !dbg !480
  %conv73 = zext i32 %18 to i64, !dbg !480
  %or74 = or i64 %conv73, %17, !dbg !480
  %conv75 = trunc i64 %or74 to i32, !dbg !480
  store i32 %conv75, i32* %arrayidx72, align 4, !dbg !480
  br label %do.body76, !dbg !481

do.body76:                                        ; preds = %do.end67
  br label %do.end77, !dbg !484

do.end77:                                         ; preds = %do.body76
  br label %do.body78, !dbg !481

do.body78:                                        ; preds = %do.end77
  br label %do.end79, !dbg !486

do.end79:                                         ; preds = %do.body78
  br label %do.body80, !dbg !481

do.body80:                                        ; preds = %do.end79
  br label %do.end81, !dbg !488

do.end81:                                         ; preds = %do.body80
  br label %do.body82, !dbg !481

do.body82:                                        ; preds = %do.end81
  br label %do.end83, !dbg !490

do.end83:                                         ; preds = %do.body82
  br label %do.body84, !dbg !481

do.body84:                                        ; preds = %do.end83
  br label %do.end85, !dbg !492

do.end85:                                         ; preds = %do.body84
  store i64 4096, i64* %tmp86, align 8, !dbg !494
  %19 = load i64, i64* %tmp86, align 8, !dbg !494
  %arrayidx87 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !495
  %20 = load i32, i32* %arrayidx87, align 16, !dbg !496
  %conv88 = zext i32 %20 to i64, !dbg !496
  %or89 = or i64 %conv88, %19, !dbg !496
  %conv90 = trunc i64 %or89 to i32, !dbg !496
  store i32 %conv90, i32* %arrayidx87, align 16, !dbg !496
  br label %do.body91, !dbg !497

do.body91:                                        ; preds = %do.end85
  br label %do.end92, !dbg !500

do.end92:                                         ; preds = %do.body91
  br label %do.body93, !dbg !497

do.body93:                                        ; preds = %do.end92
  br label %do.end94, !dbg !502

do.end94:                                         ; preds = %do.body93
  br label %do.body95, !dbg !497

do.body95:                                        ; preds = %do.end94
  br label %do.end96, !dbg !504

do.end96:                                         ; preds = %do.body95
  br label %do.body97, !dbg !497

do.body97:                                        ; preds = %do.end96
  br label %do.end98, !dbg !506

do.end98:                                         ; preds = %do.body97
  br label %do.body99, !dbg !497

do.body99:                                        ; preds = %do.end98
  br label %do.end100, !dbg !508

do.end100:                                        ; preds = %do.body99
  store i64 2147483648, i64* %tmp101, align 8, !dbg !510
  %21 = load i64, i64* %tmp101, align 8, !dbg !510
  %arrayidx102 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 1, !dbg !511
  %22 = load i32, i32* %arrayidx102, align 4, !dbg !512
  %conv103 = zext i32 %22 to i64, !dbg !512
  %or104 = or i64 %conv103, %21, !dbg !512
  %conv105 = trunc i64 %or104 to i32, !dbg !512
  store i32 %conv105, i32* %arrayidx102, align 4, !dbg !512
  br label %do.body106, !dbg !513

do.body106:                                       ; preds = %do.end100
  br label %do.end107, !dbg !516

do.end107:                                        ; preds = %do.body106
  br label %do.body108, !dbg !513

do.body108:                                       ; preds = %do.end107
  br label %do.end109, !dbg !518

do.end109:                                        ; preds = %do.body108
  br label %do.body110, !dbg !513

do.body110:                                       ; preds = %do.end109
  br label %do.end111, !dbg !520

do.end111:                                        ; preds = %do.body110
  br label %do.body112, !dbg !513

do.body112:                                       ; preds = %do.end111
  br label %do.end113, !dbg !522

do.end113:                                        ; preds = %do.body112
  br label %do.body114, !dbg !513

do.body114:                                       ; preds = %do.end113
  br label %do.end115, !dbg !524

do.end115:                                        ; preds = %do.body114
  store i64 2147483648, i64* %tmp116, align 8, !dbg !526
  %23 = load i64, i64* %tmp116, align 8, !dbg !526
  %arrayidx117 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 2, !dbg !527
  %24 = load i32, i32* %arrayidx117, align 8, !dbg !528
  %conv118 = zext i32 %24 to i64, !dbg !528
  %or119 = or i64 %conv118, %23, !dbg !528
  %conv120 = trunc i64 %or119 to i32, !dbg !528
  store i32 %conv120, i32* %arrayidx117, align 8, !dbg !528
  %arrayidx121 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !529
  %25 = load i32, i32* %arrayidx121, align 16, !dbg !529
  %26 = call i1 @llvm.is.constant.i32(i32 %25), !dbg !529
  br i1 %26, label %cond.true, label %cond.false, !dbg !529

cond.true:                                        ; preds = %do.end115
  %arrayidx122 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !529
  %27 = load i32, i32* %arrayidx122, align 16, !dbg !529
  %and123 = and i32 %27, 255, !dbg !529
  %shl124 = shl i32 %and123, 24, !dbg !529
  %arrayidx125 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !529
  %28 = load i32, i32* %arrayidx125, align 16, !dbg !529
  %and126 = and i32 %28, 65280, !dbg !529
  %shl127 = shl i32 %and126, 8, !dbg !529
  %or128 = or i32 %shl124, %shl127, !dbg !529
  %arrayidx129 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !529
  %29 = load i32, i32* %arrayidx129, align 16, !dbg !529
  %and130 = and i32 %29, 16711680, !dbg !529
  %shr131 = lshr i32 %and130, 8, !dbg !529
  %or132 = or i32 %or128, %shr131, !dbg !529
  %arrayidx133 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !529
  %30 = load i32, i32* %arrayidx133, align 16, !dbg !529
  %and134 = and i32 %30, -16777216, !dbg !529
  %shr135 = lshr i32 %and134, 24, !dbg !529
  %or136 = or i32 %or132, %shr135, !dbg !529
  br label %cond.end, !dbg !529

cond.false:                                       ; preds = %do.end115
  %arrayidx137 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 0, !dbg !529
  %31 = load i32, i32* %arrayidx137, align 16, !dbg !529
  %call = call i32 @__fswab32(i32 %31) #5, !dbg !529
  br label %cond.end, !dbg !529

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or136, %cond.true ], [ %call, %cond.false ], !dbg !529
  %32 = load i32*, i32** %dsa_words, align 8, !dbg !530
  %arrayidx138 = getelementptr i32, i32* %32, i64 0, !dbg !530
  store i32 %cond, i32* %arrayidx138, align 4, !dbg !531
  %arrayidx139 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 1, !dbg !532
  %33 = load i32, i32* %arrayidx139, align 4, !dbg !532
  %34 = call i1 @llvm.is.constant.i32(i32 %33), !dbg !532
  br i1 %34, label %cond.true140, label %cond.false156, !dbg !532

cond.true140:                                     ; preds = %cond.end
  %arrayidx141 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 1, !dbg !532
  %35 = load i32, i32* %arrayidx141, align 4, !dbg !532
  %and142 = and i32 %35, 255, !dbg !532
  %shl143 = shl i32 %and142, 24, !dbg !532
  %arrayidx144 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 1, !dbg !532
  %36 = load i32, i32* %arrayidx144, align 4, !dbg !532
  %and145 = and i32 %36, 65280, !dbg !532
  %shl146 = shl i32 %and145, 8, !dbg !532
  %or147 = or i32 %shl143, %shl146, !dbg !532
  %arrayidx148 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 1, !dbg !532
  %37 = load i32, i32* %arrayidx148, align 4, !dbg !532
  %and149 = and i32 %37, 16711680, !dbg !532
  %shr150 = lshr i32 %and149, 8, !dbg !532
  %or151 = or i32 %or147, %shr150, !dbg !532
  %arrayidx152 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 1, !dbg !532
  %38 = load i32, i32* %arrayidx152, align 4, !dbg !532
  %and153 = and i32 %38, -16777216, !dbg !532
  %shr154 = lshr i32 %and153, 24, !dbg !532
  %or155 = or i32 %or151, %shr154, !dbg !532
  br label %cond.end159, !dbg !532

cond.false156:                                    ; preds = %cond.end
  %arrayidx157 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 1, !dbg !532
  %39 = load i32, i32* %arrayidx157, align 4, !dbg !532
  %call158 = call i32 @__fswab32(i32 %39) #5, !dbg !532
  br label %cond.end159, !dbg !532

cond.end159:                                      ; preds = %cond.false156, %cond.true140
  %cond160 = phi i32 [ %or155, %cond.true140 ], [ %call158, %cond.false156 ], !dbg !532
  %40 = load i32*, i32** %dsa_words, align 8, !dbg !533
  %arrayidx161 = getelementptr i32, i32* %40, i64 1, !dbg !533
  store i32 %cond160, i32* %arrayidx161, align 4, !dbg !534
  %arrayidx162 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 2, !dbg !535
  %41 = load i32, i32* %arrayidx162, align 8, !dbg !535
  %42 = call i1 @llvm.is.constant.i32(i32 %41), !dbg !535
  br i1 %42, label %cond.true163, label %cond.false179, !dbg !535

cond.true163:                                     ; preds = %cond.end159
  %arrayidx164 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 2, !dbg !535
  %43 = load i32, i32* %arrayidx164, align 8, !dbg !535
  %and165 = and i32 %43, 255, !dbg !535
  %shl166 = shl i32 %and165, 24, !dbg !535
  %arrayidx167 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 2, !dbg !535
  %44 = load i32, i32* %arrayidx167, align 8, !dbg !535
  %and168 = and i32 %44, 65280, !dbg !535
  %shl169 = shl i32 %and168, 8, !dbg !535
  %or170 = or i32 %shl166, %shl169, !dbg !535
  %arrayidx171 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 2, !dbg !535
  %45 = load i32, i32* %arrayidx171, align 8, !dbg !535
  %and172 = and i32 %45, 16711680, !dbg !535
  %shr173 = lshr i32 %and172, 8, !dbg !535
  %or174 = or i32 %or170, %shr173, !dbg !535
  %arrayidx175 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 2, !dbg !535
  %46 = load i32, i32* %arrayidx175, align 8, !dbg !535
  %and176 = and i32 %46, -16777216, !dbg !535
  %shr177 = lshr i32 %and176, 24, !dbg !535
  %or178 = or i32 %or174, %shr177, !dbg !535
  br label %cond.end182, !dbg !535

cond.false179:                                    ; preds = %cond.end159
  %arrayidx180 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 2, !dbg !535
  %47 = load i32, i32* %arrayidx180, align 8, !dbg !535
  %call181 = call i32 @__fswab32(i32 %47) #5, !dbg !535
  br label %cond.end182, !dbg !535

cond.end182:                                      ; preds = %cond.false179, %cond.true163
  %cond183 = phi i32 [ %or178, %cond.true163 ], [ %call181, %cond.false179 ], !dbg !535
  %48 = load i32*, i32** %dsa_words, align 8, !dbg !536
  %arrayidx184 = getelementptr i32, i32* %48, i64 2, !dbg !536
  store i32 %cond183, i32* %arrayidx184, align 4, !dbg !537
  %arrayidx185 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 3, !dbg !538
  %49 = load i32, i32* %arrayidx185, align 4, !dbg !538
  %50 = call i1 @llvm.is.constant.i32(i32 %49), !dbg !538
  br i1 %50, label %cond.true186, label %cond.false202, !dbg !538

cond.true186:                                     ; preds = %cond.end182
  %arrayidx187 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 3, !dbg !538
  %51 = load i32, i32* %arrayidx187, align 4, !dbg !538
  %and188 = and i32 %51, 255, !dbg !538
  %shl189 = shl i32 %and188, 24, !dbg !538
  %arrayidx190 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 3, !dbg !538
  %52 = load i32, i32* %arrayidx190, align 4, !dbg !538
  %and191 = and i32 %52, 65280, !dbg !538
  %shl192 = shl i32 %and191, 8, !dbg !538
  %or193 = or i32 %shl189, %shl192, !dbg !538
  %arrayidx194 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 3, !dbg !538
  %53 = load i32, i32* %arrayidx194, align 4, !dbg !538
  %and195 = and i32 %53, 16711680, !dbg !538
  %shr196 = lshr i32 %and195, 8, !dbg !538
  %or197 = or i32 %or193, %shr196, !dbg !538
  %arrayidx198 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 3, !dbg !538
  %54 = load i32, i32* %arrayidx198, align 4, !dbg !538
  %and199 = and i32 %54, -16777216, !dbg !538
  %shr200 = lshr i32 %and199, 24, !dbg !538
  %or201 = or i32 %or197, %shr200, !dbg !538
  br label %cond.end205, !dbg !538

cond.false202:                                    ; preds = %cond.end182
  %arrayidx203 = getelementptr [4 x i32], [4 x i32]* %words, i64 0, i64 3, !dbg !538
  %55 = load i32, i32* %arrayidx203, align 4, !dbg !538
  %call204 = call i32 @__fswab32(i32 %55) #5, !dbg !538
  br label %cond.end205, !dbg !538

cond.end205:                                      ; preds = %cond.false202, %cond.true186
  %cond206 = phi i32 [ %or201, %cond.true186 ], [ %call204, %cond.false202 ], !dbg !538
  %56 = load i32*, i32** %dsa_words, align 8, !dbg !539
  %arrayidx207 = getelementptr i32, i32* %56, i64 3, !dbg !539
  store i32 %cond206, i32* %arrayidx207, align 4, !dbg !540
  ret i32 0, !dbg !541
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #3 !dbg !542 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !544, metadata !DIExpression()), !dbg !545
  %0 = load i32, i32* %val.addr, align 4, !dbg !546
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #6, !dbg !547, !srcloc !548
  store i32 %1, i32* %val.addr, align 4, !dbg !547
  %2 = load i32, i32* %val.addr, align 4, !dbg !549
  ret i32 %2, !dbg !550
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }
attributes #3 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noredzone nounwind readnone }
attributes #6 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/net/ethernet/marvell/prestera/prestera_dsa.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "prestera_dsa_cmd", file: !4, line: 11, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "drivers/net/ethernet/marvell/prestera/prestera_dsa.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "PRESTERA_DSA_CMD_TO_CPU", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "PRESTERA_DSA_CMD_FROM_CPU", value: 1, isUnsigned: true)
!9 = !{!10, !13, !11, !3, !15, !16}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !12, line: 32, baseType: !13)
!12 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !14, line: 27, baseType: !5)
!14 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{i32 7, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"Code Model", i32 2}
!21 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!22 = distinct !DISubprogram(name: "prestera_dsa_parse", scope: !1, file: !1, line: 33, type: !23, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!23 = !DISubroutineType(types: !24)
!24 = !{!16, !25, !48}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prestera_dsa", file: !4, line: 26, size: 128, elements: !27)
!27 = !{!28, !45, !47}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "vlan", scope: !26, file: !4, line: 27, baseType: !29, size: 48)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prestera_dsa_vlan", file: !4, line: 19, size: 48, elements: !30)
!30 = !{!31, !36, !40, !41}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "vid", scope: !29, file: !4, line: 20, baseType: !32, size: 16)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !33, line: 19, baseType: !34)
!33 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !14, line: 24, baseType: !35)
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "vpt", scope: !29, file: !4, line: 21, baseType: !37, size: 8, offset: 16)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !33, line: 17, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !14, line: 21, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cfi_bit", scope: !29, file: !4, line: 22, baseType: !37, size: 8, offset: 24)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "is_tagged", scope: !29, file: !4, line: 23, baseType: !42, size: 8, offset: 32)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !43, line: 30, baseType: !44)
!43 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!44 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev_num", scope: !26, file: !4, line: 28, baseType: !46, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !33, line: 21, baseType: !13)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "port_num", scope: !26, file: !4, line: 29, baseType: !46, size: 32, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!50 = !{}
!51 = !DILocalVariable(name: "dsa", arg: 1, scope: !22, file: !1, line: 33, type: !25)
!52 = !DILocation(line: 33, column: 45, scope: !22)
!53 = !DILocalVariable(name: "dsa_buf", arg: 2, scope: !22, file: !1, line: 33, type: !48)
!54 = !DILocation(line: 33, column: 60, scope: !22)
!55 = !DILocalVariable(name: "dsa_words", scope: !22, file: !1, line: 35, type: !10)
!56 = !DILocation(line: 35, column: 10, scope: !22)
!57 = !DILocation(line: 35, column: 32, scope: !22)
!58 = !DILocation(line: 35, column: 22, scope: !22)
!59 = !DILocalVariable(name: "cmd", scope: !22, file: !1, line: 36, type: !3)
!60 = !DILocation(line: 36, column: 24, scope: !22)
!61 = !DILocalVariable(name: "words", scope: !22, file: !1, line: 37, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 4)
!65 = !DILocation(line: 37, column: 6, scope: !22)
!66 = !DILocalVariable(name: "field", scope: !22, file: !1, line: 38, type: !46)
!67 = !DILocation(line: 38, column: 6, scope: !22)
!68 = !DILocation(line: 40, column: 13, scope: !22)
!69 = !DILocation(line: 40, column: 2, scope: !22)
!70 = !DILocation(line: 40, column: 11, scope: !22)
!71 = !DILocation(line: 41, column: 13, scope: !22)
!72 = !DILocation(line: 41, column: 2, scope: !22)
!73 = !DILocation(line: 41, column: 11, scope: !22)
!74 = !DILocation(line: 42, column: 13, scope: !22)
!75 = !DILocation(line: 42, column: 2, scope: !22)
!76 = !DILocation(line: 42, column: 11, scope: !22)
!77 = !DILocation(line: 43, column: 13, scope: !22)
!78 = !DILocation(line: 43, column: 2, scope: !22)
!79 = !DILocation(line: 43, column: 11, scope: !22)
!80 = !DILocation(line: 46, column: 31, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 46, column: 31)
!82 = distinct !DILexicalBlock(scope: !22, file: !1, line: 46, column: 31)
!83 = !DILocation(line: 46, column: 31, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 46, column: 31)
!85 = !DILocation(line: 46, column: 31, scope: !86)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 46, column: 31)
!87 = !DILocation(line: 46, column: 31, scope: !88)
!88 = distinct !DILexicalBlock(scope: !81, file: !1, line: 46, column: 31)
!89 = !DILocation(line: 46, column: 31, scope: !90)
!90 = distinct !DILexicalBlock(scope: !81, file: !1, line: 46, column: 31)
!91 = !DILocation(line: 46, column: 31, scope: !92)
!92 = distinct !DILexicalBlock(scope: !81, file: !1, line: 46, column: 31)
!93 = !DILocation(line: 46, column: 31, scope: !82)
!94 = !DILocation(line: 46, column: 8, scope: !22)
!95 = !DILocation(line: 46, column: 6, scope: !22)
!96 = !DILocation(line: 49, column: 6, scope: !97)
!97 = distinct !DILexicalBlock(scope: !22, file: !1, line: 49, column: 6)
!98 = !DILocation(line: 49, column: 6, scope: !22)
!99 = !DILocation(line: 50, column: 3, scope: !97)
!100 = !DILocation(line: 52, column: 6, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 52, column: 6)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 52, column: 6)
!103 = distinct !DILexicalBlock(scope: !22, file: !1, line: 52, column: 6)
!104 = !DILocation(line: 52, column: 6, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 52, column: 6)
!106 = !DILocation(line: 52, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !101, file: !1, line: 52, column: 6)
!108 = !DILocation(line: 52, column: 6, scope: !109)
!109 = distinct !DILexicalBlock(scope: !101, file: !1, line: 52, column: 6)
!110 = !DILocation(line: 52, column: 6, scope: !111)
!111 = distinct !DILexicalBlock(scope: !101, file: !1, line: 52, column: 6)
!112 = !DILocation(line: 52, column: 6, scope: !113)
!113 = distinct !DILexicalBlock(scope: !101, file: !1, line: 52, column: 6)
!114 = !DILocation(line: 52, column: 6, scope: !102)
!115 = !DILocation(line: 52, column: 51, scope: !103)
!116 = !DILocation(line: 52, column: 6, scope: !22)
!117 = !DILocation(line: 53, column: 3, scope: !103)
!118 = !DILocation(line: 54, column: 6, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 54, column: 6)
!120 = distinct !DILexicalBlock(scope: !121, file: !1, line: 54, column: 6)
!121 = distinct !DILexicalBlock(scope: !22, file: !1, line: 54, column: 6)
!122 = !DILocation(line: 54, column: 6, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 54, column: 6)
!124 = !DILocation(line: 54, column: 6, scope: !125)
!125 = distinct !DILexicalBlock(scope: !119, file: !1, line: 54, column: 6)
!126 = !DILocation(line: 54, column: 6, scope: !127)
!127 = distinct !DILexicalBlock(scope: !119, file: !1, line: 54, column: 6)
!128 = !DILocation(line: 54, column: 6, scope: !129)
!129 = distinct !DILexicalBlock(scope: !119, file: !1, line: 54, column: 6)
!130 = !DILocation(line: 54, column: 6, scope: !131)
!131 = distinct !DILexicalBlock(scope: !119, file: !1, line: 54, column: 6)
!132 = !DILocation(line: 54, column: 6, scope: !120)
!133 = !DILocation(line: 54, column: 51, scope: !121)
!134 = !DILocation(line: 54, column: 6, scope: !22)
!135 = !DILocation(line: 55, column: 3, scope: !121)
!136 = !DILocation(line: 56, column: 6, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !1, line: 56, column: 6)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 56, column: 6)
!139 = distinct !DILexicalBlock(scope: !22, file: !1, line: 56, column: 6)
!140 = !DILocation(line: 56, column: 6, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !1, line: 56, column: 6)
!142 = !DILocation(line: 56, column: 6, scope: !143)
!143 = distinct !DILexicalBlock(scope: !137, file: !1, line: 56, column: 6)
!144 = !DILocation(line: 56, column: 6, scope: !145)
!145 = distinct !DILexicalBlock(scope: !137, file: !1, line: 56, column: 6)
!146 = !DILocation(line: 56, column: 6, scope: !147)
!147 = distinct !DILexicalBlock(scope: !137, file: !1, line: 56, column: 6)
!148 = !DILocation(line: 56, column: 6, scope: !149)
!149 = distinct !DILexicalBlock(scope: !137, file: !1, line: 56, column: 6)
!150 = !DILocation(line: 56, column: 6, scope: !138)
!151 = !DILocation(line: 56, column: 51, scope: !139)
!152 = !DILocation(line: 56, column: 6, scope: !22)
!153 = !DILocation(line: 57, column: 3, scope: !139)
!154 = !DILocation(line: 59, column: 10, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 59, column: 10)
!156 = distinct !DILexicalBlock(scope: !22, file: !1, line: 59, column: 10)
!157 = !DILocation(line: 59, column: 10, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !1, line: 59, column: 10)
!159 = !DILocation(line: 59, column: 10, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !1, line: 59, column: 10)
!161 = !DILocation(line: 59, column: 10, scope: !162)
!162 = distinct !DILexicalBlock(scope: !155, file: !1, line: 59, column: 10)
!163 = !DILocation(line: 59, column: 10, scope: !164)
!164 = distinct !DILexicalBlock(scope: !155, file: !1, line: 59, column: 10)
!165 = !DILocation(line: 59, column: 10, scope: !166)
!166 = distinct !DILexicalBlock(scope: !155, file: !1, line: 59, column: 10)
!167 = !DILocation(line: 59, column: 10, scope: !156)
!168 = !DILocation(line: 59, column: 10, scope: !22)
!169 = !DILocation(line: 59, column: 8, scope: !22)
!170 = !DILocation(line: 61, column: 24, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 61, column: 24)
!172 = distinct !DILexicalBlock(scope: !22, file: !1, line: 61, column: 24)
!173 = !DILocation(line: 61, column: 24, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !1, line: 61, column: 24)
!175 = !DILocation(line: 61, column: 24, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !1, line: 61, column: 24)
!177 = !DILocation(line: 61, column: 24, scope: !178)
!178 = distinct !DILexicalBlock(scope: !171, file: !1, line: 61, column: 24)
!179 = !DILocation(line: 61, column: 24, scope: !180)
!180 = distinct !DILexicalBlock(scope: !171, file: !1, line: 61, column: 24)
!181 = !DILocation(line: 61, column: 24, scope: !182)
!182 = distinct !DILexicalBlock(scope: !171, file: !1, line: 61, column: 24)
!183 = !DILocation(line: 61, column: 24, scope: !172)
!184 = !DILocation(line: 61, column: 24, scope: !22)
!185 = !DILocation(line: 61, column: 2, scope: !22)
!186 = !DILocation(line: 61, column: 7, scope: !22)
!187 = !DILocation(line: 61, column: 12, scope: !22)
!188 = !DILocation(line: 61, column: 22, scope: !22)
!189 = !DILocation(line: 62, column: 22, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 62, column: 22)
!191 = distinct !DILexicalBlock(scope: !22, file: !1, line: 62, column: 22)
!192 = !DILocation(line: 62, column: 22, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 62, column: 22)
!194 = !DILocation(line: 62, column: 22, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !1, line: 62, column: 22)
!196 = !DILocation(line: 62, column: 22, scope: !197)
!197 = distinct !DILexicalBlock(scope: !190, file: !1, line: 62, column: 22)
!198 = !DILocation(line: 62, column: 22, scope: !199)
!199 = distinct !DILexicalBlock(scope: !190, file: !1, line: 62, column: 22)
!200 = !DILocation(line: 62, column: 22, scope: !201)
!201 = distinct !DILexicalBlock(scope: !190, file: !1, line: 62, column: 22)
!202 = !DILocation(line: 62, column: 22, scope: !191)
!203 = !DILocation(line: 62, column: 22, scope: !22)
!204 = !DILocation(line: 62, column: 2, scope: !22)
!205 = !DILocation(line: 62, column: 7, scope: !22)
!206 = !DILocation(line: 62, column: 12, scope: !22)
!207 = !DILocation(line: 62, column: 20, scope: !22)
!208 = !DILocation(line: 63, column: 18, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !1, line: 63, column: 18)
!210 = distinct !DILexicalBlock(scope: !22, file: !1, line: 63, column: 18)
!211 = !DILocation(line: 63, column: 18, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !1, line: 63, column: 18)
!213 = !DILocation(line: 63, column: 18, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !1, line: 63, column: 18)
!215 = !DILocation(line: 63, column: 18, scope: !216)
!216 = distinct !DILexicalBlock(scope: !209, file: !1, line: 63, column: 18)
!217 = !DILocation(line: 63, column: 18, scope: !218)
!218 = distinct !DILexicalBlock(scope: !209, file: !1, line: 63, column: 18)
!219 = !DILocation(line: 63, column: 18, scope: !220)
!220 = distinct !DILexicalBlock(scope: !209, file: !1, line: 63, column: 18)
!221 = !DILocation(line: 63, column: 18, scope: !210)
!222 = !DILocation(line: 63, column: 18, scope: !22)
!223 = !DILocation(line: 63, column: 2, scope: !22)
!224 = !DILocation(line: 63, column: 7, scope: !22)
!225 = !DILocation(line: 63, column: 12, scope: !22)
!226 = !DILocation(line: 63, column: 16, scope: !22)
!227 = !DILocation(line: 64, column: 18, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 64, column: 18)
!229 = distinct !DILexicalBlock(scope: !22, file: !1, line: 64, column: 18)
!230 = !DILocation(line: 64, column: 18, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !1, line: 64, column: 18)
!232 = !DILocation(line: 64, column: 18, scope: !233)
!233 = distinct !DILexicalBlock(scope: !228, file: !1, line: 64, column: 18)
!234 = !DILocation(line: 64, column: 18, scope: !235)
!235 = distinct !DILexicalBlock(scope: !228, file: !1, line: 64, column: 18)
!236 = !DILocation(line: 64, column: 18, scope: !237)
!237 = distinct !DILexicalBlock(scope: !228, file: !1, line: 64, column: 18)
!238 = !DILocation(line: 64, column: 18, scope: !239)
!239 = distinct !DILexicalBlock(scope: !228, file: !1, line: 64, column: 18)
!240 = !DILocation(line: 64, column: 18, scope: !229)
!241 = !DILocation(line: 64, column: 18, scope: !22)
!242 = !DILocation(line: 64, column: 2, scope: !22)
!243 = !DILocation(line: 64, column: 7, scope: !22)
!244 = !DILocation(line: 64, column: 12, scope: !22)
!245 = !DILocation(line: 64, column: 16, scope: !22)
!246 = !DILocation(line: 65, column: 2, scope: !22)
!247 = !DILocation(line: 65, column: 7, scope: !22)
!248 = !DILocation(line: 65, column: 12, scope: !22)
!249 = !DILocation(line: 65, column: 16, scope: !22)
!250 = !DILocation(line: 66, column: 19, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 66, column: 19)
!252 = distinct !DILexicalBlock(scope: !22, file: !1, line: 66, column: 19)
!253 = !DILocation(line: 66, column: 19, scope: !254)
!254 = distinct !DILexicalBlock(scope: !251, file: !1, line: 66, column: 19)
!255 = !DILocation(line: 66, column: 19, scope: !256)
!256 = distinct !DILexicalBlock(scope: !251, file: !1, line: 66, column: 19)
!257 = !DILocation(line: 66, column: 19, scope: !258)
!258 = distinct !DILexicalBlock(scope: !251, file: !1, line: 66, column: 19)
!259 = !DILocation(line: 66, column: 19, scope: !260)
!260 = distinct !DILexicalBlock(scope: !251, file: !1, line: 66, column: 19)
!261 = !DILocation(line: 66, column: 19, scope: !262)
!262 = distinct !DILexicalBlock(scope: !251, file: !1, line: 66, column: 19)
!263 = !DILocation(line: 66, column: 19, scope: !252)
!264 = !DILocation(line: 66, column: 2, scope: !22)
!265 = !DILocation(line: 66, column: 7, scope: !22)
!266 = !DILocation(line: 66, column: 12, scope: !22)
!267 = !DILocation(line: 66, column: 16, scope: !22)
!268 = !DILocation(line: 68, column: 10, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !1, line: 68, column: 10)
!270 = distinct !DILexicalBlock(scope: !22, file: !1, line: 68, column: 10)
!271 = !DILocation(line: 68, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !269, file: !1, line: 68, column: 10)
!273 = !DILocation(line: 68, column: 10, scope: !274)
!274 = distinct !DILexicalBlock(scope: !269, file: !1, line: 68, column: 10)
!275 = !DILocation(line: 68, column: 10, scope: !276)
!276 = distinct !DILexicalBlock(scope: !269, file: !1, line: 68, column: 10)
!277 = !DILocation(line: 68, column: 10, scope: !278)
!278 = distinct !DILexicalBlock(scope: !269, file: !1, line: 68, column: 10)
!279 = !DILocation(line: 68, column: 10, scope: !280)
!280 = distinct !DILexicalBlock(scope: !269, file: !1, line: 68, column: 10)
!281 = !DILocation(line: 68, column: 10, scope: !270)
!282 = !DILocation(line: 68, column: 10, scope: !22)
!283 = !DILocation(line: 68, column: 8, scope: !22)
!284 = !DILocation(line: 70, column: 20, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !1, line: 70, column: 20)
!286 = distinct !DILexicalBlock(scope: !22, file: !1, line: 70, column: 20)
!287 = !DILocation(line: 70, column: 20, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !1, line: 70, column: 20)
!289 = !DILocation(line: 70, column: 20, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !1, line: 70, column: 20)
!291 = !DILocation(line: 70, column: 20, scope: !292)
!292 = distinct !DILexicalBlock(scope: !285, file: !1, line: 70, column: 20)
!293 = !DILocation(line: 70, column: 20, scope: !294)
!294 = distinct !DILexicalBlock(scope: !285, file: !1, line: 70, column: 20)
!295 = !DILocation(line: 70, column: 20, scope: !296)
!296 = distinct !DILexicalBlock(scope: !285, file: !1, line: 70, column: 20)
!297 = !DILocation(line: 70, column: 20, scope: !286)
!298 = !DILocation(line: 70, column: 20, scope: !22)
!299 = !DILocation(line: 70, column: 2, scope: !22)
!300 = !DILocation(line: 70, column: 7, scope: !22)
!301 = !DILocation(line: 70, column: 18, scope: !22)
!302 = !DILocation(line: 71, column: 21, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !1, line: 71, column: 21)
!304 = distinct !DILexicalBlock(scope: !22, file: !1, line: 71, column: 21)
!305 = !DILocation(line: 71, column: 21, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !1, line: 71, column: 21)
!307 = !DILocation(line: 71, column: 21, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !1, line: 71, column: 21)
!309 = !DILocation(line: 71, column: 21, scope: !310)
!310 = distinct !DILexicalBlock(scope: !303, file: !1, line: 71, column: 21)
!311 = !DILocation(line: 71, column: 21, scope: !312)
!312 = distinct !DILexicalBlock(scope: !303, file: !1, line: 71, column: 21)
!313 = !DILocation(line: 71, column: 21, scope: !314)
!314 = distinct !DILexicalBlock(scope: !303, file: !1, line: 71, column: 21)
!315 = !DILocation(line: 71, column: 21, scope: !304)
!316 = !DILocation(line: 71, column: 2, scope: !22)
!317 = !DILocation(line: 71, column: 7, scope: !22)
!318 = !DILocation(line: 71, column: 18, scope: !22)
!319 = !DILocation(line: 73, column: 19, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !1, line: 73, column: 19)
!321 = distinct !DILexicalBlock(scope: !22, file: !1, line: 73, column: 19)
!322 = !DILocation(line: 73, column: 19, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !1, line: 73, column: 19)
!324 = !DILocation(line: 73, column: 19, scope: !325)
!325 = distinct !DILexicalBlock(scope: !320, file: !1, line: 73, column: 19)
!326 = !DILocation(line: 73, column: 19, scope: !327)
!327 = distinct !DILexicalBlock(scope: !320, file: !1, line: 73, column: 19)
!328 = !DILocation(line: 73, column: 19, scope: !329)
!329 = distinct !DILexicalBlock(scope: !320, file: !1, line: 73, column: 19)
!330 = !DILocation(line: 73, column: 19, scope: !331)
!331 = distinct !DILexicalBlock(scope: !320, file: !1, line: 73, column: 19)
!332 = !DILocation(line: 73, column: 19, scope: !321)
!333 = !DILocation(line: 73, column: 65, scope: !22)
!334 = !DILocation(line: 74, column: 5, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !1, line: 74, column: 5)
!336 = distinct !DILexicalBlock(scope: !22, file: !1, line: 74, column: 5)
!337 = !DILocation(line: 74, column: 5, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !1, line: 74, column: 5)
!339 = !DILocation(line: 74, column: 5, scope: !340)
!340 = distinct !DILexicalBlock(scope: !335, file: !1, line: 74, column: 5)
!341 = !DILocation(line: 74, column: 5, scope: !342)
!342 = distinct !DILexicalBlock(scope: !335, file: !1, line: 74, column: 5)
!343 = !DILocation(line: 74, column: 5, scope: !344)
!344 = distinct !DILexicalBlock(scope: !335, file: !1, line: 74, column: 5)
!345 = !DILocation(line: 74, column: 5, scope: !346)
!346 = distinct !DILexicalBlock(scope: !335, file: !1, line: 74, column: 5)
!347 = !DILocation(line: 74, column: 5, scope: !336)
!348 = !DILocation(line: 74, column: 51, scope: !22)
!349 = !DILocation(line: 73, column: 71, scope: !22)
!350 = !DILocation(line: 75, column: 5, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !1, line: 75, column: 5)
!352 = distinct !DILexicalBlock(scope: !22, file: !1, line: 75, column: 5)
!353 = !DILocation(line: 75, column: 5, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !1, line: 75, column: 5)
!355 = !DILocation(line: 75, column: 5, scope: !356)
!356 = distinct !DILexicalBlock(scope: !351, file: !1, line: 75, column: 5)
!357 = !DILocation(line: 75, column: 5, scope: !358)
!358 = distinct !DILexicalBlock(scope: !351, file: !1, line: 75, column: 5)
!359 = !DILocation(line: 75, column: 5, scope: !360)
!360 = distinct !DILexicalBlock(scope: !351, file: !1, line: 75, column: 5)
!361 = !DILocation(line: 75, column: 5, scope: !362)
!362 = distinct !DILexicalBlock(scope: !351, file: !1, line: 75, column: 5)
!363 = !DILocation(line: 75, column: 5, scope: !352)
!364 = !DILocation(line: 75, column: 51, scope: !22)
!365 = !DILocation(line: 74, column: 57, scope: !22)
!366 = !DILocation(line: 73, column: 18, scope: !22)
!367 = !DILocation(line: 73, column: 2, scope: !22)
!368 = !DILocation(line: 73, column: 7, scope: !22)
!369 = !DILocation(line: 73, column: 16, scope: !22)
!370 = !DILocation(line: 77, column: 2, scope: !22)
!371 = !DILocation(line: 78, column: 1, scope: !22)
!372 = distinct !DISubprogram(name: "__fswab32", scope: !373, file: !373, line: 57, type: !374, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !50)
!373 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!374 = !DISubroutineType(types: !375)
!375 = !{!13, !13}
!376 = !DILocalVariable(name: "val", arg: 1, scope: !372, file: !373, line: 57, type: !13)
!377 = !DILocation(line: 57, column: 57, scope: !372)
!378 = !DILocation(line: 60, column: 23, scope: !372)
!379 = !DILocation(line: 60, column: 9, scope: !372)
!380 = !DILocation(line: 60, column: 2, scope: !372)
!381 = distinct !DISubprogram(name: "prestera_dsa_build", scope: !1, file: !1, line: 80, type: !382, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!382 = !DISubroutineType(types: !383)
!383 = !{!16, !384, !386}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!387 = !DILocalVariable(name: "dsa", arg: 1, scope: !381, file: !1, line: 80, type: !384)
!388 = !DILocation(line: 80, column: 51, scope: !381)
!389 = !DILocalVariable(name: "dsa_buf", arg: 2, scope: !381, file: !1, line: 80, type: !386)
!390 = !DILocation(line: 80, column: 60, scope: !381)
!391 = !DILocalVariable(name: "dsa_words", scope: !381, file: !1, line: 82, type: !10)
!392 = !DILocation(line: 82, column: 10, scope: !381)
!393 = !DILocation(line: 82, column: 32, scope: !381)
!394 = !DILocation(line: 82, column: 22, scope: !381)
!395 = !DILocalVariable(name: "dev_num", scope: !381, file: !1, line: 83, type: !46)
!396 = !DILocation(line: 83, column: 6, scope: !381)
!397 = !DILocation(line: 83, column: 16, scope: !381)
!398 = !DILocation(line: 83, column: 21, scope: !381)
!399 = !DILocalVariable(name: "words", scope: !381, file: !1, line: 84, type: !62)
!400 = !DILocation(line: 84, column: 6, scope: !381)
!401 = !DILocation(line: 86, column: 14, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 86, column: 14)
!403 = distinct !DILexicalBlock(scope: !381, file: !1, line: 86, column: 14)
!404 = !DILocation(line: 86, column: 14, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !1, line: 86, column: 14)
!406 = !DILocation(line: 86, column: 14, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !1, line: 86, column: 14)
!408 = !DILocation(line: 86, column: 14, scope: !409)
!409 = distinct !DILexicalBlock(scope: !402, file: !1, line: 86, column: 14)
!410 = !DILocation(line: 86, column: 14, scope: !411)
!411 = distinct !DILexicalBlock(scope: !402, file: !1, line: 86, column: 14)
!412 = !DILocation(line: 86, column: 14, scope: !413)
!413 = distinct !DILexicalBlock(scope: !402, file: !1, line: 86, column: 14)
!414 = !DILocation(line: 86, column: 14, scope: !403)
!415 = !DILocation(line: 86, column: 2, scope: !381)
!416 = !DILocation(line: 86, column: 11, scope: !381)
!417 = !DILocation(line: 88, column: 14, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !1, line: 88, column: 14)
!419 = distinct !DILexicalBlock(scope: !381, file: !1, line: 88, column: 14)
!420 = !DILocation(line: 88, column: 14, scope: !421)
!421 = distinct !DILexicalBlock(scope: !418, file: !1, line: 88, column: 14)
!422 = !DILocation(line: 88, column: 14, scope: !423)
!423 = distinct !DILexicalBlock(scope: !418, file: !1, line: 88, column: 14)
!424 = !DILocation(line: 88, column: 14, scope: !425)
!425 = distinct !DILexicalBlock(scope: !418, file: !1, line: 88, column: 14)
!426 = !DILocation(line: 88, column: 14, scope: !427)
!427 = distinct !DILexicalBlock(scope: !418, file: !1, line: 88, column: 14)
!428 = !DILocation(line: 88, column: 14, scope: !429)
!429 = distinct !DILexicalBlock(scope: !418, file: !1, line: 88, column: 14)
!430 = !DILocation(line: 88, column: 14, scope: !419)
!431 = !DILocation(line: 88, column: 2, scope: !381)
!432 = !DILocation(line: 88, column: 11, scope: !381)
!433 = !DILocation(line: 89, column: 12, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !1, line: 89, column: 12)
!435 = distinct !DILexicalBlock(scope: !381, file: !1, line: 89, column: 12)
!436 = !DILocation(line: 89, column: 12, scope: !437)
!437 = distinct !DILexicalBlock(scope: !434, file: !1, line: 89, column: 12)
!438 = !DILocation(line: 89, column: 12, scope: !439)
!439 = distinct !DILexicalBlock(scope: !434, file: !1, line: 89, column: 12)
!440 = !DILocation(line: 89, column: 12, scope: !441)
!441 = distinct !DILexicalBlock(scope: !434, file: !1, line: 89, column: 12)
!442 = !DILocation(line: 89, column: 12, scope: !443)
!443 = distinct !DILexicalBlock(scope: !434, file: !1, line: 89, column: 12)
!444 = !DILocation(line: 89, column: 12, scope: !445)
!445 = distinct !DILexicalBlock(scope: !434, file: !1, line: 89, column: 12)
!446 = !DILocation(line: 89, column: 12, scope: !435)
!447 = !DILocation(line: 89, column: 12, scope: !381)
!448 = !DILocation(line: 89, column: 10, scope: !381)
!449 = !DILocation(line: 90, column: 14, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !1, line: 90, column: 14)
!451 = distinct !DILexicalBlock(scope: !381, file: !1, line: 90, column: 14)
!452 = !DILocation(line: 90, column: 14, scope: !453)
!453 = distinct !DILexicalBlock(scope: !450, file: !1, line: 90, column: 14)
!454 = !DILocation(line: 90, column: 14, scope: !455)
!455 = distinct !DILexicalBlock(scope: !450, file: !1, line: 90, column: 14)
!456 = !DILocation(line: 90, column: 14, scope: !457)
!457 = distinct !DILexicalBlock(scope: !450, file: !1, line: 90, column: 14)
!458 = !DILocation(line: 90, column: 14, scope: !459)
!459 = distinct !DILexicalBlock(scope: !450, file: !1, line: 90, column: 14)
!460 = !DILocation(line: 90, column: 14, scope: !461)
!461 = distinct !DILexicalBlock(scope: !450, file: !1, line: 90, column: 14)
!462 = !DILocation(line: 90, column: 14, scope: !451)
!463 = !DILocation(line: 90, column: 2, scope: !381)
!464 = !DILocation(line: 90, column: 11, scope: !381)
!465 = !DILocation(line: 92, column: 14, scope: !466)
!466 = distinct !DILexicalBlock(scope: !467, file: !1, line: 92, column: 14)
!467 = distinct !DILexicalBlock(scope: !381, file: !1, line: 92, column: 14)
!468 = !DILocation(line: 92, column: 14, scope: !469)
!469 = distinct !DILexicalBlock(scope: !466, file: !1, line: 92, column: 14)
!470 = !DILocation(line: 92, column: 14, scope: !471)
!471 = distinct !DILexicalBlock(scope: !466, file: !1, line: 92, column: 14)
!472 = !DILocation(line: 92, column: 14, scope: !473)
!473 = distinct !DILexicalBlock(scope: !466, file: !1, line: 92, column: 14)
!474 = !DILocation(line: 92, column: 14, scope: !475)
!475 = distinct !DILexicalBlock(scope: !466, file: !1, line: 92, column: 14)
!476 = !DILocation(line: 92, column: 14, scope: !477)
!477 = distinct !DILexicalBlock(scope: !466, file: !1, line: 92, column: 14)
!478 = !DILocation(line: 92, column: 14, scope: !467)
!479 = !DILocation(line: 92, column: 2, scope: !381)
!480 = !DILocation(line: 92, column: 11, scope: !381)
!481 = !DILocation(line: 94, column: 14, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 94, column: 14)
!483 = distinct !DILexicalBlock(scope: !381, file: !1, line: 94, column: 14)
!484 = !DILocation(line: 94, column: 14, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !1, line: 94, column: 14)
!486 = !DILocation(line: 94, column: 14, scope: !487)
!487 = distinct !DILexicalBlock(scope: !482, file: !1, line: 94, column: 14)
!488 = !DILocation(line: 94, column: 14, scope: !489)
!489 = distinct !DILexicalBlock(scope: !482, file: !1, line: 94, column: 14)
!490 = !DILocation(line: 94, column: 14, scope: !491)
!491 = distinct !DILexicalBlock(scope: !482, file: !1, line: 94, column: 14)
!492 = !DILocation(line: 94, column: 14, scope: !493)
!493 = distinct !DILexicalBlock(scope: !482, file: !1, line: 94, column: 14)
!494 = !DILocation(line: 94, column: 14, scope: !483)
!495 = !DILocation(line: 94, column: 2, scope: !381)
!496 = !DILocation(line: 94, column: 11, scope: !381)
!497 = !DILocation(line: 95, column: 14, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !1, line: 95, column: 14)
!499 = distinct !DILexicalBlock(scope: !381, file: !1, line: 95, column: 14)
!500 = !DILocation(line: 95, column: 14, scope: !501)
!501 = distinct !DILexicalBlock(scope: !498, file: !1, line: 95, column: 14)
!502 = !DILocation(line: 95, column: 14, scope: !503)
!503 = distinct !DILexicalBlock(scope: !498, file: !1, line: 95, column: 14)
!504 = !DILocation(line: 95, column: 14, scope: !505)
!505 = distinct !DILexicalBlock(scope: !498, file: !1, line: 95, column: 14)
!506 = !DILocation(line: 95, column: 14, scope: !507)
!507 = distinct !DILexicalBlock(scope: !498, file: !1, line: 95, column: 14)
!508 = !DILocation(line: 95, column: 14, scope: !509)
!509 = distinct !DILexicalBlock(scope: !498, file: !1, line: 95, column: 14)
!510 = !DILocation(line: 95, column: 14, scope: !499)
!511 = !DILocation(line: 95, column: 2, scope: !381)
!512 = !DILocation(line: 95, column: 11, scope: !381)
!513 = !DILocation(line: 96, column: 14, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !1, line: 96, column: 14)
!515 = distinct !DILexicalBlock(scope: !381, file: !1, line: 96, column: 14)
!516 = !DILocation(line: 96, column: 14, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !1, line: 96, column: 14)
!518 = !DILocation(line: 96, column: 14, scope: !519)
!519 = distinct !DILexicalBlock(scope: !514, file: !1, line: 96, column: 14)
!520 = !DILocation(line: 96, column: 14, scope: !521)
!521 = distinct !DILexicalBlock(scope: !514, file: !1, line: 96, column: 14)
!522 = !DILocation(line: 96, column: 14, scope: !523)
!523 = distinct !DILexicalBlock(scope: !514, file: !1, line: 96, column: 14)
!524 = !DILocation(line: 96, column: 14, scope: !525)
!525 = distinct !DILexicalBlock(scope: !514, file: !1, line: 96, column: 14)
!526 = !DILocation(line: 96, column: 14, scope: !515)
!527 = !DILocation(line: 96, column: 2, scope: !381)
!528 = !DILocation(line: 96, column: 11, scope: !381)
!529 = !DILocation(line: 98, column: 17, scope: !381)
!530 = !DILocation(line: 98, column: 2, scope: !381)
!531 = !DILocation(line: 98, column: 15, scope: !381)
!532 = !DILocation(line: 99, column: 17, scope: !381)
!533 = !DILocation(line: 99, column: 2, scope: !381)
!534 = !DILocation(line: 99, column: 15, scope: !381)
!535 = !DILocation(line: 100, column: 17, scope: !381)
!536 = !DILocation(line: 100, column: 2, scope: !381)
!537 = !DILocation(line: 100, column: 15, scope: !381)
!538 = !DILocation(line: 101, column: 17, scope: !381)
!539 = !DILocation(line: 101, column: 2, scope: !381)
!540 = !DILocation(line: 101, column: 15, scope: !381)
!541 = !DILocation(line: 103, column: 2, scope: !381)
!542 = distinct !DISubprogram(name: "__arch_swab32", scope: !543, file: !543, line: 8, type: !374, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !50)
!543 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!544 = !DILocalVariable(name: "val", arg: 1, scope: !542, file: !543, line: 8, type: !13)
!545 = !DILocation(line: 8, column: 61, scope: !542)
!546 = !DILocation(line: 10, column: 38, scope: !542)
!547 = !DILocation(line: 10, column: 2, scope: !542)
!548 = !{i32 186166}
!549 = !DILocation(line: 11, column: 9, scope: !542)
!550 = !DILocation(line: 11, column: 2, scope: !542)
