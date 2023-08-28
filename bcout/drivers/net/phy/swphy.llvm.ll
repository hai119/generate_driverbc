; ModuleID = '../bcout/drivers/net/phy/swphy.llvm.bc'
source_filename = "drivers/net/phy/swphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.swmii_regs = type { i16, i16, i16, i16 }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"\014swphy: unknown speed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"drivers/net/phy/swphy.c\00", align 1
@speed = internal constant [3 x %struct.swmii_regs] [%struct.swmii_regs { i16 0, i16 96, i16 0, i16 0 }, %struct.swmii_regs { i16 24576, i16 384, i16 0, i16 0 }, %struct.swmii_regs { i16 256, i16 0, i16 3072, i16 12288 }], align 16, !dbg !0
@duplex = internal constant [2 x %struct.swmii_regs] [%struct.swmii_regs { i16 8448, i16 160, i16 1024, i16 4096 }, %struct.swmii_regs { i16 16640, i16 320, i16 2048, i16 8192 }], align 16, !dbg !14

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @swphy_validate_state(%struct.fixed_phy_status* %state) #0 !dbg !39 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.fixed_phy_status*, align 8
  %err = alloca i32, align 4
  store %struct.fixed_phy_status* %state, %struct.fixed_phy_status** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fixed_phy_status** %state.addr, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %err, metadata !56, metadata !DIExpression()), !dbg !57
  %0 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %state.addr, align 8, !dbg !58
  %link = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %0, i32 0, i32 0, !dbg !60
  %1 = load i32, i32* %link, align 4, !dbg !60
  %tobool = icmp ne i32 %1, 0, !dbg !58
  br i1 %tobool, label %if.then, label %if.end3, !dbg !61

if.then:                                          ; preds = %entry
  %2 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %state.addr, align 8, !dbg !62
  %speed = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %2, i32 0, i32 1, !dbg !64
  %3 = load i32, i32* %speed, align 4, !dbg !64
  %call = call i32 @swphy_decode_speed(i32 %3) #3, !dbg !65
  store i32 %call, i32* %err, align 4, !dbg !66
  %4 = load i32, i32* %err, align 4, !dbg !67
  %cmp = icmp slt i32 %4, 0, !dbg !69
  br i1 %cmp, label %if.then1, label %if.end, !dbg !70

if.then1:                                         ; preds = %if.then
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #4, !dbg !71
  store i32 -22, i32* %retval, align 4, !dbg !73
  br label %return, !dbg !73

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !74

if.end3:                                          ; preds = %if.end, %entry
  store i32 0, i32* %retval, align 4, !dbg !75
  br label %return, !dbg !75

return:                                           ; preds = %if.end3, %if.then1
  %5 = load i32, i32* %retval, align 4, !dbg !76
  ret i32 %5, !dbg !76
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @swphy_decode_speed(i32 %speed) #0 !dbg !77 {
entry:
  %retval = alloca i32, align 4
  %speed.addr = alloca i32, align 4
  store i32 %speed, i32* %speed.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %speed.addr, metadata !80, metadata !DIExpression()), !dbg !81
  %0 = load i32, i32* %speed.addr, align 4, !dbg !82
  switch i32 %0, label %sw.default [
    i32 1000, label %sw.bb
    i32 100, label %sw.bb1
    i32 10, label %sw.bb2
  ], !dbg !83

sw.bb:                                            ; preds = %entry
  store i32 2, i32* %retval, align 4, !dbg !84
  br label %return, !dbg !84

sw.bb1:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !86
  br label %return, !dbg !86

sw.bb2:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !87
  br label %return, !dbg !87

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !88
  br label %return, !dbg !88

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4, !dbg !89
  ret i32 %1, !dbg !89
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @swphy_read_reg(i32 %reg, %struct.fixed_phy_status* %state) #0 !dbg !90 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %state.addr = alloca %struct.fixed_phy_status*, align 8
  %speed_index = alloca i32, align 4
  %duplex_index = alloca i32, align 4
  %bmsr = alloca i16, align 2
  %estat = alloca i16, align 2
  %lpagb = alloca i16, align 2
  %lpa = alloca i16, align 2
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !93, metadata !DIExpression()), !dbg !94
  store %struct.fixed_phy_status* %state, %struct.fixed_phy_status** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fixed_phy_status** %state.addr, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %speed_index, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %duplex_index, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i16* %bmsr, metadata !101, metadata !DIExpression()), !dbg !102
  store i16 8, i16* %bmsr, align 2, !dbg !102
  call void @llvm.dbg.declare(metadata i16* %estat, metadata !103, metadata !DIExpression()), !dbg !104
  store i16 0, i16* %estat, align 2, !dbg !104
  call void @llvm.dbg.declare(metadata i16* %lpagb, metadata !105, metadata !DIExpression()), !dbg !106
  store i16 0, i16* %lpagb, align 2, !dbg !106
  call void @llvm.dbg.declare(metadata i16* %lpa, metadata !107, metadata !DIExpression()), !dbg !108
  store i16 0, i16* %lpa, align 2, !dbg !108
  %0 = load i32, i32* %reg.addr, align 4, !dbg !109
  %cmp = icmp sgt i32 %0, 29, !dbg !111
  br i1 %cmp, label %if.then, label %if.end, !dbg !112

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !113
  br label %return, !dbg !113

if.end:                                           ; preds = %entry
  %1 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %state.addr, align 8, !dbg !114
  %speed = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %1, i32 0, i32 1, !dbg !115
  %2 = load i32, i32* %speed, align 4, !dbg !115
  %call = call i32 @swphy_decode_speed(i32 %2) #3, !dbg !116
  store i32 %call, i32* %speed_index, align 4, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !118, metadata !DIExpression()), !dbg !121
  %3 = load i32, i32* %speed_index, align 4, !dbg !121
  %cmp1 = icmp slt i32 %3, 0, !dbg !121
  %lnot = xor i1 %cmp1, true, !dbg !121
  %lnot2 = xor i1 %lnot, true, !dbg !121
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !121
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !121
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !122
  %tobool = icmp ne i32 %4, 0, !dbg !122
  %lnot3 = xor i1 %tobool, true, !dbg !122
  %lnot5 = xor i1 %lnot3, true, !dbg !122
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !122
  %conv = sext i32 %lnot.ext6 to i64, !dbg !122
  %tobool7 = icmp ne i64 %conv, 0, !dbg !122
  br i1 %tobool7, label %if.then8, label %if.end15, !dbg !121

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !122

do.body:                                          ; preds = %if.then8
  br label %do.body9, !dbg !124

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !126

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !124

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 127, i32 2305, i64 12) #5, !dbg !128, !srcloc !130
  br label %do.end11, !dbg !128

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 272) #5, !dbg !131, !srcloc !133
  br label %do.body12, !dbg !124

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !134

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !124

do.end14:                                         ; preds = %do.end13
  br label %if.end15, !dbg !124

if.end15:                                         ; preds = %do.end14, %if.end
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !121
  %tobool16 = icmp ne i32 %5, 0, !dbg !121
  %lnot17 = xor i1 %tobool16, true, !dbg !121
  %lnot19 = xor i1 %lnot17, true, !dbg !121
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !121
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !121
  store i64 %conv21, i64* %tmp, align 8, !dbg !122
  %6 = load i64, i64* %tmp, align 8, !dbg !121
  %tobool22 = icmp ne i64 %6, 0, !dbg !136
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !137

if.then23:                                        ; preds = %if.end15
  store i32 0, i32* %retval, align 4, !dbg !138
  br label %return, !dbg !138

if.end24:                                         ; preds = %if.end15
  %7 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %state.addr, align 8, !dbg !139
  %duplex = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %7, i32 0, i32 2, !dbg !140
  %8 = load i32, i32* %duplex, align 4, !dbg !140
  %tobool25 = icmp ne i32 %8, 0, !dbg !139
  %9 = zext i1 %tobool25 to i64, !dbg !139
  %cond = select i1 %tobool25, i32 1, i32 0, !dbg !139
  store i32 %cond, i32* %duplex_index, align 4, !dbg !141
  %10 = load i32, i32* %speed_index, align 4, !dbg !142
  %idxprom = sext i32 %10 to i64, !dbg !143
  %arrayidx = getelementptr [3 x %struct.swmii_regs], [3 x %struct.swmii_regs]* @speed, i64 0, i64 %idxprom, !dbg !143
  %bmsr26 = getelementptr inbounds %struct.swmii_regs, %struct.swmii_regs* %arrayidx, i32 0, i32 0, !dbg !144
  %11 = load i16, i16* %bmsr26, align 8, !dbg !144
  %conv27 = zext i16 %11 to i32, !dbg !143
  %12 = load i32, i32* %duplex_index, align 4, !dbg !145
  %idxprom28 = sext i32 %12 to i64, !dbg !146
  %arrayidx29 = getelementptr [2 x %struct.swmii_regs], [2 x %struct.swmii_regs]* @duplex, i64 0, i64 %idxprom28, !dbg !146
  %bmsr30 = getelementptr inbounds %struct.swmii_regs, %struct.swmii_regs* %arrayidx29, i32 0, i32 0, !dbg !147
  %13 = load i16, i16* %bmsr30, align 8, !dbg !147
  %conv31 = zext i16 %13 to i32, !dbg !146
  %and = and i32 %conv27, %conv31, !dbg !148
  %14 = load i16, i16* %bmsr, align 2, !dbg !149
  %conv32 = zext i16 %14 to i32, !dbg !149
  %or = or i32 %conv32, %and, !dbg !149
  %conv33 = trunc i32 %or to i16, !dbg !149
  store i16 %conv33, i16* %bmsr, align 2, !dbg !149
  %15 = load i32, i32* %speed_index, align 4, !dbg !150
  %idxprom34 = sext i32 %15 to i64, !dbg !151
  %arrayidx35 = getelementptr [3 x %struct.swmii_regs], [3 x %struct.swmii_regs]* @speed, i64 0, i64 %idxprom34, !dbg !151
  %estat36 = getelementptr inbounds %struct.swmii_regs, %struct.swmii_regs* %arrayidx35, i32 0, i32 3, !dbg !152
  %16 = load i16, i16* %estat36, align 2, !dbg !152
  %conv37 = zext i16 %16 to i32, !dbg !151
  %17 = load i32, i32* %duplex_index, align 4, !dbg !153
  %idxprom38 = sext i32 %17 to i64, !dbg !154
  %arrayidx39 = getelementptr [2 x %struct.swmii_regs], [2 x %struct.swmii_regs]* @duplex, i64 0, i64 %idxprom38, !dbg !154
  %estat40 = getelementptr inbounds %struct.swmii_regs, %struct.swmii_regs* %arrayidx39, i32 0, i32 3, !dbg !155
  %18 = load i16, i16* %estat40, align 2, !dbg !155
  %conv41 = zext i16 %18 to i32, !dbg !154
  %and42 = and i32 %conv37, %conv41, !dbg !156
  %19 = load i16, i16* %estat, align 2, !dbg !157
  %conv43 = zext i16 %19 to i32, !dbg !157
  %or44 = or i32 %conv43, %and42, !dbg !157
  %conv45 = trunc i32 %or44 to i16, !dbg !157
  store i16 %conv45, i16* %estat, align 2, !dbg !157
  %20 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %state.addr, align 8, !dbg !158
  %link = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %20, i32 0, i32 0, !dbg !160
  %21 = load i32, i32* %link, align 4, !dbg !160
  %tobool46 = icmp ne i32 %21, 0, !dbg !158
  br i1 %tobool46, label %if.then47, label %if.end87, !dbg !161

if.then47:                                        ; preds = %if.end24
  %22 = load i16, i16* %bmsr, align 2, !dbg !162
  %conv48 = zext i16 %22 to i32, !dbg !162
  %or49 = or i32 %conv48, 36, !dbg !162
  %conv50 = trunc i32 %or49 to i16, !dbg !162
  store i16 %conv50, i16* %bmsr, align 2, !dbg !162
  %23 = load i32, i32* %speed_index, align 4, !dbg !164
  %idxprom51 = sext i32 %23 to i64, !dbg !165
  %arrayidx52 = getelementptr [3 x %struct.swmii_regs], [3 x %struct.swmii_regs]* @speed, i64 0, i64 %idxprom51, !dbg !165
  %lpa53 = getelementptr inbounds %struct.swmii_regs, %struct.swmii_regs* %arrayidx52, i32 0, i32 1, !dbg !166
  %24 = load i16, i16* %lpa53, align 2, !dbg !166
  %conv54 = zext i16 %24 to i32, !dbg !165
  %25 = load i32, i32* %duplex_index, align 4, !dbg !167
  %idxprom55 = sext i32 %25 to i64, !dbg !168
  %arrayidx56 = getelementptr [2 x %struct.swmii_regs], [2 x %struct.swmii_regs]* @duplex, i64 0, i64 %idxprom55, !dbg !168
  %lpa57 = getelementptr inbounds %struct.swmii_regs, %struct.swmii_regs* %arrayidx56, i32 0, i32 1, !dbg !169
  %26 = load i16, i16* %lpa57, align 2, !dbg !169
  %conv58 = zext i16 %26 to i32, !dbg !168
  %and59 = and i32 %conv54, %conv58, !dbg !170
  %27 = load i16, i16* %lpa, align 2, !dbg !171
  %conv60 = zext i16 %27 to i32, !dbg !171
  %or61 = or i32 %conv60, %and59, !dbg !171
  %conv62 = trunc i32 %or61 to i16, !dbg !171
  store i16 %conv62, i16* %lpa, align 2, !dbg !171
  %28 = load i32, i32* %speed_index, align 4, !dbg !172
  %idxprom63 = sext i32 %28 to i64, !dbg !173
  %arrayidx64 = getelementptr [3 x %struct.swmii_regs], [3 x %struct.swmii_regs]* @speed, i64 0, i64 %idxprom63, !dbg !173
  %lpagb65 = getelementptr inbounds %struct.swmii_regs, %struct.swmii_regs* %arrayidx64, i32 0, i32 2, !dbg !174
  %29 = load i16, i16* %lpagb65, align 4, !dbg !174
  %conv66 = zext i16 %29 to i32, !dbg !173
  %30 = load i32, i32* %duplex_index, align 4, !dbg !175
  %idxprom67 = sext i32 %30 to i64, !dbg !176
  %arrayidx68 = getelementptr [2 x %struct.swmii_regs], [2 x %struct.swmii_regs]* @duplex, i64 0, i64 %idxprom67, !dbg !176
  %lpagb69 = getelementptr inbounds %struct.swmii_regs, %struct.swmii_regs* %arrayidx68, i32 0, i32 2, !dbg !177
  %31 = load i16, i16* %lpagb69, align 4, !dbg !177
  %conv70 = zext i16 %31 to i32, !dbg !176
  %and71 = and i32 %conv66, %conv70, !dbg !178
  %32 = load i16, i16* %lpagb, align 2, !dbg !179
  %conv72 = zext i16 %32 to i32, !dbg !179
  %or73 = or i32 %conv72, %and71, !dbg !179
  %conv74 = trunc i32 %or73 to i16, !dbg !179
  store i16 %conv74, i16* %lpagb, align 2, !dbg !179
  %33 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %state.addr, align 8, !dbg !180
  %pause = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %33, i32 0, i32 3, !dbg !182
  %34 = load i32, i32* %pause, align 4, !dbg !182
  %tobool75 = icmp ne i32 %34, 0, !dbg !180
  br i1 %tobool75, label %if.then76, label %if.end80, !dbg !183

if.then76:                                        ; preds = %if.then47
  %35 = load i16, i16* %lpa, align 2, !dbg !184
  %conv77 = zext i16 %35 to i32, !dbg !184
  %or78 = or i32 %conv77, 1024, !dbg !184
  %conv79 = trunc i32 %or78 to i16, !dbg !184
  store i16 %conv79, i16* %lpa, align 2, !dbg !184
  br label %if.end80, !dbg !185

if.end80:                                         ; preds = %if.then76, %if.then47
  %36 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %state.addr, align 8, !dbg !186
  %asym_pause = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %36, i32 0, i32 4, !dbg !188
  %37 = load i32, i32* %asym_pause, align 4, !dbg !188
  %tobool81 = icmp ne i32 %37, 0, !dbg !186
  br i1 %tobool81, label %if.then82, label %if.end86, !dbg !189

if.then82:                                        ; preds = %if.end80
  %38 = load i16, i16* %lpa, align 2, !dbg !190
  %conv83 = zext i16 %38 to i32, !dbg !190
  %or84 = or i32 %conv83, 2048, !dbg !190
  %conv85 = trunc i32 %or84 to i16, !dbg !190
  store i16 %conv85, i16* %lpa, align 2, !dbg !190
  br label %if.end86, !dbg !191

if.end86:                                         ; preds = %if.then82, %if.end80
  br label %if.end87, !dbg !192

if.end87:                                         ; preds = %if.end86, %if.end24
  %39 = load i32, i32* %reg.addr, align 4, !dbg !193
  switch i32 %39, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb88
    i32 2, label %sw.bb90
    i32 3, label %sw.bb90
    i32 5, label %sw.bb91
    i32 10, label %sw.bb93
    i32 15, label %sw.bb95
    i32 13, label %sw.bb97
    i32 14, label %sw.bb97
  ], !dbg !194

sw.bb:                                            ; preds = %if.end87
  store i32 4096, i32* %retval, align 4, !dbg !195
  br label %return, !dbg !195

sw.bb88:                                          ; preds = %if.end87
  %40 = load i16, i16* %bmsr, align 2, !dbg !197
  %conv89 = zext i16 %40 to i32, !dbg !197
  store i32 %conv89, i32* %retval, align 4, !dbg !198
  br label %return, !dbg !198

sw.bb90:                                          ; preds = %if.end87, %if.end87
  store i32 0, i32* %retval, align 4, !dbg !199
  br label %return, !dbg !199

sw.bb91:                                          ; preds = %if.end87
  %41 = load i16, i16* %lpa, align 2, !dbg !200
  %conv92 = zext i16 %41 to i32, !dbg !200
  store i32 %conv92, i32* %retval, align 4, !dbg !201
  br label %return, !dbg !201

sw.bb93:                                          ; preds = %if.end87
  %42 = load i16, i16* %lpagb, align 2, !dbg !202
  %conv94 = zext i16 %42 to i32, !dbg !202
  store i32 %conv94, i32* %retval, align 4, !dbg !203
  br label %return, !dbg !203

sw.bb95:                                          ; preds = %if.end87
  %43 = load i16, i16* %estat, align 2, !dbg !204
  %conv96 = zext i16 %43 to i32, !dbg !204
  store i32 %conv96, i32* %retval, align 4, !dbg !205
  br label %return, !dbg !205

sw.bb97:                                          ; preds = %if.end87, %if.end87
  store i32 -1, i32* %retval, align 4, !dbg !206
  br label %return, !dbg !206

sw.default:                                       ; preds = %if.end87
  store i32 65535, i32* %retval, align 4, !dbg !207
  br label %return, !dbg !207

return:                                           ; preds = %sw.default, %sw.bb97, %sw.bb95, %sw.bb93, %sw.bb91, %sw.bb90, %sw.bb88, %sw.bb, %if.then23, %if.then
  %44 = load i32, i32* %retval, align 4, !dbg !208
  ret i32 %44, !dbg !208
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }
attributes #4 = { cold noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "speed", scope: !2, file: !3, line: 41, type: !31, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/phy/swphy.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 28, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12}
!8 = !DIEnumerator(name: "SWMII_SPEED_10", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "SWMII_SPEED_100", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "SWMII_SPEED_1000", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "SWMII_DUPLEX_HALF", value: 0, isUnsigned: true)
!12 = !DIEnumerator(name: "SWMII_DUPLEX_FULL", value: 1, isUnsigned: true)
!13 = !{!0, !14}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "duplex", scope: !2, file: !3, line: 56, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !29)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swmii_regs", file: !3, line: 21, size: 64, elements: !19)
!19 = !{!20, !26, !27, !28}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "bmsr", scope: !18, file: !3, line: 22, baseType: !21, size: 16)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !22, line: 19, baseType: !23)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !24, line: 24, baseType: !25)
!24 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!25 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "lpa", scope: !18, file: !3, line: 23, baseType: !21, size: 16, offset: 16)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "lpagb", scope: !18, file: !3, line: 24, baseType: !21, size: 16, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "estat", scope: !18, file: !3, line: 25, baseType: !21, size: 16, offset: 48)
!29 = !{!30}
!30 = !DISubrange(count: 2)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 192, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 3)
!34 = !{i32 7, !"Dwarf Version", i32 4}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"Code Model", i32 2}
!38 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!39 = distinct !DISubprogram(name: "swphy_validate_state", scope: !3, file: !3, line: 93, type: !40, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !53)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !43}
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_phy_status", file: !46, line: 5, size: 160, elements: !47)
!46 = !DIFile(filename: "./include/linux/phy_fixed.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !45, file: !46, line: 6, baseType: !42, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !45, file: !46, line: 7, baseType: !42, size: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "duplex", scope: !45, file: !46, line: 8, baseType: !42, size: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "pause", scope: !45, file: !46, line: 9, baseType: !42, size: 32, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "asym_pause", scope: !45, file: !46, line: 10, baseType: !42, size: 32, offset: 128)
!53 = !{}
!54 = !DILocalVariable(name: "state", arg: 1, scope: !39, file: !3, line: 93, type: !43)
!55 = !DILocation(line: 93, column: 57, scope: !39)
!56 = !DILocalVariable(name: "err", scope: !39, file: !3, line: 95, type: !42)
!57 = !DILocation(line: 95, column: 6, scope: !39)
!58 = !DILocation(line: 97, column: 6, scope: !59)
!59 = distinct !DILexicalBlock(scope: !39, file: !3, line: 97, column: 6)
!60 = !DILocation(line: 97, column: 13, scope: !59)
!61 = !DILocation(line: 97, column: 6, scope: !39)
!62 = !DILocation(line: 98, column: 28, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !3, line: 97, column: 19)
!64 = !DILocation(line: 98, column: 35, scope: !63)
!65 = !DILocation(line: 98, column: 9, scope: !63)
!66 = !DILocation(line: 98, column: 7, scope: !63)
!67 = !DILocation(line: 99, column: 7, scope: !68)
!68 = distinct !DILexicalBlock(scope: !63, file: !3, line: 99, column: 7)
!69 = !DILocation(line: 99, column: 11, scope: !68)
!70 = !DILocation(line: 99, column: 7, scope: !63)
!71 = !DILocation(line: 100, column: 4, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !3, line: 99, column: 16)
!73 = !DILocation(line: 101, column: 4, scope: !72)
!74 = !DILocation(line: 103, column: 2, scope: !63)
!75 = !DILocation(line: 104, column: 2, scope: !39)
!76 = !DILocation(line: 105, column: 1, scope: !39)
!77 = distinct !DISubprogram(name: "swphy_decode_speed", scope: !3, file: !3, line: 71, type: !78, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !53)
!78 = !DISubroutineType(types: !79)
!79 = !{!42, !42}
!80 = !DILocalVariable(name: "speed", arg: 1, scope: !77, file: !3, line: 71, type: !42)
!81 = !DILocation(line: 71, column: 35, scope: !77)
!82 = !DILocation(line: 73, column: 10, scope: !77)
!83 = !DILocation(line: 73, column: 2, scope: !77)
!84 = !DILocation(line: 75, column: 3, scope: !85)
!85 = distinct !DILexicalBlock(scope: !77, file: !3, line: 73, column: 17)
!86 = !DILocation(line: 77, column: 3, scope: !85)
!87 = !DILocation(line: 79, column: 3, scope: !85)
!88 = !DILocation(line: 81, column: 3, scope: !85)
!89 = !DILocation(line: 83, column: 1, scope: !77)
!90 = distinct !DISubprogram(name: "swphy_read_reg", scope: !3, file: !3, line: 115, type: !91, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !53)
!91 = !DISubroutineType(types: !92)
!92 = !{!42, !42, !43}
!93 = !DILocalVariable(name: "reg", arg: 1, scope: !90, file: !3, line: 115, type: !42)
!94 = !DILocation(line: 115, column: 24, scope: !90)
!95 = !DILocalVariable(name: "state", arg: 2, scope: !90, file: !3, line: 115, type: !43)
!96 = !DILocation(line: 115, column: 60, scope: !90)
!97 = !DILocalVariable(name: "speed_index", scope: !90, file: !3, line: 117, type: !42)
!98 = !DILocation(line: 117, column: 6, scope: !90)
!99 = !DILocalVariable(name: "duplex_index", scope: !90, file: !3, line: 117, type: !42)
!100 = !DILocation(line: 117, column: 19, scope: !90)
!101 = !DILocalVariable(name: "bmsr", scope: !90, file: !3, line: 118, type: !21)
!102 = !DILocation(line: 118, column: 6, scope: !90)
!103 = !DILocalVariable(name: "estat", scope: !90, file: !3, line: 119, type: !21)
!104 = !DILocation(line: 119, column: 6, scope: !90)
!105 = !DILocalVariable(name: "lpagb", scope: !90, file: !3, line: 120, type: !21)
!106 = !DILocation(line: 120, column: 6, scope: !90)
!107 = !DILocalVariable(name: "lpa", scope: !90, file: !3, line: 121, type: !21)
!108 = !DILocation(line: 121, column: 6, scope: !90)
!109 = !DILocation(line: 123, column: 6, scope: !110)
!110 = distinct !DILexicalBlock(scope: !90, file: !3, line: 123, column: 6)
!111 = !DILocation(line: 123, column: 10, scope: !110)
!112 = !DILocation(line: 123, column: 6, scope: !90)
!113 = !DILocation(line: 124, column: 3, scope: !110)
!114 = !DILocation(line: 126, column: 35, scope: !90)
!115 = !DILocation(line: 126, column: 42, scope: !90)
!116 = !DILocation(line: 126, column: 16, scope: !90)
!117 = !DILocation(line: 126, column: 14, scope: !90)
!118 = !DILocalVariable(name: "__ret_warn_on", scope: !119, file: !3, line: 127, type: !42)
!119 = distinct !DILexicalBlock(scope: !120, file: !3, line: 127, column: 6)
!120 = distinct !DILexicalBlock(scope: !90, file: !3, line: 127, column: 6)
!121 = !DILocation(line: 127, column: 6, scope: !119)
!122 = !DILocation(line: 127, column: 6, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !3, line: 127, column: 6)
!124 = !DILocation(line: 127, column: 6, scope: !125)
!125 = distinct !DILexicalBlock(scope: !123, file: !3, line: 127, column: 6)
!126 = !DILocation(line: 127, column: 6, scope: !127)
!127 = distinct !DILexicalBlock(scope: !125, file: !3, line: 127, column: 6)
!128 = !DILocation(line: 127, column: 6, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !3, line: 127, column: 6)
!130 = !{i32 -2141112859, i32 -2141112830, i32 -2141112784, i32 -2141112726, i32 -2141112672, i32 -2141112618, i32 -2141112563, i32 -2141112532}
!131 = !DILocation(line: 127, column: 6, scope: !132)
!132 = distinct !DILexicalBlock(scope: !125, file: !3, line: 127, column: 6)
!133 = !{i32 -2141112127, i32 -2141112120, i32 -2141112068, i32 -2141112037, i32 -2141112007}
!134 = !DILocation(line: 127, column: 6, scope: !135)
!135 = distinct !DILexicalBlock(scope: !125, file: !3, line: 127, column: 6)
!136 = !DILocation(line: 127, column: 6, scope: !120)
!137 = !DILocation(line: 127, column: 6, scope: !90)
!138 = !DILocation(line: 128, column: 3, scope: !120)
!139 = !DILocation(line: 130, column: 17, scope: !90)
!140 = !DILocation(line: 130, column: 24, scope: !90)
!141 = !DILocation(line: 130, column: 15, scope: !90)
!142 = !DILocation(line: 132, column: 16, scope: !90)
!143 = !DILocation(line: 132, column: 10, scope: !90)
!144 = !DILocation(line: 132, column: 29, scope: !90)
!145 = !DILocation(line: 132, column: 43, scope: !90)
!146 = !DILocation(line: 132, column: 36, scope: !90)
!147 = !DILocation(line: 132, column: 57, scope: !90)
!148 = !DILocation(line: 132, column: 34, scope: !90)
!149 = !DILocation(line: 132, column: 7, scope: !90)
!150 = !DILocation(line: 133, column: 17, scope: !90)
!151 = !DILocation(line: 133, column: 11, scope: !90)
!152 = !DILocation(line: 133, column: 30, scope: !90)
!153 = !DILocation(line: 133, column: 45, scope: !90)
!154 = !DILocation(line: 133, column: 38, scope: !90)
!155 = !DILocation(line: 133, column: 59, scope: !90)
!156 = !DILocation(line: 133, column: 36, scope: !90)
!157 = !DILocation(line: 133, column: 8, scope: !90)
!158 = !DILocation(line: 135, column: 6, scope: !159)
!159 = distinct !DILexicalBlock(scope: !90, file: !3, line: 135, column: 6)
!160 = !DILocation(line: 135, column: 13, scope: !159)
!161 = !DILocation(line: 135, column: 6, scope: !90)
!162 = !DILocation(line: 136, column: 8, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !3, line: 135, column: 19)
!164 = !DILocation(line: 138, column: 18, scope: !163)
!165 = !DILocation(line: 138, column: 12, scope: !163)
!166 = !DILocation(line: 138, column: 31, scope: !163)
!167 = !DILocation(line: 138, column: 46, scope: !163)
!168 = !DILocation(line: 138, column: 39, scope: !163)
!169 = !DILocation(line: 138, column: 60, scope: !163)
!170 = !DILocation(line: 138, column: 37, scope: !163)
!171 = !DILocation(line: 138, column: 9, scope: !163)
!172 = !DILocation(line: 139, column: 18, scope: !163)
!173 = !DILocation(line: 139, column: 12, scope: !163)
!174 = !DILocation(line: 139, column: 31, scope: !163)
!175 = !DILocation(line: 139, column: 46, scope: !163)
!176 = !DILocation(line: 139, column: 39, scope: !163)
!177 = !DILocation(line: 139, column: 60, scope: !163)
!178 = !DILocation(line: 139, column: 37, scope: !163)
!179 = !DILocation(line: 139, column: 9, scope: !163)
!180 = !DILocation(line: 141, column: 7, scope: !181)
!181 = distinct !DILexicalBlock(scope: !163, file: !3, line: 141, column: 7)
!182 = !DILocation(line: 141, column: 14, scope: !181)
!183 = !DILocation(line: 141, column: 7, scope: !163)
!184 = !DILocation(line: 142, column: 8, scope: !181)
!185 = !DILocation(line: 142, column: 4, scope: !181)
!186 = !DILocation(line: 144, column: 7, scope: !187)
!187 = distinct !DILexicalBlock(scope: !163, file: !3, line: 144, column: 7)
!188 = !DILocation(line: 144, column: 14, scope: !187)
!189 = !DILocation(line: 144, column: 7, scope: !163)
!190 = !DILocation(line: 145, column: 8, scope: !187)
!191 = !DILocation(line: 145, column: 4, scope: !187)
!192 = !DILocation(line: 146, column: 2, scope: !163)
!193 = !DILocation(line: 148, column: 10, scope: !90)
!194 = !DILocation(line: 148, column: 2, scope: !90)
!195 = !DILocation(line: 150, column: 3, scope: !196)
!196 = distinct !DILexicalBlock(scope: !90, file: !3, line: 148, column: 15)
!197 = !DILocation(line: 152, column: 10, scope: !196)
!198 = !DILocation(line: 152, column: 3, scope: !196)
!199 = !DILocation(line: 155, column: 3, scope: !196)
!200 = !DILocation(line: 157, column: 10, scope: !196)
!201 = !DILocation(line: 157, column: 3, scope: !196)
!202 = !DILocation(line: 159, column: 10, scope: !196)
!203 = !DILocation(line: 159, column: 3, scope: !196)
!204 = !DILocation(line: 161, column: 10, scope: !196)
!205 = !DILocation(line: 161, column: 3, scope: !196)
!206 = !DILocation(line: 169, column: 3, scope: !196)
!207 = !DILocation(line: 172, column: 3, scope: !196)
!208 = !DILocation(line: 174, column: 1, scope: !90)
