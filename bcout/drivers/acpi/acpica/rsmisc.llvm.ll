; ModuleID = '../bcout/drivers/acpi/acpica/rsmisc.llvm.bc'
source_filename = "drivers/acpi/acpica/rsmisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor_typed, [40 x i8] }
%struct.acpi_resource_vendor_typed = type { i16, i8, [16 x i8], [1 x i8] }
%union.aml_resource = type { i32, [52 x i8] }
%struct.acpi_rsconvert_info = type { i8, i8, i8, i8 }
%struct.aml_resource_large_header = type <{ i8, i16 }>
%struct.acpi_resource_source = type <{ i8, i16, i8* }>

@_acpi_module_name = internal constant [7 x i8] c"rsmisc\00", align 1, !dbg !0
@.str = private unnamed_addr constant [61 x i8] c"Misaligned resource pointer (get): %p Type 0x%2.2X Length %u\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid conversion sub-opcode\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid conversion opcode\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_convert_aml_to_resource(%struct.acpi_resource* %resource, %union.aml_resource* %aml, %struct.acpi_rsconvert_info* %info) #0 !dbg !42 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca %struct.acpi_resource*, align 8
  %aml.addr = alloca %union.aml_resource*, align 8
  %info.addr = alloca %struct.acpi_rsconvert_info*, align 8
  %aml_resource_length = alloca i16, align 2
  %source = alloca i8*, align 8
  %destination = alloca i8*, align 8
  %target = alloca i8*, align 8
  %count = alloca i8, align 1
  %flags_mode = alloca i8, align 1
  %item_count = alloca i16, align 2
  %temp16 = alloca i16, align 2
  store %struct.acpi_resource* %resource, %struct.acpi_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %resource.addr, metadata !743, metadata !DIExpression()), !dbg !744
  store %union.aml_resource* %aml, %union.aml_resource** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata %union.aml_resource** %aml.addr, metadata !745, metadata !DIExpression()), !dbg !746
  store %struct.acpi_rsconvert_info* %info, %struct.acpi_rsconvert_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_rsconvert_info** %info.addr, metadata !747, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.declare(metadata i16* %aml_resource_length, metadata !749, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.declare(metadata i8** %source, metadata !751, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.declare(metadata i8** %destination, metadata !753, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.declare(metadata i8** %target, metadata !755, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.declare(metadata i8* %count, metadata !757, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.declare(metadata i8* %flags_mode, metadata !759, metadata !DIExpression()), !dbg !760
  store i8 0, i8* %flags_mode, align 1, !dbg !760
  call void @llvm.dbg.declare(metadata i16* %item_count, metadata !761, metadata !DIExpression()), !dbg !762
  store i16 0, i16* %item_count, align 2, !dbg !762
  call void @llvm.dbg.declare(metadata i16* %temp16, metadata !763, metadata !DIExpression()), !dbg !764
  store i16 0, i16* %temp16, align 2, !dbg !764
  %0 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !765
  %tobool = icmp ne %struct.acpi_rsconvert_info* %0, null, !dbg !765
  br i1 %tobool, label %if.end, label %if.then, !dbg !767

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !768
  br label %return, !dbg !768

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !770
  %2 = ptrtoint %struct.acpi_resource* %1 to i64, !dbg !772
  %and = and i64 %2, 3, !dbg !773
  %tobool1 = icmp ne i64 %and, 0, !dbg !773
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !774

if.then2:                                         ; preds = %if.end
  %3 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !775
  %4 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !775
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %4, i32 0, i32 0, !dbg !775
  %5 = load i32, i32* %type, align 1, !dbg !775
  %6 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !775
  %length = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %6, i32 0, i32 1, !dbg !775
  %7 = load i32, i32* %length, align 1, !dbg !775
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 58, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), %struct.acpi_resource* %3, i32 %5, i32 %7) #4, !dbg !775
  br label %if.end3, !dbg !777

if.end3:                                          ; preds = %if.then2, %if.end
  %8 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !778
  %9 = bitcast %union.aml_resource* %8 to i8*, !dbg !778
  %call = call zeroext i16 @acpi_ut_get_resource_length(i8* %9) #4, !dbg !779
  store i16 %call, i16* %aml_resource_length, align 2, !dbg !780
  %10 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !781
  %value = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %10, i32 0, i32 3, !dbg !781
  %11 = load i8, i8* %value, align 1, !dbg !781
  store i8 %11, i8* %count, align 1, !dbg !782
  br label %while.cond, !dbg !783

while.cond:                                       ; preds = %sw.epilog273, %if.end3
  %12 = load i8, i8* %count, align 1, !dbg !784
  %tobool4 = icmp ne i8 %12, 0, !dbg !783
  br i1 %tobool4, label %while.body, label %while.end, !dbg !783

while.body:                                       ; preds = %while.cond
  %13 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !785
  %14 = bitcast %union.aml_resource* %13 to i8*, !dbg !785
  %15 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !785
  %aml_offset = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %15, i32 0, i32 2, !dbg !785
  %16 = load i8, i8* %aml_offset, align 1, !dbg !785
  %conv = zext i8 %16 to i64, !dbg !785
  %add.ptr = getelementptr i8, i8* %14, i64 %conv, !dbg !785
  store i8* %add.ptr, i8** %source, align 8, !dbg !787
  %17 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !788
  %18 = bitcast %struct.acpi_resource* %17 to i8*, !dbg !788
  %19 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !788
  %resource_offset = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %19, i32 0, i32 1, !dbg !788
  %20 = load i8, i8* %resource_offset, align 1, !dbg !788
  %conv5 = zext i8 %20 to i64, !dbg !788
  %add.ptr6 = getelementptr i8, i8* %18, i64 %conv5, !dbg !788
  store i8* %add.ptr6, i8** %destination, align 8, !dbg !789
  %21 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !790
  %opcode = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %21, i32 0, i32 0, !dbg !791
  %22 = load i8, i8* %opcode, align 1, !dbg !791
  %conv7 = zext i8 %22 to i32, !dbg !790
  switch i32 %conv7, label %sw.default272 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb17
    i32 3, label %sw.bb18
    i32 4, label %sw.bb24
    i32 5, label %sw.bb31
    i32 9, label %sw.bb38
    i32 10, label %sw.bb46
    i32 11, label %sw.bb55
    i32 13, label %sw.bb69
    i32 12, label %sw.bb79
    i32 15, label %sw.bb104
    i32 14, label %sw.bb114
    i32 20, label %sw.bb127
    i32 25, label %sw.bb133
    i32 26, label %sw.bb133
    i32 27, label %sw.bb133
    i32 28, label %sw.bb133
    i32 21, label %sw.bb141
    i32 22, label %sw.bb151
    i32 24, label %sw.bb160
    i32 23, label %sw.bb170
    i32 29, label %sw.bb183
    i32 16, label %sw.bb188
    i32 6, label %sw.bb193
    i32 30, label %sw.bb198
    i32 31, label %sw.bb205
    i32 7, label %sw.bb225
    i32 8, label %sw.bb240
    i32 19, label %sw.bb254
  ], !dbg !792

sw.bb:                                            ; preds = %while.body
  %23 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !793
  %24 = bitcast %struct.acpi_resource* %23 to i8*, !dbg !795
  %25 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !796
  %aml_offset8 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %25, i32 0, i32 2, !dbg !796
  %26 = load i8, i8* %aml_offset8, align 1, !dbg !796
  %conv9 = zext i8 %26 to i64, !dbg !796
  call void @llvm.memset.p0i8.i64(i8* align 1 %24, i8 0, i64 %conv9, i1 false), !dbg !795
  %27 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !797
  %resource_offset10 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %27, i32 0, i32 1, !dbg !797
  %28 = load i8, i8* %resource_offset10, align 1, !dbg !797
  %conv11 = zext i8 %28 to i32, !dbg !797
  %29 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !798
  %type12 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %29, i32 0, i32 0, !dbg !799
  store i32 %conv11, i32* %type12, align 1, !dbg !800
  %30 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !801
  %aml_offset13 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %30, i32 0, i32 2, !dbg !801
  %31 = load i8, i8* %aml_offset13, align 1, !dbg !801
  %conv14 = zext i8 %31 to i32, !dbg !801
  %32 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !802
  %length15 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %32, i32 0, i32 1, !dbg !803
  store i32 %conv14, i32* %length15, align 1, !dbg !804
  br label %sw.epilog273, !dbg !805

sw.bb16:                                          ; preds = %while.body
  br label %sw.epilog273, !dbg !806

sw.bb17:                                          ; preds = %while.body
  store i8 1, i8* %flags_mode, align 1, !dbg !807
  br label %sw.epilog273, !dbg !808

sw.bb18:                                          ; preds = %while.body
  %33 = load i8*, i8** %source, align 8, !dbg !809
  %34 = load i8, i8* %33, align 1, !dbg !809
  %conv19 = zext i8 %34 to i32, !dbg !809
  %35 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !809
  %value20 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %35, i32 0, i32 3, !dbg !809
  %36 = load i8, i8* %value20, align 1, !dbg !809
  %conv21 = zext i8 %36 to i32, !dbg !809
  %shr = ashr i32 %conv19, %conv21, !dbg !809
  %and22 = and i32 %shr, 1, !dbg !809
  %conv23 = trunc i32 %and22 to i8, !dbg !809
  %37 = load i8*, i8** %destination, align 8, !dbg !809
  store i8 %conv23, i8* %37, align 1, !dbg !809
  br label %sw.epilog273, !dbg !810

sw.bb24:                                          ; preds = %while.body
  %38 = load i8*, i8** %source, align 8, !dbg !811
  %39 = load i8, i8* %38, align 1, !dbg !811
  %conv25 = zext i8 %39 to i32, !dbg !811
  %40 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !811
  %value26 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %40, i32 0, i32 3, !dbg !811
  %41 = load i8, i8* %value26, align 1, !dbg !811
  %conv27 = zext i8 %41 to i32, !dbg !811
  %shr28 = ashr i32 %conv25, %conv27, !dbg !811
  %and29 = and i32 %shr28, 3, !dbg !811
  %conv30 = trunc i32 %and29 to i8, !dbg !811
  %42 = load i8*, i8** %destination, align 8, !dbg !811
  store i8 %conv30, i8* %42, align 1, !dbg !811
  br label %sw.epilog273, !dbg !812

sw.bb31:                                          ; preds = %while.body
  %43 = load i8*, i8** %source, align 8, !dbg !813
  %44 = load i8, i8* %43, align 1, !dbg !813
  %conv32 = zext i8 %44 to i32, !dbg !813
  %45 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !813
  %value33 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %45, i32 0, i32 3, !dbg !813
  %46 = load i8, i8* %value33, align 1, !dbg !813
  %conv34 = zext i8 %46 to i32, !dbg !813
  %shr35 = ashr i32 %conv32, %conv34, !dbg !813
  %and36 = and i32 %shr35, 7, !dbg !813
  %conv37 = trunc i32 %and36 to i8, !dbg !813
  %47 = load i8*, i8** %destination, align 8, !dbg !813
  store i8 %conv37, i8* %47, align 1, !dbg !813
  br label %sw.epilog273, !dbg !814

sw.bb38:                                          ; preds = %while.body
  %48 = load i8*, i8** %source, align 8, !dbg !815
  %49 = load i8, i8* %48, align 1, !dbg !815
  %conv39 = zext i8 %49 to i16, !dbg !815
  store i16 %conv39, i16* %item_count, align 2, !dbg !816
  %50 = load i16, i16* %item_count, align 2, !dbg !817
  %conv40 = trunc i16 %50 to i8, !dbg !817
  %51 = load i8*, i8** %destination, align 8, !dbg !817
  store i8 %conv40, i8* %51, align 1, !dbg !817
  %52 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !818
  %length41 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %52, i32 0, i32 1, !dbg !819
  %53 = load i32, i32* %length41, align 1, !dbg !819
  %54 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !820
  %value42 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %54, i32 0, i32 3, !dbg !821
  %55 = load i8, i8* %value42, align 1, !dbg !821
  %conv43 = zext i8 %55 to i32, !dbg !820
  %56 = load i16, i16* %item_count, align 2, !dbg !822
  %conv44 = zext i16 %56 to i32, !dbg !822
  %sub = sub i32 %conv44, 1, !dbg !823
  %mul = mul i32 %conv43, %sub, !dbg !824
  %add = add i32 %53, %mul, !dbg !825
  %57 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !826
  %length45 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %57, i32 0, i32 1, !dbg !827
  store i32 %add, i32* %length45, align 1, !dbg !828
  br label %sw.epilog273, !dbg !829

sw.bb46:                                          ; preds = %while.body
  %58 = load i16, i16* %aml_resource_length, align 2, !dbg !830
  store i16 %58, i16* %item_count, align 2, !dbg !831
  %59 = load i16, i16* %item_count, align 2, !dbg !832
  %60 = load i8*, i8** %destination, align 8, !dbg !832
  %61 = bitcast i8* %60 to i16*, !dbg !832
  store i16 %59, i16* %61, align 2, !dbg !832
  %62 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !833
  %length47 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %62, i32 0, i32 1, !dbg !834
  %63 = load i32, i32* %length47, align 1, !dbg !834
  %64 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !835
  %value48 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %64, i32 0, i32 3, !dbg !836
  %65 = load i8, i8* %value48, align 1, !dbg !836
  %conv49 = zext i8 %65 to i32, !dbg !835
  %66 = load i16, i16* %item_count, align 2, !dbg !837
  %conv50 = zext i16 %66 to i32, !dbg !837
  %sub51 = sub i32 %conv50, 1, !dbg !838
  %mul52 = mul i32 %conv49, %sub51, !dbg !839
  %add53 = add i32 %63, %mul52, !dbg !840
  %67 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !841
  %length54 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %67, i32 0, i32 1, !dbg !842
  store i32 %add53, i32* %length54, align 1, !dbg !843
  br label %sw.epilog273, !dbg !844

sw.bb55:                                          ; preds = %while.body
  %68 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !845
  %69 = bitcast %union.aml_resource* %68 to i8*, !dbg !845
  %70 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !845
  %value56 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %70, i32 0, i32 3, !dbg !845
  %71 = load i8, i8* %value56, align 1, !dbg !845
  %conv57 = zext i8 %71 to i64, !dbg !845
  %add.ptr58 = getelementptr i8, i8* %69, i64 %conv57, !dbg !845
  store i8* %add.ptr58, i8** %target, align 8, !dbg !846
  %72 = load i8*, i8** %target, align 8, !dbg !847
  %73 = bitcast i8* %72 to i16*, !dbg !847
  %74 = load i16, i16* %73, align 2, !dbg !847
  %conv59 = zext i16 %74 to i32, !dbg !847
  %75 = load i8*, i8** %source, align 8, !dbg !848
  %76 = bitcast i8* %75 to i16*, !dbg !848
  %77 = load i16, i16* %76, align 2, !dbg !848
  %conv60 = zext i16 %77 to i32, !dbg !848
  %sub61 = sub i32 %conv59, %conv60, !dbg !849
  %conv62 = trunc i32 %sub61 to i16, !dbg !847
  store i16 %conv62, i16* %item_count, align 2, !dbg !850
  %78 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !851
  %length63 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %78, i32 0, i32 1, !dbg !852
  %79 = load i32, i32* %length63, align 1, !dbg !852
  %80 = load i16, i16* %item_count, align 2, !dbg !853
  %conv64 = zext i16 %80 to i32, !dbg !853
  %add65 = add i32 %79, %conv64, !dbg !854
  %81 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !855
  %length66 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %81, i32 0, i32 1, !dbg !856
  store i32 %add65, i32* %length66, align 1, !dbg !857
  %82 = load i16, i16* %item_count, align 2, !dbg !858
  %conv67 = zext i16 %82 to i32, !dbg !858
  %div = sdiv i32 %conv67, 2, !dbg !859
  %conv68 = trunc i32 %div to i16, !dbg !858
  store i16 %conv68, i16* %item_count, align 2, !dbg !860
  %83 = load i16, i16* %item_count, align 2, !dbg !861
  %84 = load i8*, i8** %destination, align 8, !dbg !861
  %85 = bitcast i8* %84 to i16*, !dbg !861
  store i16 %83, i16* %85, align 2, !dbg !861
  br label %sw.epilog273, !dbg !862

sw.bb69:                                          ; preds = %while.body
  %86 = load i8*, i8** %source, align 8, !dbg !863
  %87 = load i8, i8* %86, align 1, !dbg !863
  %conv70 = zext i8 %87 to i16, !dbg !863
  store i16 %conv70, i16* %item_count, align 2, !dbg !864
  %88 = load i16, i16* %item_count, align 2, !dbg !865
  %conv71 = trunc i16 %88 to i8, !dbg !865
  %89 = load i8*, i8** %destination, align 8, !dbg !865
  store i8 %conv71, i8* %89, align 1, !dbg !865
  %90 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !866
  %length72 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %90, i32 0, i32 1, !dbg !867
  %91 = load i32, i32* %length72, align 1, !dbg !867
  %92 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !868
  %value73 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %92, i32 0, i32 3, !dbg !869
  %93 = load i8, i8* %value73, align 1, !dbg !869
  %conv74 = zext i8 %93 to i32, !dbg !868
  %94 = load i16, i16* %item_count, align 2, !dbg !870
  %conv75 = zext i16 %94 to i32, !dbg !870
  %mul76 = mul i32 %conv74, %conv75, !dbg !871
  %add77 = add i32 %91, %mul76, !dbg !872
  %95 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !873
  %length78 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %95, i32 0, i32 1, !dbg !874
  store i32 %add77, i32* %length78, align 1, !dbg !875
  br label %sw.epilog273, !dbg !876

sw.bb79:                                          ; preds = %while.body
  %96 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !877
  %97 = bitcast %union.aml_resource* %96 to i8*, !dbg !877
  %98 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !877
  %value80 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %98, i32 0, i32 3, !dbg !877
  %99 = load i8, i8* %value80, align 1, !dbg !877
  %conv81 = zext i8 %99 to i32, !dbg !877
  %add82 = add i32 %conv81, 2, !dbg !877
  %conv83 = sext i32 %add82 to i64, !dbg !877
  %add.ptr84 = getelementptr i8, i8* %97, i64 %conv83, !dbg !877
  store i8* %add.ptr84, i8** %target, align 8, !dbg !878
  %100 = load i8*, i8** %target, align 8, !dbg !879
  %101 = bitcast i8* %100 to i16*, !dbg !879
  %102 = load i16, i16* %101, align 2, !dbg !879
  %tobool85 = icmp ne i16 %102, 0, !dbg !879
  br i1 %tobool85, label %if.then86, label %if.else, !dbg !881

if.then86:                                        ; preds = %sw.bb79
  %103 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !882
  %104 = bitcast %union.aml_resource* %103 to i8*, !dbg !882
  %105 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !882
  %value87 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %105, i32 0, i32 3, !dbg !882
  %106 = load i8, i8* %value87, align 1, !dbg !882
  %conv88 = zext i8 %106 to i64, !dbg !882
  %add.ptr89 = getelementptr i8, i8* %104, i64 %conv88, !dbg !882
  store i8* %add.ptr89, i8** %target, align 8, !dbg !884
  %107 = load i8*, i8** %target, align 8, !dbg !885
  %108 = bitcast i8* %107 to i16*, !dbg !885
  %109 = load i16, i16* %108, align 2, !dbg !885
  %conv90 = zext i16 %109 to i32, !dbg !885
  %110 = load i8*, i8** %source, align 8, !dbg !886
  %111 = bitcast i8* %110 to i16*, !dbg !886
  %112 = load i16, i16* %111, align 2, !dbg !886
  %conv91 = zext i16 %112 to i32, !dbg !886
  %sub92 = sub i32 %conv90, %conv91, !dbg !887
  %conv93 = trunc i32 %sub92 to i16, !dbg !885
  store i16 %conv93, i16* %item_count, align 2, !dbg !888
  br label %if.end99, !dbg !889

if.else:                                          ; preds = %sw.bb79
  %113 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !890
  %large_header = bitcast %union.aml_resource* %113 to %struct.aml_resource_large_header*, !dbg !892
  %resource_length = getelementptr inbounds %struct.aml_resource_large_header, %struct.aml_resource_large_header* %large_header, i32 0, i32 1, !dbg !893
  %114 = load i16, i16* %resource_length, align 1, !dbg !893
  %conv94 = zext i16 %114 to i64, !dbg !890
  %add95 = add i64 %conv94, 3, !dbg !894
  %115 = load i8*, i8** %source, align 8, !dbg !895
  %116 = bitcast i8* %115 to i16*, !dbg !895
  %117 = load i16, i16* %116, align 2, !dbg !895
  %conv96 = zext i16 %117 to i64, !dbg !895
  %sub97 = sub i64 %add95, %conv96, !dbg !896
  %conv98 = trunc i64 %sub97 to i16, !dbg !890
  store i16 %conv98, i16* %item_count, align 2, !dbg !897
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then86
  %118 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !898
  %length100 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %118, i32 0, i32 1, !dbg !899
  %119 = load i32, i32* %length100, align 1, !dbg !899
  %120 = load i16, i16* %item_count, align 2, !dbg !900
  %conv101 = zext i16 %120 to i32, !dbg !900
  %add102 = add i32 %119, %conv101, !dbg !901
  %121 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !902
  %length103 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %121, i32 0, i32 1, !dbg !903
  store i32 %add102, i32* %length103, align 1, !dbg !904
  %122 = load i16, i16* %item_count, align 2, !dbg !905
  %123 = load i8*, i8** %destination, align 8, !dbg !905
  %124 = bitcast i8* %123 to i16*, !dbg !905
  store i16 %122, i16* %124, align 2, !dbg !905
  br label %sw.epilog273, !dbg !906

sw.bb104:                                         ; preds = %while.body
  %125 = load i8*, i8** %source, align 8, !dbg !907
  %126 = bitcast i8* %125 to i16*, !dbg !907
  %127 = load i16, i16* %126, align 2, !dbg !907
  %conv105 = zext i16 %127 to i32, !dbg !907
  %128 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !908
  %value106 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %128, i32 0, i32 3, !dbg !909
  %129 = load i8, i8* %value106, align 1, !dbg !909
  %conv107 = zext i8 %129 to i32, !dbg !908
  %sub108 = sub i32 %conv105, %conv107, !dbg !910
  %conv109 = trunc i32 %sub108 to i16, !dbg !907
  store i16 %conv109, i16* %item_count, align 2, !dbg !911
  %130 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !912
  %length110 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %130, i32 0, i32 1, !dbg !913
  %131 = load i32, i32* %length110, align 1, !dbg !913
  %132 = load i16, i16* %item_count, align 2, !dbg !914
  %conv111 = zext i16 %132 to i32, !dbg !914
  %add112 = add i32 %131, %conv111, !dbg !915
  %133 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !916
  %length113 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %133, i32 0, i32 1, !dbg !917
  store i32 %add112, i32* %length113, align 1, !dbg !918
  %134 = load i16, i16* %item_count, align 2, !dbg !919
  %135 = load i8*, i8** %destination, align 8, !dbg !919
  %136 = bitcast i8* %135 to i16*, !dbg !919
  store i16 %134, i16* %136, align 2, !dbg !919
  br label %sw.epilog273, !dbg !920

sw.bb114:                                         ; preds = %while.body
  %137 = load i16, i16* %aml_resource_length, align 2, !dbg !921
  %conv115 = zext i16 %137 to i64, !dbg !921
  %add116 = add i64 %conv115, 3, !dbg !922
  %138 = load i8*, i8** %source, align 8, !dbg !923
  %139 = bitcast i8* %138 to i16*, !dbg !923
  %140 = load i16, i16* %139, align 2, !dbg !923
  %conv117 = zext i16 %140 to i64, !dbg !923
  %sub118 = sub i64 %add116, %conv117, !dbg !924
  %141 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !925
  %value119 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %141, i32 0, i32 3, !dbg !926
  %142 = load i8, i8* %value119, align 1, !dbg !926
  %conv120 = zext i8 %142 to i64, !dbg !925
  %sub121 = sub i64 %sub118, %conv120, !dbg !927
  %conv122 = trunc i64 %sub121 to i16, !dbg !928
  store i16 %conv122, i16* %item_count, align 2, !dbg !929
  %143 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !930
  %length123 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %143, i32 0, i32 1, !dbg !931
  %144 = load i32, i32* %length123, align 1, !dbg !931
  %145 = load i16, i16* %item_count, align 2, !dbg !932
  %conv124 = zext i16 %145 to i32, !dbg !932
  %add125 = add i32 %144, %conv124, !dbg !933
  %146 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !934
  %length126 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %146, i32 0, i32 1, !dbg !935
  store i32 %add125, i32* %length126, align 1, !dbg !936
  %147 = load i16, i16* %item_count, align 2, !dbg !937
  %148 = load i8*, i8** %destination, align 8, !dbg !937
  %149 = bitcast i8* %148 to i16*, !dbg !937
  store i16 %147, i16* %149, align 2, !dbg !937
  br label %sw.epilog273, !dbg !938

sw.bb127:                                         ; preds = %while.body
  %150 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !939
  %length128 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %150, i32 0, i32 1, !dbg !940
  %151 = load i32, i32* %length128, align 1, !dbg !940
  %152 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !941
  %value129 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %152, i32 0, i32 3, !dbg !942
  %153 = load i8, i8* %value129, align 1, !dbg !942
  %conv130 = zext i8 %153 to i32, !dbg !941
  %add131 = add i32 %151, %conv130, !dbg !943
  %154 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !944
  %length132 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %154, i32 0, i32 1, !dbg !945
  store i32 %add131, i32* %length132, align 1, !dbg !946
  br label %sw.epilog273, !dbg !947

sw.bb133:                                         ; preds = %while.body, %while.body, %while.body, %while.body
  %155 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !948
  %value134 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %155, i32 0, i32 3, !dbg !950
  %156 = load i8, i8* %value134, align 1, !dbg !950
  %tobool135 = icmp ne i8 %156, 0, !dbg !948
  br i1 %tobool135, label %if.then136, label %if.end139, !dbg !951

if.then136:                                       ; preds = %sw.bb133
  %157 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !952
  %value137 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %157, i32 0, i32 3, !dbg !954
  %158 = load i8, i8* %value137, align 1, !dbg !954
  %conv138 = zext i8 %158 to i16, !dbg !952
  store i16 %conv138, i16* %item_count, align 2, !dbg !955
  br label %if.end139, !dbg !956

if.end139:                                        ; preds = %if.then136, %sw.bb133
  %159 = load i8*, i8** %destination, align 8, !dbg !957
  %160 = load i8*, i8** %source, align 8, !dbg !958
  %161 = load i16, i16* %item_count, align 2, !dbg !959
  %162 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !960
  %opcode140 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %162, i32 0, i32 0, !dbg !961
  %163 = load i8, i8* %opcode140, align 1, !dbg !961
  call void @acpi_rs_move_data(i8* %159, i8* %160, i16 zeroext %161, i8 zeroext %163) #4, !dbg !962
  br label %sw.epilog273, !dbg !963

sw.bb141:                                         ; preds = %while.body
  %164 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !964
  %165 = bitcast %struct.acpi_resource* %164 to i8*, !dbg !964
  %166 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !964
  %length142 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %166, i32 0, i32 1, !dbg !964
  %167 = load i32, i32* %length142, align 1, !dbg !964
  %168 = load i16, i16* %item_count, align 2, !dbg !964
  %conv143 = zext i16 %168 to i32, !dbg !964
  %mul144 = mul i32 %conv143, 2, !dbg !964
  %sub145 = sub i32 %167, %mul144, !dbg !964
  %conv146 = zext i32 %sub145 to i64, !dbg !964
  %add.ptr147 = getelementptr i8, i8* %165, i64 %conv146, !dbg !964
  store i8* %add.ptr147, i8** %target, align 8, !dbg !965
  %169 = load i8*, i8** %target, align 8, !dbg !966
  %170 = bitcast i8* %169 to i16*, !dbg !966
  %171 = load i8*, i8** %destination, align 8, !dbg !967
  %172 = bitcast i8* %171 to i16**, !dbg !968
  store i16* %170, i16** %172, align 8, !dbg !969
  %173 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !970
  %174 = bitcast %union.aml_resource* %173 to i8*, !dbg !970
  %175 = load i8*, i8** %source, align 8, !dbg !970
  %176 = bitcast i8* %175 to i16*, !dbg !970
  %177 = load i16, i16* %176, align 2, !dbg !970
  %conv148 = zext i16 %177 to i64, !dbg !970
  %add.ptr149 = getelementptr i8, i8* %174, i64 %conv148, !dbg !970
  store i8* %add.ptr149, i8** %source, align 8, !dbg !971
  %178 = load i8*, i8** %target, align 8, !dbg !972
  %179 = load i8*, i8** %source, align 8, !dbg !973
  %180 = load i16, i16* %item_count, align 2, !dbg !974
  %181 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !975
  %opcode150 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %181, i32 0, i32 0, !dbg !976
  %182 = load i8, i8* %opcode150, align 1, !dbg !976
  call void @acpi_rs_move_data(i8* %178, i8* %179, i16 zeroext %180, i8 zeroext %182) #4, !dbg !977
  br label %sw.epilog273, !dbg !978

sw.bb151:                                         ; preds = %while.body
  %183 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !979
  %184 = bitcast %struct.acpi_resource* %183 to i8*, !dbg !979
  %185 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !979
  %length152 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %185, i32 0, i32 1, !dbg !979
  %186 = load i32, i32* %length152, align 1, !dbg !979
  %187 = load i16, i16* %item_count, align 2, !dbg !979
  %conv153 = zext i16 %187 to i32, !dbg !979
  %sub154 = sub i32 %186, %conv153, !dbg !979
  %conv155 = zext i32 %sub154 to i64, !dbg !979
  %add.ptr156 = getelementptr i8, i8* %184, i64 %conv155, !dbg !979
  store i8* %add.ptr156, i8** %target, align 8, !dbg !980
  %188 = load i8*, i8** %target, align 8, !dbg !981
  %189 = load i8*, i8** %destination, align 8, !dbg !982
  %190 = bitcast i8* %189 to i8**, !dbg !983
  store i8* %188, i8** %190, align 8, !dbg !984
  %191 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !985
  %192 = bitcast %union.aml_resource* %191 to i8*, !dbg !985
  %193 = load i8*, i8** %source, align 8, !dbg !985
  %194 = bitcast i8* %193 to i16*, !dbg !985
  %195 = load i16, i16* %194, align 2, !dbg !985
  %conv157 = zext i16 %195 to i64, !dbg !985
  %add.ptr158 = getelementptr i8, i8* %192, i64 %conv157, !dbg !985
  store i8* %add.ptr158, i8** %source, align 8, !dbg !986
  %196 = load i8*, i8** %target, align 8, !dbg !987
  %197 = load i8*, i8** %source, align 8, !dbg !988
  %198 = load i16, i16* %item_count, align 2, !dbg !989
  %199 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !990
  %opcode159 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %199, i32 0, i32 0, !dbg !991
  %200 = load i8, i8* %opcode159, align 1, !dbg !991
  call void @acpi_rs_move_data(i8* %196, i8* %197, i16 zeroext %198, i8 zeroext %200) #4, !dbg !992
  br label %sw.epilog273, !dbg !993

sw.bb160:                                         ; preds = %while.body
  %201 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !994
  %202 = bitcast %struct.acpi_resource* %201 to i8*, !dbg !994
  %203 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !994
  %length161 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %203, i32 0, i32 1, !dbg !994
  %204 = load i32, i32* %length161, align 1, !dbg !994
  %205 = load i16, i16* %item_count, align 2, !dbg !994
  %conv162 = zext i16 %205 to i32, !dbg !994
  %sub163 = sub i32 %204, %conv162, !dbg !994
  %conv164 = zext i32 %sub163 to i64, !dbg !994
  %add.ptr165 = getelementptr i8, i8* %202, i64 %conv164, !dbg !994
  store i8* %add.ptr165, i8** %target, align 8, !dbg !995
  %206 = load i8*, i8** %target, align 8, !dbg !996
  %207 = load i8*, i8** %destination, align 8, !dbg !997
  %208 = bitcast i8* %207 to i8**, !dbg !998
  store i8* %206, i8** %208, align 8, !dbg !999
  %209 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1000
  %210 = bitcast %union.aml_resource* %209 to i8*, !dbg !1000
  %211 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1000
  %value166 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %211, i32 0, i32 3, !dbg !1000
  %212 = load i8, i8* %value166, align 1, !dbg !1000
  %conv167 = zext i8 %212 to i64, !dbg !1000
  %add.ptr168 = getelementptr i8, i8* %210, i64 %conv167, !dbg !1000
  store i8* %add.ptr168, i8** %source, align 8, !dbg !1001
  %213 = load i8*, i8** %target, align 8, !dbg !1002
  %214 = load i8*, i8** %source, align 8, !dbg !1003
  %215 = load i16, i16* %item_count, align 2, !dbg !1004
  %216 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1005
  %opcode169 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %216, i32 0, i32 0, !dbg !1006
  %217 = load i8, i8* %opcode169, align 1, !dbg !1006
  call void @acpi_rs_move_data(i8* %213, i8* %214, i16 zeroext %215, i8 zeroext %217) #4, !dbg !1007
  br label %sw.epilog273, !dbg !1008

sw.bb170:                                         ; preds = %while.body
  %218 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1009
  %219 = bitcast %struct.acpi_resource* %218 to i8*, !dbg !1009
  %220 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1009
  %length171 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %220, i32 0, i32 1, !dbg !1009
  %221 = load i32, i32* %length171, align 1, !dbg !1009
  %222 = load i16, i16* %item_count, align 2, !dbg !1009
  %conv172 = zext i16 %222 to i32, !dbg !1009
  %sub173 = sub i32 %221, %conv172, !dbg !1009
  %conv174 = zext i32 %sub173 to i64, !dbg !1009
  %add.ptr175 = getelementptr i8, i8* %219, i64 %conv174, !dbg !1009
  store i8* %add.ptr175, i8** %target, align 8, !dbg !1010
  %223 = load i8*, i8** %target, align 8, !dbg !1011
  %224 = load i8*, i8** %destination, align 8, !dbg !1012
  %225 = bitcast i8* %224 to i8**, !dbg !1013
  store i8* %223, i8** %225, align 8, !dbg !1014
  %226 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1015
  %227 = bitcast %union.aml_resource* %226 to i8*, !dbg !1015
  %228 = load i8*, i8** %source, align 8, !dbg !1015
  %229 = bitcast i8* %228 to i16*, !dbg !1015
  %230 = load i16, i16* %229, align 2, !dbg !1015
  %conv176 = zext i16 %230 to i32, !dbg !1015
  %231 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1015
  %value177 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %231, i32 0, i32 3, !dbg !1015
  %232 = load i8, i8* %value177, align 1, !dbg !1015
  %conv178 = zext i8 %232 to i32, !dbg !1015
  %add179 = add i32 %conv176, %conv178, !dbg !1015
  %conv180 = sext i32 %add179 to i64, !dbg !1015
  %add.ptr181 = getelementptr i8, i8* %227, i64 %conv180, !dbg !1015
  store i8* %add.ptr181, i8** %source, align 8, !dbg !1016
  %233 = load i8*, i8** %target, align 8, !dbg !1017
  %234 = load i8*, i8** %source, align 8, !dbg !1018
  %235 = load i16, i16* %item_count, align 2, !dbg !1019
  %236 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1020
  %opcode182 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %236, i32 0, i32 0, !dbg !1021
  %237 = load i8, i8* %opcode182, align 1, !dbg !1021
  call void @acpi_rs_move_data(i8* %233, i8* %234, i16 zeroext %235, i8 zeroext %237) #4, !dbg !1022
  br label %sw.epilog273, !dbg !1023

sw.bb183:                                         ; preds = %while.body
  %238 = load i8*, i8** %destination, align 8, !dbg !1024
  %239 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1025
  %aml_offset184 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %239, i32 0, i32 2, !dbg !1026
  %240 = load i8, i8* %aml_offset184, align 1, !dbg !1026
  %conv185 = zext i8 %240 to i32, !dbg !1025
  %241 = trunc i32 %conv185 to i8, !dbg !1027
  %242 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1028
  %value186 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %242, i32 0, i32 3, !dbg !1029
  %243 = load i8, i8* %value186, align 1, !dbg !1029
  %conv187 = zext i8 %243 to i64, !dbg !1028
  call void @llvm.memset.p0i8.i64(i8* align 1 %238, i8 %241, i64 %conv187, i1 false), !dbg !1027
  br label %sw.epilog273, !dbg !1030

sw.bb188:                                         ; preds = %while.body
  %244 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1031
  %245 = bitcast %struct.acpi_resource* %244 to i8*, !dbg !1031
  %246 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1031
  %value189 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %246, i32 0, i32 3, !dbg !1031
  %247 = load i8, i8* %value189, align 1, !dbg !1031
  %conv190 = zext i8 %247 to i64, !dbg !1031
  %add.ptr191 = getelementptr i8, i8* %245, i64 %conv190, !dbg !1031
  store i8* %add.ptr191, i8** %target, align 8, !dbg !1032
  %248 = load i8*, i8** %destination, align 8, !dbg !1033
  %249 = load i8*, i8** %source, align 8, !dbg !1034
  %250 = load i8*, i8** %target, align 8, !dbg !1035
  %251 = bitcast i8* %250 to i16*, !dbg !1035
  %252 = load i16, i16* %251, align 2, !dbg !1035
  %conv192 = zext i16 %252 to i64, !dbg !1035
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %248, i8* align 1 %249, i64 %conv192, i1 false), !dbg !1036
  br label %sw.epilog273, !dbg !1037

sw.bb193:                                         ; preds = %while.body
  %253 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1038
  %254 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1040
  %call194 = call zeroext i8 @acpi_rs_get_address_common(%struct.acpi_resource* %253, %union.aml_resource* %254) #4, !dbg !1041
  %tobool195 = icmp ne i8 %call194, 0, !dbg !1041
  br i1 %tobool195, label %if.end197, label %if.then196, !dbg !1042

if.then196:                                       ; preds = %sw.bb193
  store i32 12311, i32* %retval, align 4, !dbg !1043
  br label %return, !dbg !1043

if.end197:                                        ; preds = %sw.bb193
  br label %sw.epilog273, !dbg !1045

sw.bb198:                                         ; preds = %while.body
  %255 = load i16, i16* %aml_resource_length, align 2, !dbg !1046
  %256 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1047
  %value199 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %256, i32 0, i32 3, !dbg !1048
  %257 = load i8, i8* %value199, align 1, !dbg !1048
  %conv200 = zext i8 %257 to i16, !dbg !1047
  %258 = load i8*, i8** %destination, align 8, !dbg !1049
  %259 = bitcast i8* %258 to %struct.acpi_resource_source*, !dbg !1049
  %260 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1050
  %call201 = call zeroext i16 @acpi_rs_get_resource_source(i16 zeroext %255, i16 zeroext %conv200, %struct.acpi_resource_source* %259, %union.aml_resource* %260, i8* null) #4, !dbg !1051
  %conv202 = zext i16 %call201 to i32, !dbg !1051
  %261 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1052
  %length203 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %261, i32 0, i32 1, !dbg !1053
  %262 = load i32, i32* %length203, align 1, !dbg !1054
  %add204 = add i32 %262, %conv202, !dbg !1054
  store i32 %add204, i32* %length203, align 1, !dbg !1054
  br label %sw.epilog273, !dbg !1055

sw.bb205:                                         ; preds = %while.body
  %263 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1056
  %264 = bitcast %struct.acpi_resource* %263 to i8*, !dbg !1056
  %265 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1056
  %aml_offset206 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %265, i32 0, i32 2, !dbg !1056
  %266 = load i8, i8* %aml_offset206, align 1, !dbg !1056
  %conv207 = zext i8 %266 to i32, !dbg !1056
  %267 = load i16, i16* %item_count, align 2, !dbg !1056
  %conv208 = zext i16 %267 to i32, !dbg !1056
  %mul209 = mul i32 %conv208, 4, !dbg !1056
  %add210 = add i32 %conv207, %mul209, !dbg !1056
  %conv211 = sext i32 %add210 to i64, !dbg !1056
  %add.ptr212 = getelementptr i8, i8* %264, i64 %conv211, !dbg !1056
  store i8* %add.ptr212, i8** %target, align 8, !dbg !1057
  %268 = load i16, i16* %aml_resource_length, align 2, !dbg !1058
  %269 = load i16, i16* %item_count, align 2, !dbg !1059
  %conv213 = zext i16 %269 to i32, !dbg !1059
  %sub214 = sub i32 %conv213, 1, !dbg !1060
  %conv215 = sext i32 %sub214 to i64, !dbg !1061
  %mul216 = mul i64 %conv215, 4, !dbg !1062
  %270 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1063
  %value217 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %270, i32 0, i32 3, !dbg !1064
  %271 = load i8, i8* %value217, align 1, !dbg !1064
  %conv218 = zext i8 %271 to i64, !dbg !1063
  %add219 = add i64 %mul216, %conv218, !dbg !1065
  %conv220 = trunc i64 %add219 to i16, !dbg !1066
  %272 = load i8*, i8** %destination, align 8, !dbg !1067
  %273 = bitcast i8* %272 to %struct.acpi_resource_source*, !dbg !1067
  %274 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1068
  %275 = load i8*, i8** %target, align 8, !dbg !1069
  %call221 = call zeroext i16 @acpi_rs_get_resource_source(i16 zeroext %268, i16 zeroext %conv220, %struct.acpi_resource_source* %273, %union.aml_resource* %274, i8* %275) #4, !dbg !1070
  %conv222 = zext i16 %call221 to i32, !dbg !1070
  %276 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1071
  %length223 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %276, i32 0, i32 1, !dbg !1072
  %277 = load i32, i32* %length223, align 1, !dbg !1073
  %add224 = add i32 %277, %conv222, !dbg !1073
  store i32 %add224, i32* %length223, align 1, !dbg !1073
  br label %sw.epilog273, !dbg !1074

sw.bb225:                                         ; preds = %while.body
  %278 = load i8*, i8** %source, align 8, !dbg !1075
  %279 = load i8, i8* %278, align 1, !dbg !1075
  %conv226 = zext i8 %279 to i16, !dbg !1075
  %280 = load i8*, i8** %destination, align 8, !dbg !1076
  %call227 = call zeroext i8 @acpi_rs_decode_bitmask(i16 zeroext %conv226, i8* %280) #4, !dbg !1077
  %conv228 = zext i8 %call227 to i16, !dbg !1077
  store i16 %conv228, i16* %item_count, align 2, !dbg !1078
  %281 = load i16, i16* %item_count, align 2, !dbg !1079
  %tobool229 = icmp ne i16 %281, 0, !dbg !1079
  br i1 %tobool229, label %if.then230, label %if.end235, !dbg !1081

if.then230:                                       ; preds = %sw.bb225
  %282 = load i16, i16* %item_count, align 2, !dbg !1082
  %conv231 = zext i16 %282 to i32, !dbg !1082
  %sub232 = sub i32 %conv231, 1, !dbg !1084
  %283 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1085
  %length233 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %283, i32 0, i32 1, !dbg !1086
  %284 = load i32, i32* %length233, align 1, !dbg !1087
  %add234 = add i32 %284, %sub232, !dbg !1087
  store i32 %add234, i32* %length233, align 1, !dbg !1087
  br label %if.end235, !dbg !1088

if.end235:                                        ; preds = %if.then230, %sw.bb225
  %285 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1089
  %286 = bitcast %struct.acpi_resource* %285 to i8*, !dbg !1089
  %287 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1089
  %value236 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %287, i32 0, i32 3, !dbg !1089
  %288 = load i8, i8* %value236, align 1, !dbg !1089
  %conv237 = zext i8 %288 to i64, !dbg !1089
  %add.ptr238 = getelementptr i8, i8* %286, i64 %conv237, !dbg !1089
  store i8* %add.ptr238, i8** %target, align 8, !dbg !1090
  %289 = load i16, i16* %item_count, align 2, !dbg !1091
  %conv239 = trunc i16 %289 to i8, !dbg !1091
  %290 = load i8*, i8** %target, align 8, !dbg !1091
  store i8 %conv239, i8* %290, align 1, !dbg !1091
  br label %sw.epilog273, !dbg !1092

sw.bb240:                                         ; preds = %while.body
  %291 = load i8*, i8** %source, align 8, !dbg !1093
  %292 = bitcast i8* %291 to i16*, !dbg !1093
  %293 = load i16, i16* %292, align 2, !dbg !1093
  %294 = bitcast i16* %temp16 to i8*, !dbg !1093
  %295 = bitcast i8* %294 to i16*, !dbg !1093
  store i16 %293, i16* %295, align 2, !dbg !1093
  %296 = load i16, i16* %temp16, align 2, !dbg !1094
  %297 = load i8*, i8** %destination, align 8, !dbg !1095
  %call241 = call zeroext i8 @acpi_rs_decode_bitmask(i16 zeroext %296, i8* %297) #4, !dbg !1096
  %conv242 = zext i8 %call241 to i16, !dbg !1096
  store i16 %conv242, i16* %item_count, align 2, !dbg !1097
  %298 = load i16, i16* %item_count, align 2, !dbg !1098
  %tobool243 = icmp ne i16 %298, 0, !dbg !1098
  br i1 %tobool243, label %if.then244, label %if.end249, !dbg !1100

if.then244:                                       ; preds = %sw.bb240
  %299 = load i16, i16* %item_count, align 2, !dbg !1101
  %conv245 = zext i16 %299 to i32, !dbg !1101
  %sub246 = sub i32 %conv245, 1, !dbg !1103
  %300 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1104
  %length247 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %300, i32 0, i32 1, !dbg !1105
  %301 = load i32, i32* %length247, align 1, !dbg !1106
  %add248 = add i32 %301, %sub246, !dbg !1106
  store i32 %add248, i32* %length247, align 1, !dbg !1106
  br label %if.end249, !dbg !1107

if.end249:                                        ; preds = %if.then244, %sw.bb240
  %302 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1108
  %303 = bitcast %struct.acpi_resource* %302 to i8*, !dbg !1108
  %304 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1108
  %value250 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %304, i32 0, i32 3, !dbg !1108
  %305 = load i8, i8* %value250, align 1, !dbg !1108
  %conv251 = zext i8 %305 to i64, !dbg !1108
  %add.ptr252 = getelementptr i8, i8* %303, i64 %conv251, !dbg !1108
  store i8* %add.ptr252, i8** %target, align 8, !dbg !1109
  %306 = load i16, i16* %item_count, align 2, !dbg !1110
  %conv253 = trunc i16 %306 to i8, !dbg !1110
  %307 = load i8*, i8** %target, align 8, !dbg !1110
  store i8 %conv253, i8* %307, align 1, !dbg !1110
  br label %sw.epilog273, !dbg !1111

sw.bb254:                                         ; preds = %while.body
  %308 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1112
  %resource_offset255 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %308, i32 0, i32 1, !dbg !1113
  %309 = load i8, i8* %resource_offset255, align 1, !dbg !1113
  %conv256 = zext i8 %309 to i32, !dbg !1112
  switch i32 %conv256, label %sw.default [
    i32 0, label %sw.bb257
    i32 1, label %sw.bb264
  ], !dbg !1114

sw.bb257:                                         ; preds = %sw.bb254
  %310 = load i16, i16* %aml_resource_length, align 2, !dbg !1115
  %conv258 = zext i16 %310 to i32, !dbg !1115
  %311 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1118
  %value259 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %311, i32 0, i32 3, !dbg !1119
  %312 = load i8, i8* %value259, align 1, !dbg !1119
  %conv260 = zext i8 %312 to i32, !dbg !1118
  %cmp = icmp ne i32 %conv258, %conv260, !dbg !1120
  br i1 %cmp, label %if.then262, label %if.end263, !dbg !1121

if.then262:                                       ; preds = %sw.bb257
  br label %exit, !dbg !1122

if.end263:                                        ; preds = %sw.bb257
  br label %sw.epilog, !dbg !1124

sw.bb264:                                         ; preds = %sw.bb254
  %313 = load i8*, i8** %source, align 8, !dbg !1125
  %314 = load i8, i8* %313, align 1, !dbg !1125
  %conv265 = zext i8 %314 to i32, !dbg !1125
  %315 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1127
  %value266 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %315, i32 0, i32 3, !dbg !1128
  %316 = load i8, i8* %value266, align 1, !dbg !1128
  %conv267 = zext i8 %316 to i32, !dbg !1127
  %cmp268 = icmp ne i32 %conv265, %conv267, !dbg !1129
  br i1 %cmp268, label %if.then270, label %if.end271, !dbg !1130

if.then270:                                       ; preds = %sw.bb264
  br label %exit, !dbg !1131

if.end271:                                        ; preds = %sw.bb264
  br label %sw.epilog, !dbg !1133

sw.default:                                       ; preds = %sw.bb254
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 391, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !1134
  store i32 4097, i32* %retval, align 4, !dbg !1135
  br label %return, !dbg !1135

sw.epilog:                                        ; preds = %if.end271, %if.end263
  br label %sw.epilog273, !dbg !1136

sw.default272:                                    ; preds = %while.body
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 399, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !1137
  store i32 4097, i32* %retval, align 4, !dbg !1138
  br label %return, !dbg !1138

sw.epilog273:                                     ; preds = %sw.epilog, %if.end249, %if.end235, %sw.bb205, %sw.bb198, %if.end197, %sw.bb188, %sw.bb183, %sw.bb170, %sw.bb160, %sw.bb151, %sw.bb141, %if.end139, %sw.bb127, %sw.bb114, %sw.bb104, %if.end99, %sw.bb69, %sw.bb55, %sw.bb46, %sw.bb38, %sw.bb31, %sw.bb24, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb
  %317 = load i8, i8* %count, align 1, !dbg !1139
  %dec = add i8 %317, -1, !dbg !1139
  store i8 %dec, i8* %count, align 1, !dbg !1139
  %318 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1140
  %incdec.ptr = getelementptr %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %318, i32 1, !dbg !1140
  store %struct.acpi_rsconvert_info* %incdec.ptr, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1140
  br label %while.cond, !dbg !783, !llvm.loop !1141

while.end:                                        ; preds = %while.cond
  br label %exit, !dbg !783

exit:                                             ; preds = %while.end, %if.then270, %if.then262
  call void @llvm.dbg.label(metadata !1143), !dbg !1144
  %319 = load i8, i8* %flags_mode, align 1, !dbg !1145
  %tobool274 = icmp ne i8 %319, 0, !dbg !1145
  br i1 %tobool274, label %if.end282, label %if.then275, !dbg !1147

if.then275:                                       ; preds = %exit
  %320 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1148
  %length276 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %320, i32 0, i32 1, !dbg !1148
  %321 = load i32, i32* %length276, align 1, !dbg !1148
  %conv277 = zext i32 %321 to i64, !dbg !1148
  %add278 = add i64 %conv277, 7, !dbg !1148
  %and279 = and i64 %add278, -8, !dbg !1148
  %conv280 = trunc i64 %and279 to i32, !dbg !1150
  %322 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1151
  %length281 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %322, i32 0, i32 1, !dbg !1152
  store i32 %conv280, i32* %length281, align 1, !dbg !1153
  br label %if.end282, !dbg !1154

if.end282:                                        ; preds = %if.then275, %exit
  store i32 0, i32* %retval, align 4, !dbg !1155
  br label %return, !dbg !1155

return:                                           ; preds = %if.end282, %sw.default272, %sw.default, %if.then196, %if.then
  %323 = load i32, i32* %retval, align 4, !dbg !1156
  ret i32 %323, !dbg !1156
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local zeroext i16 @acpi_ut_get_resource_length(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local void @acpi_rs_move_data(i8*, i8*, i16 zeroext, i8 zeroext) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_rs_get_address_common(%struct.acpi_resource*, %union.aml_resource*) #2

; Function Attrs: noredzone
declare dso_local zeroext i16 @acpi_rs_get_resource_source(i16 zeroext, i16 zeroext, %struct.acpi_resource_source*, %union.aml_resource*, i8*) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_rs_decode_bitmask(i16 zeroext, i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_convert_resource_to_aml(%struct.acpi_resource* %resource, %union.aml_resource* %aml, %struct.acpi_rsconvert_info* %info) #0 !dbg !1157 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca %struct.acpi_resource*, align 8
  %aml.addr = alloca %union.aml_resource*, align 8
  %info.addr = alloca %struct.acpi_rsconvert_info*, align 8
  %source = alloca i8*, align 8
  %destination = alloca i8*, align 8
  %target = alloca i8*, align 8
  %aml_length = alloca i32, align 4
  %count = alloca i8, align 1
  %temp16 = alloca i16, align 2
  %item_count = alloca i16, align 2
  store %struct.acpi_resource* %resource, %struct.acpi_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %resource.addr, metadata !1158, metadata !DIExpression()), !dbg !1159
  store %union.aml_resource* %aml, %union.aml_resource** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata %union.aml_resource** %aml.addr, metadata !1160, metadata !DIExpression()), !dbg !1161
  store %struct.acpi_rsconvert_info* %info, %struct.acpi_rsconvert_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_rsconvert_info** %info.addr, metadata !1162, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.declare(metadata i8** %source, metadata !1164, metadata !DIExpression()), !dbg !1165
  store i8* null, i8** %source, align 8, !dbg !1165
  call void @llvm.dbg.declare(metadata i8** %destination, metadata !1166, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.declare(metadata i8** %target, metadata !1168, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.declare(metadata i32* %aml_length, metadata !1170, metadata !DIExpression()), !dbg !1172
  store i32 0, i32* %aml_length, align 4, !dbg !1172
  call void @llvm.dbg.declare(metadata i8* %count, metadata !1173, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.declare(metadata i16* %temp16, metadata !1175, metadata !DIExpression()), !dbg !1176
  store i16 0, i16* %temp16, align 2, !dbg !1176
  call void @llvm.dbg.declare(metadata i16* %item_count, metadata !1177, metadata !DIExpression()), !dbg !1178
  store i16 0, i16* %item_count, align 2, !dbg !1178
  %0 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1179
  %tobool = icmp ne %struct.acpi_rsconvert_info* %0, null, !dbg !1179
  br i1 %tobool, label %if.end, label %if.then, !dbg !1181

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1182
  br label %return, !dbg !1182

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1184
  %value = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %1, i32 0, i32 3, !dbg !1184
  %2 = load i8, i8* %value, align 1, !dbg !1184
  store i8 %2, i8* %count, align 1, !dbg !1185
  br label %while.cond, !dbg !1186

while.cond:                                       ; preds = %sw.epilog181, %if.end
  %3 = load i8, i8* %count, align 1, !dbg !1187
  %tobool1 = icmp ne i8 %3, 0, !dbg !1186
  br i1 %tobool1, label %while.body, label %while.end, !dbg !1186

while.body:                                       ; preds = %while.cond
  %4 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1188
  %5 = bitcast %struct.acpi_resource* %4 to i8*, !dbg !1188
  %6 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1188
  %resource_offset = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %6, i32 0, i32 1, !dbg !1188
  %7 = load i8, i8* %resource_offset, align 1, !dbg !1188
  %conv = zext i8 %7 to i64, !dbg !1188
  %add.ptr = getelementptr i8, i8* %5, i64 %conv, !dbg !1188
  store i8* %add.ptr, i8** %source, align 8, !dbg !1190
  %8 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1191
  %9 = bitcast %union.aml_resource* %8 to i8*, !dbg !1191
  %10 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1191
  %aml_offset = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %10, i32 0, i32 2, !dbg !1191
  %11 = load i8, i8* %aml_offset, align 1, !dbg !1191
  %conv2 = zext i8 %11 to i64, !dbg !1191
  %add.ptr3 = getelementptr i8, i8* %9, i64 %conv2, !dbg !1191
  store i8* %add.ptr3, i8** %destination, align 8, !dbg !1192
  %12 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1193
  %opcode = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %12, i32 0, i32 0, !dbg !1194
  %13 = load i8, i8* %opcode, align 1, !dbg !1194
  %conv4 = zext i8 %13 to i32, !dbg !1193
  switch i32 %conv4, label %sw.default180 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb10
    i32 2, label %sw.bb11
    i32 3, label %sw.bb12
    i32 4, label %sw.bb20
    i32 5, label %sw.bb31
    i32 9, label %sw.bb42
    i32 10, label %sw.bb50
    i32 11, label %sw.bb55
    i32 13, label %sw.bb66
    i32 12, label %sw.bb74
    i32 15, label %sw.bb84
    i32 14, label %sw.bb94
    i32 20, label %sw.bb99
    i32 25, label %sw.bb102
    i32 26, label %sw.bb102
    i32 27, label %sw.bb102
    i32 28, label %sw.bb102
    i32 21, label %sw.bb110
    i32 22, label %sw.bb114
    i32 24, label %sw.bb118
    i32 23, label %sw.bb124
    i32 6, label %sw.bb130
    i32 31, label %sw.bb131
    i32 30, label %sw.bb133
    i32 7, label %sw.bb137
    i32 8, label %sw.bb143
    i32 18, label %sw.bb148
    i32 19, label %sw.bb155
    i32 17, label %sw.bb169
  ], !dbg !1195

sw.bb:                                            ; preds = %while.body
  %14 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1196
  %15 = bitcast %union.aml_resource* %14 to i8*, !dbg !1198
  %16 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1199
  %aml_offset5 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %16, i32 0, i32 2, !dbg !1199
  %17 = load i8, i8* %aml_offset5, align 1, !dbg !1199
  %conv6 = zext i8 %17 to i64, !dbg !1199
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 %conv6, i1 false), !dbg !1198
  %18 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1200
  %aml_offset7 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %18, i32 0, i32 2, !dbg !1200
  %19 = load i8, i8* %aml_offset7, align 1, !dbg !1200
  %conv8 = zext i8 %19 to i32, !dbg !1200
  store i32 %conv8, i32* %aml_length, align 4, !dbg !1201
  %20 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1202
  %resource_offset9 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %20, i32 0, i32 1, !dbg !1202
  %21 = load i8, i8* %resource_offset9, align 1, !dbg !1202
  %22 = load i32, i32* %aml_length, align 4, !dbg !1203
  %23 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1204
  call void @acpi_rs_set_resource_header(i8 zeroext %21, i32 %22, %union.aml_resource* %23) #4, !dbg !1205
  br label %sw.epilog181, !dbg !1206

sw.bb10:                                          ; preds = %while.body
  br label %sw.epilog181, !dbg !1207

sw.bb11:                                          ; preds = %while.body
  %24 = load i8*, i8** %destination, align 8, !dbg !1208
  store i8 0, i8* %24, align 1, !dbg !1208
  br label %sw.epilog181, !dbg !1209

sw.bb12:                                          ; preds = %while.body
  %25 = load i8*, i8** %source, align 8, !dbg !1210
  %26 = load i8, i8* %25, align 1, !dbg !1210
  %conv13 = zext i8 %26 to i32, !dbg !1210
  %and = and i32 %conv13, 1, !dbg !1210
  %27 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1210
  %value14 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %27, i32 0, i32 3, !dbg !1210
  %28 = load i8, i8* %value14, align 1, !dbg !1210
  %conv15 = zext i8 %28 to i32, !dbg !1210
  %shl = shl i32 %and, %conv15, !dbg !1210
  %conv16 = trunc i32 %shl to i8, !dbg !1210
  %conv17 = zext i8 %conv16 to i32, !dbg !1210
  %29 = load i8*, i8** %destination, align 8, !dbg !1210
  %30 = load i8, i8* %29, align 1, !dbg !1210
  %conv18 = zext i8 %30 to i32, !dbg !1210
  %or = or i32 %conv18, %conv17, !dbg !1210
  %conv19 = trunc i32 %or to i8, !dbg !1210
  store i8 %conv19, i8* %29, align 1, !dbg !1210
  br label %sw.epilog181, !dbg !1211

sw.bb20:                                          ; preds = %while.body
  %31 = load i8*, i8** %source, align 8, !dbg !1212
  %32 = load i8, i8* %31, align 1, !dbg !1212
  %conv21 = zext i8 %32 to i32, !dbg !1212
  %and22 = and i32 %conv21, 3, !dbg !1212
  %33 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1212
  %value23 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %33, i32 0, i32 3, !dbg !1212
  %34 = load i8, i8* %value23, align 1, !dbg !1212
  %conv24 = zext i8 %34 to i32, !dbg !1212
  %shl25 = shl i32 %and22, %conv24, !dbg !1212
  %conv26 = trunc i32 %shl25 to i8, !dbg !1212
  %conv27 = zext i8 %conv26 to i32, !dbg !1212
  %35 = load i8*, i8** %destination, align 8, !dbg !1212
  %36 = load i8, i8* %35, align 1, !dbg !1212
  %conv28 = zext i8 %36 to i32, !dbg !1212
  %or29 = or i32 %conv28, %conv27, !dbg !1212
  %conv30 = trunc i32 %or29 to i8, !dbg !1212
  store i8 %conv30, i8* %35, align 1, !dbg !1212
  br label %sw.epilog181, !dbg !1213

sw.bb31:                                          ; preds = %while.body
  %37 = load i8*, i8** %source, align 8, !dbg !1214
  %38 = load i8, i8* %37, align 1, !dbg !1214
  %conv32 = zext i8 %38 to i32, !dbg !1214
  %and33 = and i32 %conv32, 7, !dbg !1214
  %39 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1214
  %value34 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %39, i32 0, i32 3, !dbg !1214
  %40 = load i8, i8* %value34, align 1, !dbg !1214
  %conv35 = zext i8 %40 to i32, !dbg !1214
  %shl36 = shl i32 %and33, %conv35, !dbg !1214
  %conv37 = trunc i32 %shl36 to i8, !dbg !1214
  %conv38 = zext i8 %conv37 to i32, !dbg !1214
  %41 = load i8*, i8** %destination, align 8, !dbg !1214
  %42 = load i8, i8* %41, align 1, !dbg !1214
  %conv39 = zext i8 %42 to i32, !dbg !1214
  %or40 = or i32 %conv39, %conv38, !dbg !1214
  %conv41 = trunc i32 %or40 to i8, !dbg !1214
  store i8 %conv41, i8* %41, align 1, !dbg !1214
  br label %sw.epilog181, !dbg !1215

sw.bb42:                                          ; preds = %while.body
  %43 = load i8*, i8** %source, align 8, !dbg !1216
  %44 = load i8, i8* %43, align 1, !dbg !1216
  %conv43 = zext i8 %44 to i16, !dbg !1216
  store i16 %conv43, i16* %item_count, align 2, !dbg !1217
  %45 = load i16, i16* %item_count, align 2, !dbg !1218
  %conv44 = trunc i16 %45 to i8, !dbg !1218
  %46 = load i8*, i8** %destination, align 8, !dbg !1218
  store i8 %conv44, i8* %46, align 1, !dbg !1218
  %47 = load i32, i32* %aml_length, align 4, !dbg !1219
  %48 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1220
  %value45 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %48, i32 0, i32 3, !dbg !1221
  %49 = load i8, i8* %value45, align 1, !dbg !1221
  %conv46 = zext i8 %49 to i32, !dbg !1220
  %50 = load i16, i16* %item_count, align 2, !dbg !1222
  %conv47 = zext i16 %50 to i32, !dbg !1222
  %sub = sub i32 %conv47, 1, !dbg !1223
  %mul = mul i32 %conv46, %sub, !dbg !1224
  %add = add i32 %47, %mul, !dbg !1225
  %conv48 = trunc i32 %add to i16, !dbg !1226
  %conv49 = zext i16 %conv48 to i32, !dbg !1226
  store i32 %conv49, i32* %aml_length, align 4, !dbg !1227
  br label %sw.epilog181, !dbg !1228

sw.bb50:                                          ; preds = %while.body
  %51 = load i8*, i8** %source, align 8, !dbg !1229
  %52 = bitcast i8* %51 to i16*, !dbg !1229
  %53 = load i16, i16* %52, align 2, !dbg !1229
  store i16 %53, i16* %item_count, align 2, !dbg !1230
  %54 = load i32, i32* %aml_length, align 4, !dbg !1231
  %55 = load i16, i16* %item_count, align 2, !dbg !1232
  %conv51 = zext i16 %55 to i32, !dbg !1232
  %add52 = add i32 %54, %conv51, !dbg !1233
  %conv53 = trunc i32 %add52 to i16, !dbg !1234
  %conv54 = zext i16 %conv53 to i32, !dbg !1234
  store i32 %conv54, i32* %aml_length, align 4, !dbg !1235
  %56 = load i32, i32* %aml_length, align 4, !dbg !1236
  %57 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1237
  call void @acpi_rs_set_resource_length(i32 %56, %union.aml_resource* %57) #4, !dbg !1238
  br label %sw.epilog181, !dbg !1239

sw.bb55:                                          ; preds = %while.body
  %58 = load i8*, i8** %source, align 8, !dbg !1240
  %59 = bitcast i8* %58 to i16*, !dbg !1240
  %60 = load i16, i16* %59, align 2, !dbg !1240
  store i16 %60, i16* %item_count, align 2, !dbg !1241
  %61 = load i32, i32* %aml_length, align 4, !dbg !1242
  %conv56 = trunc i32 %61 to i16, !dbg !1242
  %62 = load i8*, i8** %destination, align 8, !dbg !1242
  %63 = bitcast i8* %62 to i16*, !dbg !1242
  store i16 %conv56, i16* %63, align 2, !dbg !1242
  %64 = load i32, i32* %aml_length, align 4, !dbg !1243
  %65 = load i16, i16* %item_count, align 2, !dbg !1244
  %conv57 = zext i16 %65 to i32, !dbg !1244
  %mul58 = mul i32 %conv57, 2, !dbg !1245
  %add59 = add i32 %64, %mul58, !dbg !1246
  %conv60 = trunc i32 %add59 to i16, !dbg !1247
  %conv61 = zext i16 %conv60 to i32, !dbg !1247
  store i32 %conv61, i32* %aml_length, align 4, !dbg !1248
  %66 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1249
  %67 = bitcast %union.aml_resource* %66 to i8*, !dbg !1249
  %68 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1249
  %value62 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %68, i32 0, i32 3, !dbg !1249
  %69 = load i8, i8* %value62, align 1, !dbg !1249
  %conv63 = zext i8 %69 to i64, !dbg !1249
  %add.ptr64 = getelementptr i8, i8* %67, i64 %conv63, !dbg !1249
  store i8* %add.ptr64, i8** %target, align 8, !dbg !1250
  %70 = load i32, i32* %aml_length, align 4, !dbg !1251
  %conv65 = trunc i32 %70 to i16, !dbg !1251
  %71 = load i8*, i8** %target, align 8, !dbg !1251
  %72 = bitcast i8* %71 to i16*, !dbg !1251
  store i16 %conv65, i16* %72, align 2, !dbg !1251
  %73 = load i32, i32* %aml_length, align 4, !dbg !1252
  %74 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1253
  call void @acpi_rs_set_resource_length(i32 %73, %union.aml_resource* %74) #4, !dbg !1254
  br label %sw.epilog181, !dbg !1255

sw.bb66:                                          ; preds = %while.body
  %75 = load i8*, i8** %source, align 8, !dbg !1256
  %76 = bitcast i8* %75 to i16*, !dbg !1256
  %77 = load i16, i16* %76, align 2, !dbg !1256
  store i16 %77, i16* %item_count, align 2, !dbg !1257
  %78 = load i16, i16* %item_count, align 2, !dbg !1258
  %79 = load i8*, i8** %destination, align 8, !dbg !1258
  %80 = bitcast i8* %79 to i16*, !dbg !1258
  store i16 %78, i16* %80, align 2, !dbg !1258
  %81 = load i32, i32* %aml_length, align 4, !dbg !1259
  %82 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1260
  %value67 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %82, i32 0, i32 3, !dbg !1261
  %83 = load i8, i8* %value67, align 1, !dbg !1261
  %conv68 = zext i8 %83 to i32, !dbg !1260
  %84 = load i16, i16* %item_count, align 2, !dbg !1262
  %conv69 = zext i16 %84 to i32, !dbg !1262
  %mul70 = mul i32 %conv68, %conv69, !dbg !1263
  %add71 = add i32 %81, %mul70, !dbg !1264
  %conv72 = trunc i32 %add71 to i16, !dbg !1265
  %conv73 = zext i16 %conv72 to i32, !dbg !1265
  store i32 %conv73, i32* %aml_length, align 4, !dbg !1266
  %85 = load i32, i32* %aml_length, align 4, !dbg !1267
  %86 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1268
  call void @acpi_rs_set_resource_length(i32 %85, %union.aml_resource* %86) #4, !dbg !1269
  br label %sw.epilog181, !dbg !1270

sw.bb74:                                          ; preds = %while.body
  %87 = load i8*, i8** %source, align 8, !dbg !1271
  %88 = bitcast i8* %87 to i16*, !dbg !1271
  %89 = load i16, i16* %88, align 2, !dbg !1271
  store i16 %89, i16* %item_count, align 2, !dbg !1272
  %90 = load i32, i32* %aml_length, align 4, !dbg !1273
  %conv75 = trunc i32 %90 to i16, !dbg !1273
  %91 = load i8*, i8** %destination, align 8, !dbg !1273
  %92 = bitcast i8* %91 to i16*, !dbg !1273
  store i16 %conv75, i16* %92, align 2, !dbg !1273
  %93 = load i32, i32* %aml_length, align 4, !dbg !1274
  %94 = load i16, i16* %item_count, align 2, !dbg !1275
  %conv76 = zext i16 %94 to i32, !dbg !1275
  %add77 = add i32 %93, %conv76, !dbg !1276
  %conv78 = trunc i32 %add77 to i16, !dbg !1277
  %conv79 = zext i16 %conv78 to i32, !dbg !1277
  store i32 %conv79, i32* %aml_length, align 4, !dbg !1278
  %95 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1279
  %96 = bitcast %union.aml_resource* %95 to i8*, !dbg !1279
  %97 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1279
  %value80 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %97, i32 0, i32 3, !dbg !1279
  %98 = load i8, i8* %value80, align 1, !dbg !1279
  %conv81 = zext i8 %98 to i64, !dbg !1279
  %add.ptr82 = getelementptr i8, i8* %96, i64 %conv81, !dbg !1279
  store i8* %add.ptr82, i8** %target, align 8, !dbg !1280
  %99 = load i32, i32* %aml_length, align 4, !dbg !1281
  %conv83 = trunc i32 %99 to i16, !dbg !1281
  %100 = load i8*, i8** %target, align 8, !dbg !1281
  %101 = bitcast i8* %100 to i16*, !dbg !1281
  store i16 %conv83, i16* %101, align 2, !dbg !1281
  %102 = load i32, i32* %aml_length, align 4, !dbg !1282
  %103 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1283
  call void @acpi_rs_set_resource_length(i32 %102, %union.aml_resource* %103) #4, !dbg !1284
  br label %sw.epilog181, !dbg !1285

sw.bb84:                                          ; preds = %while.body
  %104 = load i8*, i8** %source, align 8, !dbg !1286
  %105 = bitcast i8* %104 to i16*, !dbg !1286
  %106 = load i16, i16* %105, align 2, !dbg !1286
  store i16 %106, i16* %item_count, align 2, !dbg !1287
  %107 = load i16, i16* %item_count, align 2, !dbg !1288
  %conv85 = zext i16 %107 to i32, !dbg !1288
  %108 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1288
  %value86 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %108, i32 0, i32 3, !dbg !1288
  %109 = load i8, i8* %value86, align 1, !dbg !1288
  %conv87 = zext i8 %109 to i32, !dbg !1288
  %add88 = add i32 %conv85, %conv87, !dbg !1288
  %conv89 = trunc i32 %add88 to i16, !dbg !1288
  %110 = load i8*, i8** %destination, align 8, !dbg !1288
  %111 = bitcast i8* %110 to i16*, !dbg !1288
  store i16 %conv89, i16* %111, align 2, !dbg !1288
  %112 = load i32, i32* %aml_length, align 4, !dbg !1289
  %113 = load i16, i16* %item_count, align 2, !dbg !1290
  %conv90 = zext i16 %113 to i32, !dbg !1290
  %add91 = add i32 %112, %conv90, !dbg !1291
  %conv92 = trunc i32 %add91 to i16, !dbg !1292
  %conv93 = zext i16 %conv92 to i32, !dbg !1292
  store i32 %conv93, i32* %aml_length, align 4, !dbg !1293
  %114 = load i32, i32* %aml_length, align 4, !dbg !1294
  %115 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1295
  call void @acpi_rs_set_resource_length(i32 %114, %union.aml_resource* %115) #4, !dbg !1296
  br label %sw.epilog181, !dbg !1297

sw.bb94:                                          ; preds = %while.body
  %116 = load i8*, i8** %source, align 8, !dbg !1298
  %117 = bitcast i8* %116 to i16*, !dbg !1298
  %118 = load i16, i16* %117, align 2, !dbg !1298
  store i16 %118, i16* %item_count, align 2, !dbg !1299
  %119 = load i32, i32* %aml_length, align 4, !dbg !1300
  %120 = load i16, i16* %item_count, align 2, !dbg !1301
  %conv95 = zext i16 %120 to i32, !dbg !1301
  %add96 = add i32 %119, %conv95, !dbg !1302
  %conv97 = trunc i32 %add96 to i16, !dbg !1303
  %conv98 = zext i16 %conv97 to i32, !dbg !1303
  store i32 %conv98, i32* %aml_length, align 4, !dbg !1304
  %121 = load i32, i32* %aml_length, align 4, !dbg !1305
  %122 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1306
  call void @acpi_rs_set_resource_length(i32 %121, %union.aml_resource* %122) #4, !dbg !1307
  br label %sw.epilog181, !dbg !1308

sw.bb99:                                          ; preds = %while.body
  %123 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1309
  %value100 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %123, i32 0, i32 3, !dbg !1310
  %124 = load i8, i8* %value100, align 1, !dbg !1310
  %conv101 = zext i8 %124 to i32, !dbg !1309
  %125 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1311
  call void @acpi_rs_set_resource_length(i32 %conv101, %union.aml_resource* %125) #4, !dbg !1312
  br label %sw.epilog181, !dbg !1313

sw.bb102:                                         ; preds = %while.body, %while.body, %while.body, %while.body
  %126 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1314
  %value103 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %126, i32 0, i32 3, !dbg !1316
  %127 = load i8, i8* %value103, align 1, !dbg !1316
  %tobool104 = icmp ne i8 %127, 0, !dbg !1314
  br i1 %tobool104, label %if.then105, label %if.end108, !dbg !1317

if.then105:                                       ; preds = %sw.bb102
  %128 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1318
  %value106 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %128, i32 0, i32 3, !dbg !1320
  %129 = load i8, i8* %value106, align 1, !dbg !1320
  %conv107 = zext i8 %129 to i16, !dbg !1318
  store i16 %conv107, i16* %item_count, align 2, !dbg !1321
  br label %if.end108, !dbg !1322

if.end108:                                        ; preds = %if.then105, %sw.bb102
  %130 = load i8*, i8** %destination, align 8, !dbg !1323
  %131 = load i8*, i8** %source, align 8, !dbg !1324
  %132 = load i16, i16* %item_count, align 2, !dbg !1325
  %133 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1326
  %opcode109 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %133, i32 0, i32 0, !dbg !1327
  %134 = load i8, i8* %opcode109, align 1, !dbg !1327
  call void @acpi_rs_move_data(i8* %130, i8* %131, i16 zeroext %132, i8 zeroext %134) #4, !dbg !1328
  br label %sw.epilog181, !dbg !1329

sw.bb110:                                         ; preds = %while.body
  %135 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1330
  %136 = bitcast %union.aml_resource* %135 to i8*, !dbg !1330
  %137 = load i8*, i8** %destination, align 8, !dbg !1330
  %138 = bitcast i8* %137 to i16*, !dbg !1330
  %139 = load i16, i16* %138, align 2, !dbg !1330
  %conv111 = zext i16 %139 to i64, !dbg !1330
  %add.ptr112 = getelementptr i8, i8* %136, i64 %conv111, !dbg !1330
  store i8* %add.ptr112, i8** %destination, align 8, !dbg !1331
  %140 = load i8*, i8** %source, align 8, !dbg !1332
  %141 = bitcast i8* %140 to i16**, !dbg !1333
  %142 = load i16*, i16** %141, align 8, !dbg !1334
  %143 = bitcast i16* %142 to i8*, !dbg !1334
  store i8* %143, i8** %source, align 8, !dbg !1335
  %144 = load i8*, i8** %destination, align 8, !dbg !1336
  %145 = load i8*, i8** %source, align 8, !dbg !1337
  %146 = load i16, i16* %item_count, align 2, !dbg !1338
  %147 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1339
  %opcode113 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %147, i32 0, i32 0, !dbg !1340
  %148 = load i8, i8* %opcode113, align 1, !dbg !1340
  call void @acpi_rs_move_data(i8* %144, i8* %145, i16 zeroext %146, i8 zeroext %148) #4, !dbg !1341
  br label %sw.epilog181, !dbg !1342

sw.bb114:                                         ; preds = %while.body
  %149 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1343
  %150 = bitcast %union.aml_resource* %149 to i8*, !dbg !1343
  %151 = load i8*, i8** %destination, align 8, !dbg !1343
  %152 = bitcast i8* %151 to i16*, !dbg !1343
  %153 = load i16, i16* %152, align 2, !dbg !1343
  %conv115 = zext i16 %153 to i64, !dbg !1343
  %add.ptr116 = getelementptr i8, i8* %150, i64 %conv115, !dbg !1343
  store i8* %add.ptr116, i8** %destination, align 8, !dbg !1344
  %154 = load i8*, i8** %source, align 8, !dbg !1345
  %155 = bitcast i8* %154 to i8**, !dbg !1346
  %156 = load i8*, i8** %155, align 8, !dbg !1347
  store i8* %156, i8** %source, align 8, !dbg !1348
  %157 = load i8*, i8** %destination, align 8, !dbg !1349
  %158 = load i8*, i8** %source, align 8, !dbg !1350
  %159 = load i16, i16* %item_count, align 2, !dbg !1351
  %160 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1352
  %opcode117 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %160, i32 0, i32 0, !dbg !1353
  %161 = load i8, i8* %opcode117, align 1, !dbg !1353
  call void @acpi_rs_move_data(i8* %157, i8* %158, i16 zeroext %159, i8 zeroext %161) #4, !dbg !1354
  br label %sw.epilog181, !dbg !1355

sw.bb118:                                         ; preds = %while.body
  %162 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1356
  %163 = bitcast %union.aml_resource* %162 to i8*, !dbg !1356
  %164 = load i32, i32* %aml_length, align 4, !dbg !1356
  %165 = load i16, i16* %item_count, align 2, !dbg !1356
  %conv119 = zext i16 %165 to i32, !dbg !1356
  %sub120 = sub i32 %164, %conv119, !dbg !1356
  %conv121 = zext i32 %sub120 to i64, !dbg !1356
  %add.ptr122 = getelementptr i8, i8* %163, i64 %conv121, !dbg !1356
  store i8* %add.ptr122, i8** %destination, align 8, !dbg !1357
  %166 = load i8*, i8** %source, align 8, !dbg !1358
  %167 = bitcast i8* %166 to i8**, !dbg !1359
  %168 = load i8*, i8** %167, align 8, !dbg !1360
  store i8* %168, i8** %source, align 8, !dbg !1361
  %169 = load i8*, i8** %destination, align 8, !dbg !1362
  %170 = load i8*, i8** %source, align 8, !dbg !1363
  %171 = load i16, i16* %item_count, align 2, !dbg !1364
  %172 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1365
  %opcode123 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %172, i32 0, i32 0, !dbg !1366
  %173 = load i8, i8* %opcode123, align 1, !dbg !1366
  call void @acpi_rs_move_data(i8* %169, i8* %170, i16 zeroext %171, i8 zeroext %173) #4, !dbg !1367
  br label %sw.epilog181, !dbg !1368

sw.bb124:                                         ; preds = %while.body
  %174 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1369
  %175 = bitcast %union.aml_resource* %174 to i8*, !dbg !1369
  %176 = load i32, i32* %aml_length, align 4, !dbg !1369
  %177 = load i16, i16* %item_count, align 2, !dbg !1369
  %conv125 = zext i16 %177 to i32, !dbg !1369
  %sub126 = sub i32 %176, %conv125, !dbg !1369
  %conv127 = zext i32 %sub126 to i64, !dbg !1369
  %add.ptr128 = getelementptr i8, i8* %175, i64 %conv127, !dbg !1369
  store i8* %add.ptr128, i8** %destination, align 8, !dbg !1370
  %178 = load i8*, i8** %source, align 8, !dbg !1371
  %179 = bitcast i8* %178 to i8**, !dbg !1372
  %180 = load i8*, i8** %179, align 8, !dbg !1373
  store i8* %180, i8** %source, align 8, !dbg !1374
  %181 = load i8*, i8** %destination, align 8, !dbg !1375
  %182 = load i8*, i8** %source, align 8, !dbg !1376
  %183 = load i16, i16* %item_count, align 2, !dbg !1377
  %184 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1378
  %opcode129 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %184, i32 0, i32 0, !dbg !1379
  %185 = load i8, i8* %opcode129, align 1, !dbg !1379
  call void @acpi_rs_move_data(i8* %181, i8* %182, i16 zeroext %183, i8 zeroext %185) #4, !dbg !1380
  br label %sw.epilog181, !dbg !1381

sw.bb130:                                         ; preds = %while.body
  %186 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1382
  %187 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1383
  call void @acpi_rs_set_address_common(%union.aml_resource* %186, %struct.acpi_resource* %187) #4, !dbg !1384
  br label %sw.epilog181, !dbg !1385

sw.bb131:                                         ; preds = %while.body
  %188 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1386
  %189 = load i32, i32* %aml_length, align 4, !dbg !1387
  %conv132 = trunc i32 %189 to i16, !dbg !1388
  %190 = load i8*, i8** %source, align 8, !dbg !1389
  %191 = bitcast i8* %190 to %struct.acpi_resource_source*, !dbg !1389
  %call = call i32 @acpi_rs_set_resource_source(%union.aml_resource* %188, i16 zeroext %conv132, %struct.acpi_resource_source* %191) #4, !dbg !1390
  store i32 %call, i32* %aml_length, align 4, !dbg !1391
  %192 = load i32, i32* %aml_length, align 4, !dbg !1392
  %193 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1393
  call void @acpi_rs_set_resource_length(i32 %192, %union.aml_resource* %193) #4, !dbg !1394
  br label %sw.epilog181, !dbg !1395

sw.bb133:                                         ; preds = %while.body
  %194 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1396
  %195 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1397
  %value134 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %195, i32 0, i32 3, !dbg !1398
  %196 = load i8, i8* %value134, align 1, !dbg !1398
  %conv135 = zext i8 %196 to i16, !dbg !1397
  %197 = load i8*, i8** %source, align 8, !dbg !1399
  %198 = bitcast i8* %197 to %struct.acpi_resource_source*, !dbg !1399
  %call136 = call i32 @acpi_rs_set_resource_source(%union.aml_resource* %194, i16 zeroext %conv135, %struct.acpi_resource_source* %198) #4, !dbg !1400
  store i32 %call136, i32* %aml_length, align 4, !dbg !1401
  %199 = load i32, i32* %aml_length, align 4, !dbg !1402
  %200 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1403
  call void @acpi_rs_set_resource_length(i32 %199, %union.aml_resource* %200) #4, !dbg !1404
  br label %sw.epilog181, !dbg !1405

sw.bb137:                                         ; preds = %while.body
  %201 = load i8*, i8** %source, align 8, !dbg !1406
  %202 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1406
  %203 = bitcast %struct.acpi_resource* %202 to i8*, !dbg !1406
  %204 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1406
  %value138 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %204, i32 0, i32 3, !dbg !1406
  %205 = load i8, i8* %value138, align 1, !dbg !1406
  %conv139 = zext i8 %205 to i64, !dbg !1406
  %add.ptr140 = getelementptr i8, i8* %203, i64 %conv139, !dbg !1406
  %206 = load i8, i8* %add.ptr140, align 1, !dbg !1406
  %call141 = call zeroext i16 @acpi_rs_encode_bitmask(i8* %201, i8 zeroext %206) #4, !dbg !1406
  %conv142 = trunc i16 %call141 to i8, !dbg !1406
  %207 = load i8*, i8** %destination, align 8, !dbg !1406
  store i8 %conv142, i8* %207, align 1, !dbg !1406
  br label %sw.epilog181, !dbg !1407

sw.bb143:                                         ; preds = %while.body
  %208 = load i8*, i8** %source, align 8, !dbg !1408
  %209 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1409
  %210 = bitcast %struct.acpi_resource* %209 to i8*, !dbg !1409
  %211 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1409
  %value144 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %211, i32 0, i32 3, !dbg !1409
  %212 = load i8, i8* %value144, align 1, !dbg !1409
  %conv145 = zext i8 %212 to i64, !dbg !1409
  %add.ptr146 = getelementptr i8, i8* %210, i64 %conv145, !dbg !1409
  %213 = load i8, i8* %add.ptr146, align 1, !dbg !1410
  %call147 = call zeroext i16 @acpi_rs_encode_bitmask(i8* %208, i8 zeroext %213) #4, !dbg !1411
  store i16 %call147, i16* %temp16, align 2, !dbg !1412
  %214 = bitcast i16* %temp16 to i8*, !dbg !1413
  %215 = bitcast i8* %214 to i16*, !dbg !1413
  %216 = load i16, i16* %215, align 2, !dbg !1413
  %217 = load i8*, i8** %destination, align 8, !dbg !1413
  %218 = bitcast i8* %217 to i16*, !dbg !1413
  store i16 %216, i16* %218, align 2, !dbg !1413
  br label %sw.epilog181, !dbg !1414

sw.bb148:                                         ; preds = %while.body
  %219 = load i16, i16* %item_count, align 2, !dbg !1415
  %conv149 = zext i16 %219 to i32, !dbg !1415
  %220 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1417
  %value150 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %220, i32 0, i32 3, !dbg !1418
  %221 = load i8, i8* %value150, align 1, !dbg !1418
  %conv151 = zext i8 %221 to i32, !dbg !1417
  %cmp = icmp sle i32 %conv149, %conv151, !dbg !1419
  br i1 %cmp, label %if.then153, label %if.end154, !dbg !1420

if.then153:                                       ; preds = %sw.bb148
  br label %exit, !dbg !1421

if.end154:                                        ; preds = %sw.bb148
  br label %sw.epilog181, !dbg !1423

sw.bb155:                                         ; preds = %while.body
  %222 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1424
  %resource_offset156 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %222, i32 0, i32 1, !dbg !1424
  %223 = load i8, i8* %resource_offset156, align 1, !dbg !1424
  %conv157 = zext i8 %223 to i32, !dbg !1424
  switch i32 %conv157, label %sw.default [
    i32 1, label %sw.bb158
  ], !dbg !1425

sw.bb158:                                         ; preds = %sw.bb155
  %224 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1426
  %225 = bitcast %struct.acpi_resource* %224 to i8*, !dbg !1426
  %226 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1426
  %aml_offset159 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %226, i32 0, i32 2, !dbg !1426
  %227 = load i8, i8* %aml_offset159, align 1, !dbg !1426
  %conv160 = zext i8 %227 to i64, !dbg !1426
  %add.ptr161 = getelementptr i8, i8* %225, i64 %conv160, !dbg !1426
  %228 = load i8, i8* %add.ptr161, align 1, !dbg !1429
  %conv162 = zext i8 %228 to i32, !dbg !1429
  %229 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1430
  %value163 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %229, i32 0, i32 3, !dbg !1430
  %230 = load i8, i8* %value163, align 1, !dbg !1430
  %conv164 = zext i8 %230 to i32, !dbg !1430
  %cmp165 = icmp ne i32 %conv162, %conv164, !dbg !1431
  br i1 %cmp165, label %if.then167, label %if.end168, !dbg !1432

if.then167:                                       ; preds = %sw.bb158
  br label %exit, !dbg !1433

if.end168:                                        ; preds = %sw.bb158
  br label %sw.epilog, !dbg !1435

sw.default:                                       ; preds = %sw.bb155
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 719, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !1436
  store i32 4097, i32* %retval, align 4, !dbg !1437
  br label %return, !dbg !1437

sw.epilog:                                        ; preds = %if.end168
  br label %sw.epilog181, !dbg !1438

sw.bb169:                                         ; preds = %while.body
  %231 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1439
  %232 = bitcast %struct.acpi_resource* %231 to i8*, !dbg !1439
  %233 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1439
  %aml_offset170 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %233, i32 0, i32 2, !dbg !1439
  %234 = load i8, i8* %aml_offset170, align 1, !dbg !1439
  %conv171 = zext i8 %234 to i64, !dbg !1439
  %add.ptr172 = getelementptr i8, i8* %232, i64 %conv171, !dbg !1439
  %235 = load i8, i8* %add.ptr172, align 1, !dbg !1441
  %conv173 = zext i8 %235 to i32, !dbg !1441
  %236 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1442
  %value174 = getelementptr inbounds %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %236, i32 0, i32 3, !dbg !1442
  %237 = load i8, i8* %value174, align 1, !dbg !1442
  %conv175 = zext i8 %237 to i32, !dbg !1442
  %cmp176 = icmp eq i32 %conv173, %conv175, !dbg !1443
  br i1 %cmp176, label %if.then178, label %if.end179, !dbg !1444

if.then178:                                       ; preds = %sw.bb169
  br label %exit, !dbg !1445

if.end179:                                        ; preds = %sw.bb169
  br label %sw.epilog181, !dbg !1447

sw.default180:                                    ; preds = %while.body
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !1448
  store i32 4097, i32* %retval, align 4, !dbg !1449
  br label %return, !dbg !1449

sw.epilog181:                                     ; preds = %if.end179, %sw.epilog, %if.end154, %sw.bb143, %sw.bb137, %sw.bb133, %sw.bb131, %sw.bb130, %sw.bb124, %sw.bb118, %sw.bb114, %sw.bb110, %if.end108, %sw.bb99, %sw.bb94, %sw.bb84, %sw.bb74, %sw.bb66, %sw.bb55, %sw.bb50, %sw.bb42, %sw.bb31, %sw.bb20, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb
  %238 = load i8, i8* %count, align 1, !dbg !1450
  %dec = add i8 %238, -1, !dbg !1450
  store i8 %dec, i8* %count, align 1, !dbg !1450
  %239 = load %struct.acpi_rsconvert_info*, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1451
  %incdec.ptr = getelementptr %struct.acpi_rsconvert_info, %struct.acpi_rsconvert_info* %239, i32 1, !dbg !1451
  store %struct.acpi_rsconvert_info* %incdec.ptr, %struct.acpi_rsconvert_info** %info.addr, align 8, !dbg !1451
  br label %while.cond, !dbg !1186, !llvm.loop !1452

while.end:                                        ; preds = %while.cond
  br label %exit, !dbg !1186

exit:                                             ; preds = %while.end, %if.then178, %if.then167, %if.then153
  call void @llvm.dbg.label(metadata !1454), !dbg !1455
  store i32 0, i32* %retval, align 4, !dbg !1456
  br label %return, !dbg !1456

return:                                           ; preds = %exit, %sw.default180, %sw.default, %if.then
  %240 = load i32, i32* %retval, align 4, !dbg !1457
  ret i32 %240, !dbg !1457
}

; Function Attrs: noredzone
declare dso_local void @acpi_rs_set_resource_header(i8 zeroext, i32, %union.aml_resource*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_rs_set_resource_length(i32, %union.aml_resource*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_rs_set_address_common(%union.aml_resource*, %struct.acpi_resource*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_set_resource_source(%union.aml_resource*, i16 zeroext, %struct.acpi_resource_source*) #2

; Function Attrs: noredzone
declare dso_local zeroext i16 @acpi_rs_encode_bitmask(i8*, i8 zeroext) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 13, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !32, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/rsmisc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !17, !18, !19, !22, !25, !26, !28, !29, !30, !8}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !7, line: 127, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !16)
!16 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !21)
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !24)
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_rs_length", file: !31, line: 16, baseType: !22)
!31 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!0}
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 56, elements: !35)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!35 = !{!36}
!36 = !DISubrange(count: 7)
!37 = !{i32 7, !"Dwarf Version", i32 4}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"Code Model", i32 2}
!41 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!42 = distinct !DISubprogram(name: "acpi_rs_convert_aml_to_resource", scope: !3, file: !3, line: 35, type: !43, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!43 = !DISubroutineType(types: !44)
!44 = !{!6, !45, !409, !735}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !31, line: 651, size: 544, elements: !47)
!47 = !{!48, !49, !50}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !31, line: 652, baseType: !8, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !46, file: !31, line: 653, baseType: !8, size: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !46, file: !31, line: 654, baseType: !51, size: 480, offset: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !31, line: 614, size: 480, elements: !52)
!52 = !{!53, !66, !74, !80, !88, !93, !99, !104, !114, !118, !126, !134, !140, !180, !198, !216, !228, !240, !248, !267, !283, !303, !325, !338, !350, !363, !377, !388, !400}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !51, file: !31, line: 615, baseType: !54, size: 56)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !31, line: 138, size: 56, elements: !55)
!55 = !{!56, !57, !58, !59, !60, !61, !62}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !54, file: !31, line: 139, baseType: !19, size: 8)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !54, file: !31, line: 140, baseType: !19, size: 8, offset: 8)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !54, file: !31, line: 141, baseType: !19, size: 8, offset: 16)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !54, file: !31, line: 142, baseType: !19, size: 8, offset: 24)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !54, file: !31, line: 143, baseType: !19, size: 8, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !54, file: !31, line: 144, baseType: !19, size: 8, offset: 40)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !54, file: !31, line: 145, baseType: !63, size: 8, offset: 48)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 1)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !51, file: !31, line: 616, baseType: !67, size: 40)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !31, line: 148, size: 40, elements: !68)
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !31, line: 149, baseType: !19, size: 8)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !67, file: !31, line: 150, baseType: !19, size: 8, offset: 8)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !67, file: !31, line: 151, baseType: !19, size: 8, offset: 16)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !67, file: !31, line: 152, baseType: !19, size: 8, offset: 24)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !67, file: !31, line: 153, baseType: !63, size: 8, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !51, file: !31, line: 617, baseType: !75, size: 24)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !31, line: 156, size: 24, elements: !76)
!76 = !{!77, !78, !79}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !75, file: !31, line: 157, baseType: !19, size: 8)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !75, file: !31, line: 158, baseType: !19, size: 8, offset: 8)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !75, file: !31, line: 159, baseType: !19, size: 8, offset: 16)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !51, file: !31, line: 618, baseType: !81, size: 56)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !31, line: 167, size: 56, elements: !82)
!82 = !{!83, !84, !85, !86, !87}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !81, file: !31, line: 168, baseType: !19, size: 8)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !81, file: !31, line: 169, baseType: !19, size: 8, offset: 8)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !81, file: !31, line: 170, baseType: !19, size: 8, offset: 16)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !81, file: !31, line: 171, baseType: !22, size: 16, offset: 24)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !81, file: !31, line: 172, baseType: !22, size: 16, offset: 40)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !51, file: !31, line: 619, baseType: !89, size: 24)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !31, line: 175, size: 24, elements: !90)
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !89, file: !31, line: 176, baseType: !22, size: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !89, file: !31, line: 177, baseType: !19, size: 8, offset: 16)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !51, file: !31, line: 620, baseType: !94, size: 40)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !31, line: 180, size: 40, elements: !95)
!95 = !{!96, !97, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !94, file: !31, line: 181, baseType: !22, size: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !94, file: !31, line: 182, baseType: !22, size: 16, offset: 16)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !94, file: !31, line: 183, baseType: !19, size: 8, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !51, file: !31, line: 621, baseType: !100, size: 24)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !31, line: 195, size: 24, elements: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !100, file: !31, line: 196, baseType: !22, size: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !100, file: !31, line: 197, baseType: !63, size: 8, offset: 16)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !51, file: !31, line: 622, baseType: !105, size: 160)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !31, line: 202, size: 160, elements: !106)
!106 = !{!107, !108, !109, !113}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !105, file: !31, line: 203, baseType: !22, size: 16)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !105, file: !31, line: 204, baseType: !19, size: 8, offset: 16)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !105, file: !31, line: 205, baseType: !110, size: 128, offset: 24)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 16)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !105, file: !31, line: 206, baseType: !63, size: 8, offset: 152)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !51, file: !31, line: 623, baseType: !115, size: 8)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !31, line: 209, size: 8, elements: !116)
!116 = !{!117}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !115, file: !31, line: 210, baseType: !19, size: 8)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !51, file: !31, line: 624, baseType: !119, size: 72)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !31, line: 213, size: 72, elements: !120)
!120 = !{!121, !122, !123, !124, !125}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !119, file: !31, line: 214, baseType: !19, size: 8)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !119, file: !31, line: 215, baseType: !22, size: 16, offset: 8)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !119, file: !31, line: 216, baseType: !22, size: 16, offset: 24)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !119, file: !31, line: 217, baseType: !22, size: 16, offset: 40)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !119, file: !31, line: 218, baseType: !22, size: 16, offset: 56)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !51, file: !31, line: 625, baseType: !127, size: 136)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !31, line: 221, size: 136, elements: !128)
!128 = !{!129, !130, !131, !132, !133}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !127, file: !31, line: 222, baseType: !19, size: 8)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !127, file: !31, line: 223, baseType: !8, size: 32, offset: 8)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !127, file: !31, line: 224, baseType: !8, size: 32, offset: 40)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !127, file: !31, line: 225, baseType: !8, size: 32, offset: 72)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !127, file: !31, line: 226, baseType: !8, size: 32, offset: 104)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !51, file: !31, line: 626, baseType: !135, size: 72)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !31, line: 229, size: 72, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !135, file: !31, line: 230, baseType: !19, size: 8)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !135, file: !31, line: 231, baseType: !8, size: 32, offset: 8)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !135, file: !31, line: 232, baseType: !8, size: 32, offset: 40)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !51, file: !31, line: 627, baseType: !141, size: 240)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !31, line: 306, size: 240, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !166, !174}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !141, file: !31, line: 307, baseType: !19, size: 8)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !141, file: !31, line: 307, baseType: !19, size: 8, offset: 8)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !141, file: !31, line: 307, baseType: !19, size: 8, offset: 16)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !141, file: !31, line: 307, baseType: !19, size: 8, offset: 24)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !141, file: !31, line: 307, baseType: !19, size: 8, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !141, file: !31, line: 307, baseType: !149, size: 32, offset: 40)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !31, line: 249, size: 32, elements: !150)
!150 = !{!151, !158, !165}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !149, file: !31, line: 250, baseType: !152, size: 32)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !31, line: 235, size: 32, elements: !153)
!153 = !{!154, !155, !156, !157}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !152, file: !31, line: 236, baseType: !19, size: 8)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !152, file: !31, line: 237, baseType: !19, size: 8, offset: 8)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !152, file: !31, line: 238, baseType: !19, size: 8, offset: 16)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !152, file: !31, line: 239, baseType: !19, size: 8, offset: 24)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !149, file: !31, line: 251, baseType: !159, size: 32)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !31, line: 242, size: 32, elements: !160)
!160 = !{!161, !162, !163, !164}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !159, file: !31, line: 243, baseType: !19, size: 8)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !159, file: !31, line: 244, baseType: !19, size: 8, offset: 8)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !159, file: !31, line: 245, baseType: !19, size: 8, offset: 16)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !159, file: !31, line: 246, baseType: !19, size: 8, offset: 24)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !149, file: !31, line: 255, baseType: !19, size: 8)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !141, file: !31, line: 307, baseType: !167, size: 80, offset: 72)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !31, line: 279, size: 80, elements: !168)
!168 = !{!169, !170, !171, !172, !173}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !167, file: !31, line: 280, baseType: !22, size: 16)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !167, file: !31, line: 281, baseType: !22, size: 16, offset: 16)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !167, file: !31, line: 282, baseType: !22, size: 16, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !167, file: !31, line: 283, baseType: !22, size: 16, offset: 48)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !167, file: !31, line: 284, baseType: !22, size: 16, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !141, file: !31, line: 308, baseType: !175, size: 88, offset: 152)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !31, line: 263, size: 88, elements: !176)
!176 = !{!177, !178, !179}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !175, file: !31, line: 264, baseType: !19, size: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !175, file: !31, line: 265, baseType: !22, size: 16, offset: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !175, file: !31, line: 266, baseType: !26, size: 64, offset: 24)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !51, file: !31, line: 628, baseType: !181, size: 320)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !31, line: 311, size: 320, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !197}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !181, file: !31, line: 312, baseType: !19, size: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !181, file: !31, line: 312, baseType: !19, size: 8, offset: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !181, file: !31, line: 312, baseType: !19, size: 8, offset: 16)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !181, file: !31, line: 312, baseType: !19, size: 8, offset: 24)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !181, file: !31, line: 312, baseType: !19, size: 8, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !181, file: !31, line: 312, baseType: !149, size: 32, offset: 40)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !181, file: !31, line: 312, baseType: !190, size: 160, offset: 72)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !31, line: 287, size: 160, elements: !191)
!191 = !{!192, !193, !194, !195, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !190, file: !31, line: 288, baseType: !8, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !190, file: !31, line: 289, baseType: !8, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !190, file: !31, line: 290, baseType: !8, size: 32, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !190, file: !31, line: 291, baseType: !8, size: 32, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !190, file: !31, line: 292, baseType: !8, size: 32, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !181, file: !31, line: 313, baseType: !175, size: 88, offset: 232)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !51, file: !31, line: 629, baseType: !199, size: 480)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !31, line: 316, size: 480, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !215}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !199, file: !31, line: 317, baseType: !19, size: 8)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !199, file: !31, line: 317, baseType: !19, size: 8, offset: 8)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !199, file: !31, line: 317, baseType: !19, size: 8, offset: 16)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !199, file: !31, line: 317, baseType: !19, size: 8, offset: 24)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !199, file: !31, line: 317, baseType: !19, size: 8, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !199, file: !31, line: 317, baseType: !149, size: 32, offset: 40)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !199, file: !31, line: 317, baseType: !208, size: 320, offset: 72)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !31, line: 295, size: 320, elements: !209)
!209 = !{!210, !211, !212, !213, !214}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !208, file: !31, line: 296, baseType: !14, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !208, file: !31, line: 297, baseType: !14, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !208, file: !31, line: 298, baseType: !14, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !208, file: !31, line: 299, baseType: !14, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !208, file: !31, line: 300, baseType: !14, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !199, file: !31, line: 318, baseType: !175, size: 88, offset: 392)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !51, file: !31, line: 630, baseType: !217, size: 464)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !31, line: 321, size: 464, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !217, file: !31, line: 322, baseType: !19, size: 8)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !217, file: !31, line: 322, baseType: !19, size: 8, offset: 8)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !217, file: !31, line: 322, baseType: !19, size: 8, offset: 16)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !217, file: !31, line: 322, baseType: !19, size: 8, offset: 24)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !217, file: !31, line: 322, baseType: !19, size: 8, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !217, file: !31, line: 322, baseType: !149, size: 32, offset: 40)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !217, file: !31, line: 322, baseType: !19, size: 8, offset: 72)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !217, file: !31, line: 323, baseType: !208, size: 320, offset: 80)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !217, file: !31, line: 324, baseType: !14, size: 64, offset: 400)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !51, file: !31, line: 631, baseType: !229, size: 168)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !31, line: 327, size: 168, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !229, file: !31, line: 328, baseType: !19, size: 8)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !229, file: !31, line: 329, baseType: !19, size: 8, offset: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !229, file: !31, line: 330, baseType: !19, size: 8, offset: 16)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !229, file: !31, line: 331, baseType: !19, size: 8, offset: 24)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !229, file: !31, line: 332, baseType: !19, size: 8, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !229, file: !31, line: 333, baseType: !19, size: 8, offset: 40)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !229, file: !31, line: 334, baseType: !175, size: 88, offset: 48)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !229, file: !31, line: 335, baseType: !239, size: 32, offset: 136)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !51, file: !31, line: 632, baseType: !241, size: 96)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !31, line: 338, size: 96, elements: !242)
!242 = !{!243, !244, !245, !246, !247}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !241, file: !31, line: 339, baseType: !19, size: 8)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !241, file: !31, line: 340, baseType: !19, size: 8, offset: 8)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !241, file: !31, line: 341, baseType: !19, size: 8, offset: 16)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !241, file: !31, line: 342, baseType: !19, size: 8, offset: 24)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !241, file: !31, line: 343, baseType: !14, size: 64, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !51, file: !31, line: 633, baseType: !249, size: 352)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !31, line: 346, size: 352, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !249, file: !31, line: 347, baseType: !19, size: 8)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !249, file: !31, line: 348, baseType: !19, size: 8, offset: 8)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !249, file: !31, line: 349, baseType: !19, size: 8, offset: 16)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !249, file: !31, line: 350, baseType: !19, size: 8, offset: 24)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !249, file: !31, line: 351, baseType: !19, size: 8, offset: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !249, file: !31, line: 352, baseType: !19, size: 8, offset: 40)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !249, file: !31, line: 353, baseType: !19, size: 8, offset: 48)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !249, file: !31, line: 354, baseType: !19, size: 8, offset: 56)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !249, file: !31, line: 355, baseType: !19, size: 8, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !249, file: !31, line: 356, baseType: !22, size: 16, offset: 72)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !249, file: !31, line: 357, baseType: !22, size: 16, offset: 88)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !249, file: !31, line: 358, baseType: !22, size: 16, offset: 104)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !249, file: !31, line: 359, baseType: !22, size: 16, offset: 120)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !249, file: !31, line: 360, baseType: !175, size: 88, offset: 136)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !249, file: !31, line: 361, baseType: !25, size: 64, offset: 224)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !249, file: !31, line: 362, baseType: !18, size: 64, offset: 288)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !51, file: !31, line: 634, baseType: !268, size: 288)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !31, line: 412, size: 288, elements: !269)
!269 = !{!270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !268, file: !31, line: 413, baseType: !19, size: 8)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !268, file: !31, line: 413, baseType: !19, size: 8, offset: 8)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !268, file: !31, line: 413, baseType: !19, size: 8, offset: 16)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !268, file: !31, line: 413, baseType: !19, size: 8, offset: 24)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !268, file: !31, line: 413, baseType: !19, size: 8, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !268, file: !31, line: 413, baseType: !19, size: 8, offset: 40)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !268, file: !31, line: 413, baseType: !22, size: 16, offset: 48)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !268, file: !31, line: 413, baseType: !22, size: 16, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !268, file: !31, line: 413, baseType: !175, size: 88, offset: 80)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !268, file: !31, line: 413, baseType: !18, size: 64, offset: 168)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !268, file: !31, line: 413, baseType: !19, size: 8, offset: 232)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !268, file: !31, line: 414, baseType: !22, size: 16, offset: 240)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !268, file: !31, line: 415, baseType: !8, size: 32, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !51, file: !31, line: 635, baseType: !284, size: 320)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !31, line: 423, size: 320, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !284, file: !31, line: 424, baseType: !19, size: 8)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !284, file: !31, line: 424, baseType: !19, size: 8, offset: 8)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !284, file: !31, line: 424, baseType: !19, size: 8, offset: 16)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !284, file: !31, line: 424, baseType: !19, size: 8, offset: 24)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !284, file: !31, line: 424, baseType: !19, size: 8, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !284, file: !31, line: 424, baseType: !19, size: 8, offset: 40)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !284, file: !31, line: 424, baseType: !22, size: 16, offset: 48)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !284, file: !31, line: 424, baseType: !22, size: 16, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !284, file: !31, line: 424, baseType: !175, size: 88, offset: 80)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !284, file: !31, line: 424, baseType: !18, size: 64, offset: 168)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !284, file: !31, line: 424, baseType: !19, size: 8, offset: 232)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !284, file: !31, line: 425, baseType: !19, size: 8, offset: 240)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !284, file: !31, line: 426, baseType: !19, size: 8, offset: 248)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !284, file: !31, line: 427, baseType: !19, size: 8, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !284, file: !31, line: 428, baseType: !19, size: 8, offset: 264)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !284, file: !31, line: 429, baseType: !22, size: 16, offset: 272)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !284, file: !31, line: 430, baseType: !8, size: 32, offset: 288)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !51, file: !31, line: 636, baseType: !304, size: 344)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !31, line: 453, size: 344, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !304, file: !31, line: 454, baseType: !19, size: 8)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !304, file: !31, line: 454, baseType: !19, size: 8, offset: 8)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !304, file: !31, line: 454, baseType: !19, size: 8, offset: 16)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !304, file: !31, line: 454, baseType: !19, size: 8, offset: 24)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !304, file: !31, line: 454, baseType: !19, size: 8, offset: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !304, file: !31, line: 454, baseType: !19, size: 8, offset: 40)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !304, file: !31, line: 454, baseType: !22, size: 16, offset: 48)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !304, file: !31, line: 454, baseType: !22, size: 16, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !304, file: !31, line: 454, baseType: !175, size: 88, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !304, file: !31, line: 454, baseType: !18, size: 64, offset: 168)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !304, file: !31, line: 454, baseType: !19, size: 8, offset: 232)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !304, file: !31, line: 455, baseType: !19, size: 8, offset: 240)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !304, file: !31, line: 456, baseType: !19, size: 8, offset: 248)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !304, file: !31, line: 457, baseType: !19, size: 8, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !304, file: !31, line: 458, baseType: !19, size: 8, offset: 264)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !304, file: !31, line: 459, baseType: !19, size: 8, offset: 272)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !304, file: !31, line: 460, baseType: !22, size: 16, offset: 280)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !304, file: !31, line: 461, baseType: !22, size: 16, offset: 296)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !304, file: !31, line: 462, baseType: !8, size: 32, offset: 312)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !51, file: !31, line: 637, baseType: !326, size: 232)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !31, line: 398, size: 232, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !326, file: !31, line: 399, baseType: !19, size: 8)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !326, file: !31, line: 399, baseType: !19, size: 8, offset: 8)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !326, file: !31, line: 399, baseType: !19, size: 8, offset: 16)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !326, file: !31, line: 399, baseType: !19, size: 8, offset: 24)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !326, file: !31, line: 399, baseType: !19, size: 8, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !326, file: !31, line: 399, baseType: !19, size: 8, offset: 40)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !326, file: !31, line: 399, baseType: !22, size: 16, offset: 48)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !326, file: !31, line: 399, baseType: !22, size: 16, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !326, file: !31, line: 399, baseType: !175, size: 88, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !326, file: !31, line: 399, baseType: !18, size: 64, offset: 168)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !51, file: !31, line: 638, baseType: !339, size: 288)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !31, line: 508, size: 288, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !339, file: !31, line: 509, baseType: !19, size: 8)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !339, file: !31, line: 510, baseType: !19, size: 8, offset: 8)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !339, file: !31, line: 511, baseType: !19, size: 8, offset: 16)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !339, file: !31, line: 512, baseType: !22, size: 16, offset: 24)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !339, file: !31, line: 513, baseType: !22, size: 16, offset: 40)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !339, file: !31, line: 514, baseType: !22, size: 16, offset: 56)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !339, file: !31, line: 515, baseType: !175, size: 88, offset: 72)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !339, file: !31, line: 516, baseType: !25, size: 64, offset: 160)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !339, file: !31, line: 517, baseType: !18, size: 64, offset: 224)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !51, file: !31, line: 639, baseType: !351, size: 312)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !31, line: 520, size: 312, elements: !352)
!352 = !{!353, !354, !355, !356, !357, !358, !359, !360, !361, !362}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !351, file: !31, line: 521, baseType: !19, size: 8)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !351, file: !31, line: 522, baseType: !19, size: 8, offset: 8)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !351, file: !31, line: 523, baseType: !19, size: 8, offset: 16)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !351, file: !31, line: 524, baseType: !19, size: 8, offset: 24)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !351, file: !31, line: 525, baseType: !8, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !351, file: !31, line: 526, baseType: !22, size: 16, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !351, file: !31, line: 527, baseType: !22, size: 16, offset: 80)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !351, file: !31, line: 528, baseType: !175, size: 88, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !351, file: !31, line: 529, baseType: !25, size: 64, offset: 184)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !351, file: !31, line: 530, baseType: !18, size: 64, offset: 248)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !51, file: !31, line: 640, baseType: !364, size: 256)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !31, line: 550, size: 256, elements: !365)
!365 = !{!366, !367, !368, !369, !370, !371, !376}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !364, file: !31, line: 551, baseType: !19, size: 8)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !364, file: !31, line: 552, baseType: !19, size: 8, offset: 8)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !364, file: !31, line: 553, baseType: !22, size: 16, offset: 16)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !364, file: !31, line: 554, baseType: !22, size: 16, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !364, file: !31, line: 555, baseType: !25, size: 64, offset: 48)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !364, file: !31, line: 556, baseType: !372, size: 80, offset: 112)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !31, line: 258, size: 80, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !372, file: !31, line: 259, baseType: !22, size: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !372, file: !31, line: 260, baseType: !26, size: 64, offset: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !364, file: !31, line: 557, baseType: !18, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !51, file: !31, line: 641, baseType: !378, size: 288)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !31, line: 560, size: 288, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !378, file: !31, line: 561, baseType: !19, size: 8)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !378, file: !31, line: 562, baseType: !19, size: 8, offset: 8)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !378, file: !31, line: 563, baseType: !19, size: 8, offset: 16)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !378, file: !31, line: 564, baseType: !22, size: 16, offset: 24)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !378, file: !31, line: 565, baseType: !22, size: 16, offset: 40)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !378, file: !31, line: 566, baseType: !175, size: 88, offset: 56)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !378, file: !31, line: 567, baseType: !372, size: 80, offset: 144)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !378, file: !31, line: 568, baseType: !18, size: 64, offset: 224)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !51, file: !31, line: 642, baseType: !389, size: 312)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !31, line: 571, size: 312, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !389, file: !31, line: 572, baseType: !19, size: 8)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !389, file: !31, line: 573, baseType: !19, size: 8, offset: 8)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !389, file: !31, line: 574, baseType: !19, size: 8, offset: 16)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !389, file: !31, line: 575, baseType: !19, size: 8, offset: 24)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !389, file: !31, line: 576, baseType: !8, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !389, file: !31, line: 577, baseType: !22, size: 16, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !389, file: !31, line: 578, baseType: !175, size: 88, offset: 80)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !389, file: !31, line: 579, baseType: !372, size: 80, offset: 168)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !389, file: !31, line: 580, baseType: !18, size: 64, offset: 248)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !51, file: !31, line: 646, baseType: !401, size: 72)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !31, line: 303, size: 72, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !401, file: !31, line: 304, baseType: !19, size: 8)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !401, file: !31, line: 304, baseType: !19, size: 8, offset: 8)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !401, file: !31, line: 304, baseType: !19, size: 8, offset: 16)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !401, file: !31, line: 304, baseType: !19, size: 8, offset: 24)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !401, file: !31, line: 304, baseType: !19, size: 8, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !401, file: !31, line: 304, baseType: !149, size: 32, offset: 40)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "aml_resource", file: !411, line: 478, size: 448, elements: !412)
!411 = !DIFile(filename: "drivers/acpi/acpica/amlresrc.h", directory: "/home/lizy2001/genbc/linux")
!412 = !{!413, !414, !418, !423, !429, !435, !440, !444, !453, !459, !466, !470, !475, !485, !495, !500, !510, !518, !531, !544, !557, !573, !581, !598, !612, !629, !646, !658, !672, !686, !697, !710, !724, !732, !733, !734}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !410, file: !411, line: 481, baseType: !19, size: 8)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "small_header", scope: !410, file: !411, line: 482, baseType: !415, size: 8)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_small_header", file: !411, line: 114, size: 8, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !415, file: !411, line: 115, baseType: !19, size: 8)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "large_header", scope: !410, file: !411, line: 483, baseType: !419, size: 24)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_large_header", file: !411, line: 174, size: 24, elements: !420)
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !419, file: !411, line: 175, baseType: !19, size: 8)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !419, file: !411, line: 175, baseType: !22, size: 16, offset: 8)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !410, file: !411, line: 487, baseType: !424, size: 32)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_irq", file: !411, line: 117, size: 32, elements: !425)
!425 = !{!426, !427, !428}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !424, file: !411, line: 118, baseType: !19, size: 8)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !424, file: !411, line: 118, baseType: !22, size: 16, offset: 8)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !424, file: !411, line: 119, baseType: !19, size: 8, offset: 24)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !410, file: !411, line: 488, baseType: !430, size: 24)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_dma", file: !411, line: 126, size: 24, elements: !431)
!431 = !{!432, !433, !434}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !430, file: !411, line: 127, baseType: !19, size: 8)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "dma_channel_mask", scope: !430, file: !411, line: 127, baseType: !19, size: 8, offset: 8)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !430, file: !411, line: 128, baseType: !19, size: 8, offset: 16)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !410, file: !411, line: 489, baseType: !436, size: 16)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_start_dependent", file: !411, line: 131, size: 16, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !436, file: !411, line: 132, baseType: !19, size: 8)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !436, file: !411, line: 132, baseType: !19, size: 8, offset: 8)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "end_dpf", scope: !410, file: !411, line: 490, baseType: !441, size: 8)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_dependent", file: !411, line: 138, size: 8, elements: !442)
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !441, file: !411, line: 139, baseType: !19, size: 8)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !410, file: !411, line: 491, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_io", file: !411, line: 141, size: 64, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !452}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !445, file: !411, line: 142, baseType: !19, size: 8)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !411, line: 142, baseType: !19, size: 8, offset: 8)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !445, file: !411, line: 143, baseType: !22, size: 16, offset: 16)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !445, file: !411, line: 144, baseType: !22, size: 16, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !445, file: !411, line: 145, baseType: !19, size: 8, offset: 48)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !445, file: !411, line: 146, baseType: !19, size: 8, offset: 56)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !410, file: !411, line: 492, baseType: !454, size: 32)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_io", file: !411, line: 149, size: 32, elements: !455)
!455 = !{!456, !457, !458}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !454, file: !411, line: 150, baseType: !19, size: 8)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !454, file: !411, line: 150, baseType: !22, size: 16, offset: 8)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !454, file: !411, line: 151, baseType: !19, size: 8, offset: 24)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !410, file: !411, line: 493, baseType: !460, size: 48)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_dma", file: !411, line: 161, size: 48, elements: !461)
!461 = !{!462, !463, !464, !465}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !460, file: !411, line: 162, baseType: !19, size: 8)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !460, file: !411, line: 162, baseType: !22, size: 16, offset: 8)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !460, file: !411, line: 163, baseType: !22, size: 16, offset: 24)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !460, file: !411, line: 164, baseType: !19, size: 8, offset: 40)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_small", scope: !410, file: !411, line: 494, baseType: !467, size: 8)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_small", file: !411, line: 154, size: 8, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !467, file: !411, line: 155, baseType: !19, size: 8)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !410, file: !411, line: 495, baseType: !471, size: 16)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_tag", file: !411, line: 157, size: 16, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !471, file: !411, line: 158, baseType: !19, size: 8)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !471, file: !411, line: 158, baseType: !19, size: 8, offset: 8)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !410, file: !411, line: 499, baseType: !476, size: 96)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory24", file: !411, line: 183, size: 96, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !476, file: !411, line: 184, baseType: !19, size: 8)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !476, file: !411, line: 184, baseType: !22, size: 16, offset: 8)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !411, line: 184, baseType: !19, size: 8, offset: 24)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !476, file: !411, line: 185, baseType: !22, size: 16, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !476, file: !411, line: 186, baseType: !22, size: 16, offset: 48)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !476, file: !411, line: 187, baseType: !22, size: 16, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !476, file: !411, line: 188, baseType: !22, size: 16, offset: 80)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !410, file: !411, line: 500, baseType: !486, size: 120)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_generic_register", file: !411, line: 264, size: 120, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !486, file: !411, line: 265, baseType: !19, size: 8)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !486, file: !411, line: 265, baseType: !22, size: 16, offset: 8)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "address_space_id", scope: !486, file: !411, line: 265, baseType: !19, size: 8, offset: 24)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !486, file: !411, line: 266, baseType: !19, size: 8, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !486, file: !411, line: 267, baseType: !19, size: 8, offset: 40)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !486, file: !411, line: 268, baseType: !19, size: 8, offset: 48)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !486, file: !411, line: 269, baseType: !14, size: 64, offset: 56)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_large", scope: !410, file: !411, line: 501, baseType: !496, size: 24)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_large", file: !411, line: 191, size: 24, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !496, file: !411, line: 192, baseType: !19, size: 8)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !496, file: !411, line: 192, baseType: !22, size: 16, offset: 8)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !410, file: !411, line: 502, baseType: !501, size: 160)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory32", file: !411, line: 194, size: 160, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !508, !509}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !501, file: !411, line: 195, baseType: !19, size: 8)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !501, file: !411, line: 195, baseType: !22, size: 16, offset: 8)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !501, file: !411, line: 195, baseType: !19, size: 8, offset: 24)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !501, file: !411, line: 196, baseType: !8, size: 32, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !501, file: !411, line: 197, baseType: !8, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !501, file: !411, line: 198, baseType: !8, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !501, file: !411, line: 199, baseType: !8, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !410, file: !411, line: 503, baseType: !511, size: 96)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_memory32", file: !411, line: 202, size: 96, elements: !512)
!512 = !{!513, !514, !515, !516, !517}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !511, file: !411, line: 203, baseType: !19, size: 8)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !511, file: !411, line: 203, baseType: !22, size: 16, offset: 8)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !511, file: !411, line: 203, baseType: !19, size: 8, offset: 24)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !511, file: !411, line: 204, baseType: !8, size: 32, offset: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !511, file: !411, line: 205, baseType: !8, size: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !410, file: !411, line: 504, baseType: !519, size: 128)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address16", file: !411, line: 248, size: 128, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !519, file: !411, line: 249, baseType: !19, size: 8)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !519, file: !411, line: 249, baseType: !22, size: 16, offset: 8)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !519, file: !411, line: 250, baseType: !19, size: 8, offset: 24)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !411, line: 250, baseType: !19, size: 8, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !519, file: !411, line: 250, baseType: !19, size: 8, offset: 40)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !519, file: !411, line: 250, baseType: !22, size: 16, offset: 48)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !519, file: !411, line: 251, baseType: !22, size: 16, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !519, file: !411, line: 252, baseType: !22, size: 16, offset: 80)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !519, file: !411, line: 253, baseType: !22, size: 16, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !519, file: !411, line: 254, baseType: !22, size: 16, offset: 112)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !410, file: !411, line: 505, baseType: !532, size: 208)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address32", file: !411, line: 239, size: 208, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !539, !540, !541, !542, !543}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !532, file: !411, line: 240, baseType: !19, size: 8)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !532, file: !411, line: 240, baseType: !22, size: 16, offset: 8)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !532, file: !411, line: 241, baseType: !19, size: 8, offset: 24)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !411, line: 241, baseType: !19, size: 8, offset: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !532, file: !411, line: 241, baseType: !19, size: 8, offset: 40)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !532, file: !411, line: 241, baseType: !8, size: 32, offset: 48)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !532, file: !411, line: 242, baseType: !8, size: 32, offset: 80)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !532, file: !411, line: 243, baseType: !8, size: 32, offset: 112)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !532, file: !411, line: 244, baseType: !8, size: 32, offset: 144)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !532, file: !411, line: 245, baseType: !8, size: 32, offset: 176)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !410, file: !411, line: 506, baseType: !545, size: 368)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address64", file: !411, line: 230, size: 368, elements: !546)
!546 = !{!547, !548, !549, !550, !551, !552, !553, !554, !555, !556}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !545, file: !411, line: 231, baseType: !19, size: 8)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !545, file: !411, line: 231, baseType: !22, size: 16, offset: 8)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !545, file: !411, line: 232, baseType: !19, size: 8, offset: 24)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !545, file: !411, line: 232, baseType: !19, size: 8, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !545, file: !411, line: 232, baseType: !19, size: 8, offset: 40)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !545, file: !411, line: 232, baseType: !14, size: 64, offset: 48)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !545, file: !411, line: 233, baseType: !14, size: 64, offset: 112)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !545, file: !411, line: 234, baseType: !14, size: 64, offset: 176)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !545, file: !411, line: 235, baseType: !14, size: 64, offset: 240)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !545, file: !411, line: 236, baseType: !14, size: 64, offset: 304)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !410, file: !411, line: 507, baseType: !558, size: 448)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_address64", file: !411, line: 216, size: 448, elements: !559)
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !558, file: !411, line: 217, baseType: !19, size: 8)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !558, file: !411, line: 217, baseType: !22, size: 16, offset: 8)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !558, file: !411, line: 218, baseType: !19, size: 8, offset: 24)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !558, file: !411, line: 218, baseType: !19, size: 8, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !558, file: !411, line: 218, baseType: !19, size: 8, offset: 40)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !558, file: !411, line: 218, baseType: !19, size: 8, offset: 48)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !558, file: !411, line: 219, baseType: !19, size: 8, offset: 56)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !558, file: !411, line: 220, baseType: !14, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !558, file: !411, line: 221, baseType: !14, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !558, file: !411, line: 222, baseType: !14, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !558, file: !411, line: 223, baseType: !14, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !558, file: !411, line: 224, baseType: !14, size: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !558, file: !411, line: 225, baseType: !14, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !410, file: !411, line: 508, baseType: !574, size: 72)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_irq", file: !411, line: 257, size: 72, elements: !575)
!575 = !{!576, !577, !578, !579, !580}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !574, file: !411, line: 258, baseType: !19, size: 8)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !574, file: !411, line: 258, baseType: !22, size: 16, offset: 8)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !574, file: !411, line: 258, baseType: !19, size: 8, offset: 24)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !574, file: !411, line: 259, baseType: !19, size: 8, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !574, file: !411, line: 260, baseType: !239, size: 32, offset: 40)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !410, file: !411, line: 509, baseType: !582, size: 184)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_gpio", file: !411, line: 274, size: 184, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !582, file: !411, line: 275, baseType: !19, size: 8)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !582, file: !411, line: 275, baseType: !22, size: 16, offset: 8)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !582, file: !411, line: 275, baseType: !19, size: 8, offset: 24)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !582, file: !411, line: 276, baseType: !19, size: 8, offset: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !582, file: !411, line: 277, baseType: !22, size: 16, offset: 40)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "int_flags", scope: !582, file: !411, line: 278, baseType: !22, size: 16, offset: 56)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !582, file: !411, line: 279, baseType: !19, size: 8, offset: 72)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !582, file: !411, line: 280, baseType: !22, size: 16, offset: 80)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !582, file: !411, line: 281, baseType: !22, size: 16, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !582, file: !411, line: 282, baseType: !22, size: 16, offset: 112)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !582, file: !411, line: 283, baseType: !19, size: 8, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !582, file: !411, line: 284, baseType: !22, size: 16, offset: 136)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !582, file: !411, line: 285, baseType: !22, size: 16, offset: 152)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !582, file: !411, line: 286, baseType: !22, size: 16, offset: 168)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !410, file: !411, line: 510, baseType: !599, size: 144)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_i2c_serialbus", file: !411, line: 325, size: 144, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !411, line: 326, baseType: !19, size: 8)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !599, file: !411, line: 326, baseType: !22, size: 16, offset: 8)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !599, file: !411, line: 327, baseType: !19, size: 8, offset: 24)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !599, file: !411, line: 327, baseType: !19, size: 8, offset: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !411, line: 327, baseType: !19, size: 8, offset: 40)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !411, line: 327, baseType: !19, size: 8, offset: 48)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !599, file: !411, line: 327, baseType: !22, size: 16, offset: 56)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !599, file: !411, line: 327, baseType: !19, size: 8, offset: 72)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !599, file: !411, line: 327, baseType: !22, size: 16, offset: 80)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !599, file: !411, line: 327, baseType: !8, size: 32, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !599, file: !411, line: 328, baseType: !22, size: 16, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !410, file: !411, line: 511, baseType: !613, size: 168)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_spi_serialbus", file: !411, line: 340, size: 168, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !613, file: !411, line: 341, baseType: !19, size: 8)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !613, file: !411, line: 341, baseType: !22, size: 16, offset: 8)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !613, file: !411, line: 342, baseType: !19, size: 8, offset: 24)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !613, file: !411, line: 342, baseType: !19, size: 8, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !411, line: 342, baseType: !19, size: 8, offset: 40)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !411, line: 342, baseType: !19, size: 8, offset: 48)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !613, file: !411, line: 342, baseType: !22, size: 16, offset: 56)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !613, file: !411, line: 342, baseType: !19, size: 8, offset: 72)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !613, file: !411, line: 342, baseType: !22, size: 16, offset: 80)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !613, file: !411, line: 342, baseType: !8, size: 32, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !613, file: !411, line: 343, baseType: !19, size: 8, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !613, file: !411, line: 344, baseType: !19, size: 8, offset: 136)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !613, file: !411, line: 345, baseType: !19, size: 8, offset: 144)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !613, file: !411, line: 346, baseType: !22, size: 16, offset: 152)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !410, file: !411, line: 512, baseType: !630, size: 176)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_uart_serialbus", file: !411, line: 358, size: 176, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !630, file: !411, line: 359, baseType: !19, size: 8)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !630, file: !411, line: 359, baseType: !22, size: 16, offset: 8)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !630, file: !411, line: 360, baseType: !19, size: 8, offset: 24)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !630, file: !411, line: 360, baseType: !19, size: 8, offset: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !411, line: 360, baseType: !19, size: 8, offset: 40)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !411, line: 360, baseType: !19, size: 8, offset: 48)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !630, file: !411, line: 360, baseType: !22, size: 16, offset: 56)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !630, file: !411, line: 360, baseType: !19, size: 8, offset: 72)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !630, file: !411, line: 360, baseType: !22, size: 16, offset: 80)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !630, file: !411, line: 360, baseType: !8, size: 32, offset: 96)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !630, file: !411, line: 361, baseType: !22, size: 16, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !630, file: !411, line: 362, baseType: !22, size: 16, offset: 144)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !630, file: !411, line: 363, baseType: !19, size: 8, offset: 160)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !630, file: !411, line: 364, baseType: !19, size: 8, offset: 168)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !410, file: !411, line: 513, baseType: !647, size: 96)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_common_serialbus", file: !411, line: 322, size: 96, elements: !648)
!648 = !{!649, !650, !651, !652, !653, !654, !655, !656, !657}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !647, file: !411, line: 323, baseType: !19, size: 8)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !647, file: !411, line: 323, baseType: !22, size: 16, offset: 8)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !647, file: !411, line: 323, baseType: !19, size: 8, offset: 24)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !647, file: !411, line: 323, baseType: !19, size: 8, offset: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !647, file: !411, line: 323, baseType: !19, size: 8, offset: 40)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !411, line: 323, baseType: !19, size: 8, offset: 48)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !647, file: !411, line: 323, baseType: !22, size: 16, offset: 56)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !647, file: !411, line: 323, baseType: !19, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !647, file: !411, line: 323, baseType: !22, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !410, file: !411, line: 514, baseType: !659, size: 144)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_function", file: !411, line: 376, size: 144, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !659, file: !411, line: 377, baseType: !19, size: 8)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !659, file: !411, line: 377, baseType: !22, size: 16, offset: 8)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !659, file: !411, line: 377, baseType: !19, size: 8, offset: 24)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !659, file: !411, line: 378, baseType: !22, size: 16, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !659, file: !411, line: 379, baseType: !19, size: 8, offset: 48)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !659, file: !411, line: 380, baseType: !22, size: 16, offset: 56)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !659, file: !411, line: 381, baseType: !22, size: 16, offset: 72)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !659, file: !411, line: 382, baseType: !19, size: 8, offset: 88)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !659, file: !411, line: 383, baseType: !22, size: 16, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !659, file: !411, line: 384, baseType: !22, size: 16, offset: 112)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !659, file: !411, line: 385, baseType: !22, size: 16, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !410, file: !411, line: 515, baseType: !673, size: 160)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_config", file: !411, line: 396, size: 160, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !673, file: !411, line: 397, baseType: !19, size: 8)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !673, file: !411, line: 397, baseType: !22, size: 16, offset: 8)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !673, file: !411, line: 397, baseType: !19, size: 8, offset: 24)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !673, file: !411, line: 398, baseType: !22, size: 16, offset: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !673, file: !411, line: 399, baseType: !19, size: 8, offset: 48)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !673, file: !411, line: 400, baseType: !8, size: 32, offset: 56)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !673, file: !411, line: 401, baseType: !22, size: 16, offset: 88)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !673, file: !411, line: 402, baseType: !19, size: 8, offset: 104)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !673, file: !411, line: 403, baseType: !22, size: 16, offset: 112)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !673, file: !411, line: 404, baseType: !22, size: 16, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !673, file: !411, line: 405, baseType: !22, size: 16, offset: 144)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !410, file: !411, line: 516, baseType: !687, size: 112)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group", file: !411, line: 416, size: 112, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !687, file: !411, line: 417, baseType: !19, size: 8)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !687, file: !411, line: 417, baseType: !22, size: 16, offset: 8)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !687, file: !411, line: 417, baseType: !19, size: 8, offset: 24)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !411, line: 418, baseType: !22, size: 16, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !687, file: !411, line: 419, baseType: !22, size: 16, offset: 48)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "label_offset", scope: !687, file: !411, line: 420, baseType: !22, size: 16, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !687, file: !411, line: 421, baseType: !22, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !687, file: !411, line: 422, baseType: !22, size: 16, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !410, file: !411, line: 517, baseType: !698, size: 136)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_function", file: !411, line: 433, size: 136, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !698, file: !411, line: 434, baseType: !19, size: 8)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !698, file: !411, line: 434, baseType: !22, size: 16, offset: 8)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !698, file: !411, line: 434, baseType: !19, size: 8, offset: 24)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !411, line: 435, baseType: !22, size: 16, offset: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !698, file: !411, line: 436, baseType: !22, size: 16, offset: 48)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !698, file: !411, line: 437, baseType: !19, size: 8, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !698, file: !411, line: 438, baseType: !22, size: 16, offset: 72)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !698, file: !411, line: 439, baseType: !22, size: 16, offset: 88)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !698, file: !411, line: 440, baseType: !22, size: 16, offset: 104)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !698, file: !411, line: 441, baseType: !22, size: 16, offset: 120)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !410, file: !411, line: 518, baseType: !711, size: 160)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_config", file: !411, line: 452, size: 160, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !411, line: 453, baseType: !19, size: 8)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !711, file: !411, line: 453, baseType: !22, size: 16, offset: 8)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !711, file: !411, line: 453, baseType: !19, size: 8, offset: 24)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !411, line: 454, baseType: !22, size: 16, offset: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !711, file: !411, line: 455, baseType: !19, size: 8, offset: 48)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !711, file: !411, line: 456, baseType: !8, size: 32, offset: 56)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !711, file: !411, line: 457, baseType: !19, size: 8, offset: 88)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !711, file: !411, line: 458, baseType: !22, size: 16, offset: 96)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !711, file: !411, line: 459, baseType: !22, size: 16, offset: 112)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !711, file: !411, line: 460, baseType: !22, size: 16, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !711, file: !411, line: 461, baseType: !22, size: 16, offset: 144)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !410, file: !411, line: 522, baseType: !725, size: 48)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address", file: !411, line: 213, size: 48, elements: !726)
!726 = !{!727, !728, !729, !730, !731}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !725, file: !411, line: 214, baseType: !19, size: 8)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !725, file: !411, line: 214, baseType: !22, size: 16, offset: 8)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !725, file: !411, line: 214, baseType: !19, size: 8, offset: 24)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !725, file: !411, line: 214, baseType: !19, size: 8, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !725, file: !411, line: 214, baseType: !19, size: 8, offset: 40)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "dword_item", scope: !410, file: !411, line: 523, baseType: !8, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "word_item", scope: !410, file: !411, line: 524, baseType: !22, size: 16)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "byte_item", scope: !410, file: !411, line: 525, baseType: !19, size: 8)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_rsconvert_info", file: !737, line: 32, size: 32, elements: !738)
!737 = !DIFile(filename: "drivers/acpi/acpica/acresrc.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !740, !741, !742}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !736, file: !737, line: 33, baseType: !19, size: 8)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "resource_offset", scope: !736, file: !737, line: 34, baseType: !19, size: 8, offset: 8)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "aml_offset", scope: !736, file: !737, line: 35, baseType: !19, size: 8, offset: 16)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !736, file: !737, line: 36, baseType: !19, size: 8, offset: 24)
!743 = !DILocalVariable(name: "resource", arg: 1, scope: !42, file: !3, line: 35, type: !45)
!744 = !DILocation(line: 35, column: 55, scope: !42)
!745 = !DILocalVariable(name: "aml", arg: 2, scope: !42, file: !3, line: 36, type: !409)
!746 = !DILocation(line: 36, column: 25, scope: !42)
!747 = !DILocalVariable(name: "info", arg: 3, scope: !42, file: !3, line: 37, type: !735)
!748 = !DILocation(line: 37, column: 33, scope: !42)
!749 = !DILocalVariable(name: "aml_resource_length", scope: !42, file: !3, line: 39, type: !30)
!750 = !DILocation(line: 39, column: 17, scope: !42)
!751 = !DILocalVariable(name: "source", scope: !42, file: !3, line: 40, type: !17)
!752 = !DILocation(line: 40, column: 8, scope: !42)
!753 = !DILocalVariable(name: "destination", scope: !42, file: !3, line: 41, type: !17)
!754 = !DILocation(line: 41, column: 8, scope: !42)
!755 = !DILocalVariable(name: "target", scope: !42, file: !3, line: 42, type: !26)
!756 = !DILocation(line: 42, column: 8, scope: !42)
!757 = !DILocalVariable(name: "count", scope: !42, file: !3, line: 43, type: !19)
!758 = !DILocation(line: 43, column: 5, scope: !42)
!759 = !DILocalVariable(name: "flags_mode", scope: !42, file: !3, line: 44, type: !19)
!760 = !DILocation(line: 44, column: 5, scope: !42)
!761 = !DILocalVariable(name: "item_count", scope: !42, file: !3, line: 45, type: !22)
!762 = !DILocation(line: 45, column: 6, scope: !42)
!763 = !DILocalVariable(name: "temp16", scope: !42, file: !3, line: 46, type: !22)
!764 = !DILocation(line: 46, column: 6, scope: !42)
!765 = !DILocation(line: 50, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !42, file: !3, line: 50, column: 6)
!767 = !DILocation(line: 50, column: 6, scope: !42)
!768 = !DILocation(line: 51, column: 3, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !3, line: 50, column: 13)
!770 = !DILocation(line: 54, column: 18, scope: !771)
!771 = distinct !DILexicalBlock(scope: !42, file: !3, line: 54, column: 6)
!772 = !DILocation(line: 54, column: 7, scope: !771)
!773 = !DILocation(line: 54, column: 28, scope: !771)
!774 = !DILocation(line: 54, column: 6, scope: !42)
!775 = !DILocation(line: 58, column: 3, scope: !776)
!776 = distinct !DILexicalBlock(scope: !771, file: !3, line: 54, column: 35)
!777 = !DILocation(line: 61, column: 2, scope: !776)
!778 = !DILocation(line: 65, column: 52, scope: !42)
!779 = !DILocation(line: 65, column: 24, scope: !42)
!780 = !DILocation(line: 65, column: 22, scope: !42)
!781 = !DILocation(line: 71, column: 10, scope: !42)
!782 = !DILocation(line: 71, column: 8, scope: !42)
!783 = !DILocation(line: 72, column: 2, scope: !42)
!784 = !DILocation(line: 72, column: 9, scope: !42)
!785 = !DILocation(line: 77, column: 12, scope: !786)
!786 = distinct !DILexicalBlock(scope: !42, file: !3, line: 72, column: 16)
!787 = !DILocation(line: 77, column: 10, scope: !786)
!788 = !DILocation(line: 79, column: 7, scope: !786)
!789 = !DILocation(line: 78, column: 15, scope: !786)
!790 = !DILocation(line: 81, column: 11, scope: !786)
!791 = !DILocation(line: 81, column: 17, scope: !786)
!792 = !DILocation(line: 81, column: 3, scope: !786)
!793 = !DILocation(line: 86, column: 11, scope: !794)
!794 = distinct !DILexicalBlock(scope: !786, file: !3, line: 81, column: 25)
!795 = !DILocation(line: 86, column: 4, scope: !794)
!796 = !DILocation(line: 86, column: 24, scope: !794)
!797 = !DILocation(line: 87, column: 21, scope: !794)
!798 = !DILocation(line: 87, column: 4, scope: !794)
!799 = !DILocation(line: 87, column: 14, scope: !794)
!800 = !DILocation(line: 87, column: 19, scope: !794)
!801 = !DILocation(line: 88, column: 23, scope: !794)
!802 = !DILocation(line: 88, column: 4, scope: !794)
!803 = !DILocation(line: 88, column: 14, scope: !794)
!804 = !DILocation(line: 88, column: 21, scope: !794)
!805 = !DILocation(line: 89, column: 4, scope: !794)
!806 = !DILocation(line: 92, column: 4, scope: !794)
!807 = !DILocation(line: 96, column: 15, scope: !794)
!808 = !DILocation(line: 97, column: 4, scope: !794)
!809 = !DILocation(line: 103, column: 4, scope: !794)
!810 = !DILocation(line: 105, column: 4, scope: !794)
!811 = !DILocation(line: 111, column: 4, scope: !794)
!812 = !DILocation(line: 113, column: 4, scope: !794)
!813 = !DILocation(line: 119, column: 4, scope: !794)
!814 = !DILocation(line: 121, column: 4, scope: !794)
!815 = !DILocation(line: 125, column: 17, scope: !794)
!816 = !DILocation(line: 125, column: 15, scope: !794)
!817 = !DILocation(line: 126, column: 4, scope: !794)
!818 = !DILocation(line: 128, column: 23, scope: !794)
!819 = !DILocation(line: 128, column: 33, scope: !794)
!820 = !DILocation(line: 129, column: 9, scope: !794)
!821 = !DILocation(line: 129, column: 15, scope: !794)
!822 = !DILocation(line: 129, column: 24, scope: !794)
!823 = !DILocation(line: 129, column: 35, scope: !794)
!824 = !DILocation(line: 129, column: 21, scope: !794)
!825 = !DILocation(line: 128, column: 40, scope: !794)
!826 = !DILocation(line: 128, column: 4, scope: !794)
!827 = !DILocation(line: 128, column: 14, scope: !794)
!828 = !DILocation(line: 128, column: 21, scope: !794)
!829 = !DILocation(line: 130, column: 4, scope: !794)
!830 = !DILocation(line: 134, column: 17, scope: !794)
!831 = !DILocation(line: 134, column: 15, scope: !794)
!832 = !DILocation(line: 135, column: 4, scope: !794)
!833 = !DILocation(line: 137, column: 23, scope: !794)
!834 = !DILocation(line: 137, column: 33, scope: !794)
!835 = !DILocation(line: 138, column: 9, scope: !794)
!836 = !DILocation(line: 138, column: 15, scope: !794)
!837 = !DILocation(line: 138, column: 24, scope: !794)
!838 = !DILocation(line: 138, column: 35, scope: !794)
!839 = !DILocation(line: 138, column: 21, scope: !794)
!840 = !DILocation(line: 137, column: 40, scope: !794)
!841 = !DILocation(line: 137, column: 4, scope: !794)
!842 = !DILocation(line: 137, column: 14, scope: !794)
!843 = !DILocation(line: 137, column: 21, scope: !794)
!844 = !DILocation(line: 139, column: 4, scope: !794)
!845 = !DILocation(line: 143, column: 13, scope: !794)
!846 = !DILocation(line: 143, column: 11, scope: !794)
!847 = !DILocation(line: 144, column: 17, scope: !794)
!848 = !DILocation(line: 144, column: 38, scope: !794)
!849 = !DILocation(line: 144, column: 36, scope: !794)
!850 = !DILocation(line: 144, column: 15, scope: !794)
!851 = !DILocation(line: 146, column: 23, scope: !794)
!852 = !DILocation(line: 146, column: 33, scope: !794)
!853 = !DILocation(line: 146, column: 42, scope: !794)
!854 = !DILocation(line: 146, column: 40, scope: !794)
!855 = !DILocation(line: 146, column: 4, scope: !794)
!856 = !DILocation(line: 146, column: 14, scope: !794)
!857 = !DILocation(line: 146, column: 21, scope: !794)
!858 = !DILocation(line: 147, column: 17, scope: !794)
!859 = !DILocation(line: 147, column: 28, scope: !794)
!860 = !DILocation(line: 147, column: 15, scope: !794)
!861 = !DILocation(line: 148, column: 4, scope: !794)
!862 = !DILocation(line: 149, column: 4, scope: !794)
!863 = !DILocation(line: 153, column: 17, scope: !794)
!864 = !DILocation(line: 153, column: 15, scope: !794)
!865 = !DILocation(line: 154, column: 4, scope: !794)
!866 = !DILocation(line: 157, column: 8, scope: !794)
!867 = !DILocation(line: 157, column: 18, scope: !794)
!868 = !DILocation(line: 157, column: 28, scope: !794)
!869 = !DILocation(line: 157, column: 34, scope: !794)
!870 = !DILocation(line: 157, column: 42, scope: !794)
!871 = !DILocation(line: 157, column: 40, scope: !794)
!872 = !DILocation(line: 157, column: 25, scope: !794)
!873 = !DILocation(line: 156, column: 4, scope: !794)
!874 = !DILocation(line: 156, column: 14, scope: !794)
!875 = !DILocation(line: 156, column: 21, scope: !794)
!876 = !DILocation(line: 158, column: 4, scope: !794)
!877 = !DILocation(line: 165, column: 13, scope: !794)
!878 = !DILocation(line: 165, column: 11, scope: !794)
!879 = !DILocation(line: 166, column: 8, scope: !880)
!880 = distinct !DILexicalBlock(scope: !794, file: !3, line: 166, column: 8)
!881 = !DILocation(line: 166, column: 8, scope: !794)
!882 = !DILocation(line: 170, column: 14, scope: !883)
!883 = distinct !DILexicalBlock(scope: !880, file: !3, line: 166, column: 28)
!884 = !DILocation(line: 170, column: 12, scope: !883)
!885 = !DILocation(line: 172, column: 9, scope: !883)
!886 = !DILocation(line: 172, column: 30, scope: !883)
!887 = !DILocation(line: 172, column: 28, scope: !883)
!888 = !DILocation(line: 171, column: 16, scope: !883)
!889 = !DILocation(line: 173, column: 4, scope: !883)
!890 = !DILocation(line: 176, column: 18, scope: !891)
!891 = distinct !DILexicalBlock(scope: !880, file: !3, line: 173, column: 11)
!892 = !DILocation(line: 176, column: 23, scope: !891)
!893 = !DILocation(line: 176, column: 36, scope: !891)
!894 = !DILocation(line: 176, column: 52, scope: !891)
!895 = !DILocation(line: 178, column: 9, scope: !891)
!896 = !DILocation(line: 177, column: 50, scope: !891)
!897 = !DILocation(line: 176, column: 16, scope: !891)
!898 = !DILocation(line: 181, column: 23, scope: !794)
!899 = !DILocation(line: 181, column: 33, scope: !794)
!900 = !DILocation(line: 181, column: 42, scope: !794)
!901 = !DILocation(line: 181, column: 40, scope: !794)
!902 = !DILocation(line: 181, column: 4, scope: !794)
!903 = !DILocation(line: 181, column: 14, scope: !794)
!904 = !DILocation(line: 181, column: 21, scope: !794)
!905 = !DILocation(line: 182, column: 4, scope: !794)
!906 = !DILocation(line: 183, column: 4, scope: !794)
!907 = !DILocation(line: 187, column: 17, scope: !794)
!908 = !DILocation(line: 187, column: 38, scope: !794)
!909 = !DILocation(line: 187, column: 44, scope: !794)
!910 = !DILocation(line: 187, column: 36, scope: !794)
!911 = !DILocation(line: 187, column: 15, scope: !794)
!912 = !DILocation(line: 189, column: 23, scope: !794)
!913 = !DILocation(line: 189, column: 33, scope: !794)
!914 = !DILocation(line: 189, column: 42, scope: !794)
!915 = !DILocation(line: 189, column: 40, scope: !794)
!916 = !DILocation(line: 189, column: 4, scope: !794)
!917 = !DILocation(line: 189, column: 14, scope: !794)
!918 = !DILocation(line: 189, column: 21, scope: !794)
!919 = !DILocation(line: 190, column: 4, scope: !794)
!920 = !DILocation(line: 191, column: 4, scope: !794)
!921 = !DILocation(line: 195, column: 18, scope: !794)
!922 = !DILocation(line: 195, column: 38, scope: !794)
!923 = !DILocation(line: 197, column: 10, scope: !794)
!924 = !DILocation(line: 197, column: 8, scope: !794)
!925 = !DILocation(line: 197, column: 31, scope: !794)
!926 = !DILocation(line: 197, column: 37, scope: !794)
!927 = !DILocation(line: 197, column: 29, scope: !794)
!928 = !DILocation(line: 195, column: 17, scope: !794)
!929 = !DILocation(line: 195, column: 15, scope: !794)
!930 = !DILocation(line: 199, column: 23, scope: !794)
!931 = !DILocation(line: 199, column: 33, scope: !794)
!932 = !DILocation(line: 199, column: 42, scope: !794)
!933 = !DILocation(line: 199, column: 40, scope: !794)
!934 = !DILocation(line: 199, column: 4, scope: !794)
!935 = !DILocation(line: 199, column: 14, scope: !794)
!936 = !DILocation(line: 199, column: 21, scope: !794)
!937 = !DILocation(line: 200, column: 4, scope: !794)
!938 = !DILocation(line: 201, column: 4, scope: !794)
!939 = !DILocation(line: 205, column: 23, scope: !794)
!940 = !DILocation(line: 205, column: 33, scope: !794)
!941 = !DILocation(line: 205, column: 42, scope: !794)
!942 = !DILocation(line: 205, column: 48, scope: !794)
!943 = !DILocation(line: 205, column: 40, scope: !794)
!944 = !DILocation(line: 205, column: 4, scope: !794)
!945 = !DILocation(line: 205, column: 14, scope: !794)
!946 = !DILocation(line: 205, column: 21, scope: !794)
!947 = !DILocation(line: 206, column: 4, scope: !794)
!948 = !DILocation(line: 216, column: 8, scope: !949)
!949 = distinct !DILexicalBlock(scope: !794, file: !3, line: 216, column: 8)
!950 = !DILocation(line: 216, column: 14, scope: !949)
!951 = !DILocation(line: 216, column: 8, scope: !794)
!952 = !DILocation(line: 217, column: 18, scope: !953)
!953 = distinct !DILexicalBlock(scope: !949, file: !3, line: 216, column: 21)
!954 = !DILocation(line: 217, column: 24, scope: !953)
!955 = !DILocation(line: 217, column: 16, scope: !953)
!956 = !DILocation(line: 218, column: 4, scope: !953)
!957 = !DILocation(line: 219, column: 22, scope: !794)
!958 = !DILocation(line: 219, column: 35, scope: !794)
!959 = !DILocation(line: 219, column: 43, scope: !794)
!960 = !DILocation(line: 220, column: 8, scope: !794)
!961 = !DILocation(line: 220, column: 14, scope: !794)
!962 = !DILocation(line: 219, column: 4, scope: !794)
!963 = !DILocation(line: 221, column: 4, scope: !794)
!964 = !DILocation(line: 227, column: 21, scope: !794)
!965 = !DILocation(line: 227, column: 11, scope: !794)
!966 = !DILocation(line: 230, column: 27, scope: !794)
!967 = !DILocation(line: 230, column: 13, scope: !794)
!968 = !DILocation(line: 230, column: 5, scope: !794)
!969 = !DILocation(line: 230, column: 25, scope: !794)
!970 = !DILocation(line: 234, column: 13, scope: !794)
!971 = !DILocation(line: 234, column: 11, scope: !794)
!972 = !DILocation(line: 235, column: 22, scope: !794)
!973 = !DILocation(line: 235, column: 30, scope: !794)
!974 = !DILocation(line: 235, column: 38, scope: !794)
!975 = !DILocation(line: 236, column: 8, scope: !794)
!976 = !DILocation(line: 236, column: 14, scope: !794)
!977 = !DILocation(line: 235, column: 4, scope: !794)
!978 = !DILocation(line: 237, column: 4, scope: !794)
!979 = !DILocation(line: 243, column: 21, scope: !794)
!980 = !DILocation(line: 243, column: 11, scope: !794)
!981 = !DILocation(line: 246, column: 26, scope: !794)
!982 = !DILocation(line: 246, column: 12, scope: !794)
!983 = !DILocation(line: 246, column: 5, scope: !794)
!984 = !DILocation(line: 246, column: 24, scope: !794)
!985 = !DILocation(line: 250, column: 13, scope: !794)
!986 = !DILocation(line: 250, column: 11, scope: !794)
!987 = !DILocation(line: 251, column: 22, scope: !794)
!988 = !DILocation(line: 251, column: 30, scope: !794)
!989 = !DILocation(line: 251, column: 38, scope: !794)
!990 = !DILocation(line: 252, column: 8, scope: !794)
!991 = !DILocation(line: 252, column: 14, scope: !794)
!992 = !DILocation(line: 251, column: 4, scope: !794)
!993 = !DILocation(line: 253, column: 4, scope: !794)
!994 = !DILocation(line: 259, column: 21, scope: !794)
!995 = !DILocation(line: 259, column: 11, scope: !794)
!996 = !DILocation(line: 262, column: 26, scope: !794)
!997 = !DILocation(line: 262, column: 12, scope: !794)
!998 = !DILocation(line: 262, column: 5, scope: !794)
!999 = !DILocation(line: 262, column: 24, scope: !794)
!1000 = !DILocation(line: 266, column: 13, scope: !794)
!1001 = !DILocation(line: 266, column: 11, scope: !794)
!1002 = !DILocation(line: 267, column: 22, scope: !794)
!1003 = !DILocation(line: 267, column: 30, scope: !794)
!1004 = !DILocation(line: 267, column: 38, scope: !794)
!1005 = !DILocation(line: 268, column: 8, scope: !794)
!1006 = !DILocation(line: 268, column: 14, scope: !794)
!1007 = !DILocation(line: 267, column: 4, scope: !794)
!1008 = !DILocation(line: 269, column: 4, scope: !794)
!1009 = !DILocation(line: 275, column: 21, scope: !794)
!1010 = !DILocation(line: 275, column: 11, scope: !794)
!1011 = !DILocation(line: 278, column: 26, scope: !794)
!1012 = !DILocation(line: 278, column: 12, scope: !794)
!1013 = !DILocation(line: 278, column: 5, scope: !794)
!1014 = !DILocation(line: 278, column: 24, scope: !794)
!1015 = !DILocation(line: 283, column: 8, scope: !794)
!1016 = !DILocation(line: 282, column: 11, scope: !794)
!1017 = !DILocation(line: 285, column: 22, scope: !794)
!1018 = !DILocation(line: 285, column: 30, scope: !794)
!1019 = !DILocation(line: 285, column: 38, scope: !794)
!1020 = !DILocation(line: 286, column: 8, scope: !794)
!1021 = !DILocation(line: 286, column: 14, scope: !794)
!1022 = !DILocation(line: 285, column: 4, scope: !794)
!1023 = !DILocation(line: 287, column: 4, scope: !794)
!1024 = !DILocation(line: 291, column: 11, scope: !794)
!1025 = !DILocation(line: 291, column: 24, scope: !794)
!1026 = !DILocation(line: 291, column: 30, scope: !794)
!1027 = !DILocation(line: 291, column: 4, scope: !794)
!1028 = !DILocation(line: 291, column: 42, scope: !794)
!1029 = !DILocation(line: 291, column: 48, scope: !794)
!1030 = !DILocation(line: 292, column: 4, scope: !794)
!1031 = !DILocation(line: 296, column: 13, scope: !794)
!1032 = !DILocation(line: 296, column: 11, scope: !794)
!1033 = !DILocation(line: 297, column: 11, scope: !794)
!1034 = !DILocation(line: 297, column: 24, scope: !794)
!1035 = !DILocation(line: 297, column: 32, scope: !794)
!1036 = !DILocation(line: 297, column: 4, scope: !794)
!1037 = !DILocation(line: 298, column: 4, scope: !794)
!1038 = !DILocation(line: 304, column: 36, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !794, file: !3, line: 304, column: 8)
!1040 = !DILocation(line: 304, column: 46, scope: !1039)
!1041 = !DILocation(line: 304, column: 9, scope: !1039)
!1042 = !DILocation(line: 304, column: 8, scope: !794)
!1043 = !DILocation(line: 305, column: 5, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 304, column: 52)
!1045 = !DILocation(line: 308, column: 4, scope: !794)
!1046 = !DILocation(line: 315, column: 36, scope: !794)
!1047 = !DILocation(line: 316, column: 8, scope: !794)
!1048 = !DILocation(line: 316, column: 14, scope: !794)
!1049 = !DILocation(line: 317, column: 8, scope: !794)
!1050 = !DILocation(line: 317, column: 21, scope: !794)
!1051 = !DILocation(line: 315, column: 8, scope: !794)
!1052 = !DILocation(line: 314, column: 4, scope: !794)
!1053 = !DILocation(line: 314, column: 14, scope: !794)
!1054 = !DILocation(line: 314, column: 21, scope: !794)
!1055 = !DILocation(line: 318, column: 4, scope: !794)
!1056 = !DILocation(line: 325, column: 13, scope: !794)
!1057 = !DILocation(line: 325, column: 11, scope: !794)
!1058 = !DILocation(line: 330, column: 36, scope: !794)
!1059 = !DILocation(line: 332, column: 11, scope: !794)
!1060 = !DILocation(line: 332, column: 22, scope: !794)
!1061 = !DILocation(line: 332, column: 10, scope: !794)
!1062 = !DILocation(line: 333, column: 14, scope: !794)
!1063 = !DILocation(line: 334, column: 9, scope: !794)
!1064 = !DILocation(line: 334, column: 15, scope: !794)
!1065 = !DILocation(line: 333, column: 29, scope: !794)
!1066 = !DILocation(line: 331, column: 8, scope: !794)
!1067 = !DILocation(line: 335, column: 8, scope: !794)
!1068 = !DILocation(line: 335, column: 21, scope: !794)
!1069 = !DILocation(line: 336, column: 8, scope: !794)
!1070 = !DILocation(line: 330, column: 8, scope: !794)
!1071 = !DILocation(line: 329, column: 4, scope: !794)
!1072 = !DILocation(line: 329, column: 14, scope: !794)
!1073 = !DILocation(line: 329, column: 21, scope: !794)
!1074 = !DILocation(line: 337, column: 4, scope: !794)
!1075 = !DILocation(line: 344, column: 31, scope: !794)
!1076 = !DILocation(line: 345, column: 10, scope: !794)
!1077 = !DILocation(line: 344, column: 8, scope: !794)
!1078 = !DILocation(line: 343, column: 15, scope: !794)
!1079 = !DILocation(line: 346, column: 8, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !794, file: !3, line: 346, column: 8)
!1081 = !DILocation(line: 346, column: 8, scope: !794)
!1082 = !DILocation(line: 347, column: 26, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 346, column: 20)
!1084 = !DILocation(line: 347, column: 37, scope: !1083)
!1085 = !DILocation(line: 347, column: 5, scope: !1083)
!1086 = !DILocation(line: 347, column: 15, scope: !1083)
!1087 = !DILocation(line: 347, column: 22, scope: !1083)
!1088 = !DILocation(line: 348, column: 4, scope: !1083)
!1089 = !DILocation(line: 350, column: 13, scope: !794)
!1090 = !DILocation(line: 350, column: 11, scope: !794)
!1091 = !DILocation(line: 351, column: 4, scope: !794)
!1092 = !DILocation(line: 352, column: 4, scope: !794)
!1093 = !DILocation(line: 358, column: 4, scope: !794)
!1094 = !DILocation(line: 361, column: 31, scope: !794)
!1095 = !DILocation(line: 361, column: 39, scope: !794)
!1096 = !DILocation(line: 361, column: 8, scope: !794)
!1097 = !DILocation(line: 360, column: 15, scope: !794)
!1098 = !DILocation(line: 362, column: 8, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !794, file: !3, line: 362, column: 8)
!1100 = !DILocation(line: 362, column: 8, scope: !794)
!1101 = !DILocation(line: 363, column: 26, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 362, column: 20)
!1103 = !DILocation(line: 363, column: 37, scope: !1102)
!1104 = !DILocation(line: 363, column: 5, scope: !1102)
!1105 = !DILocation(line: 363, column: 15, scope: !1102)
!1106 = !DILocation(line: 363, column: 22, scope: !1102)
!1107 = !DILocation(line: 364, column: 4, scope: !1102)
!1108 = !DILocation(line: 366, column: 13, scope: !794)
!1109 = !DILocation(line: 366, column: 11, scope: !794)
!1110 = !DILocation(line: 367, column: 4, scope: !794)
!1111 = !DILocation(line: 368, column: 4, scope: !794)
!1112 = !DILocation(line: 374, column: 12, scope: !794)
!1113 = !DILocation(line: 374, column: 18, scope: !794)
!1114 = !DILocation(line: 374, column: 4, scope: !794)
!1115 = !DILocation(line: 377, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 377, column: 9)
!1117 = distinct !DILexicalBlock(scope: !794, file: !3, line: 374, column: 35)
!1118 = !DILocation(line: 377, column: 32, scope: !1116)
!1119 = !DILocation(line: 377, column: 38, scope: !1116)
!1120 = !DILocation(line: 377, column: 29, scope: !1116)
!1121 = !DILocation(line: 377, column: 9, scope: !1117)
!1122 = !DILocation(line: 378, column: 6, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 377, column: 45)
!1124 = !DILocation(line: 380, column: 5, scope: !1117)
!1125 = !DILocation(line: 384, column: 9, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 384, column: 9)
!1127 = !DILocation(line: 384, column: 30, scope: !1126)
!1128 = !DILocation(line: 384, column: 36, scope: !1126)
!1129 = !DILocation(line: 384, column: 27, scope: !1126)
!1130 = !DILocation(line: 384, column: 9, scope: !1117)
!1131 = !DILocation(line: 385, column: 6, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 384, column: 43)
!1133 = !DILocation(line: 387, column: 5, scope: !1117)
!1134 = !DILocation(line: 391, column: 5, scope: !1117)
!1135 = !DILocation(line: 393, column: 5, scope: !1117)
!1136 = !DILocation(line: 395, column: 4, scope: !794)
!1137 = !DILocation(line: 399, column: 4, scope: !794)
!1138 = !DILocation(line: 400, column: 4, scope: !794)
!1139 = !DILocation(line: 403, column: 8, scope: !786)
!1140 = !DILocation(line: 404, column: 7, scope: !786)
!1141 = distinct !{!1141, !783, !1142}
!1142 = !DILocation(line: 405, column: 2, scope: !42)
!1143 = !DILabel(scope: !42, name: "exit", file: !3, line: 407)
!1144 = !DILocation(line: 407, column: 1, scope: !42)
!1145 = !DILocation(line: 408, column: 7, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !42, file: !3, line: 408, column: 6)
!1147 = !DILocation(line: 408, column: 6, scope: !42)
!1148 = !DILocation(line: 413, column: 7, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 408, column: 19)
!1150 = !DILocation(line: 412, column: 22, scope: !1149)
!1151 = !DILocation(line: 412, column: 3, scope: !1149)
!1152 = !DILocation(line: 412, column: 13, scope: !1149)
!1153 = !DILocation(line: 412, column: 20, scope: !1149)
!1154 = !DILocation(line: 414, column: 2, scope: !1149)
!1155 = !DILocation(line: 415, column: 2, scope: !42)
!1156 = !DILocation(line: 416, column: 1, scope: !42)
!1157 = distinct !DISubprogram(name: "acpi_rs_convert_resource_to_aml", scope: !3, file: !3, line: 434, type: !43, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1158 = !DILocalVariable(name: "resource", arg: 1, scope: !1157, file: !3, line: 434, type: !45)
!1159 = !DILocation(line: 434, column: 55, scope: !1157)
!1160 = !DILocalVariable(name: "aml", arg: 2, scope: !1157, file: !3, line: 435, type: !409)
!1161 = !DILocation(line: 435, column: 25, scope: !1157)
!1162 = !DILocalVariable(name: "info", arg: 3, scope: !1157, file: !3, line: 436, type: !735)
!1163 = !DILocation(line: 436, column: 33, scope: !1157)
!1164 = !DILocalVariable(name: "source", scope: !1157, file: !3, line: 438, type: !17)
!1165 = !DILocation(line: 438, column: 8, scope: !1157)
!1166 = !DILocalVariable(name: "destination", scope: !1157, file: !3, line: 439, type: !17)
!1167 = !DILocation(line: 439, column: 8, scope: !1157)
!1168 = !DILocalVariable(name: "target", scope: !1157, file: !3, line: 440, type: !26)
!1169 = !DILocation(line: 440, column: 8, scope: !1157)
!1170 = !DILocalVariable(name: "aml_length", scope: !1157, file: !3, line: 441, type: !1171)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_rsdesc_size", file: !31, line: 17, baseType: !8)
!1172 = !DILocation(line: 441, column: 19, scope: !1157)
!1173 = !DILocalVariable(name: "count", scope: !1157, file: !3, line: 442, type: !19)
!1174 = !DILocation(line: 442, column: 5, scope: !1157)
!1175 = !DILocalVariable(name: "temp16", scope: !1157, file: !3, line: 443, type: !22)
!1176 = !DILocation(line: 443, column: 6, scope: !1157)
!1177 = !DILocalVariable(name: "item_count", scope: !1157, file: !3, line: 444, type: !22)
!1178 = !DILocation(line: 444, column: 6, scope: !1157)
!1179 = !DILocation(line: 448, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 448, column: 6)
!1181 = !DILocation(line: 448, column: 6, scope: !1157)
!1182 = !DILocation(line: 449, column: 3, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 448, column: 13)
!1184 = !DILocation(line: 456, column: 10, scope: !1157)
!1185 = !DILocation(line: 456, column: 8, scope: !1157)
!1186 = !DILocation(line: 458, column: 2, scope: !1157)
!1187 = !DILocation(line: 458, column: 9, scope: !1157)
!1188 = !DILocation(line: 463, column: 12, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 458, column: 16)
!1190 = !DILocation(line: 463, column: 10, scope: !1189)
!1191 = !DILocation(line: 464, column: 17, scope: !1189)
!1192 = !DILocation(line: 464, column: 15, scope: !1189)
!1193 = !DILocation(line: 466, column: 11, scope: !1189)
!1194 = !DILocation(line: 466, column: 17, scope: !1189)
!1195 = !DILocation(line: 466, column: 3, scope: !1189)
!1196 = !DILocation(line: 469, column: 11, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 466, column: 25)
!1198 = !DILocation(line: 469, column: 4, scope: !1197)
!1199 = !DILocation(line: 469, column: 19, scope: !1197)
!1200 = !DILocation(line: 470, column: 17, scope: !1197)
!1201 = !DILocation(line: 470, column: 15, scope: !1197)
!1202 = !DILocation(line: 471, column: 32, scope: !1197)
!1203 = !DILocation(line: 472, column: 11, scope: !1197)
!1204 = !DILocation(line: 472, column: 23, scope: !1197)
!1205 = !DILocation(line: 471, column: 4, scope: !1197)
!1206 = !DILocation(line: 473, column: 4, scope: !1197)
!1207 = !DILocation(line: 476, column: 4, scope: !1197)
!1208 = !DILocation(line: 482, column: 4, scope: !1197)
!1209 = !DILocation(line: 483, column: 4, scope: !1197)
!1210 = !DILocation(line: 489, column: 4, scope: !1197)
!1211 = !DILocation(line: 492, column: 4, scope: !1197)
!1212 = !DILocation(line: 498, column: 4, scope: !1197)
!1213 = !DILocation(line: 501, column: 4, scope: !1197)
!1214 = !DILocation(line: 507, column: 4, scope: !1197)
!1215 = !DILocation(line: 510, column: 4, scope: !1197)
!1216 = !DILocation(line: 514, column: 17, scope: !1197)
!1217 = !DILocation(line: 514, column: 15, scope: !1197)
!1218 = !DILocation(line: 515, column: 4, scope: !1197)
!1219 = !DILocation(line: 518, column: 9, scope: !1197)
!1220 = !DILocation(line: 518, column: 23, scope: !1197)
!1221 = !DILocation(line: 518, column: 29, scope: !1197)
!1222 = !DILocation(line: 518, column: 38, scope: !1197)
!1223 = !DILocation(line: 518, column: 49, scope: !1197)
!1224 = !DILocation(line: 518, column: 35, scope: !1197)
!1225 = !DILocation(line: 518, column: 20, scope: !1197)
!1226 = !DILocation(line: 517, column: 17, scope: !1197)
!1227 = !DILocation(line: 517, column: 15, scope: !1197)
!1228 = !DILocation(line: 519, column: 4, scope: !1197)
!1229 = !DILocation(line: 523, column: 17, scope: !1197)
!1230 = !DILocation(line: 523, column: 15, scope: !1197)
!1231 = !DILocation(line: 524, column: 24, scope: !1197)
!1232 = !DILocation(line: 524, column: 37, scope: !1197)
!1233 = !DILocation(line: 524, column: 35, scope: !1197)
!1234 = !DILocation(line: 524, column: 17, scope: !1197)
!1235 = !DILocation(line: 524, column: 15, scope: !1197)
!1236 = !DILocation(line: 525, column: 32, scope: !1197)
!1237 = !DILocation(line: 525, column: 44, scope: !1197)
!1238 = !DILocation(line: 525, column: 4, scope: !1197)
!1239 = !DILocation(line: 526, column: 4, scope: !1197)
!1240 = !DILocation(line: 530, column: 17, scope: !1197)
!1241 = !DILocation(line: 530, column: 15, scope: !1197)
!1242 = !DILocation(line: 531, column: 4, scope: !1197)
!1243 = !DILocation(line: 533, column: 23, scope: !1197)
!1244 = !DILocation(line: 533, column: 36, scope: !1197)
!1245 = !DILocation(line: 533, column: 47, scope: !1197)
!1246 = !DILocation(line: 533, column: 34, scope: !1197)
!1247 = !DILocation(line: 533, column: 17, scope: !1197)
!1248 = !DILocation(line: 533, column: 15, scope: !1197)
!1249 = !DILocation(line: 534, column: 13, scope: !1197)
!1250 = !DILocation(line: 534, column: 11, scope: !1197)
!1251 = !DILocation(line: 535, column: 4, scope: !1197)
!1252 = !DILocation(line: 536, column: 32, scope: !1197)
!1253 = !DILocation(line: 536, column: 44, scope: !1197)
!1254 = !DILocation(line: 536, column: 4, scope: !1197)
!1255 = !DILocation(line: 537, column: 4, scope: !1197)
!1256 = !DILocation(line: 541, column: 17, scope: !1197)
!1257 = !DILocation(line: 541, column: 15, scope: !1197)
!1258 = !DILocation(line: 542, column: 4, scope: !1197)
!1259 = !DILocation(line: 545, column: 14, scope: !1197)
!1260 = !DILocation(line: 545, column: 28, scope: !1197)
!1261 = !DILocation(line: 545, column: 34, scope: !1197)
!1262 = !DILocation(line: 545, column: 42, scope: !1197)
!1263 = !DILocation(line: 545, column: 40, scope: !1197)
!1264 = !DILocation(line: 545, column: 25, scope: !1197)
!1265 = !DILocation(line: 545, column: 8, scope: !1197)
!1266 = !DILocation(line: 544, column: 15, scope: !1197)
!1267 = !DILocation(line: 546, column: 32, scope: !1197)
!1268 = !DILocation(line: 546, column: 44, scope: !1197)
!1269 = !DILocation(line: 546, column: 4, scope: !1197)
!1270 = !DILocation(line: 547, column: 4, scope: !1197)
!1271 = !DILocation(line: 553, column: 17, scope: !1197)
!1272 = !DILocation(line: 553, column: 15, scope: !1197)
!1273 = !DILocation(line: 554, column: 4, scope: !1197)
!1274 = !DILocation(line: 558, column: 23, scope: !1197)
!1275 = !DILocation(line: 558, column: 36, scope: !1197)
!1276 = !DILocation(line: 558, column: 34, scope: !1197)
!1277 = !DILocation(line: 558, column: 17, scope: !1197)
!1278 = !DILocation(line: 558, column: 15, scope: !1197)
!1279 = !DILocation(line: 559, column: 13, scope: !1197)
!1280 = !DILocation(line: 559, column: 11, scope: !1197)
!1281 = !DILocation(line: 563, column: 4, scope: !1197)
!1282 = !DILocation(line: 565, column: 32, scope: !1197)
!1283 = !DILocation(line: 565, column: 44, scope: !1197)
!1284 = !DILocation(line: 565, column: 4, scope: !1197)
!1285 = !DILocation(line: 566, column: 4, scope: !1197)
!1286 = !DILocation(line: 570, column: 17, scope: !1197)
!1287 = !DILocation(line: 570, column: 15, scope: !1197)
!1288 = !DILocation(line: 571, column: 4, scope: !1197)
!1289 = !DILocation(line: 572, column: 23, scope: !1197)
!1290 = !DILocation(line: 572, column: 36, scope: !1197)
!1291 = !DILocation(line: 572, column: 34, scope: !1197)
!1292 = !DILocation(line: 572, column: 17, scope: !1197)
!1293 = !DILocation(line: 572, column: 15, scope: !1197)
!1294 = !DILocation(line: 573, column: 32, scope: !1197)
!1295 = !DILocation(line: 573, column: 44, scope: !1197)
!1296 = !DILocation(line: 573, column: 4, scope: !1197)
!1297 = !DILocation(line: 574, column: 4, scope: !1197)
!1298 = !DILocation(line: 578, column: 17, scope: !1197)
!1299 = !DILocation(line: 578, column: 15, scope: !1197)
!1300 = !DILocation(line: 579, column: 23, scope: !1197)
!1301 = !DILocation(line: 579, column: 36, scope: !1197)
!1302 = !DILocation(line: 579, column: 34, scope: !1197)
!1303 = !DILocation(line: 579, column: 17, scope: !1197)
!1304 = !DILocation(line: 579, column: 15, scope: !1197)
!1305 = !DILocation(line: 580, column: 32, scope: !1197)
!1306 = !DILocation(line: 580, column: 44, scope: !1197)
!1307 = !DILocation(line: 580, column: 4, scope: !1197)
!1308 = !DILocation(line: 581, column: 4, scope: !1197)
!1309 = !DILocation(line: 585, column: 32, scope: !1197)
!1310 = !DILocation(line: 585, column: 38, scope: !1197)
!1311 = !DILocation(line: 585, column: 45, scope: !1197)
!1312 = !DILocation(line: 585, column: 4, scope: !1197)
!1313 = !DILocation(line: 586, column: 4, scope: !1197)
!1314 = !DILocation(line: 593, column: 8, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 593, column: 8)
!1316 = !DILocation(line: 593, column: 14, scope: !1315)
!1317 = !DILocation(line: 593, column: 8, scope: !1197)
!1318 = !DILocation(line: 594, column: 18, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 593, column: 21)
!1320 = !DILocation(line: 594, column: 24, scope: !1319)
!1321 = !DILocation(line: 594, column: 16, scope: !1319)
!1322 = !DILocation(line: 595, column: 4, scope: !1319)
!1323 = !DILocation(line: 596, column: 22, scope: !1197)
!1324 = !DILocation(line: 596, column: 35, scope: !1197)
!1325 = !DILocation(line: 596, column: 43, scope: !1197)
!1326 = !DILocation(line: 597, column: 8, scope: !1197)
!1327 = !DILocation(line: 597, column: 14, scope: !1197)
!1328 = !DILocation(line: 596, column: 4, scope: !1197)
!1329 = !DILocation(line: 598, column: 4, scope: !1197)
!1330 = !DILocation(line: 602, column: 26, scope: !1197)
!1331 = !DILocation(line: 602, column: 16, scope: !1197)
!1332 = !DILocation(line: 605, column: 22, scope: !1197)
!1333 = !DILocation(line: 605, column: 14, scope: !1197)
!1334 = !DILocation(line: 605, column: 13, scope: !1197)
!1335 = !DILocation(line: 605, column: 11, scope: !1197)
!1336 = !DILocation(line: 606, column: 22, scope: !1197)
!1337 = !DILocation(line: 606, column: 35, scope: !1197)
!1338 = !DILocation(line: 606, column: 43, scope: !1197)
!1339 = !DILocation(line: 607, column: 8, scope: !1197)
!1340 = !DILocation(line: 607, column: 14, scope: !1197)
!1341 = !DILocation(line: 606, column: 4, scope: !1197)
!1342 = !DILocation(line: 608, column: 4, scope: !1197)
!1343 = !DILocation(line: 614, column: 26, scope: !1197)
!1344 = !DILocation(line: 614, column: 16, scope: !1197)
!1345 = !DILocation(line: 617, column: 21, scope: !1197)
!1346 = !DILocation(line: 617, column: 14, scope: !1197)
!1347 = !DILocation(line: 617, column: 13, scope: !1197)
!1348 = !DILocation(line: 617, column: 11, scope: !1197)
!1349 = !DILocation(line: 618, column: 22, scope: !1197)
!1350 = !DILocation(line: 618, column: 35, scope: !1197)
!1351 = !DILocation(line: 618, column: 43, scope: !1197)
!1352 = !DILocation(line: 619, column: 8, scope: !1197)
!1353 = !DILocation(line: 619, column: 14, scope: !1197)
!1354 = !DILocation(line: 618, column: 4, scope: !1197)
!1355 = !DILocation(line: 620, column: 4, scope: !1197)
!1356 = !DILocation(line: 624, column: 26, scope: !1197)
!1357 = !DILocation(line: 624, column: 16, scope: !1197)
!1358 = !DILocation(line: 627, column: 21, scope: !1197)
!1359 = !DILocation(line: 627, column: 14, scope: !1197)
!1360 = !DILocation(line: 627, column: 13, scope: !1197)
!1361 = !DILocation(line: 627, column: 11, scope: !1197)
!1362 = !DILocation(line: 628, column: 22, scope: !1197)
!1363 = !DILocation(line: 628, column: 35, scope: !1197)
!1364 = !DILocation(line: 628, column: 43, scope: !1197)
!1365 = !DILocation(line: 629, column: 8, scope: !1197)
!1366 = !DILocation(line: 629, column: 14, scope: !1197)
!1367 = !DILocation(line: 628, column: 4, scope: !1197)
!1368 = !DILocation(line: 630, column: 4, scope: !1197)
!1369 = !DILocation(line: 634, column: 26, scope: !1197)
!1370 = !DILocation(line: 634, column: 16, scope: !1197)
!1371 = !DILocation(line: 637, column: 21, scope: !1197)
!1372 = !DILocation(line: 637, column: 14, scope: !1197)
!1373 = !DILocation(line: 637, column: 13, scope: !1197)
!1374 = !DILocation(line: 637, column: 11, scope: !1197)
!1375 = !DILocation(line: 638, column: 22, scope: !1197)
!1376 = !DILocation(line: 638, column: 35, scope: !1197)
!1377 = !DILocation(line: 638, column: 43, scope: !1197)
!1378 = !DILocation(line: 639, column: 8, scope: !1197)
!1379 = !DILocation(line: 639, column: 14, scope: !1197)
!1380 = !DILocation(line: 638, column: 4, scope: !1197)
!1381 = !DILocation(line: 640, column: 4, scope: !1197)
!1382 = !DILocation(line: 646, column: 31, scope: !1197)
!1383 = !DILocation(line: 646, column: 36, scope: !1197)
!1384 = !DILocation(line: 646, column: 4, scope: !1197)
!1385 = !DILocation(line: 647, column: 4, scope: !1197)
!1386 = !DILocation(line: 654, column: 36, scope: !1197)
!1387 = !DILocation(line: 656, column: 8, scope: !1197)
!1388 = !DILocation(line: 655, column: 8, scope: !1197)
!1389 = !DILocation(line: 656, column: 20, scope: !1197)
!1390 = !DILocation(line: 654, column: 8, scope: !1197)
!1391 = !DILocation(line: 653, column: 15, scope: !1197)
!1392 = !DILocation(line: 657, column: 32, scope: !1197)
!1393 = !DILocation(line: 657, column: 44, scope: !1197)
!1394 = !DILocation(line: 657, column: 4, scope: !1197)
!1395 = !DILocation(line: 658, column: 4, scope: !1197)
!1396 = !DILocation(line: 666, column: 36, scope: !1197)
!1397 = !DILocation(line: 666, column: 41, scope: !1197)
!1398 = !DILocation(line: 666, column: 47, scope: !1197)
!1399 = !DILocation(line: 667, column: 8, scope: !1197)
!1400 = !DILocation(line: 666, column: 8, scope: !1197)
!1401 = !DILocation(line: 665, column: 15, scope: !1197)
!1402 = !DILocation(line: 668, column: 32, scope: !1197)
!1403 = !DILocation(line: 668, column: 44, scope: !1197)
!1404 = !DILocation(line: 668, column: 4, scope: !1197)
!1405 = !DILocation(line: 669, column: 4, scope: !1197)
!1406 = !DILocation(line: 675, column: 4, scope: !1197)
!1407 = !DILocation(line: 681, column: 4, scope: !1197)
!1408 = !DILocation(line: 688, column: 31, scope: !1197)
!1409 = !DILocation(line: 689, column: 11, scope: !1197)
!1410 = !DILocation(line: 689, column: 10, scope: !1197)
!1411 = !DILocation(line: 688, column: 8, scope: !1197)
!1412 = !DILocation(line: 687, column: 11, scope: !1197)
!1413 = !DILocation(line: 691, column: 4, scope: !1197)
!1414 = !DILocation(line: 692, column: 4, scope: !1197)
!1415 = !DILocation(line: 698, column: 8, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 698, column: 8)
!1417 = !DILocation(line: 698, column: 22, scope: !1416)
!1418 = !DILocation(line: 698, column: 28, scope: !1416)
!1419 = !DILocation(line: 698, column: 19, scope: !1416)
!1420 = !DILocation(line: 698, column: 8, scope: !1197)
!1421 = !DILocation(line: 699, column: 5, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 698, column: 35)
!1423 = !DILocation(line: 701, column: 4, scope: !1197)
!1424 = !DILocation(line: 707, column: 12, scope: !1197)
!1425 = !DILocation(line: 707, column: 4, scope: !1197)
!1426 = !DILocation(line: 710, column: 10, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 710, column: 9)
!1428 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 707, column: 34)
!1429 = !DILocation(line: 710, column: 9, scope: !1427)
!1430 = !DILocation(line: 712, column: 9, scope: !1427)
!1431 = !DILocation(line: 711, column: 31, scope: !1427)
!1432 = !DILocation(line: 710, column: 9, scope: !1428)
!1433 = !DILocation(line: 713, column: 6, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 712, column: 30)
!1435 = !DILocation(line: 715, column: 5, scope: !1428)
!1436 = !DILocation(line: 719, column: 5, scope: !1428)
!1437 = !DILocation(line: 721, column: 5, scope: !1428)
!1438 = !DILocation(line: 723, column: 4, scope: !1197)
!1439 = !DILocation(line: 729, column: 9, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 729, column: 8)
!1441 = !DILocation(line: 729, column: 8, scope: !1440)
!1442 = !DILocation(line: 731, column: 8, scope: !1440)
!1443 = !DILocation(line: 730, column: 30, scope: !1440)
!1444 = !DILocation(line: 729, column: 8, scope: !1197)
!1445 = !DILocation(line: 732, column: 5, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 731, column: 29)
!1447 = !DILocation(line: 734, column: 4, scope: !1197)
!1448 = !DILocation(line: 738, column: 4, scope: !1197)
!1449 = !DILocation(line: 739, column: 4, scope: !1197)
!1450 = !DILocation(line: 742, column: 8, scope: !1189)
!1451 = !DILocation(line: 743, column: 7, scope: !1189)
!1452 = distinct !{!1452, !1186, !1453}
!1453 = !DILocation(line: 744, column: 2, scope: !1157)
!1454 = !DILabel(scope: !1157, name: "exit", file: !3, line: 746)
!1455 = !DILocation(line: 746, column: 1, scope: !1157)
!1456 = !DILocation(line: 747, column: 2, scope: !1157)
!1457 = !DILocation(line: 748, column: 1, scope: !1157)
