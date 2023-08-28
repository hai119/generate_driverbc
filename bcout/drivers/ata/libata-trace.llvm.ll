; ModuleID = '../bcout/drivers/ata/libata-trace.llvm.bc'
source_filename = "drivers/ata/libata-trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { i8*, i64, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"BUSY \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"DRDY \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DF \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DSC \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"DRQ \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"CORR \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SENSE \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ERR \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"REVALIDATE \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"RESET \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"SOFTRESET \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"HARDRESET \00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"ENABLE_LINK \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"PARK \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"DEV \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"HSM \00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"TIMEOUT \00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"MEDIA \00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"ATA_BUS \00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"HOST_BUS \00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"SYSTEM \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"INVALID \00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"OTHER \00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"NODEV_HINT \00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"NCQ \00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"ACTIVE \00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"DMAMAP \00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"IO \00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"RESULT_TF \00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"CLEAR_EXCL \00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"QUIET \00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"RETRY \00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"FAILED \00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"SENSE_VALID \00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"EH_SCHEDULED \00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c" READ_LOG_DMA_EXT\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c" ZAC_MGMT_IN\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c" WRITE_LOG_DMA_EXT\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c" DATASET_MANAGEMENT\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c" ABORT_QUEUE\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c" SET_FEATURES\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c" ZERO_EXT\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c" ZAC_MGMT_OUT\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c" REPORT_ZONES\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c" CLOSE_ZONE\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c" FINISH_ZONE\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c" OPEN_ZONE\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c" RESET_WRITE_POINTER\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @libata_trace_parse_status(%struct.trace_seq* %p, i8 zeroext %status) #0 !dbg !674 {
entry:
  %p.addr = alloca %struct.trace_seq*, align 8
  %status.addr = alloca i8, align 1
  %ret = alloca i8*, align 8
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !709, metadata !DIExpression()), !dbg !710
  store i8 %status, i8* %status.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %status.addr, metadata !711, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !713, metadata !DIExpression()), !dbg !714
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !715
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #2, !dbg !716
  store i8* %call, i8** %ret, align 8, !dbg !714
  %1 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !717
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #2, !dbg !718
  %2 = load i8, i8* %status.addr, align 1, !dbg !719
  %conv = zext i8 %2 to i32, !dbg !719
  %and = and i32 %conv, 128, !dbg !721
  %tobool = icmp ne i32 %and, 0, !dbg !721
  br i1 %tobool, label %if.then, label %if.end, !dbg !722

if.then:                                          ; preds = %entry
  %3 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !723
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !724
  br label %if.end, !dbg !724

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* %status.addr, align 1, !dbg !725
  %conv1 = zext i8 %4 to i32, !dbg !725
  %and2 = and i32 %conv1, 64, !dbg !727
  %tobool3 = icmp ne i32 %and2, 0, !dbg !727
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !728

if.then4:                                         ; preds = %if.end
  %5 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !729
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !730
  br label %if.end5, !dbg !730

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = load i8, i8* %status.addr, align 1, !dbg !731
  %conv6 = zext i8 %6 to i32, !dbg !731
  %and7 = and i32 %conv6, 32, !dbg !733
  %tobool8 = icmp ne i32 %and7, 0, !dbg !733
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !734

if.then9:                                         ; preds = %if.end5
  %7 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !735
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #2, !dbg !736
  br label %if.end10, !dbg !736

if.end10:                                         ; preds = %if.then9, %if.end5
  %8 = load i8, i8* %status.addr, align 1, !dbg !737
  %conv11 = zext i8 %8 to i32, !dbg !737
  %and12 = and i32 %conv11, 16, !dbg !739
  %tobool13 = icmp ne i32 %and12, 0, !dbg !739
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !740

if.then14:                                        ; preds = %if.end10
  %9 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !741
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #2, !dbg !742
  br label %if.end15, !dbg !742

if.end15:                                         ; preds = %if.then14, %if.end10
  %10 = load i8, i8* %status.addr, align 1, !dbg !743
  %conv16 = zext i8 %10 to i32, !dbg !743
  %and17 = and i32 %conv16, 8, !dbg !745
  %tobool18 = icmp ne i32 %and17, 0, !dbg !745
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !746

if.then19:                                        ; preds = %if.end15
  %11 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !747
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #2, !dbg !748
  br label %if.end20, !dbg !748

if.end20:                                         ; preds = %if.then19, %if.end15
  %12 = load i8, i8* %status.addr, align 1, !dbg !749
  %conv21 = zext i8 %12 to i32, !dbg !749
  %and22 = and i32 %conv21, 4, !dbg !751
  %tobool23 = icmp ne i32 %and22, 0, !dbg !751
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !752

if.then24:                                        ; preds = %if.end20
  %13 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !753
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #2, !dbg !754
  br label %if.end25, !dbg !754

if.end25:                                         ; preds = %if.then24, %if.end20
  %14 = load i8, i8* %status.addr, align 1, !dbg !755
  %conv26 = zext i8 %14 to i32, !dbg !755
  %and27 = and i32 %conv26, 2, !dbg !757
  %tobool28 = icmp ne i32 %and27, 0, !dbg !757
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !758

if.then29:                                        ; preds = %if.end25
  %15 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !759
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #2, !dbg !760
  br label %if.end30, !dbg !760

if.end30:                                         ; preds = %if.then29, %if.end25
  %16 = load i8, i8* %status.addr, align 1, !dbg !761
  %conv31 = zext i8 %16 to i32, !dbg !761
  %and32 = and i32 %conv31, 1, !dbg !763
  %tobool33 = icmp ne i32 %and32, 0, !dbg !763
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !764

if.then34:                                        ; preds = %if.end30
  %17 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !765
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #2, !dbg !766
  br label %if.end35, !dbg !766

if.end35:                                         ; preds = %if.then34, %if.end30
  %18 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !767
  call void @trace_seq_putc(%struct.trace_seq* %18, i8 zeroext 125) #2, !dbg !768
  %19 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !769
  call void @trace_seq_putc(%struct.trace_seq* %19, i8 zeroext 0) #2, !dbg !770
  %20 = load i8*, i8** %ret, align 8, !dbg !771
  ret i8* %20, !dbg !772
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @trace_seq_buffer_ptr(%struct.trace_seq* %s) #0 !dbg !773 {
entry:
  %s.addr = alloca %struct.trace_seq*, align 8
  store %struct.trace_seq* %s, %struct.trace_seq** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %s.addr, metadata !777, metadata !DIExpression()), !dbg !778
  %0 = load %struct.trace_seq*, %struct.trace_seq** %s.addr, align 8, !dbg !779
  %buffer = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %0, i32 0, i32 0, !dbg !780
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 0, !dbg !779
  %1 = load %struct.trace_seq*, %struct.trace_seq** %s.addr, align 8, !dbg !781
  %seq = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %1, i32 0, i32 1, !dbg !782
  %call = call i32 @seq_buf_used(%struct.seq_buf* %seq) #2, !dbg !783
  %idx.ext = zext i32 %call to i64, !dbg !784
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %idx.ext, !dbg !784
  ret i8* %add.ptr, !dbg !785
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_seq_printf(%struct.trace_seq* %s, i8* %fmt, ...) #0 !dbg !786 {
entry:
  %s.addr = alloca %struct.trace_seq*, align 8
  %fmt.addr = alloca i8*, align 8
  store %struct.trace_seq* %s, %struct.trace_seq** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %s.addr, metadata !789, metadata !DIExpression()), !dbg !790
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !791, metadata !DIExpression()), !dbg !792
  ret void, !dbg !793
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_seq_putc(%struct.trace_seq* %s, i8 zeroext %c) #0 !dbg !794 {
entry:
  %s.addr = alloca %struct.trace_seq*, align 8
  %c.addr = alloca i8, align 1
  store %struct.trace_seq* %s, %struct.trace_seq** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %s.addr, metadata !797, metadata !DIExpression()), !dbg !798
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !799, metadata !DIExpression()), !dbg !800
  ret void, !dbg !801
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @libata_trace_parse_eh_action(%struct.trace_seq* %p, i32 %eh_action) #0 !dbg !802 {
entry:
  %p.addr = alloca %struct.trace_seq*, align 8
  %eh_action.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !805, metadata !DIExpression()), !dbg !806
  store i32 %eh_action, i32* %eh_action.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %eh_action.addr, metadata !807, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !809, metadata !DIExpression()), !dbg !810
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !811
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #2, !dbg !812
  store i8* %call, i8** %ret, align 8, !dbg !810
  %1 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !813
  %2 = load i32, i32* %eh_action.addr, align 4, !dbg !814
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %2) #2, !dbg !815
  %3 = load i32, i32* %eh_action.addr, align 4, !dbg !816
  %tobool = icmp ne i32 %3, 0, !dbg !816
  br i1 %tobool, label %if.then, label %if.end24, !dbg !818

if.then:                                          ; preds = %entry
  %4 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !819
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #2, !dbg !821
  %5 = load i32, i32* %eh_action.addr, align 4, !dbg !822
  %and = and i32 %5, 1, !dbg !824
  %tobool1 = icmp ne i32 %and, 0, !dbg !824
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !825

if.then2:                                         ; preds = %if.then
  %6 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !826
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)) #2, !dbg !827
  br label %if.end, !dbg !827

if.end:                                           ; preds = %if.then2, %if.then
  %7 = load i32, i32* %eh_action.addr, align 4, !dbg !828
  %and3 = and i32 %7, 6, !dbg !830
  %tobool4 = icmp ne i32 %and3, 0, !dbg !830
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !831

if.then5:                                         ; preds = %if.end
  %8 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !832
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #2, !dbg !833
  br label %if.end15, !dbg !833

if.else:                                          ; preds = %if.end
  %9 = load i32, i32* %eh_action.addr, align 4, !dbg !834
  %and6 = and i32 %9, 2, !dbg !836
  %tobool7 = icmp ne i32 %and6, 0, !dbg !836
  br i1 %tobool7, label %if.then8, label %if.else9, !dbg !837

if.then8:                                         ; preds = %if.else
  %10 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !838
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0)) #2, !dbg !839
  br label %if.end14, !dbg !839

if.else9:                                         ; preds = %if.else
  %11 = load i32, i32* %eh_action.addr, align 4, !dbg !840
  %and10 = and i32 %11, 4, !dbg !842
  %tobool11 = icmp ne i32 %and10, 0, !dbg !842
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !843

if.then12:                                        ; preds = %if.else9
  %12 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !844
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0)) #2, !dbg !845
  br label %if.end13, !dbg !845

if.end13:                                         ; preds = %if.then12, %if.else9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then5
  %13 = load i32, i32* %eh_action.addr, align 4, !dbg !846
  %and16 = and i32 %13, 8, !dbg !848
  %tobool17 = icmp ne i32 %and16, 0, !dbg !848
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !849

if.then18:                                        ; preds = %if.end15
  %14 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !850
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0)) #2, !dbg !851
  br label %if.end19, !dbg !851

if.end19:                                         ; preds = %if.then18, %if.end15
  %15 = load i32, i32* %eh_action.addr, align 4, !dbg !852
  %and20 = and i32 %15, 32, !dbg !854
  %tobool21 = icmp ne i32 %and20, 0, !dbg !854
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !855

if.then22:                                        ; preds = %if.end19
  %16 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !856
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #2, !dbg !857
  br label %if.end23, !dbg !857

if.end23:                                         ; preds = %if.then22, %if.end19
  %17 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !858
  call void @trace_seq_putc(%struct.trace_seq* %17, i8 zeroext 125) #2, !dbg !859
  br label %if.end24, !dbg !860

if.end24:                                         ; preds = %if.end23, %entry
  %18 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !861
  call void @trace_seq_putc(%struct.trace_seq* %18, i8 zeroext 0) #2, !dbg !862
  %19 = load i8*, i8** %ret, align 8, !dbg !863
  ret i8* %19, !dbg !864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @libata_trace_parse_eh_err_mask(%struct.trace_seq* %p, i32 %eh_err_mask) #0 !dbg !865 {
entry:
  %p.addr = alloca %struct.trace_seq*, align 8
  %eh_err_mask.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !866, metadata !DIExpression()), !dbg !867
  store i32 %eh_err_mask, i32* %eh_err_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %eh_err_mask.addr, metadata !868, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !870, metadata !DIExpression()), !dbg !871
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !872
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #2, !dbg !873
  store i8* %call, i8** %ret, align 8, !dbg !871
  %1 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !874
  %2 = load i32, i32* %eh_err_mask.addr, align 4, !dbg !875
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %2) #2, !dbg !876
  %3 = load i32, i32* %eh_err_mask.addr, align 4, !dbg !877
  %tobool = icmp ne i32 %3, 0, !dbg !877
  br i1 %tobool, label %if.then, label %if.end43, !dbg !879

if.then:                                          ; preds = %entry
  %4 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !880
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #2, !dbg !882
  %5 = load i32, i32* %eh_err_mask.addr, align 4, !dbg !883
  %and = and i32 %5, 1, !dbg !885
  %tobool1 = icmp ne i32 %and, 0, !dbg !885
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !886

if.then2:                                         ; preds = %if.then
  %6 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !887
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #2, !dbg !888
  br label %if.end, !dbg !888

if.end:                                           ; preds = %if.then2, %if.then
  %7 = load i32, i32* %eh_err_mask.addr, align 4, !dbg !889
  %and3 = and i32 %7, 2, !dbg !891
  %tobool4 = icmp ne i32 %and3, 0, !dbg !891
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !892

if.then5:                                         ; preds = %if.end
  %8 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !893
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #2, !dbg !894
  br label %if.end6, !dbg !894

if.end6:                                          ; preds = %if.then5, %if.end
  %9 = load i32, i32* %eh_err_mask.addr, align 4, !dbg !895
  %and7 = and i32 %9, 4, !dbg !897
  %tobool8 = icmp ne i32 %and7, 0, !dbg !897
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !898

if.then9:                                         ; preds = %if.end6
  %10 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !899
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0)) #2, !dbg !900
  br label %if.end10, !dbg !900

if.end10:                                         ; preds = %if.then9, %if.end6
  %11 = load i32, i32* %eh_err_mask.addr, align 4, !dbg !901
  %and11 = and i32 %11, 8, !dbg !903
  %tobool12 = icmp ne i32 %and11, 0, !dbg !903
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !904

if.then13:                                        ; preds = %if.end10
  %12 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !905
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)) #2, !dbg !906
  br label %if.end14, !dbg !906

if.end14:                                         ; preds = %if.then13, %if.end10
  %13 = load i32, i32* %eh_err_mask.addr, align 4, !dbg !907
  %and15 = and i32 %13, 16, !dbg !909
  %tobool16 = icmp ne i32 %and15, 0, !dbg !909
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !910

if.then17:                                        ; preds = %if.end14
  %14 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !911
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)) #2, !dbg !912
  br label %if.end18, !dbg !912

if.end18:                                         ; preds = %if.then17, %if.end14
  %15 = load i32, i32* %eh_err_mask.addr, align 4, !dbg !913
  %and19 = and i32 %15, 32, !dbg !915
  %tobool20 = icmp ne i32 %and19, 0, !dbg !915
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !916

if.then21:                                        ; preds = %if.end18
  %16 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !917
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #2, !dbg !918
  br label %if.end22, !dbg !918

if.end22:                                         ; preds = %if.then21, %if.end18
  %17 = load i32, i32* %eh_err_mask.addr, align 4, !dbg !919
  %and23 = and i32 %17, 64, !dbg !921
  %tobool24 = icmp ne i32 %and23, 0, !dbg !921
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !922

if.then25:                                        ; preds = %if.end22
  %18 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !923
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0)) #2, !dbg !924
  br label %if.end26, !dbg !924

if.end26:                                         ; preds = %if.then25, %if.end22
  %19 = load i32, i32* %eh_err_mask.addr, align 4, !dbg !925
  %and27 = and i32 %19, 128, !dbg !927
  %tobool28 = icmp ne i32 %and27, 0, !dbg !927
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !928

if.then29:                                        ; preds = %if.end26
  %20 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !929
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)) #2, !dbg !930
  br label %if.end30, !dbg !930

if.end30:                                         ; preds = %if.then29, %if.end26
  %21 = load i32, i32* %eh_err_mask.addr, align 4, !dbg !931
  %and31 = and i32 %21, 256, !dbg !933
  %tobool32 = icmp ne i32 %and31, 0, !dbg !933
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !934

if.then33:                                        ; preds = %if.end30
  %22 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !935
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0)) #2, !dbg !936
  br label %if.end34, !dbg !936

if.end34:                                         ; preds = %if.then33, %if.end30
  %23 = load i32, i32* %eh_err_mask.addr, align 4, !dbg !937
  %and35 = and i32 %23, 512, !dbg !939
  %tobool36 = icmp ne i32 %and35, 0, !dbg !939
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !940

if.then37:                                        ; preds = %if.end34
  %24 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !941
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #2, !dbg !942
  br label %if.end38, !dbg !942

if.end38:                                         ; preds = %if.then37, %if.end34
  %25 = load i32, i32* %eh_err_mask.addr, align 4, !dbg !943
  %and39 = and i32 %25, 1024, !dbg !945
  %tobool40 = icmp ne i32 %and39, 0, !dbg !945
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !946

if.then41:                                        ; preds = %if.end38
  %26 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !947
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)) #2, !dbg !948
  br label %if.end42, !dbg !948

if.end42:                                         ; preds = %if.then41, %if.end38
  %27 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !949
  call void @trace_seq_putc(%struct.trace_seq* %27, i8 zeroext 125) #2, !dbg !950
  br label %if.end43, !dbg !951

if.end43:                                         ; preds = %if.end42, %entry
  %28 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !952
  call void @trace_seq_putc(%struct.trace_seq* %28, i8 zeroext 0) #2, !dbg !953
  %29 = load i8*, i8** %ret, align 8, !dbg !954
  ret i8* %29, !dbg !955
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @libata_trace_parse_qc_flags(%struct.trace_seq* %p, i32 %qc_flags) #0 !dbg !956 {
entry:
  %p.addr = alloca %struct.trace_seq*, align 8
  %qc_flags.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !957, metadata !DIExpression()), !dbg !958
  store i32 %qc_flags, i32* %qc_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %qc_flags.addr, metadata !959, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !961, metadata !DIExpression()), !dbg !962
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !963
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #2, !dbg !964
  store i8* %call, i8** %ret, align 8, !dbg !962
  %1 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !965
  %2 = load i32, i32* %qc_flags.addr, align 4, !dbg !966
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %2) #2, !dbg !967
  %3 = load i32, i32* %qc_flags.addr, align 4, !dbg !968
  %tobool = icmp ne i32 %3, 0, !dbg !968
  br i1 %tobool, label %if.then, label %if.end39, !dbg !970

if.then:                                          ; preds = %entry
  %4 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !971
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #2, !dbg !973
  %5 = load i32, i32* %qc_flags.addr, align 4, !dbg !974
  %and = and i32 %5, 1, !dbg !976
  %tobool1 = icmp ne i32 %and, 0, !dbg !976
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !977

if.then2:                                         ; preds = %if.then
  %6 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !978
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)) #2, !dbg !979
  br label %if.end, !dbg !979

if.end:                                           ; preds = %if.then2, %if.then
  %7 = load i32, i32* %qc_flags.addr, align 4, !dbg !980
  %and3 = and i32 %7, 2, !dbg !982
  %tobool4 = icmp ne i32 %and3, 0, !dbg !982
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !983

if.then5:                                         ; preds = %if.end
  %8 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !984
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)) #2, !dbg !985
  br label %if.end6, !dbg !985

if.end6:                                          ; preds = %if.then5, %if.end
  %9 = load i32, i32* %qc_flags.addr, align 4, !dbg !986
  %and7 = and i32 %9, 8, !dbg !988
  %tobool8 = icmp ne i32 %and7, 0, !dbg !988
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !989

if.then9:                                         ; preds = %if.end6
  %10 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !990
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)) #2, !dbg !991
  br label %if.end10, !dbg !991

if.end10:                                         ; preds = %if.then9, %if.end6
  %11 = load i32, i32* %qc_flags.addr, align 4, !dbg !992
  %and11 = and i32 %11, 16, !dbg !994
  %tobool12 = icmp ne i32 %and11, 0, !dbg !994
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !995

if.then13:                                        ; preds = %if.end10
  %12 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !996
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0)) #2, !dbg !997
  br label %if.end14, !dbg !997

if.end14:                                         ; preds = %if.then13, %if.end10
  %13 = load i32, i32* %qc_flags.addr, align 4, !dbg !998
  %and15 = and i32 %13, 32, !dbg !1000
  %tobool16 = icmp ne i32 %and15, 0, !dbg !1000
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !1001

if.then17:                                        ; preds = %if.end14
  %14 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1002
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #2, !dbg !1003
  br label %if.end18, !dbg !1003

if.end18:                                         ; preds = %if.then17, %if.end14
  %15 = load i32, i32* %qc_flags.addr, align 4, !dbg !1004
  %and19 = and i32 %15, 64, !dbg !1006
  %tobool20 = icmp ne i32 %and19, 0, !dbg !1006
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !1007

if.then21:                                        ; preds = %if.end18
  %16 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1008
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0)) #2, !dbg !1009
  br label %if.end22, !dbg !1009

if.end22:                                         ; preds = %if.then21, %if.end18
  %17 = load i32, i32* %qc_flags.addr, align 4, !dbg !1010
  %and23 = and i32 %17, 128, !dbg !1012
  %tobool24 = icmp ne i32 %and23, 0, !dbg !1012
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1013

if.then25:                                        ; preds = %if.end22
  %18 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1014
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0)) #2, !dbg !1015
  br label %if.end26, !dbg !1015

if.end26:                                         ; preds = %if.then25, %if.end22
  %19 = load i32, i32* %qc_flags.addr, align 4, !dbg !1016
  %and27 = and i32 %19, 65536, !dbg !1018
  %tobool28 = icmp ne i32 %and27, 0, !dbg !1018
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !1019

if.then29:                                        ; preds = %if.end26
  %20 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1020
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0)) #2, !dbg !1021
  br label %if.end30, !dbg !1021

if.end30:                                         ; preds = %if.then29, %if.end26
  %21 = load i32, i32* %qc_flags.addr, align 4, !dbg !1022
  %and31 = and i32 %21, 131072, !dbg !1024
  %tobool32 = icmp ne i32 %and31, 0, !dbg !1024
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !1025

if.then33:                                        ; preds = %if.end30
  %22 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1026
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0)) #2, !dbg !1027
  br label %if.end34, !dbg !1027

if.end34:                                         ; preds = %if.then33, %if.end30
  %23 = load i32, i32* %qc_flags.addr, align 4, !dbg !1028
  %and35 = and i32 %23, 262144, !dbg !1030
  %tobool36 = icmp ne i32 %and35, 0, !dbg !1030
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !1031

if.then37:                                        ; preds = %if.end34
  %24 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1032
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0)) #2, !dbg !1033
  br label %if.end38, !dbg !1033

if.end38:                                         ; preds = %if.then37, %if.end34
  %25 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1034
  call void @trace_seq_putc(%struct.trace_seq* %25, i8 zeroext 125) #2, !dbg !1035
  br label %if.end39, !dbg !1036

if.end39:                                         ; preds = %if.end38, %entry
  %26 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1037
  call void @trace_seq_putc(%struct.trace_seq* %26, i8 zeroext 0) #2, !dbg !1038
  %27 = load i8*, i8** %ret, align 8, !dbg !1039
  ret i8* %27, !dbg !1040
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @libata_trace_parse_subcmd(%struct.trace_seq* %p, i8 zeroext %cmd, i8 zeroext %feature, i8 zeroext %hob_nsect) #0 !dbg !1041 {
entry:
  %p.addr = alloca %struct.trace_seq*, align 8
  %cmd.addr = alloca i8, align 1
  %feature.addr = alloca i8, align 1
  %hob_nsect.addr = alloca i8, align 1
  %ret = alloca i8*, align 8
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !1044, metadata !DIExpression()), !dbg !1045
  store i8 %cmd, i8* %cmd.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cmd.addr, metadata !1046, metadata !DIExpression()), !dbg !1047
  store i8 %feature, i8* %feature.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %feature.addr, metadata !1048, metadata !DIExpression()), !dbg !1049
  store i8 %hob_nsect, i8* %hob_nsect.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %hob_nsect.addr, metadata !1050, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !1052, metadata !DIExpression()), !dbg !1053
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1054
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #2, !dbg !1055
  store i8* %call, i8** %ret, align 8, !dbg !1053
  %1 = load i8, i8* %cmd.addr, align 1, !dbg !1056
  %conv = zext i8 %1 to i32, !dbg !1056
  switch i32 %conv, label %sw.epilog28 [
    i32 101, label %sw.bb
    i32 100, label %sw.bb4
    i32 99, label %sw.bb10
    i32 74, label %sw.bb17
    i32 159, label %sw.bb21
  ], !dbg !1057

sw.bb:                                            ; preds = %entry
  %2 = load i8, i8* %hob_nsect.addr, align 1, !dbg !1058
  %conv1 = zext i8 %2 to i32, !dbg !1058
  %and = and i32 %conv1, 95, !dbg !1060
  switch i32 %and, label %sw.epilog [
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ], !dbg !1061

sw.bb2:                                           ; preds = %sw.bb
  %3 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1062
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0)) #2, !dbg !1064
  br label %sw.epilog, !dbg !1065

sw.bb3:                                           ; preds = %sw.bb
  %4 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1066
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0)) #2, !dbg !1067
  br label %sw.epilog, !dbg !1068

sw.epilog:                                        ; preds = %sw.bb, %sw.bb3, %sw.bb2
  br label %sw.epilog28, !dbg !1069

sw.bb4:                                           ; preds = %entry
  %5 = load i8, i8* %hob_nsect.addr, align 1, !dbg !1070
  %conv5 = zext i8 %5 to i32, !dbg !1070
  %and6 = and i32 %conv5, 95, !dbg !1071
  switch i32 %and6, label %sw.epilog9 [
    i32 2, label %sw.bb7
    i32 0, label %sw.bb8
  ], !dbg !1072

sw.bb7:                                           ; preds = %sw.bb4
  %6 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1073
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0)) #2, !dbg !1075
  br label %sw.epilog9, !dbg !1076

sw.bb8:                                           ; preds = %sw.bb4
  %7 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1077
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0)) #2, !dbg !1078
  br label %sw.epilog9, !dbg !1079

sw.epilog9:                                       ; preds = %sw.bb4, %sw.bb8, %sw.bb7
  br label %sw.epilog28, !dbg !1080

sw.bb10:                                          ; preds = %entry
  %8 = load i8, i8* %feature.addr, align 1, !dbg !1081
  %conv11 = zext i8 %8 to i32, !dbg !1081
  switch i32 %conv11, label %sw.epilog16 [
    i32 0, label %sw.bb12
    i32 5, label %sw.bb13
    i32 6, label %sw.bb14
    i32 7, label %sw.bb15
  ], !dbg !1082

sw.bb12:                                          ; preds = %sw.bb10
  %9 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1083
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0)) #2, !dbg !1085
  br label %sw.epilog16, !dbg !1086

sw.bb13:                                          ; preds = %sw.bb10
  %10 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1087
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0)) #2, !dbg !1088
  br label %sw.epilog16, !dbg !1089

sw.bb14:                                          ; preds = %sw.bb10
  %11 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1090
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0)) #2, !dbg !1091
  br label %sw.epilog16, !dbg !1092

sw.bb15:                                          ; preds = %sw.bb10
  %12 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1093
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0)) #2, !dbg !1094
  br label %sw.epilog16, !dbg !1095

sw.epilog16:                                      ; preds = %sw.bb10, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12
  br label %sw.epilog28, !dbg !1096

sw.bb17:                                          ; preds = %entry
  %13 = load i8, i8* %feature.addr, align 1, !dbg !1097
  %conv18 = zext i8 %13 to i32, !dbg !1097
  switch i32 %conv18, label %sw.epilog20 [
    i32 0, label %sw.bb19
  ], !dbg !1098

sw.bb19:                                          ; preds = %sw.bb17
  %14 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1099
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i64 0, i64 0)) #2, !dbg !1101
  br label %sw.epilog20, !dbg !1102

sw.epilog20:                                      ; preds = %sw.bb17, %sw.bb19
  br label %sw.epilog28, !dbg !1103

sw.bb21:                                          ; preds = %entry
  %15 = load i8, i8* %feature.addr, align 1, !dbg !1104
  %conv22 = zext i8 %15 to i32, !dbg !1104
  switch i32 %conv22, label %sw.epilog27 [
    i32 1, label %sw.bb23
    i32 2, label %sw.bb24
    i32 3, label %sw.bb25
    i32 4, label %sw.bb26
  ], !dbg !1105

sw.bb23:                                          ; preds = %sw.bb21
  %16 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1106
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #2, !dbg !1108
  br label %sw.epilog27, !dbg !1109

sw.bb24:                                          ; preds = %sw.bb21
  %17 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1110
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0)) #2, !dbg !1111
  br label %sw.epilog27, !dbg !1112

sw.bb25:                                          ; preds = %sw.bb21
  %18 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1113
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0)) #2, !dbg !1114
  br label %sw.epilog27, !dbg !1115

sw.bb26:                                          ; preds = %sw.bb21
  %19 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1116
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0)) #2, !dbg !1117
  br label %sw.epilog27, !dbg !1118

sw.epilog27:                                      ; preds = %sw.bb21, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23
  br label %sw.epilog28, !dbg !1119

sw.epilog28:                                      ; preds = %entry, %sw.epilog27, %sw.epilog20, %sw.epilog16, %sw.epilog9, %sw.epilog
  %20 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1120
  call void @trace_seq_putc(%struct.trace_seq* %20, i8 zeroext 0) #2, !dbg !1121
  %21 = load i8*, i8** %ret, align 8, !dbg !1122
  ret i8* %21, !dbg !1123
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @seq_buf_used(%struct.seq_buf* %s) #0 !dbg !1124 {
entry:
  %s.addr = alloca %struct.seq_buf*, align 8
  %__UNIQUE_ID___x189 = alloca i64, align 8
  %__UNIQUE_ID___y190 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.seq_buf* %s, %struct.seq_buf** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_buf** %s.addr, metadata !1128, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x189, metadata !1130, metadata !DIExpression()), !dbg !1132
  %0 = load %struct.seq_buf*, %struct.seq_buf** %s.addr, align 8, !dbg !1132
  %len = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %0, i32 0, i32 2, !dbg !1132
  %1 = load i64, i64* %len, align 8, !dbg !1132
  store i64 %1, i64* %__UNIQUE_ID___x189, align 8, !dbg !1132
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y190, metadata !1133, metadata !DIExpression()), !dbg !1132
  %2 = load %struct.seq_buf*, %struct.seq_buf** %s.addr, align 8, !dbg !1132
  %size = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %2, i32 0, i32 1, !dbg !1132
  %3 = load i64, i64* %size, align 8, !dbg !1132
  store i64 %3, i64* %__UNIQUE_ID___y190, align 8, !dbg !1132
  %4 = load i64, i64* %__UNIQUE_ID___x189, align 8, !dbg !1132
  %5 = load i64, i64* %__UNIQUE_ID___y190, align 8, !dbg !1132
  %cmp = icmp ult i64 %4, %5, !dbg !1132
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1132

cond.true:                                        ; preds = %entry
  %6 = load i64, i64* %__UNIQUE_ID___x189, align 8, !dbg !1132
  br label %cond.end, !dbg !1132

cond.false:                                       ; preds = %entry
  %7 = load i64, i64* %__UNIQUE_ID___y190, align 8, !dbg !1132
  br label %cond.end, !dbg !1132

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !1132
  store i64 %cond, i64* %tmp, align 8, !dbg !1132
  %8 = load i64, i64* %tmp, align 8, !dbg !1132
  %conv = trunc i64 %8 to i32, !dbg !1134
  ret i32 %conv, !dbg !1135
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!669, !670, !671, !672}
!llvm.ident = !{!673}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/ata/libata-trace.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !416, !654}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 25, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/ata.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415}
!7 = !DIEnumerator(name: "ATA_MAX_DEVICES", value: 2)
!8 = !DIEnumerator(name: "ATA_MAX_PRD", value: 256)
!9 = !DIEnumerator(name: "ATA_SECT_SIZE", value: 512)
!10 = !DIEnumerator(name: "ATA_MAX_SECTORS_128", value: 128)
!11 = !DIEnumerator(name: "ATA_MAX_SECTORS", value: 256)
!12 = !DIEnumerator(name: "ATA_MAX_SECTORS_1024", value: 1024)
!13 = !DIEnumerator(name: "ATA_MAX_SECTORS_LBA48", value: 65535)
!14 = !DIEnumerator(name: "ATA_MAX_SECTORS_TAPE", value: 65535)
!15 = !DIEnumerator(name: "ATA_MAX_TRIM_RNUM", value: 64)
!16 = !DIEnumerator(name: "ATA_ID_WORDS", value: 256)
!17 = !DIEnumerator(name: "ATA_ID_CONFIG", value: 0)
!18 = !DIEnumerator(name: "ATA_ID_CYLS", value: 1)
!19 = !DIEnumerator(name: "ATA_ID_HEADS", value: 3)
!20 = !DIEnumerator(name: "ATA_ID_SECTORS", value: 6)
!21 = !DIEnumerator(name: "ATA_ID_SERNO", value: 10)
!22 = !DIEnumerator(name: "ATA_ID_BUF_SIZE", value: 21)
!23 = !DIEnumerator(name: "ATA_ID_FW_REV", value: 23)
!24 = !DIEnumerator(name: "ATA_ID_PROD", value: 27)
!25 = !DIEnumerator(name: "ATA_ID_MAX_MULTSECT", value: 47)
!26 = !DIEnumerator(name: "ATA_ID_DWORD_IO", value: 48)
!27 = !DIEnumerator(name: "ATA_ID_TRUSTED", value: 48)
!28 = !DIEnumerator(name: "ATA_ID_CAPABILITY", value: 49)
!29 = !DIEnumerator(name: "ATA_ID_OLD_PIO_MODES", value: 51)
!30 = !DIEnumerator(name: "ATA_ID_OLD_DMA_MODES", value: 52)
!31 = !DIEnumerator(name: "ATA_ID_FIELD_VALID", value: 53)
!32 = !DIEnumerator(name: "ATA_ID_CUR_CYLS", value: 54)
!33 = !DIEnumerator(name: "ATA_ID_CUR_HEADS", value: 55)
!34 = !DIEnumerator(name: "ATA_ID_CUR_SECTORS", value: 56)
!35 = !DIEnumerator(name: "ATA_ID_MULTSECT", value: 59)
!36 = !DIEnumerator(name: "ATA_ID_LBA_CAPACITY", value: 60)
!37 = !DIEnumerator(name: "ATA_ID_SWDMA_MODES", value: 62)
!38 = !DIEnumerator(name: "ATA_ID_MWDMA_MODES", value: 63)
!39 = !DIEnumerator(name: "ATA_ID_PIO_MODES", value: 64)
!40 = !DIEnumerator(name: "ATA_ID_EIDE_DMA_MIN", value: 65)
!41 = !DIEnumerator(name: "ATA_ID_EIDE_DMA_TIME", value: 66)
!42 = !DIEnumerator(name: "ATA_ID_EIDE_PIO", value: 67)
!43 = !DIEnumerator(name: "ATA_ID_EIDE_PIO_IORDY", value: 68)
!44 = !DIEnumerator(name: "ATA_ID_ADDITIONAL_SUPP", value: 69)
!45 = !DIEnumerator(name: "ATA_ID_QUEUE_DEPTH", value: 75)
!46 = !DIEnumerator(name: "ATA_ID_SATA_CAPABILITY", value: 76)
!47 = !DIEnumerator(name: "ATA_ID_SATA_CAPABILITY_2", value: 77)
!48 = !DIEnumerator(name: "ATA_ID_FEATURE_SUPP", value: 78)
!49 = !DIEnumerator(name: "ATA_ID_MAJOR_VER", value: 80)
!50 = !DIEnumerator(name: "ATA_ID_COMMAND_SET_1", value: 82)
!51 = !DIEnumerator(name: "ATA_ID_COMMAND_SET_2", value: 83)
!52 = !DIEnumerator(name: "ATA_ID_CFSSE", value: 84)
!53 = !DIEnumerator(name: "ATA_ID_CFS_ENABLE_1", value: 85)
!54 = !DIEnumerator(name: "ATA_ID_CFS_ENABLE_2", value: 86)
!55 = !DIEnumerator(name: "ATA_ID_CSF_DEFAULT", value: 87)
!56 = !DIEnumerator(name: "ATA_ID_UDMA_MODES", value: 88)
!57 = !DIEnumerator(name: "ATA_ID_HW_CONFIG", value: 93)
!58 = !DIEnumerator(name: "ATA_ID_SPG", value: 98)
!59 = !DIEnumerator(name: "ATA_ID_LBA_CAPACITY_2", value: 100)
!60 = !DIEnumerator(name: "ATA_ID_SECTOR_SIZE", value: 106)
!61 = !DIEnumerator(name: "ATA_ID_WWN", value: 108)
!62 = !DIEnumerator(name: "ATA_ID_LOGICAL_SECTOR_SIZE", value: 117)
!63 = !DIEnumerator(name: "ATA_ID_COMMAND_SET_3", value: 119)
!64 = !DIEnumerator(name: "ATA_ID_COMMAND_SET_4", value: 120)
!65 = !DIEnumerator(name: "ATA_ID_LAST_LUN", value: 126)
!66 = !DIEnumerator(name: "ATA_ID_DLF", value: 128)
!67 = !DIEnumerator(name: "ATA_ID_CSFO", value: 129)
!68 = !DIEnumerator(name: "ATA_ID_CFA_POWER", value: 160)
!69 = !DIEnumerator(name: "ATA_ID_CFA_KEY_MGMT", value: 162)
!70 = !DIEnumerator(name: "ATA_ID_CFA_MODES", value: 163)
!71 = !DIEnumerator(name: "ATA_ID_DATA_SET_MGMT", value: 169)
!72 = !DIEnumerator(name: "ATA_ID_SCT_CMD_XPORT", value: 206)
!73 = !DIEnumerator(name: "ATA_ID_ROT_SPEED", value: 217)
!74 = !DIEnumerator(name: "ATA_ID_PIO4", value: 2)
!75 = !DIEnumerator(name: "ATA_ID_SERNO_LEN", value: 20)
!76 = !DIEnumerator(name: "ATA_ID_FW_REV_LEN", value: 8)
!77 = !DIEnumerator(name: "ATA_ID_PROD_LEN", value: 40)
!78 = !DIEnumerator(name: "ATA_ID_WWN_LEN", value: 8)
!79 = !DIEnumerator(name: "ATA_PCI_CTL_OFS", value: 2)
!80 = !DIEnumerator(name: "ATA_PIO0", value: 1)
!81 = !DIEnumerator(name: "ATA_PIO1", value: 3)
!82 = !DIEnumerator(name: "ATA_PIO2", value: 7)
!83 = !DIEnumerator(name: "ATA_PIO3", value: 15)
!84 = !DIEnumerator(name: "ATA_PIO4", value: 31)
!85 = !DIEnumerator(name: "ATA_PIO5", value: 63)
!86 = !DIEnumerator(name: "ATA_PIO6", value: 127)
!87 = !DIEnumerator(name: "ATA_PIO4_ONLY", value: 16)
!88 = !DIEnumerator(name: "ATA_SWDMA0", value: 1)
!89 = !DIEnumerator(name: "ATA_SWDMA1", value: 3)
!90 = !DIEnumerator(name: "ATA_SWDMA2", value: 7)
!91 = !DIEnumerator(name: "ATA_SWDMA2_ONLY", value: 4)
!92 = !DIEnumerator(name: "ATA_MWDMA0", value: 1)
!93 = !DIEnumerator(name: "ATA_MWDMA1", value: 3)
!94 = !DIEnumerator(name: "ATA_MWDMA2", value: 7)
!95 = !DIEnumerator(name: "ATA_MWDMA3", value: 15)
!96 = !DIEnumerator(name: "ATA_MWDMA4", value: 31)
!97 = !DIEnumerator(name: "ATA_MWDMA12_ONLY", value: 6)
!98 = !DIEnumerator(name: "ATA_MWDMA2_ONLY", value: 4)
!99 = !DIEnumerator(name: "ATA_UDMA0", value: 1)
!100 = !DIEnumerator(name: "ATA_UDMA1", value: 3)
!101 = !DIEnumerator(name: "ATA_UDMA2", value: 7)
!102 = !DIEnumerator(name: "ATA_UDMA3", value: 15)
!103 = !DIEnumerator(name: "ATA_UDMA4", value: 31)
!104 = !DIEnumerator(name: "ATA_UDMA5", value: 63)
!105 = !DIEnumerator(name: "ATA_UDMA6", value: 127)
!106 = !DIEnumerator(name: "ATA_UDMA7", value: 255)
!107 = !DIEnumerator(name: "ATA_UDMA24_ONLY", value: 20)
!108 = !DIEnumerator(name: "ATA_UDMA_MASK_40C", value: 7)
!109 = !DIEnumerator(name: "ATA_PRD_SZ", value: 8)
!110 = !DIEnumerator(name: "ATA_PRD_TBL_SZ", value: 2048)
!111 = !DIEnumerator(name: "ATA_PRD_EOT", value: -2147483648)
!112 = !DIEnumerator(name: "ATA_DMA_TABLE_OFS", value: 4)
!113 = !DIEnumerator(name: "ATA_DMA_STATUS", value: 2)
!114 = !DIEnumerator(name: "ATA_DMA_CMD", value: 0)
!115 = !DIEnumerator(name: "ATA_DMA_WR", value: 8)
!116 = !DIEnumerator(name: "ATA_DMA_START", value: 1)
!117 = !DIEnumerator(name: "ATA_DMA_INTR", value: 4)
!118 = !DIEnumerator(name: "ATA_DMA_ERR", value: 2)
!119 = !DIEnumerator(name: "ATA_DMA_ACTIVE", value: 1)
!120 = !DIEnumerator(name: "ATA_HOB", value: 128)
!121 = !DIEnumerator(name: "ATA_NIEN", value: 2)
!122 = !DIEnumerator(name: "ATA_LBA", value: 64)
!123 = !DIEnumerator(name: "ATA_DEV1", value: 16)
!124 = !DIEnumerator(name: "ATA_DEVICE_OBS", value: 160)
!125 = !DIEnumerator(name: "ATA_DEVCTL_OBS", value: 8)
!126 = !DIEnumerator(name: "ATA_BUSY", value: 128)
!127 = !DIEnumerator(name: "ATA_DRDY", value: 64)
!128 = !DIEnumerator(name: "ATA_DF", value: 32)
!129 = !DIEnumerator(name: "ATA_DSC", value: 16)
!130 = !DIEnumerator(name: "ATA_DRQ", value: 8)
!131 = !DIEnumerator(name: "ATA_CORR", value: 4)
!132 = !DIEnumerator(name: "ATA_SENSE", value: 2)
!133 = !DIEnumerator(name: "ATA_ERR", value: 1)
!134 = !DIEnumerator(name: "ATA_SRST", value: 4)
!135 = !DIEnumerator(name: "ATA_ICRC", value: 128)
!136 = !DIEnumerator(name: "ATA_BBK", value: 128)
!137 = !DIEnumerator(name: "ATA_UNC", value: 64)
!138 = !DIEnumerator(name: "ATA_MC", value: 32)
!139 = !DIEnumerator(name: "ATA_IDNF", value: 16)
!140 = !DIEnumerator(name: "ATA_MCR", value: 8)
!141 = !DIEnumerator(name: "ATA_ABORTED", value: 4)
!142 = !DIEnumerator(name: "ATA_TRK0NF", value: 2)
!143 = !DIEnumerator(name: "ATA_AMNF", value: 1)
!144 = !DIEnumerator(name: "ATAPI_LFS", value: 240)
!145 = !DIEnumerator(name: "ATAPI_EOM", value: 2)
!146 = !DIEnumerator(name: "ATAPI_ILI", value: 1)
!147 = !DIEnumerator(name: "ATAPI_IO", value: 2)
!148 = !DIEnumerator(name: "ATAPI_COD", value: 1)
!149 = !DIEnumerator(name: "ATA_REG_DATA", value: 0)
!150 = !DIEnumerator(name: "ATA_REG_ERR", value: 1)
!151 = !DIEnumerator(name: "ATA_REG_NSECT", value: 2)
!152 = !DIEnumerator(name: "ATA_REG_LBAL", value: 3)
!153 = !DIEnumerator(name: "ATA_REG_LBAM", value: 4)
!154 = !DIEnumerator(name: "ATA_REG_LBAH", value: 5)
!155 = !DIEnumerator(name: "ATA_REG_DEVICE", value: 6)
!156 = !DIEnumerator(name: "ATA_REG_STATUS", value: 7)
!157 = !DIEnumerator(name: "ATA_REG_FEATURE", value: 1)
!158 = !DIEnumerator(name: "ATA_REG_CMD", value: 7)
!159 = !DIEnumerator(name: "ATA_REG_BYTEL", value: 4)
!160 = !DIEnumerator(name: "ATA_REG_BYTEH", value: 5)
!161 = !DIEnumerator(name: "ATA_REG_DEVSEL", value: 6)
!162 = !DIEnumerator(name: "ATA_REG_IRQ", value: 2)
!163 = !DIEnumerator(name: "ATA_CMD_DEV_RESET", value: 8)
!164 = !DIEnumerator(name: "ATA_CMD_CHK_POWER", value: 229)
!165 = !DIEnumerator(name: "ATA_CMD_STANDBY", value: 226)
!166 = !DIEnumerator(name: "ATA_CMD_IDLE", value: 227)
!167 = !DIEnumerator(name: "ATA_CMD_EDD", value: 144)
!168 = !DIEnumerator(name: "ATA_CMD_DOWNLOAD_MICRO", value: 146)
!169 = !DIEnumerator(name: "ATA_CMD_DOWNLOAD_MICRO_DMA", value: 147)
!170 = !DIEnumerator(name: "ATA_CMD_NOP", value: 0)
!171 = !DIEnumerator(name: "ATA_CMD_FLUSH", value: 231)
!172 = !DIEnumerator(name: "ATA_CMD_FLUSH_EXT", value: 234)
!173 = !DIEnumerator(name: "ATA_CMD_ID_ATA", value: 236)
!174 = !DIEnumerator(name: "ATA_CMD_ID_ATAPI", value: 161)
!175 = !DIEnumerator(name: "ATA_CMD_SERVICE", value: 162)
!176 = !DIEnumerator(name: "ATA_CMD_READ", value: 200)
!177 = !DIEnumerator(name: "ATA_CMD_READ_EXT", value: 37)
!178 = !DIEnumerator(name: "ATA_CMD_READ_QUEUED", value: 38)
!179 = !DIEnumerator(name: "ATA_CMD_READ_STREAM_EXT", value: 43)
!180 = !DIEnumerator(name: "ATA_CMD_READ_STREAM_DMA_EXT", value: 42)
!181 = !DIEnumerator(name: "ATA_CMD_WRITE", value: 202)
!182 = !DIEnumerator(name: "ATA_CMD_WRITE_EXT", value: 53)
!183 = !DIEnumerator(name: "ATA_CMD_WRITE_QUEUED", value: 54)
!184 = !DIEnumerator(name: "ATA_CMD_WRITE_STREAM_EXT", value: 59)
!185 = !DIEnumerator(name: "ATA_CMD_WRITE_STREAM_DMA_EXT", value: 58)
!186 = !DIEnumerator(name: "ATA_CMD_WRITE_FUA_EXT", value: 61)
!187 = !DIEnumerator(name: "ATA_CMD_WRITE_QUEUED_FUA_EXT", value: 62)
!188 = !DIEnumerator(name: "ATA_CMD_FPDMA_READ", value: 96)
!189 = !DIEnumerator(name: "ATA_CMD_FPDMA_WRITE", value: 97)
!190 = !DIEnumerator(name: "ATA_CMD_NCQ_NON_DATA", value: 99)
!191 = !DIEnumerator(name: "ATA_CMD_FPDMA_SEND", value: 100)
!192 = !DIEnumerator(name: "ATA_CMD_FPDMA_RECV", value: 101)
!193 = !DIEnumerator(name: "ATA_CMD_PIO_READ", value: 32)
!194 = !DIEnumerator(name: "ATA_CMD_PIO_READ_EXT", value: 36)
!195 = !DIEnumerator(name: "ATA_CMD_PIO_WRITE", value: 48)
!196 = !DIEnumerator(name: "ATA_CMD_PIO_WRITE_EXT", value: 52)
!197 = !DIEnumerator(name: "ATA_CMD_READ_MULTI", value: 196)
!198 = !DIEnumerator(name: "ATA_CMD_READ_MULTI_EXT", value: 41)
!199 = !DIEnumerator(name: "ATA_CMD_WRITE_MULTI", value: 197)
!200 = !DIEnumerator(name: "ATA_CMD_WRITE_MULTI_EXT", value: 57)
!201 = !DIEnumerator(name: "ATA_CMD_WRITE_MULTI_FUA_EXT", value: 206)
!202 = !DIEnumerator(name: "ATA_CMD_SET_FEATURES", value: 239)
!203 = !DIEnumerator(name: "ATA_CMD_SET_MULTI", value: 198)
!204 = !DIEnumerator(name: "ATA_CMD_PACKET", value: 160)
!205 = !DIEnumerator(name: "ATA_CMD_VERIFY", value: 64)
!206 = !DIEnumerator(name: "ATA_CMD_VERIFY_EXT", value: 66)
!207 = !DIEnumerator(name: "ATA_CMD_WRITE_UNCORR_EXT", value: 69)
!208 = !DIEnumerator(name: "ATA_CMD_STANDBYNOW1", value: 224)
!209 = !DIEnumerator(name: "ATA_CMD_IDLEIMMEDIATE", value: 225)
!210 = !DIEnumerator(name: "ATA_CMD_SLEEP", value: 230)
!211 = !DIEnumerator(name: "ATA_CMD_INIT_DEV_PARAMS", value: 145)
!212 = !DIEnumerator(name: "ATA_CMD_READ_NATIVE_MAX", value: 248)
!213 = !DIEnumerator(name: "ATA_CMD_READ_NATIVE_MAX_EXT", value: 39)
!214 = !DIEnumerator(name: "ATA_CMD_SET_MAX", value: 249)
!215 = !DIEnumerator(name: "ATA_CMD_SET_MAX_EXT", value: 55)
!216 = !DIEnumerator(name: "ATA_CMD_READ_LOG_EXT", value: 47)
!217 = !DIEnumerator(name: "ATA_CMD_WRITE_LOG_EXT", value: 63)
!218 = !DIEnumerator(name: "ATA_CMD_READ_LOG_DMA_EXT", value: 71)
!219 = !DIEnumerator(name: "ATA_CMD_WRITE_LOG_DMA_EXT", value: 87)
!220 = !DIEnumerator(name: "ATA_CMD_TRUSTED_NONDATA", value: 91)
!221 = !DIEnumerator(name: "ATA_CMD_TRUSTED_RCV", value: 92)
!222 = !DIEnumerator(name: "ATA_CMD_TRUSTED_RCV_DMA", value: 93)
!223 = !DIEnumerator(name: "ATA_CMD_TRUSTED_SND", value: 94)
!224 = !DIEnumerator(name: "ATA_CMD_TRUSTED_SND_DMA", value: 95)
!225 = !DIEnumerator(name: "ATA_CMD_PMP_READ", value: 228)
!226 = !DIEnumerator(name: "ATA_CMD_PMP_READ_DMA", value: 233)
!227 = !DIEnumerator(name: "ATA_CMD_PMP_WRITE", value: 232)
!228 = !DIEnumerator(name: "ATA_CMD_PMP_WRITE_DMA", value: 235)
!229 = !DIEnumerator(name: "ATA_CMD_CONF_OVERLAY", value: 177)
!230 = !DIEnumerator(name: "ATA_CMD_SEC_SET_PASS", value: 241)
!231 = !DIEnumerator(name: "ATA_CMD_SEC_UNLOCK", value: 242)
!232 = !DIEnumerator(name: "ATA_CMD_SEC_ERASE_PREP", value: 243)
!233 = !DIEnumerator(name: "ATA_CMD_SEC_ERASE_UNIT", value: 244)
!234 = !DIEnumerator(name: "ATA_CMD_SEC_FREEZE_LOCK", value: 245)
!235 = !DIEnumerator(name: "ATA_CMD_SEC_DISABLE_PASS", value: 246)
!236 = !DIEnumerator(name: "ATA_CMD_CONFIG_STREAM", value: 81)
!237 = !DIEnumerator(name: "ATA_CMD_SMART", value: 176)
!238 = !DIEnumerator(name: "ATA_CMD_MEDIA_LOCK", value: 222)
!239 = !DIEnumerator(name: "ATA_CMD_MEDIA_UNLOCK", value: 223)
!240 = !DIEnumerator(name: "ATA_CMD_DSM", value: 6)
!241 = !DIEnumerator(name: "ATA_CMD_CHK_MED_CRD_TYP", value: 209)
!242 = !DIEnumerator(name: "ATA_CMD_CFA_REQ_EXT_ERR", value: 3)
!243 = !DIEnumerator(name: "ATA_CMD_CFA_WRITE_NE", value: 56)
!244 = !DIEnumerator(name: "ATA_CMD_CFA_TRANS_SECT", value: 135)
!245 = !DIEnumerator(name: "ATA_CMD_CFA_ERASE", value: 192)
!246 = !DIEnumerator(name: "ATA_CMD_CFA_WRITE_MULT_NE", value: 205)
!247 = !DIEnumerator(name: "ATA_CMD_REQ_SENSE_DATA", value: 11)
!248 = !DIEnumerator(name: "ATA_CMD_SANITIZE_DEVICE", value: 180)
!249 = !DIEnumerator(name: "ATA_CMD_ZAC_MGMT_IN", value: 74)
!250 = !DIEnumerator(name: "ATA_CMD_ZAC_MGMT_OUT", value: 159)
!251 = !DIEnumerator(name: "ATA_CMD_RESTORE", value: 16)
!252 = !DIEnumerator(name: "ATA_SUBCMD_FPDMA_RECV_RD_LOG_DMA_EXT", value: 1)
!253 = !DIEnumerator(name: "ATA_SUBCMD_FPDMA_RECV_ZAC_MGMT_IN", value: 2)
!254 = !DIEnumerator(name: "ATA_SUBCMD_FPDMA_SEND_DSM", value: 0)
!255 = !DIEnumerator(name: "ATA_SUBCMD_FPDMA_SEND_WR_LOG_DMA_EXT", value: 2)
!256 = !DIEnumerator(name: "ATA_SUBCMD_NCQ_NON_DATA_ABORT_QUEUE", value: 0)
!257 = !DIEnumerator(name: "ATA_SUBCMD_NCQ_NON_DATA_SET_FEATURES", value: 5)
!258 = !DIEnumerator(name: "ATA_SUBCMD_NCQ_NON_DATA_ZERO_EXT", value: 6)
!259 = !DIEnumerator(name: "ATA_SUBCMD_NCQ_NON_DATA_ZAC_MGMT_OUT", value: 7)
!260 = !DIEnumerator(name: "ATA_SUBCMD_ZAC_MGMT_IN_REPORT_ZONES", value: 0)
!261 = !DIEnumerator(name: "ATA_SUBCMD_ZAC_MGMT_OUT_CLOSE_ZONE", value: 1)
!262 = !DIEnumerator(name: "ATA_SUBCMD_ZAC_MGMT_OUT_FINISH_ZONE", value: 2)
!263 = !DIEnumerator(name: "ATA_SUBCMD_ZAC_MGMT_OUT_OPEN_ZONE", value: 3)
!264 = !DIEnumerator(name: "ATA_SUBCMD_ZAC_MGMT_OUT_RESET_WRITE_POINTER", value: 4)
!265 = !DIEnumerator(name: "ATA_LOG_DIRECTORY", value: 0)
!266 = !DIEnumerator(name: "ATA_LOG_SATA_NCQ", value: 16)
!267 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA", value: 18)
!268 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV", value: 19)
!269 = !DIEnumerator(name: "ATA_LOG_IDENTIFY_DEVICE", value: 48)
!270 = !DIEnumerator(name: "ATA_LOG_SECURITY", value: 6)
!271 = !DIEnumerator(name: "ATA_LOG_SATA_SETTINGS", value: 8)
!272 = !DIEnumerator(name: "ATA_LOG_ZONED_INFORMATION", value: 9)
!273 = !DIEnumerator(name: "ATA_LOG_DEVSLP_OFFSET", value: 48)
!274 = !DIEnumerator(name: "ATA_LOG_DEVSLP_SIZE", value: 8)
!275 = !DIEnumerator(name: "ATA_LOG_DEVSLP_MDAT", value: 0)
!276 = !DIEnumerator(name: "ATA_LOG_DEVSLP_MDAT_MASK", value: 31)
!277 = !DIEnumerator(name: "ATA_LOG_DEVSLP_DETO", value: 1)
!278 = !DIEnumerator(name: "ATA_LOG_DEVSLP_VALID", value: 7)
!279 = !DIEnumerator(name: "ATA_LOG_DEVSLP_VALID_MASK", value: 128)
!280 = !DIEnumerator(name: "ATA_LOG_NCQ_PRIO_OFFSET", value: 9)
!281 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_SUBCMDS_OFFSET", value: 0)
!282 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_SUBCMDS_DSM", value: 1)
!283 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_DSM_OFFSET", value: 4)
!284 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_DSM_TRIM", value: 1)
!285 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_RD_LOG_OFFSET", value: 8)
!286 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_RD_LOG_SUPPORTED", value: 1)
!287 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_WR_LOG_OFFSET", value: 12)
!288 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_WR_LOG_SUPPORTED", value: 1)
!289 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_ZAC_MGMT_OFFSET", value: 16)
!290 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_ZAC_MGMT_OUT_SUPPORTED", value: 1)
!291 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_ZAC_MGMT_IN_SUPPORTED", value: 2)
!292 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_SIZE", value: 20)
!293 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_SUBCMDS_OFFSET", value: 0)
!294 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ABORT_OFFSET", value: 0)
!295 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ABORT_NCQ", value: 1)
!296 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ABORT_ALL", value: 2)
!297 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ABORT_STREAMING", value: 4)
!298 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ABORT_NON_STREAMING", value: 8)
!299 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ABORT_SELECTED", value: 16)
!300 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ZAC_MGMT_OFFSET", value: 28)
!301 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ZAC_MGMT_OUT", value: 1)
!302 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_SIZE", value: 64)
!303 = !DIEnumerator(name: "ATA_CMD_READ_LONG", value: 34)
!304 = !DIEnumerator(name: "ATA_CMD_READ_LONG_ONCE", value: 35)
!305 = !DIEnumerator(name: "ATA_CMD_WRITE_LONG", value: 50)
!306 = !DIEnumerator(name: "ATA_CMD_WRITE_LONG_ONCE", value: 51)
!307 = !DIEnumerator(name: "SETFEATURES_XFER", value: 3)
!308 = !DIEnumerator(name: "XFER_UDMA_7", value: 71)
!309 = !DIEnumerator(name: "XFER_UDMA_6", value: 70)
!310 = !DIEnumerator(name: "XFER_UDMA_5", value: 69)
!311 = !DIEnumerator(name: "XFER_UDMA_4", value: 68)
!312 = !DIEnumerator(name: "XFER_UDMA_3", value: 67)
!313 = !DIEnumerator(name: "XFER_UDMA_2", value: 66)
!314 = !DIEnumerator(name: "XFER_UDMA_1", value: 65)
!315 = !DIEnumerator(name: "XFER_UDMA_0", value: 64)
!316 = !DIEnumerator(name: "XFER_MW_DMA_4", value: 36)
!317 = !DIEnumerator(name: "XFER_MW_DMA_3", value: 35)
!318 = !DIEnumerator(name: "XFER_MW_DMA_2", value: 34)
!319 = !DIEnumerator(name: "XFER_MW_DMA_1", value: 33)
!320 = !DIEnumerator(name: "XFER_MW_DMA_0", value: 32)
!321 = !DIEnumerator(name: "XFER_SW_DMA_2", value: 18)
!322 = !DIEnumerator(name: "XFER_SW_DMA_1", value: 17)
!323 = !DIEnumerator(name: "XFER_SW_DMA_0", value: 16)
!324 = !DIEnumerator(name: "XFER_PIO_6", value: 14)
!325 = !DIEnumerator(name: "XFER_PIO_5", value: 13)
!326 = !DIEnumerator(name: "XFER_PIO_4", value: 12)
!327 = !DIEnumerator(name: "XFER_PIO_3", value: 11)
!328 = !DIEnumerator(name: "XFER_PIO_2", value: 10)
!329 = !DIEnumerator(name: "XFER_PIO_1", value: 9)
!330 = !DIEnumerator(name: "XFER_PIO_0", value: 8)
!331 = !DIEnumerator(name: "XFER_PIO_SLOW", value: 0)
!332 = !DIEnumerator(name: "SETFEATURES_WC_ON", value: 2)
!333 = !DIEnumerator(name: "SETFEATURES_WC_OFF", value: 130)
!334 = !DIEnumerator(name: "SETFEATURES_RA_ON", value: 170)
!335 = !DIEnumerator(name: "SETFEATURES_RA_OFF", value: 85)
!336 = !DIEnumerator(name: "SETFEATURES_AAM_ON", value: 66)
!337 = !DIEnumerator(name: "SETFEATURES_AAM_OFF", value: 194)
!338 = !DIEnumerator(name: "SETFEATURES_SPINUP", value: 7)
!339 = !DIEnumerator(name: "SETFEATURES_SPINUP_TIMEOUT", value: 30000)
!340 = !DIEnumerator(name: "SETFEATURES_SATA_ENABLE", value: 16)
!341 = !DIEnumerator(name: "SETFEATURES_SATA_DISABLE", value: 144)
!342 = !DIEnumerator(name: "SATA_FPDMA_OFFSET", value: 1)
!343 = !DIEnumerator(name: "SATA_FPDMA_AA", value: 2)
!344 = !DIEnumerator(name: "SATA_DIPM", value: 3)
!345 = !DIEnumerator(name: "SATA_FPDMA_IN_ORDER", value: 4)
!346 = !DIEnumerator(name: "SATA_AN", value: 5)
!347 = !DIEnumerator(name: "SATA_SSP", value: 6)
!348 = !DIEnumerator(name: "SATA_DEVSLP", value: 9)
!349 = !DIEnumerator(name: "SETFEATURE_SENSE_DATA", value: 195)
!350 = !DIEnumerator(name: "ATA_SET_MAX_ADDR", value: 0)
!351 = !DIEnumerator(name: "ATA_SET_MAX_PASSWD", value: 1)
!352 = !DIEnumerator(name: "ATA_SET_MAX_LOCK", value: 2)
!353 = !DIEnumerator(name: "ATA_SET_MAX_UNLOCK", value: 3)
!354 = !DIEnumerator(name: "ATA_SET_MAX_FREEZE_LOCK", value: 4)
!355 = !DIEnumerator(name: "ATA_SET_MAX_PASSWD_DMA", value: 5)
!356 = !DIEnumerator(name: "ATA_SET_MAX_UNLOCK_DMA", value: 6)
!357 = !DIEnumerator(name: "ATA_DCO_RESTORE", value: 192)
!358 = !DIEnumerator(name: "ATA_DCO_FREEZE_LOCK", value: 193)
!359 = !DIEnumerator(name: "ATA_DCO_IDENTIFY", value: 194)
!360 = !DIEnumerator(name: "ATA_DCO_SET", value: 195)
!361 = !DIEnumerator(name: "ATA_SMART_ENABLE", value: 216)
!362 = !DIEnumerator(name: "ATA_SMART_READ_VALUES", value: 208)
!363 = !DIEnumerator(name: "ATA_SMART_READ_THRESHOLDS", value: 209)
!364 = !DIEnumerator(name: "ATA_DSM_TRIM", value: 1)
!365 = !DIEnumerator(name: "ATA_SMART_LBAM_PASS", value: 79)
!366 = !DIEnumerator(name: "ATA_SMART_LBAH_PASS", value: 194)
!367 = !DIEnumerator(name: "ATAPI_PKT_DMA", value: 1)
!368 = !DIEnumerator(name: "ATAPI_DMADIR", value: 4)
!369 = !DIEnumerator(name: "ATAPI_CDB_LEN", value: 16)
!370 = !DIEnumerator(name: "SATA_PMP_MAX_PORTS", value: 15)
!371 = !DIEnumerator(name: "SATA_PMP_CTRL_PORT", value: 15)
!372 = !DIEnumerator(name: "SATA_PMP_GSCR_DWORDS", value: 128)
!373 = !DIEnumerator(name: "SATA_PMP_GSCR_PROD_ID", value: 0)
!374 = !DIEnumerator(name: "SATA_PMP_GSCR_REV", value: 1)
!375 = !DIEnumerator(name: "SATA_PMP_GSCR_PORT_INFO", value: 2)
!376 = !DIEnumerator(name: "SATA_PMP_GSCR_ERROR", value: 32)
!377 = !DIEnumerator(name: "SATA_PMP_GSCR_ERROR_EN", value: 33)
!378 = !DIEnumerator(name: "SATA_PMP_GSCR_FEAT", value: 64)
!379 = !DIEnumerator(name: "SATA_PMP_GSCR_FEAT_EN", value: 96)
!380 = !DIEnumerator(name: "SATA_PMP_PSCR_STATUS", value: 0)
!381 = !DIEnumerator(name: "SATA_PMP_PSCR_ERROR", value: 1)
!382 = !DIEnumerator(name: "SATA_PMP_PSCR_CONTROL", value: 2)
!383 = !DIEnumerator(name: "SATA_PMP_FEAT_BIST", value: 1)
!384 = !DIEnumerator(name: "SATA_PMP_FEAT_PMREQ", value: 2)
!385 = !DIEnumerator(name: "SATA_PMP_FEAT_DYNSSC", value: 4)
!386 = !DIEnumerator(name: "SATA_PMP_FEAT_NOTIFY", value: 8)
!387 = !DIEnumerator(name: "ATA_CBL_NONE", value: 0)
!388 = !DIEnumerator(name: "ATA_CBL_PATA40", value: 1)
!389 = !DIEnumerator(name: "ATA_CBL_PATA80", value: 2)
!390 = !DIEnumerator(name: "ATA_CBL_PATA40_SHORT", value: 3)
!391 = !DIEnumerator(name: "ATA_CBL_PATA_UNK", value: 4)
!392 = !DIEnumerator(name: "ATA_CBL_PATA_IGN", value: 5)
!393 = !DIEnumerator(name: "ATA_CBL_SATA", value: 6)
!394 = !DIEnumerator(name: "SCR_STATUS", value: 0)
!395 = !DIEnumerator(name: "SCR_ERROR", value: 1)
!396 = !DIEnumerator(name: "SCR_CONTROL", value: 2)
!397 = !DIEnumerator(name: "SCR_ACTIVE", value: 3)
!398 = !DIEnumerator(name: "SCR_NOTIFICATION", value: 4)
!399 = !DIEnumerator(name: "SERR_DATA_RECOVERED", value: 1)
!400 = !DIEnumerator(name: "SERR_COMM_RECOVERED", value: 2)
!401 = !DIEnumerator(name: "SERR_DATA", value: 256)
!402 = !DIEnumerator(name: "SERR_PERSISTENT", value: 512)
!403 = !DIEnumerator(name: "SERR_PROTOCOL", value: 1024)
!404 = !DIEnumerator(name: "SERR_INTERNAL", value: 2048)
!405 = !DIEnumerator(name: "SERR_PHYRDY_CHG", value: 65536)
!406 = !DIEnumerator(name: "SERR_PHY_INT_ERR", value: 131072)
!407 = !DIEnumerator(name: "SERR_COMM_WAKE", value: 262144)
!408 = !DIEnumerator(name: "SERR_10B_8B_ERR", value: 524288)
!409 = !DIEnumerator(name: "SERR_DISPARITY", value: 1048576)
!410 = !DIEnumerator(name: "SERR_CRC", value: 2097152)
!411 = !DIEnumerator(name: "SERR_HANDSHAKE", value: 4194304)
!412 = !DIEnumerator(name: "SERR_LINK_SEQ_ERR", value: 8388608)
!413 = !DIEnumerator(name: "SERR_TRANS_ST_ERROR", value: 16777216)
!414 = !DIEnumerator(name: "SERR_UNRECOG_FIS", value: 33554432)
!415 = !DIEnumerator(name: "SERR_DEV_XCHG", value: 67108864)
!416 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !417, line: 106, baseType: !5, size: 32, elements: !418)
!417 = !DIFile(filename: "./include/linux/libata.h", directory: "/home/lizy2001/genbc/linux")
!418 = !{!419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!419 = !DIEnumerator(name: "LIBATA_MAX_PRD", value: 128)
!420 = !DIEnumerator(name: "LIBATA_DUMB_MAX_PRD", value: 64)
!421 = !DIEnumerator(name: "ATA_DEF_QUEUE", value: 1)
!422 = !DIEnumerator(name: "ATA_MAX_QUEUE", value: 32)
!423 = !DIEnumerator(name: "ATA_TAG_INTERNAL", value: 32)
!424 = !DIEnumerator(name: "ATA_SHORT_PAUSE", value: 16)
!425 = !DIEnumerator(name: "ATAPI_MAX_DRAIN", value: 16384)
!426 = !DIEnumerator(name: "ATA_ALL_DEVICES", value: 3)
!427 = !DIEnumerator(name: "ATA_SHT_EMULATED", value: 1)
!428 = !DIEnumerator(name: "ATA_SHT_THIS_ID", value: -1)
!429 = !DIEnumerator(name: "ATA_TFLAG_LBA48", value: 1)
!430 = !DIEnumerator(name: "ATA_TFLAG_ISADDR", value: 2)
!431 = !DIEnumerator(name: "ATA_TFLAG_DEVICE", value: 4)
!432 = !DIEnumerator(name: "ATA_TFLAG_WRITE", value: 8)
!433 = !DIEnumerator(name: "ATA_TFLAG_LBA", value: 16)
!434 = !DIEnumerator(name: "ATA_TFLAG_FUA", value: 32)
!435 = !DIEnumerator(name: "ATA_TFLAG_POLLING", value: 64)
!436 = !DIEnumerator(name: "ATA_DFLAG_LBA", value: 1)
!437 = !DIEnumerator(name: "ATA_DFLAG_LBA48", value: 2)
!438 = !DIEnumerator(name: "ATA_DFLAG_CDB_INTR", value: 4)
!439 = !DIEnumerator(name: "ATA_DFLAG_NCQ", value: 8)
!440 = !DIEnumerator(name: "ATA_DFLAG_FLUSH_EXT", value: 16)
!441 = !DIEnumerator(name: "ATA_DFLAG_ACPI_PENDING", value: 32)
!442 = !DIEnumerator(name: "ATA_DFLAG_ACPI_FAILED", value: 64)
!443 = !DIEnumerator(name: "ATA_DFLAG_AN", value: 128)
!444 = !DIEnumerator(name: "ATA_DFLAG_TRUSTED", value: 256)
!445 = !DIEnumerator(name: "ATA_DFLAG_DMADIR", value: 1024)
!446 = !DIEnumerator(name: "ATA_DFLAG_CFG_MASK", value: 4095)
!447 = !DIEnumerator(name: "ATA_DFLAG_PIO", value: 4096)
!448 = !DIEnumerator(name: "ATA_DFLAG_NCQ_OFF", value: 8192)
!449 = !DIEnumerator(name: "ATA_DFLAG_SLEEPING", value: 32768)
!450 = !DIEnumerator(name: "ATA_DFLAG_DUBIOUS_XFER", value: 65536)
!451 = !DIEnumerator(name: "ATA_DFLAG_NO_UNLOAD", value: 131072)
!452 = !DIEnumerator(name: "ATA_DFLAG_UNLOCK_HPA", value: 262144)
!453 = !DIEnumerator(name: "ATA_DFLAG_NCQ_SEND_RECV", value: 524288)
!454 = !DIEnumerator(name: "ATA_DFLAG_NCQ_PRIO", value: 1048576)
!455 = !DIEnumerator(name: "ATA_DFLAG_NCQ_PRIO_ENABLE", value: 2097152)
!456 = !DIEnumerator(name: "ATA_DFLAG_INIT_MASK", value: 16777215)
!457 = !DIEnumerator(name: "ATA_DFLAG_DETACH", value: 16777216)
!458 = !DIEnumerator(name: "ATA_DFLAG_DETACHED", value: 33554432)
!459 = !DIEnumerator(name: "ATA_DFLAG_DA", value: 67108864)
!460 = !DIEnumerator(name: "ATA_DFLAG_DEVSLP", value: 134217728)
!461 = !DIEnumerator(name: "ATA_DFLAG_ACPI_DISABLED", value: 268435456)
!462 = !DIEnumerator(name: "ATA_DFLAG_D_SENSE", value: 536870912)
!463 = !DIEnumerator(name: "ATA_DFLAG_ZAC", value: 1073741824)
!464 = !DIEnumerator(name: "ATA_DEV_UNKNOWN", value: 0)
!465 = !DIEnumerator(name: "ATA_DEV_ATA", value: 1)
!466 = !DIEnumerator(name: "ATA_DEV_ATA_UNSUP", value: 2)
!467 = !DIEnumerator(name: "ATA_DEV_ATAPI", value: 3)
!468 = !DIEnumerator(name: "ATA_DEV_ATAPI_UNSUP", value: 4)
!469 = !DIEnumerator(name: "ATA_DEV_PMP", value: 5)
!470 = !DIEnumerator(name: "ATA_DEV_PMP_UNSUP", value: 6)
!471 = !DIEnumerator(name: "ATA_DEV_SEMB", value: 7)
!472 = !DIEnumerator(name: "ATA_DEV_SEMB_UNSUP", value: 8)
!473 = !DIEnumerator(name: "ATA_DEV_ZAC", value: 9)
!474 = !DIEnumerator(name: "ATA_DEV_ZAC_UNSUP", value: 10)
!475 = !DIEnumerator(name: "ATA_DEV_NONE", value: 11)
!476 = !DIEnumerator(name: "ATA_LFLAG_NO_HRST", value: 2)
!477 = !DIEnumerator(name: "ATA_LFLAG_NO_SRST", value: 4)
!478 = !DIEnumerator(name: "ATA_LFLAG_ASSUME_ATA", value: 8)
!479 = !DIEnumerator(name: "ATA_LFLAG_ASSUME_SEMB", value: 16)
!480 = !DIEnumerator(name: "ATA_LFLAG_ASSUME_CLASS", value: 24)
!481 = !DIEnumerator(name: "ATA_LFLAG_NO_RETRY", value: 32)
!482 = !DIEnumerator(name: "ATA_LFLAG_DISABLED", value: 64)
!483 = !DIEnumerator(name: "ATA_LFLAG_SW_ACTIVITY", value: 128)
!484 = !DIEnumerator(name: "ATA_LFLAG_NO_LPM", value: 256)
!485 = !DIEnumerator(name: "ATA_LFLAG_RST_ONCE", value: 512)
!486 = !DIEnumerator(name: "ATA_LFLAG_CHANGED", value: 1024)
!487 = !DIEnumerator(name: "ATA_LFLAG_NO_DB_DELAY", value: 2048)
!488 = !DIEnumerator(name: "ATA_FLAG_SLAVE_POSS", value: 1)
!489 = !DIEnumerator(name: "ATA_FLAG_SATA", value: 2)
!490 = !DIEnumerator(name: "ATA_FLAG_NO_LPM", value: 4)
!491 = !DIEnumerator(name: "ATA_FLAG_NO_LOG_PAGE", value: 32)
!492 = !DIEnumerator(name: "ATA_FLAG_NO_ATAPI", value: 64)
!493 = !DIEnumerator(name: "ATA_FLAG_PIO_DMA", value: 128)
!494 = !DIEnumerator(name: "ATA_FLAG_PIO_LBA48", value: 256)
!495 = !DIEnumerator(name: "ATA_FLAG_PIO_POLLING", value: 512)
!496 = !DIEnumerator(name: "ATA_FLAG_NCQ", value: 1024)
!497 = !DIEnumerator(name: "ATA_FLAG_NO_POWEROFF_SPINDOWN", value: 2048)
!498 = !DIEnumerator(name: "ATA_FLAG_NO_HIBERNATE_SPINDOWN", value: 4096)
!499 = !DIEnumerator(name: "ATA_FLAG_DEBUGMSG", value: 8192)
!500 = !DIEnumerator(name: "ATA_FLAG_FPDMA_AA", value: 16384)
!501 = !DIEnumerator(name: "ATA_FLAG_IGN_SIMPLEX", value: 32768)
!502 = !DIEnumerator(name: "ATA_FLAG_NO_IORDY", value: 65536)
!503 = !DIEnumerator(name: "ATA_FLAG_ACPI_SATA", value: 131072)
!504 = !DIEnumerator(name: "ATA_FLAG_AN", value: 262144)
!505 = !DIEnumerator(name: "ATA_FLAG_PMP", value: 524288)
!506 = !DIEnumerator(name: "ATA_FLAG_FPDMA_AUX", value: 1048576)
!507 = !DIEnumerator(name: "ATA_FLAG_EM", value: 2097152)
!508 = !DIEnumerator(name: "ATA_FLAG_SW_ACTIVITY", value: 4194304)
!509 = !DIEnumerator(name: "ATA_FLAG_NO_DIPM", value: 8388608)
!510 = !DIEnumerator(name: "ATA_FLAG_SAS_HOST", value: 16777216)
!511 = !DIEnumerator(name: "ATA_PFLAG_EH_PENDING", value: 1)
!512 = !DIEnumerator(name: "ATA_PFLAG_EH_IN_PROGRESS", value: 2)
!513 = !DIEnumerator(name: "ATA_PFLAG_FROZEN", value: 4)
!514 = !DIEnumerator(name: "ATA_PFLAG_RECOVERED", value: 8)
!515 = !DIEnumerator(name: "ATA_PFLAG_LOADING", value: 16)
!516 = !DIEnumerator(name: "ATA_PFLAG_SCSI_HOTPLUG", value: 64)
!517 = !DIEnumerator(name: "ATA_PFLAG_INITIALIZING", value: 128)
!518 = !DIEnumerator(name: "ATA_PFLAG_RESETTING", value: 256)
!519 = !DIEnumerator(name: "ATA_PFLAG_UNLOADING", value: 512)
!520 = !DIEnumerator(name: "ATA_PFLAG_UNLOADED", value: 1024)
!521 = !DIEnumerator(name: "ATA_PFLAG_SUSPENDED", value: 131072)
!522 = !DIEnumerator(name: "ATA_PFLAG_PM_PENDING", value: 262144)
!523 = !DIEnumerator(name: "ATA_PFLAG_INIT_GTM_VALID", value: 524288)
!524 = !DIEnumerator(name: "ATA_PFLAG_PIO32", value: 1048576)
!525 = !DIEnumerator(name: "ATA_PFLAG_PIO32CHANGE", value: 2097152)
!526 = !DIEnumerator(name: "ATA_PFLAG_EXTERNAL", value: 4194304)
!527 = !DIEnumerator(name: "ATA_QCFLAG_ACTIVE", value: 1)
!528 = !DIEnumerator(name: "ATA_QCFLAG_DMAMAP", value: 2)
!529 = !DIEnumerator(name: "ATA_QCFLAG_IO", value: 8)
!530 = !DIEnumerator(name: "ATA_QCFLAG_RESULT_TF", value: 16)
!531 = !DIEnumerator(name: "ATA_QCFLAG_CLEAR_EXCL", value: 32)
!532 = !DIEnumerator(name: "ATA_QCFLAG_QUIET", value: 64)
!533 = !DIEnumerator(name: "ATA_QCFLAG_RETRY", value: 128)
!534 = !DIEnumerator(name: "ATA_QCFLAG_FAILED", value: 65536)
!535 = !DIEnumerator(name: "ATA_QCFLAG_SENSE_VALID", value: 131072)
!536 = !DIEnumerator(name: "ATA_QCFLAG_EH_SCHEDULED", value: 262144)
!537 = !DIEnumerator(name: "ATA_HOST_SIMPLEX", value: 1)
!538 = !DIEnumerator(name: "ATA_HOST_STARTED", value: 2)
!539 = !DIEnumerator(name: "ATA_HOST_PARALLEL_SCAN", value: 4)
!540 = !DIEnumerator(name: "ATA_HOST_IGNORE_ATA", value: 8)
!541 = !DIEnumerator(name: "ATA_TMOUT_BOOT", value: 30000)
!542 = !DIEnumerator(name: "ATA_TMOUT_BOOT_QUICK", value: 7000)
!543 = !DIEnumerator(name: "ATA_TMOUT_INTERNAL_QUICK", value: 5000)
!544 = !DIEnumerator(name: "ATA_TMOUT_MAX_PARK", value: 30000)
!545 = !DIEnumerator(name: "ATA_TMOUT_FF_WAIT_LONG", value: 2000)
!546 = !DIEnumerator(name: "ATA_TMOUT_FF_WAIT", value: 800)
!547 = !DIEnumerator(name: "ATA_WAIT_AFTER_RESET", value: 150)
!548 = !DIEnumerator(name: "ATA_TMOUT_PMP_SRST_WAIT", value: 5000)
!549 = !DIEnumerator(name: "ATA_TMOUT_SPURIOUS_PHY", value: 10000)
!550 = !DIEnumerator(name: "BUS_UNKNOWN", value: 0)
!551 = !DIEnumerator(name: "BUS_DMA", value: 1)
!552 = !DIEnumerator(name: "BUS_IDLE", value: 2)
!553 = !DIEnumerator(name: "BUS_NOINTR", value: 3)
!554 = !DIEnumerator(name: "BUS_NODATA", value: 4)
!555 = !DIEnumerator(name: "BUS_TIMER", value: 5)
!556 = !DIEnumerator(name: "BUS_PIO", value: 6)
!557 = !DIEnumerator(name: "BUS_EDD", value: 7)
!558 = !DIEnumerator(name: "BUS_IDENTIFY", value: 8)
!559 = !DIEnumerator(name: "BUS_PACKET", value: 9)
!560 = !DIEnumerator(name: "PORT_UNKNOWN", value: 0)
!561 = !DIEnumerator(name: "PORT_ENABLED", value: 1)
!562 = !DIEnumerator(name: "PORT_DISABLED", value: 2)
!563 = !DIEnumerator(name: "ATA_NR_PIO_MODES", value: 7)
!564 = !DIEnumerator(name: "ATA_NR_MWDMA_MODES", value: 5)
!565 = !DIEnumerator(name: "ATA_NR_UDMA_MODES", value: 8)
!566 = !DIEnumerator(name: "ATA_SHIFT_PIO", value: 0)
!567 = !DIEnumerator(name: "ATA_SHIFT_MWDMA", value: 7)
!568 = !DIEnumerator(name: "ATA_SHIFT_UDMA", value: 12)
!569 = !DIEnumerator(name: "ATA_SHIFT_PRIO", value: 6)
!570 = !DIEnumerator(name: "ATA_PRIO_HIGH", value: 2)
!571 = !DIEnumerator(name: "ATA_DMA_PAD_SZ", value: 4)
!572 = !DIEnumerator(name: "ATA_ERING_SIZE", value: 32)
!573 = !DIEnumerator(name: "ATA_DEFER_LINK", value: 1)
!574 = !DIEnumerator(name: "ATA_DEFER_PORT", value: 2)
!575 = !DIEnumerator(name: "ATA_EH_DESC_LEN", value: 80)
!576 = !DIEnumerator(name: "ATA_EH_REVALIDATE", value: 1)
!577 = !DIEnumerator(name: "ATA_EH_SOFTRESET", value: 2)
!578 = !DIEnumerator(name: "ATA_EH_HARDRESET", value: 4)
!579 = !DIEnumerator(name: "ATA_EH_RESET", value: 6)
!580 = !DIEnumerator(name: "ATA_EH_ENABLE_LINK", value: 8)
!581 = !DIEnumerator(name: "ATA_EH_PARK", value: 32)
!582 = !DIEnumerator(name: "ATA_EH_PERDEV_MASK", value: 33)
!583 = !DIEnumerator(name: "ATA_EH_ALL_ACTIONS", value: 15)
!584 = !DIEnumerator(name: "ATA_EHI_HOTPLUGGED", value: 1)
!585 = !DIEnumerator(name: "ATA_EHI_NO_AUTOPSY", value: 4)
!586 = !DIEnumerator(name: "ATA_EHI_QUIET", value: 8)
!587 = !DIEnumerator(name: "ATA_EHI_NO_RECOVERY", value: 16)
!588 = !DIEnumerator(name: "ATA_EHI_DID_SOFTRESET", value: 65536)
!589 = !DIEnumerator(name: "ATA_EHI_DID_HARDRESET", value: 131072)
!590 = !DIEnumerator(name: "ATA_EHI_PRINTINFO", value: 262144)
!591 = !DIEnumerator(name: "ATA_EHI_SETMODE", value: 524288)
!592 = !DIEnumerator(name: "ATA_EHI_POST_SETMODE", value: 1048576)
!593 = !DIEnumerator(name: "ATA_EHI_DID_RESET", value: 196608)
!594 = !DIEnumerator(name: "ATA_EHI_TO_SLAVE_MASK", value: 12)
!595 = !DIEnumerator(name: "ATA_EH_MAX_TRIES", value: 5)
!596 = !DIEnumerator(name: "ATA_LINK_RESUME_TRIES", value: 5)
!597 = !DIEnumerator(name: "ATA_PROBE_MAX_TRIES", value: 3)
!598 = !DIEnumerator(name: "ATA_EH_DEV_TRIES", value: 3)
!599 = !DIEnumerator(name: "ATA_EH_PMP_TRIES", value: 5)
!600 = !DIEnumerator(name: "ATA_EH_PMP_LINK_TRIES", value: 3)
!601 = !DIEnumerator(name: "SATA_PMP_RW_TIMEOUT", value: 3000)
!602 = !DIEnumerator(name: "ATA_EH_CMD_TIMEOUT_TABLE_SIZE", value: 6)
!603 = !DIEnumerator(name: "ATA_HORKAGE_DIAGNOSTIC", value: 1)
!604 = !DIEnumerator(name: "ATA_HORKAGE_NODMA", value: 2)
!605 = !DIEnumerator(name: "ATA_HORKAGE_NONCQ", value: 4)
!606 = !DIEnumerator(name: "ATA_HORKAGE_MAX_SEC_128", value: 8)
!607 = !DIEnumerator(name: "ATA_HORKAGE_BROKEN_HPA", value: 16)
!608 = !DIEnumerator(name: "ATA_HORKAGE_DISABLE", value: 32)
!609 = !DIEnumerator(name: "ATA_HORKAGE_HPA_SIZE", value: 64)
!610 = !DIEnumerator(name: "ATA_HORKAGE_IVB", value: 256)
!611 = !DIEnumerator(name: "ATA_HORKAGE_STUCK_ERR", value: 512)
!612 = !DIEnumerator(name: "ATA_HORKAGE_BRIDGE_OK", value: 1024)
!613 = !DIEnumerator(name: "ATA_HORKAGE_ATAPI_MOD16_DMA", value: 2048)
!614 = !DIEnumerator(name: "ATA_HORKAGE_FIRMWARE_WARN", value: 4096)
!615 = !DIEnumerator(name: "ATA_HORKAGE_1_5_GBPS", value: 8192)
!616 = !DIEnumerator(name: "ATA_HORKAGE_NOSETXFER", value: 16384)
!617 = !DIEnumerator(name: "ATA_HORKAGE_BROKEN_FPDMA_AA", value: 32768)
!618 = !DIEnumerator(name: "ATA_HORKAGE_DUMP_ID", value: 65536)
!619 = !DIEnumerator(name: "ATA_HORKAGE_MAX_SEC_LBA48", value: 131072)
!620 = !DIEnumerator(name: "ATA_HORKAGE_ATAPI_DMADIR", value: 262144)
!621 = !DIEnumerator(name: "ATA_HORKAGE_NO_NCQ_TRIM", value: 524288)
!622 = !DIEnumerator(name: "ATA_HORKAGE_NOLPM", value: 1048576)
!623 = !DIEnumerator(name: "ATA_HORKAGE_WD_BROKEN_LPM", value: 2097152)
!624 = !DIEnumerator(name: "ATA_HORKAGE_ZERO_AFTER_TRIM", value: 4194304)
!625 = !DIEnumerator(name: "ATA_HORKAGE_NO_DMA_LOG", value: 8388608)
!626 = !DIEnumerator(name: "ATA_HORKAGE_NOTRIM", value: 16777216)
!627 = !DIEnumerator(name: "ATA_HORKAGE_MAX_SEC_1024", value: 33554432)
!628 = !DIEnumerator(name: "ATA_HORKAGE_MAX_TRIM_128M", value: 67108864)
!629 = !DIEnumerator(name: "ATA_DMA_MASK_ATA", value: 1)
!630 = !DIEnumerator(name: "ATA_DMA_MASK_ATAPI", value: 2)
!631 = !DIEnumerator(name: "ATA_DMA_MASK_CFA", value: 4)
!632 = !DIEnumerator(name: "ATAPI_READ", value: 0)
!633 = !DIEnumerator(name: "ATAPI_WRITE", value: 1)
!634 = !DIEnumerator(name: "ATAPI_READ_CD", value: 2)
!635 = !DIEnumerator(name: "ATAPI_PASS_THRU", value: 3)
!636 = !DIEnumerator(name: "ATAPI_MISC", value: 4)
!637 = !DIEnumerator(name: "ATA_TIMING_SETUP", value: 1)
!638 = !DIEnumerator(name: "ATA_TIMING_ACT8B", value: 2)
!639 = !DIEnumerator(name: "ATA_TIMING_REC8B", value: 4)
!640 = !DIEnumerator(name: "ATA_TIMING_CYC8B", value: 8)
!641 = !DIEnumerator(name: "ATA_TIMING_8BIT", value: 14)
!642 = !DIEnumerator(name: "ATA_TIMING_ACTIVE", value: 16)
!643 = !DIEnumerator(name: "ATA_TIMING_RECOVER", value: 32)
!644 = !DIEnumerator(name: "ATA_TIMING_DMACK_HOLD", value: 64)
!645 = !DIEnumerator(name: "ATA_TIMING_CYCLE", value: 128)
!646 = !DIEnumerator(name: "ATA_TIMING_UDMA", value: 256)
!647 = !DIEnumerator(name: "ATA_TIMING_ALL", value: 511)
!648 = !DIEnumerator(name: "ATA_ACPI_FILTER_SETXFER", value: 1)
!649 = !DIEnumerator(name: "ATA_ACPI_FILTER_LOCK", value: 2)
!650 = !DIEnumerator(name: "ATA_ACPI_FILTER_DIPM", value: 4)
!651 = !DIEnumerator(name: "ATA_ACPI_FILTER_FPDMA_OFFSET", value: 8)
!652 = !DIEnumerator(name: "ATA_ACPI_FILTER_FPDMA_AA", value: 16)
!653 = !DIEnumerator(name: "ATA_ACPI_FILTER_DEFAULT", value: 7)
!654 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ata_completion_errors", file: !417, line: 487, baseType: !655, size: 32, elements: !656)
!655 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!657 = !DIEnumerator(name: "AC_ERR_OK", value: 0, isUnsigned: true)
!658 = !DIEnumerator(name: "AC_ERR_DEV", value: 1, isUnsigned: true)
!659 = !DIEnumerator(name: "AC_ERR_HSM", value: 2, isUnsigned: true)
!660 = !DIEnumerator(name: "AC_ERR_TIMEOUT", value: 4, isUnsigned: true)
!661 = !DIEnumerator(name: "AC_ERR_MEDIA", value: 8, isUnsigned: true)
!662 = !DIEnumerator(name: "AC_ERR_ATA_BUS", value: 16, isUnsigned: true)
!663 = !DIEnumerator(name: "AC_ERR_HOST_BUS", value: 32, isUnsigned: true)
!664 = !DIEnumerator(name: "AC_ERR_SYSTEM", value: 64, isUnsigned: true)
!665 = !DIEnumerator(name: "AC_ERR_INVALID", value: 128, isUnsigned: true)
!666 = !DIEnumerator(name: "AC_ERR_OTHER", value: 256, isUnsigned: true)
!667 = !DIEnumerator(name: "AC_ERR_NODEV_HINT", value: 512, isUnsigned: true)
!668 = !DIEnumerator(name: "AC_ERR_NCQ", value: 1024, isUnsigned: true)
!669 = !{i32 7, !"Dwarf Version", i32 4}
!670 = !{i32 2, !"Debug Info Version", i32 3}
!671 = !{i32 1, !"wchar_size", i32 2}
!672 = !{i32 1, !"Code Model", i32 2}
!673 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!674 = distinct !DISubprogram(name: "libata_trace_parse_status", scope: !1, file: !1, line: 14, type: !675, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !708)
!675 = !DISubroutineType(types: !676)
!676 = !{!677, !680, !686}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!679 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !682, line: 14, size: 33088, elements: !683)
!682 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/lizy2001/genbc/linux")
!683 = !{!684, !689, !707}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !681, file: !682, line: 15, baseType: !685, size: 32768)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 32768, elements: !687)
!686 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!687 = !{!688}
!688 = !DISubrange(count: 4096)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !681, file: !682, line: 16, baseType: !690, size: 256, offset: 32768)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !691, line: 19, size: 256, elements: !692)
!691 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/lizy2001/genbc/linux")
!692 = !{!693, !695, !702, !703}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !690, file: !691, line: 20, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !690, file: !691, line: 21, baseType: !696, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !697, line: 55, baseType: !698)
!697 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !699, line: 72, baseType: !700)
!699 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !699, line: 16, baseType: !701)
!701 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !690, file: !691, line: 22, baseType: !696, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !690, file: !691, line: 23, baseType: !704, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !697, line: 46, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !699, line: 88, baseType: !706)
!706 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !681, file: !682, line: 17, baseType: !5, size: 32, offset: 33024)
!708 = !{}
!709 = !DILocalVariable(name: "p", arg: 1, scope: !674, file: !1, line: 14, type: !680)
!710 = !DILocation(line: 14, column: 45, scope: !674)
!711 = !DILocalVariable(name: "status", arg: 2, scope: !674, file: !1, line: 14, type: !686)
!712 = !DILocation(line: 14, column: 62, scope: !674)
!713 = !DILocalVariable(name: "ret", scope: !674, file: !1, line: 16, type: !677)
!714 = !DILocation(line: 16, column: 14, scope: !674)
!715 = !DILocation(line: 16, column: 41, scope: !674)
!716 = !DILocation(line: 16, column: 20, scope: !674)
!717 = !DILocation(line: 18, column: 19, scope: !674)
!718 = !DILocation(line: 18, column: 2, scope: !674)
!719 = !DILocation(line: 19, column: 6, scope: !720)
!720 = distinct !DILexicalBlock(scope: !674, file: !1, line: 19, column: 6)
!721 = !DILocation(line: 19, column: 13, scope: !720)
!722 = !DILocation(line: 19, column: 6, scope: !674)
!723 = !DILocation(line: 20, column: 20, scope: !720)
!724 = !DILocation(line: 20, column: 3, scope: !720)
!725 = !DILocation(line: 21, column: 6, scope: !726)
!726 = distinct !DILexicalBlock(scope: !674, file: !1, line: 21, column: 6)
!727 = !DILocation(line: 21, column: 13, scope: !726)
!728 = !DILocation(line: 21, column: 6, scope: !674)
!729 = !DILocation(line: 22, column: 20, scope: !726)
!730 = !DILocation(line: 22, column: 3, scope: !726)
!731 = !DILocation(line: 23, column: 6, scope: !732)
!732 = distinct !DILexicalBlock(scope: !674, file: !1, line: 23, column: 6)
!733 = !DILocation(line: 23, column: 13, scope: !732)
!734 = !DILocation(line: 23, column: 6, scope: !674)
!735 = !DILocation(line: 24, column: 20, scope: !732)
!736 = !DILocation(line: 24, column: 3, scope: !732)
!737 = !DILocation(line: 25, column: 6, scope: !738)
!738 = distinct !DILexicalBlock(scope: !674, file: !1, line: 25, column: 6)
!739 = !DILocation(line: 25, column: 13, scope: !738)
!740 = !DILocation(line: 25, column: 6, scope: !674)
!741 = !DILocation(line: 26, column: 20, scope: !738)
!742 = !DILocation(line: 26, column: 3, scope: !738)
!743 = !DILocation(line: 27, column: 6, scope: !744)
!744 = distinct !DILexicalBlock(scope: !674, file: !1, line: 27, column: 6)
!745 = !DILocation(line: 27, column: 13, scope: !744)
!746 = !DILocation(line: 27, column: 6, scope: !674)
!747 = !DILocation(line: 28, column: 20, scope: !744)
!748 = !DILocation(line: 28, column: 3, scope: !744)
!749 = !DILocation(line: 29, column: 6, scope: !750)
!750 = distinct !DILexicalBlock(scope: !674, file: !1, line: 29, column: 6)
!751 = !DILocation(line: 29, column: 13, scope: !750)
!752 = !DILocation(line: 29, column: 6, scope: !674)
!753 = !DILocation(line: 30, column: 20, scope: !750)
!754 = !DILocation(line: 30, column: 3, scope: !750)
!755 = !DILocation(line: 31, column: 6, scope: !756)
!756 = distinct !DILexicalBlock(scope: !674, file: !1, line: 31, column: 6)
!757 = !DILocation(line: 31, column: 13, scope: !756)
!758 = !DILocation(line: 31, column: 6, scope: !674)
!759 = !DILocation(line: 32, column: 20, scope: !756)
!760 = !DILocation(line: 32, column: 3, scope: !756)
!761 = !DILocation(line: 33, column: 6, scope: !762)
!762 = distinct !DILexicalBlock(scope: !674, file: !1, line: 33, column: 6)
!763 = !DILocation(line: 33, column: 13, scope: !762)
!764 = !DILocation(line: 33, column: 6, scope: !674)
!765 = !DILocation(line: 34, column: 20, scope: !762)
!766 = !DILocation(line: 34, column: 3, scope: !762)
!767 = !DILocation(line: 35, column: 17, scope: !674)
!768 = !DILocation(line: 35, column: 2, scope: !674)
!769 = !DILocation(line: 36, column: 17, scope: !674)
!770 = !DILocation(line: 36, column: 2, scope: !674)
!771 = !DILocation(line: 38, column: 9, scope: !674)
!772 = !DILocation(line: 38, column: 2, scope: !674)
!773 = distinct !DISubprogram(name: "trace_seq_buffer_ptr", scope: !682, file: !682, line: 55, type: !774, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !708)
!774 = !DISubroutineType(types: !775)
!775 = !{!776, !680}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!777 = !DILocalVariable(name: "s", arg: 1, scope: !773, file: !682, line: 55, type: !680)
!778 = !DILocation(line: 55, column: 40, scope: !773)
!779 = !DILocation(line: 57, column: 9, scope: !773)
!780 = !DILocation(line: 57, column: 12, scope: !773)
!781 = !DILocation(line: 57, column: 35, scope: !773)
!782 = !DILocation(line: 57, column: 38, scope: !773)
!783 = !DILocation(line: 57, column: 21, scope: !773)
!784 = !DILocation(line: 57, column: 19, scope: !773)
!785 = !DILocation(line: 57, column: 2, scope: !773)
!786 = distinct !DISubprogram(name: "trace_seq_printf", scope: !682, file: !682, line: 100, type: !787, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !708)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !680, !677, null}
!789 = !DILocalVariable(name: "s", arg: 1, scope: !786, file: !682, line: 100, type: !680)
!790 = !DILocation(line: 100, column: 55, scope: !786)
!791 = !DILocalVariable(name: "fmt", arg: 2, scope: !786, file: !682, line: 100, type: !677)
!792 = !DILocation(line: 100, column: 70, scope: !786)
!793 = !DILocation(line: 102, column: 1, scope: !786)
!794 = distinct !DISubprogram(name: "trace_seq_putc", scope: !682, file: !682, line: 126, type: !795, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !708)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !680, !686}
!797 = !DILocalVariable(name: "s", arg: 1, scope: !794, file: !682, line: 126, type: !680)
!798 = !DILocation(line: 126, column: 53, scope: !794)
!799 = !DILocalVariable(name: "c", arg: 2, scope: !794, file: !682, line: 126, type: !686)
!800 = !DILocation(line: 126, column: 70, scope: !794)
!801 = !DILocation(line: 128, column: 1, scope: !794)
!802 = distinct !DISubprogram(name: "libata_trace_parse_eh_action", scope: !1, file: !1, line: 42, type: !803, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !708)
!803 = !DISubroutineType(types: !804)
!804 = !{!677, !680, !655}
!805 = !DILocalVariable(name: "p", arg: 1, scope: !802, file: !1, line: 42, type: !680)
!806 = !DILocation(line: 42, column: 48, scope: !802)
!807 = !DILocalVariable(name: "eh_action", arg: 2, scope: !802, file: !1, line: 42, type: !655)
!808 = !DILocation(line: 42, column: 64, scope: !802)
!809 = !DILocalVariable(name: "ret", scope: !802, file: !1, line: 44, type: !677)
!810 = !DILocation(line: 44, column: 14, scope: !802)
!811 = !DILocation(line: 44, column: 41, scope: !802)
!812 = !DILocation(line: 44, column: 20, scope: !802)
!813 = !DILocation(line: 46, column: 19, scope: !802)
!814 = !DILocation(line: 46, column: 28, scope: !802)
!815 = !DILocation(line: 46, column: 2, scope: !802)
!816 = !DILocation(line: 47, column: 6, scope: !817)
!817 = distinct !DILexicalBlock(scope: !802, file: !1, line: 47, column: 6)
!818 = !DILocation(line: 47, column: 6, scope: !802)
!819 = !DILocation(line: 48, column: 20, scope: !820)
!820 = distinct !DILexicalBlock(scope: !817, file: !1, line: 47, column: 17)
!821 = !DILocation(line: 48, column: 3, scope: !820)
!822 = !DILocation(line: 49, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !820, file: !1, line: 49, column: 7)
!824 = !DILocation(line: 49, column: 17, scope: !823)
!825 = !DILocation(line: 49, column: 7, scope: !820)
!826 = !DILocation(line: 50, column: 21, scope: !823)
!827 = !DILocation(line: 50, column: 4, scope: !823)
!828 = !DILocation(line: 51, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !820, file: !1, line: 51, column: 7)
!830 = !DILocation(line: 51, column: 17, scope: !829)
!831 = !DILocation(line: 51, column: 7, scope: !820)
!832 = !DILocation(line: 52, column: 21, scope: !829)
!833 = !DILocation(line: 52, column: 4, scope: !829)
!834 = !DILocation(line: 53, column: 12, scope: !835)
!835 = distinct !DILexicalBlock(scope: !829, file: !1, line: 53, column: 12)
!836 = !DILocation(line: 53, column: 22, scope: !835)
!837 = !DILocation(line: 53, column: 12, scope: !829)
!838 = !DILocation(line: 54, column: 21, scope: !835)
!839 = !DILocation(line: 54, column: 4, scope: !835)
!840 = !DILocation(line: 55, column: 12, scope: !841)
!841 = distinct !DILexicalBlock(scope: !835, file: !1, line: 55, column: 12)
!842 = !DILocation(line: 55, column: 22, scope: !841)
!843 = !DILocation(line: 55, column: 12, scope: !835)
!844 = !DILocation(line: 56, column: 21, scope: !841)
!845 = !DILocation(line: 56, column: 4, scope: !841)
!846 = !DILocation(line: 57, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !820, file: !1, line: 57, column: 7)
!848 = !DILocation(line: 57, column: 17, scope: !847)
!849 = !DILocation(line: 57, column: 7, scope: !820)
!850 = !DILocation(line: 58, column: 21, scope: !847)
!851 = !DILocation(line: 58, column: 4, scope: !847)
!852 = !DILocation(line: 59, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !820, file: !1, line: 59, column: 7)
!854 = !DILocation(line: 59, column: 17, scope: !853)
!855 = !DILocation(line: 59, column: 7, scope: !820)
!856 = !DILocation(line: 60, column: 21, scope: !853)
!857 = !DILocation(line: 60, column: 4, scope: !853)
!858 = !DILocation(line: 61, column: 18, scope: !820)
!859 = !DILocation(line: 61, column: 3, scope: !820)
!860 = !DILocation(line: 62, column: 2, scope: !820)
!861 = !DILocation(line: 63, column: 17, scope: !802)
!862 = !DILocation(line: 63, column: 2, scope: !802)
!863 = !DILocation(line: 65, column: 9, scope: !802)
!864 = !DILocation(line: 65, column: 2, scope: !802)
!865 = distinct !DISubprogram(name: "libata_trace_parse_eh_err_mask", scope: !1, file: !1, line: 69, type: !803, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !708)
!866 = !DILocalVariable(name: "p", arg: 1, scope: !865, file: !1, line: 69, type: !680)
!867 = !DILocation(line: 69, column: 50, scope: !865)
!868 = !DILocalVariable(name: "eh_err_mask", arg: 2, scope: !865, file: !1, line: 69, type: !655)
!869 = !DILocation(line: 69, column: 66, scope: !865)
!870 = !DILocalVariable(name: "ret", scope: !865, file: !1, line: 71, type: !677)
!871 = !DILocation(line: 71, column: 14, scope: !865)
!872 = !DILocation(line: 71, column: 41, scope: !865)
!873 = !DILocation(line: 71, column: 20, scope: !865)
!874 = !DILocation(line: 73, column: 19, scope: !865)
!875 = !DILocation(line: 73, column: 28, scope: !865)
!876 = !DILocation(line: 73, column: 2, scope: !865)
!877 = !DILocation(line: 74, column: 6, scope: !878)
!878 = distinct !DILexicalBlock(scope: !865, file: !1, line: 74, column: 6)
!879 = !DILocation(line: 74, column: 6, scope: !865)
!880 = !DILocation(line: 75, column: 20, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !1, line: 74, column: 19)
!882 = !DILocation(line: 75, column: 3, scope: !881)
!883 = !DILocation(line: 76, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !881, file: !1, line: 76, column: 7)
!885 = !DILocation(line: 76, column: 19, scope: !884)
!886 = !DILocation(line: 76, column: 7, scope: !881)
!887 = !DILocation(line: 77, column: 21, scope: !884)
!888 = !DILocation(line: 77, column: 4, scope: !884)
!889 = !DILocation(line: 78, column: 7, scope: !890)
!890 = distinct !DILexicalBlock(scope: !881, file: !1, line: 78, column: 7)
!891 = !DILocation(line: 78, column: 19, scope: !890)
!892 = !DILocation(line: 78, column: 7, scope: !881)
!893 = !DILocation(line: 79, column: 21, scope: !890)
!894 = !DILocation(line: 79, column: 4, scope: !890)
!895 = !DILocation(line: 80, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !881, file: !1, line: 80, column: 7)
!897 = !DILocation(line: 80, column: 19, scope: !896)
!898 = !DILocation(line: 80, column: 7, scope: !881)
!899 = !DILocation(line: 81, column: 21, scope: !896)
!900 = !DILocation(line: 81, column: 4, scope: !896)
!901 = !DILocation(line: 82, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !881, file: !1, line: 82, column: 7)
!903 = !DILocation(line: 82, column: 19, scope: !902)
!904 = !DILocation(line: 82, column: 7, scope: !881)
!905 = !DILocation(line: 83, column: 21, scope: !902)
!906 = !DILocation(line: 83, column: 4, scope: !902)
!907 = !DILocation(line: 84, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !881, file: !1, line: 84, column: 7)
!909 = !DILocation(line: 84, column: 19, scope: !908)
!910 = !DILocation(line: 84, column: 7, scope: !881)
!911 = !DILocation(line: 85, column: 21, scope: !908)
!912 = !DILocation(line: 85, column: 4, scope: !908)
!913 = !DILocation(line: 86, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !881, file: !1, line: 86, column: 7)
!915 = !DILocation(line: 86, column: 19, scope: !914)
!916 = !DILocation(line: 86, column: 7, scope: !881)
!917 = !DILocation(line: 87, column: 21, scope: !914)
!918 = !DILocation(line: 87, column: 4, scope: !914)
!919 = !DILocation(line: 88, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !881, file: !1, line: 88, column: 7)
!921 = !DILocation(line: 88, column: 19, scope: !920)
!922 = !DILocation(line: 88, column: 7, scope: !881)
!923 = !DILocation(line: 89, column: 21, scope: !920)
!924 = !DILocation(line: 89, column: 4, scope: !920)
!925 = !DILocation(line: 90, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !881, file: !1, line: 90, column: 7)
!927 = !DILocation(line: 90, column: 19, scope: !926)
!928 = !DILocation(line: 90, column: 7, scope: !881)
!929 = !DILocation(line: 91, column: 21, scope: !926)
!930 = !DILocation(line: 91, column: 4, scope: !926)
!931 = !DILocation(line: 92, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !881, file: !1, line: 92, column: 7)
!933 = !DILocation(line: 92, column: 19, scope: !932)
!934 = !DILocation(line: 92, column: 7, scope: !881)
!935 = !DILocation(line: 93, column: 21, scope: !932)
!936 = !DILocation(line: 93, column: 4, scope: !932)
!937 = !DILocation(line: 94, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !881, file: !1, line: 94, column: 7)
!939 = !DILocation(line: 94, column: 19, scope: !938)
!940 = !DILocation(line: 94, column: 7, scope: !881)
!941 = !DILocation(line: 95, column: 21, scope: !938)
!942 = !DILocation(line: 95, column: 4, scope: !938)
!943 = !DILocation(line: 96, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !881, file: !1, line: 96, column: 7)
!945 = !DILocation(line: 96, column: 19, scope: !944)
!946 = !DILocation(line: 96, column: 7, scope: !881)
!947 = !DILocation(line: 97, column: 21, scope: !944)
!948 = !DILocation(line: 97, column: 4, scope: !944)
!949 = !DILocation(line: 98, column: 18, scope: !881)
!950 = !DILocation(line: 98, column: 3, scope: !881)
!951 = !DILocation(line: 99, column: 2, scope: !881)
!952 = !DILocation(line: 100, column: 17, scope: !865)
!953 = !DILocation(line: 100, column: 2, scope: !865)
!954 = !DILocation(line: 102, column: 9, scope: !865)
!955 = !DILocation(line: 102, column: 2, scope: !865)
!956 = distinct !DISubprogram(name: "libata_trace_parse_qc_flags", scope: !1, file: !1, line: 106, type: !803, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !708)
!957 = !DILocalVariable(name: "p", arg: 1, scope: !956, file: !1, line: 106, type: !680)
!958 = !DILocation(line: 106, column: 47, scope: !956)
!959 = !DILocalVariable(name: "qc_flags", arg: 2, scope: !956, file: !1, line: 106, type: !655)
!960 = !DILocation(line: 106, column: 63, scope: !956)
!961 = !DILocalVariable(name: "ret", scope: !956, file: !1, line: 108, type: !677)
!962 = !DILocation(line: 108, column: 14, scope: !956)
!963 = !DILocation(line: 108, column: 41, scope: !956)
!964 = !DILocation(line: 108, column: 20, scope: !956)
!965 = !DILocation(line: 110, column: 19, scope: !956)
!966 = !DILocation(line: 110, column: 28, scope: !956)
!967 = !DILocation(line: 110, column: 2, scope: !956)
!968 = !DILocation(line: 111, column: 6, scope: !969)
!969 = distinct !DILexicalBlock(scope: !956, file: !1, line: 111, column: 6)
!970 = !DILocation(line: 111, column: 6, scope: !956)
!971 = !DILocation(line: 112, column: 20, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !1, line: 111, column: 16)
!973 = !DILocation(line: 112, column: 3, scope: !972)
!974 = !DILocation(line: 113, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !972, file: !1, line: 113, column: 7)
!976 = !DILocation(line: 113, column: 16, scope: !975)
!977 = !DILocation(line: 113, column: 7, scope: !972)
!978 = !DILocation(line: 114, column: 21, scope: !975)
!979 = !DILocation(line: 114, column: 4, scope: !975)
!980 = !DILocation(line: 115, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !972, file: !1, line: 115, column: 7)
!982 = !DILocation(line: 115, column: 16, scope: !981)
!983 = !DILocation(line: 115, column: 7, scope: !972)
!984 = !DILocation(line: 116, column: 21, scope: !981)
!985 = !DILocation(line: 116, column: 4, scope: !981)
!986 = !DILocation(line: 117, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !972, file: !1, line: 117, column: 7)
!988 = !DILocation(line: 117, column: 16, scope: !987)
!989 = !DILocation(line: 117, column: 7, scope: !972)
!990 = !DILocation(line: 118, column: 21, scope: !987)
!991 = !DILocation(line: 118, column: 4, scope: !987)
!992 = !DILocation(line: 119, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !972, file: !1, line: 119, column: 7)
!994 = !DILocation(line: 119, column: 16, scope: !993)
!995 = !DILocation(line: 119, column: 7, scope: !972)
!996 = !DILocation(line: 120, column: 21, scope: !993)
!997 = !DILocation(line: 120, column: 4, scope: !993)
!998 = !DILocation(line: 121, column: 7, scope: !999)
!999 = distinct !DILexicalBlock(scope: !972, file: !1, line: 121, column: 7)
!1000 = !DILocation(line: 121, column: 16, scope: !999)
!1001 = !DILocation(line: 121, column: 7, scope: !972)
!1002 = !DILocation(line: 122, column: 21, scope: !999)
!1003 = !DILocation(line: 122, column: 4, scope: !999)
!1004 = !DILocation(line: 123, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !972, file: !1, line: 123, column: 7)
!1006 = !DILocation(line: 123, column: 16, scope: !1005)
!1007 = !DILocation(line: 123, column: 7, scope: !972)
!1008 = !DILocation(line: 124, column: 21, scope: !1005)
!1009 = !DILocation(line: 124, column: 4, scope: !1005)
!1010 = !DILocation(line: 125, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !972, file: !1, line: 125, column: 7)
!1012 = !DILocation(line: 125, column: 16, scope: !1011)
!1013 = !DILocation(line: 125, column: 7, scope: !972)
!1014 = !DILocation(line: 126, column: 21, scope: !1011)
!1015 = !DILocation(line: 126, column: 4, scope: !1011)
!1016 = !DILocation(line: 127, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !972, file: !1, line: 127, column: 7)
!1018 = !DILocation(line: 127, column: 16, scope: !1017)
!1019 = !DILocation(line: 127, column: 7, scope: !972)
!1020 = !DILocation(line: 128, column: 21, scope: !1017)
!1021 = !DILocation(line: 128, column: 4, scope: !1017)
!1022 = !DILocation(line: 129, column: 7, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !972, file: !1, line: 129, column: 7)
!1024 = !DILocation(line: 129, column: 16, scope: !1023)
!1025 = !DILocation(line: 129, column: 7, scope: !972)
!1026 = !DILocation(line: 130, column: 21, scope: !1023)
!1027 = !DILocation(line: 130, column: 4, scope: !1023)
!1028 = !DILocation(line: 131, column: 7, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !972, file: !1, line: 131, column: 7)
!1030 = !DILocation(line: 131, column: 16, scope: !1029)
!1031 = !DILocation(line: 131, column: 7, scope: !972)
!1032 = !DILocation(line: 132, column: 21, scope: !1029)
!1033 = !DILocation(line: 132, column: 4, scope: !1029)
!1034 = !DILocation(line: 133, column: 18, scope: !972)
!1035 = !DILocation(line: 133, column: 3, scope: !972)
!1036 = !DILocation(line: 134, column: 2, scope: !972)
!1037 = !DILocation(line: 135, column: 17, scope: !956)
!1038 = !DILocation(line: 135, column: 2, scope: !956)
!1039 = !DILocation(line: 137, column: 9, scope: !956)
!1040 = !DILocation(line: 137, column: 2, scope: !956)
!1041 = distinct !DISubprogram(name: "libata_trace_parse_subcmd", scope: !1, file: !1, line: 141, type: !1042, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !708)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!677, !680, !686, !686, !686}
!1044 = !DILocalVariable(name: "p", arg: 1, scope: !1041, file: !1, line: 141, type: !680)
!1045 = !DILocation(line: 141, column: 45, scope: !1041)
!1046 = !DILocalVariable(name: "cmd", arg: 2, scope: !1041, file: !1, line: 141, type: !686)
!1047 = !DILocation(line: 141, column: 62, scope: !1041)
!1048 = !DILocalVariable(name: "feature", arg: 3, scope: !1041, file: !1, line: 142, type: !686)
!1049 = !DILocation(line: 142, column: 20, scope: !1041)
!1050 = !DILocalVariable(name: "hob_nsect", arg: 4, scope: !1041, file: !1, line: 142, type: !686)
!1051 = !DILocation(line: 142, column: 43, scope: !1041)
!1052 = !DILocalVariable(name: "ret", scope: !1041, file: !1, line: 144, type: !677)
!1053 = !DILocation(line: 144, column: 14, scope: !1041)
!1054 = !DILocation(line: 144, column: 41, scope: !1041)
!1055 = !DILocation(line: 144, column: 20, scope: !1041)
!1056 = !DILocation(line: 146, column: 10, scope: !1041)
!1057 = !DILocation(line: 146, column: 2, scope: !1041)
!1058 = !DILocation(line: 148, column: 11, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 146, column: 15)
!1060 = !DILocation(line: 148, column: 21, scope: !1059)
!1061 = !DILocation(line: 148, column: 3, scope: !1059)
!1062 = !DILocation(line: 150, column: 21, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 148, column: 29)
!1064 = !DILocation(line: 150, column: 4, scope: !1063)
!1065 = !DILocation(line: 151, column: 4, scope: !1063)
!1066 = !DILocation(line: 153, column: 21, scope: !1063)
!1067 = !DILocation(line: 153, column: 4, scope: !1063)
!1068 = !DILocation(line: 154, column: 4, scope: !1063)
!1069 = !DILocation(line: 156, column: 3, scope: !1059)
!1070 = !DILocation(line: 158, column: 11, scope: !1059)
!1071 = !DILocation(line: 158, column: 21, scope: !1059)
!1072 = !DILocation(line: 158, column: 3, scope: !1059)
!1073 = !DILocation(line: 160, column: 21, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 158, column: 29)
!1075 = !DILocation(line: 160, column: 4, scope: !1074)
!1076 = !DILocation(line: 161, column: 4, scope: !1074)
!1077 = !DILocation(line: 163, column: 21, scope: !1074)
!1078 = !DILocation(line: 163, column: 4, scope: !1074)
!1079 = !DILocation(line: 164, column: 4, scope: !1074)
!1080 = !DILocation(line: 166, column: 3, scope: !1059)
!1081 = !DILocation(line: 168, column: 11, scope: !1059)
!1082 = !DILocation(line: 168, column: 3, scope: !1059)
!1083 = !DILocation(line: 170, column: 21, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 168, column: 20)
!1085 = !DILocation(line: 170, column: 4, scope: !1084)
!1086 = !DILocation(line: 171, column: 4, scope: !1084)
!1087 = !DILocation(line: 173, column: 21, scope: !1084)
!1088 = !DILocation(line: 173, column: 4, scope: !1084)
!1089 = !DILocation(line: 174, column: 4, scope: !1084)
!1090 = !DILocation(line: 176, column: 21, scope: !1084)
!1091 = !DILocation(line: 176, column: 4, scope: !1084)
!1092 = !DILocation(line: 177, column: 4, scope: !1084)
!1093 = !DILocation(line: 179, column: 21, scope: !1084)
!1094 = !DILocation(line: 179, column: 4, scope: !1084)
!1095 = !DILocation(line: 180, column: 4, scope: !1084)
!1096 = !DILocation(line: 182, column: 3, scope: !1059)
!1097 = !DILocation(line: 184, column: 11, scope: !1059)
!1098 = !DILocation(line: 184, column: 3, scope: !1059)
!1099 = !DILocation(line: 186, column: 21, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 184, column: 20)
!1101 = !DILocation(line: 186, column: 4, scope: !1100)
!1102 = !DILocation(line: 187, column: 4, scope: !1100)
!1103 = !DILocation(line: 189, column: 3, scope: !1059)
!1104 = !DILocation(line: 191, column: 11, scope: !1059)
!1105 = !DILocation(line: 191, column: 3, scope: !1059)
!1106 = !DILocation(line: 193, column: 21, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 191, column: 20)
!1108 = !DILocation(line: 193, column: 4, scope: !1107)
!1109 = !DILocation(line: 194, column: 4, scope: !1107)
!1110 = !DILocation(line: 196, column: 21, scope: !1107)
!1111 = !DILocation(line: 196, column: 4, scope: !1107)
!1112 = !DILocation(line: 197, column: 4, scope: !1107)
!1113 = !DILocation(line: 199, column: 21, scope: !1107)
!1114 = !DILocation(line: 199, column: 4, scope: !1107)
!1115 = !DILocation(line: 200, column: 4, scope: !1107)
!1116 = !DILocation(line: 202, column: 21, scope: !1107)
!1117 = !DILocation(line: 202, column: 4, scope: !1107)
!1118 = !DILocation(line: 203, column: 4, scope: !1107)
!1119 = !DILocation(line: 205, column: 3, scope: !1059)
!1120 = !DILocation(line: 207, column: 17, scope: !1041)
!1121 = !DILocation(line: 207, column: 2, scope: !1041)
!1122 = !DILocation(line: 209, column: 9, scope: !1041)
!1123 = !DILocation(line: 209, column: 2, scope: !1041)
!1124 = distinct !DISubprogram(name: "seq_buf_used", scope: !691, file: !691, line: 69, type: !1125, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !708)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!655, !1127}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!1128 = !DILocalVariable(name: "s", arg: 1, scope: !1124, file: !691, line: 69, type: !1127)
!1129 = !DILocation(line: 69, column: 57, scope: !1124)
!1130 = !DILocalVariable(name: "__UNIQUE_ID___x189", scope: !1131, file: !691, line: 71, type: !696)
!1131 = distinct !DILexicalBlock(scope: !1124, file: !691, line: 71, column: 9)
!1132 = !DILocation(line: 71, column: 9, scope: !1131)
!1133 = !DILocalVariable(name: "__UNIQUE_ID___y190", scope: !1131, file: !691, line: 71, type: !696)
!1134 = !DILocation(line: 71, column: 9, scope: !1124)
!1135 = !DILocation(line: 71, column: 2, scope: !1124)
