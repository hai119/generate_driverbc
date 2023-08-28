; ModuleID = '../bcout/drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.llvm.bc'
source_filename = "drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.firmware = type { i64, i8*, i8* }
%struct.mlxfw_mfa2_file = type { %struct.firmware*, %struct.mlxfw_mfa2_tlv*, i16, %struct.mlxfw_mfa2_tlv*, i16, i8*, i32 }
%struct.mlxfw_mfa2_tlv = type { i8, i8, i16, [0 x i8] }
%struct.mlxfw_mfa2_tlv_package_descriptor = type { i16, i16, i32, i32, i32, i32, [3 x i8], i8, i32 }
%struct.mlxfw_mfa2_tlv_multi = type { i16, i16 }
%struct.mlxfw_mfa2_tlv_psid = type { [0 x i8] }
%struct.mlxfw_mfa2_component = type { i16, i32, i8* }
%struct.mlxfw_mfa2_tlv_component_descriptor = type { i16, i16, i32, i32, i32 }
%struct.mlxfw_mfa2_comp_data = type { %struct.mlxfw_mfa2_component, [0 x i8] }
%struct.mlxfw_mfa2_tlv_component_ptr = type { i16, i16, i32 }
%struct.xz_dec = type opaque
%struct.xz_buf = type { i8*, i64, i64, i8*, i64, i64 }

@mlxfw_mfa2_fingerprint = internal constant [17 x i8] c"MLNX.MFA2.XZ.00!\00", align 16, !dbg !0
@.str = private unnamed_addr constant [54 x i8] c"\013mlxfw_mfa2: Could not parse package descriptor TLV\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"\013mlxfw_mfa2: First TLV is not of valid multi type\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\013mlxfw_mfa2: First device TLV is not valid\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"\013mlxfw_mfa2: Component block is out side the file\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\013mlxfw_mfa2: Component block size is too big\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"\013mlxfw_mfa2: Component could not be reached in CB\0A\00", align 1
@mlxfw_mfa2_comp_magic = internal constant [17 x i8] c"#BIN.COMPONENT!#\00", align 16, !dbg !96
@.str.6 = private unnamed_addr constant [41 x i8] c"\013mlxfw_mfa2: Component has wrong magic\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"\013mlxfw_mfa2: Device TLV error\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"\013mlxfw_mfa2: Device %d is not a valid TLV error\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"\013mlxfw_mfa2: Device %d does not have PSID\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"\013mlxfw_mfa2: Device %d PSID TLV is not valid\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"  -- Device PSID \00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"\013mlxfw_mfa2: Device %d has no components\0A\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"\013mlxfw_mfa2: Device %d COMPONENT_PTR TLV is not valid\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"\013mlxfw_mfa2: Multi has invalid child\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"\013mlxfw_mfa2: Component %d is not a valid TLV error\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"\013mlxfw_mfa2: Component descriptor %d multi TLV error\0A\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"\013mlxfw_mfa2: Component %d does not have a valid descriptor\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"\013mlxfw_mfa2: xz section too short\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"\013mlxfw_mfa2: xz no memory\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"\013mlxfw_mfa2: xz file corrupted\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"\013mlxfw_mfa2: xz format not found\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"\013mlxfw_mfa2: unsupported xz option\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"\013mlxfw_mfa2: xz dictionary too small\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"\013mlxfw_mfa2: xz error %d\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @mlxfw_mfa2_check(%struct.firmware* %fw) #0 !dbg !107 {
entry:
  %retval = alloca i1, align 1
  %fw.addr = alloca %struct.firmware*, align 8
  store %struct.firmware* %fw, %struct.firmware** %fw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw.addr, metadata !122, metadata !DIExpression()), !dbg !123
  %0 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !124
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %0, i32 0, i32 0, !dbg !126
  %1 = load i64, i64* %size, align 8, !dbg !126
  %cmp = icmp ult i64 %1, 17, !dbg !127
  br i1 %cmp, label %if.then, label %if.end, !dbg !128

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !129
  br label %return, !dbg !129

if.end:                                           ; preds = %entry
  %2 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !130
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %2, i32 0, i32 1, !dbg !131
  %3 = load i8*, i8** %data, align 8, !dbg !131
  %call = call i32 @memcmp(i8* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @mlxfw_mfa2_fingerprint, i64 0, i64 0), i64 16) #7, !dbg !132
  %cmp1 = icmp eq i32 %call, 0, !dbg !133
  store i1 %cmp1, i1* %retval, align 1, !dbg !134
  br label %return, !dbg !134

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, i1* %retval, align 1, !dbg !135
  ret i1 %4, !dbg !135
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mlxfw_mfa2_file* @mlxfw_mfa2_file_init(%struct.firmware* %fw) #0 !dbg !136 {
entry:
  %retval = alloca %struct.mlxfw_mfa2_file*, align 8
  %fw.addr = alloca %struct.firmware*, align 8
  %pd = alloca %struct.mlxfw_mfa2_tlv_package_descriptor*, align 8
  %multi = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %multi_child = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %first_tlv = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %mfa2_file = alloca %struct.mlxfw_mfa2_file*, align 8
  %first_tlv_ptr = alloca i8*, align 8
  %cb_top_ptr = alloca i8*, align 8
  store %struct.firmware* %fw, %struct.firmware** %fw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw.addr, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, metadata !163, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_multi** %multi, metadata !181, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %multi_child, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %first_tlv, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata i8** %first_tlv_ptr, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i8** %cb_top_ptr, metadata !197, metadata !DIExpression()), !dbg !198
  %call = call i8* @kcalloc(i64 1, i64 56, i32 3264) #7, !dbg !199
  %0 = bitcast i8* %call to %struct.mlxfw_mfa2_file*, !dbg !199
  store %struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !200
  %1 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !201
  %tobool = icmp ne %struct.mlxfw_mfa2_file* %1, null, !dbg !201
  br i1 %tobool, label %if.end, label %if.then, !dbg !203

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #7, !dbg !204
  %2 = bitcast i8* %call1 to %struct.mlxfw_mfa2_file*, !dbg !204
  store %struct.mlxfw_mfa2_file* %2, %struct.mlxfw_mfa2_file** %retval, align 8, !dbg !205
  br label %return, !dbg !205

if.end:                                           ; preds = %entry
  %3 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !206
  %4 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !207
  %fw2 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %4, i32 0, i32 0, !dbg !208
  store %struct.firmware* %3, %struct.firmware** %fw2, align 8, !dbg !209
  %5 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !210
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %5, i32 0, i32 1, !dbg !211
  %6 = load i8*, i8** %data, align 8, !dbg !211
  %add.ptr = getelementptr i8, i8* %6, i64 16, !dbg !212
  store i8* %add.ptr, i8** %first_tlv_ptr, align 8, !dbg !213
  %7 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !214
  %8 = load i8*, i8** %first_tlv_ptr, align 8, !dbg !215
  %call3 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_get(%struct.mlxfw_mfa2_file* %7, i8* %8) #7, !dbg !216
  store %struct.mlxfw_mfa2_tlv* %call3, %struct.mlxfw_mfa2_tlv** %first_tlv, align 8, !dbg !217
  %9 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %first_tlv, align 8, !dbg !218
  %tobool4 = icmp ne %struct.mlxfw_mfa2_tlv* %9, null, !dbg !218
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !220

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0)) #8, !dbg !221
  br label %err_out, !dbg !223

if.end7:                                          ; preds = %if.end
  %10 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !224
  %11 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %first_tlv, align 8, !dbg !225
  %call8 = call %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file* %10, %struct.mlxfw_mfa2_tlv* %11) #7, !dbg !226
  store %struct.mlxfw_mfa2_tlv_multi* %call8, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !227
  %12 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !228
  %tobool9 = icmp ne %struct.mlxfw_mfa2_tlv_multi* %12, null, !dbg !228
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !230

if.then10:                                        ; preds = %if.end7
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !231
  br label %err_out, !dbg !233

if.end12:                                         ; preds = %if.end7
  %13 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !234
  %14 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !235
  %call13 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file* %13, %struct.mlxfw_mfa2_tlv_multi* %14) #7, !dbg !236
  store %struct.mlxfw_mfa2_tlv* %call13, %struct.mlxfw_mfa2_tlv** %multi_child, align 8, !dbg !237
  %15 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %multi_child, align 8, !dbg !238
  %tobool14 = icmp ne %struct.mlxfw_mfa2_tlv* %15, null, !dbg !238
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !240

if.then15:                                        ; preds = %if.end12
  br label %err_out, !dbg !241

if.end16:                                         ; preds = %if.end12
  %16 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !242
  %17 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %multi_child, align 8, !dbg !243
  %call17 = call %struct.mlxfw_mfa2_tlv_package_descriptor* @mlxfw_mfa2_tlv_package_descriptor_get(%struct.mlxfw_mfa2_file* %16, %struct.mlxfw_mfa2_tlv* %17) #7, !dbg !244
  store %struct.mlxfw_mfa2_tlv_package_descriptor* %call17, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !245
  %18 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !246
  %tobool18 = icmp ne %struct.mlxfw_mfa2_tlv_package_descriptor* %18, null, !dbg !246
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !248

if.then19:                                        ; preds = %if.end16
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0)) #8, !dbg !249
  br label %err_out, !dbg !251

if.end21:                                         ; preds = %if.end16
  %19 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !252
  %20 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %first_tlv, align 8, !dbg !253
  %call22 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_next(%struct.mlxfw_mfa2_file* %19, %struct.mlxfw_mfa2_tlv* %20) #7, !dbg !254
  %21 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !255
  %first_dev = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %21, i32 0, i32 1, !dbg !256
  store %struct.mlxfw_mfa2_tlv* %call22, %struct.mlxfw_mfa2_tlv** %first_dev, align 8, !dbg !257
  %22 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !258
  %first_dev23 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %22, i32 0, i32 1, !dbg !260
  %23 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %first_dev23, align 8, !dbg !260
  %tobool24 = icmp ne %struct.mlxfw_mfa2_tlv* %23, null, !dbg !258
  br i1 %tobool24, label %if.end27, label %if.then25, !dbg !261

if.then25:                                        ; preds = %if.end21
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !262
  br label %err_out, !dbg !264

if.end27:                                         ; preds = %if.end21
  %24 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !265
  %num_devices = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %24, i32 0, i32 1, !dbg !265
  %25 = load i16, i16* %num_devices, align 1, !dbg !265
  %26 = call i1 @llvm.is.constant.i16(i16 %25), !dbg !265
  br i1 %26, label %cond.true, label %cond.false, !dbg !265

cond.true:                                        ; preds = %if.end27
  %27 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !265
  %num_devices28 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %27, i32 0, i32 1, !dbg !265
  %28 = load i16, i16* %num_devices28, align 1, !dbg !265
  %conv = zext i16 %28 to i32, !dbg !265
  %and = and i32 %conv, 255, !dbg !265
  %shl = shl i32 %and, 8, !dbg !265
  %29 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !265
  %num_devices29 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %29, i32 0, i32 1, !dbg !265
  %30 = load i16, i16* %num_devices29, align 1, !dbg !265
  %conv30 = zext i16 %30 to i32, !dbg !265
  %and31 = and i32 %conv30, 65280, !dbg !265
  %shr = ashr i32 %and31, 8, !dbg !265
  %or = or i32 %shl, %shr, !dbg !265
  %conv32 = trunc i32 %or to i16, !dbg !265
  %conv33 = zext i16 %conv32 to i32, !dbg !265
  br label %cond.end, !dbg !265

cond.false:                                       ; preds = %if.end27
  %31 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !265
  %num_devices34 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %31, i32 0, i32 1, !dbg !265
  %32 = load i16, i16* %num_devices34, align 1, !dbg !265
  %call35 = call zeroext i16 @__fswab16(i16 zeroext %32) #9, !dbg !265
  %conv36 = zext i16 %call35 to i32, !dbg !265
  br label %cond.end, !dbg !265

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv33, %cond.true ], [ %conv36, %cond.false ], !dbg !265
  %conv37 = trunc i32 %cond to i16, !dbg !265
  %33 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !266
  %dev_count = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %33, i32 0, i32 2, !dbg !267
  store i16 %conv37, i16* %dev_count, align 8, !dbg !268
  %34 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !269
  %35 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !270
  %first_dev38 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %35, i32 0, i32 1, !dbg !271
  %36 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %first_dev38, align 8, !dbg !271
  %37 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !272
  %dev_count39 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %37, i32 0, i32 2, !dbg !273
  %38 = load i16, i16* %dev_count39, align 8, !dbg !273
  %call40 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_advance(%struct.mlxfw_mfa2_file* %34, %struct.mlxfw_mfa2_tlv* %36, i16 zeroext %38) #7, !dbg !274
  %39 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !275
  %first_component = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %39, i32 0, i32 3, !dbg !276
  store %struct.mlxfw_mfa2_tlv* %call40, %struct.mlxfw_mfa2_tlv** %first_component, align 8, !dbg !277
  %40 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !278
  %num_components = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %40, i32 0, i32 0, !dbg !278
  %41 = load i16, i16* %num_components, align 1, !dbg !278
  %42 = call i1 @llvm.is.constant.i16(i16 %41), !dbg !278
  br i1 %42, label %cond.true41, label %cond.false53, !dbg !278

cond.true41:                                      ; preds = %cond.end
  %43 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !278
  %num_components42 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %43, i32 0, i32 0, !dbg !278
  %44 = load i16, i16* %num_components42, align 1, !dbg !278
  %conv43 = zext i16 %44 to i32, !dbg !278
  %and44 = and i32 %conv43, 255, !dbg !278
  %shl45 = shl i32 %and44, 8, !dbg !278
  %45 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !278
  %num_components46 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %45, i32 0, i32 0, !dbg !278
  %46 = load i16, i16* %num_components46, align 1, !dbg !278
  %conv47 = zext i16 %46 to i32, !dbg !278
  %and48 = and i32 %conv47, 65280, !dbg !278
  %shr49 = ashr i32 %and48, 8, !dbg !278
  %or50 = or i32 %shl45, %shr49, !dbg !278
  %conv51 = trunc i32 %or50 to i16, !dbg !278
  %conv52 = zext i16 %conv51 to i32, !dbg !278
  br label %cond.end57, !dbg !278

cond.false53:                                     ; preds = %cond.end
  %47 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !278
  %num_components54 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %47, i32 0, i32 0, !dbg !278
  %48 = load i16, i16* %num_components54, align 1, !dbg !278
  %call55 = call zeroext i16 @__fswab16(i16 zeroext %48) #9, !dbg !278
  %conv56 = zext i16 %call55 to i32, !dbg !278
  br label %cond.end57, !dbg !278

cond.end57:                                       ; preds = %cond.false53, %cond.true41
  %cond58 = phi i32 [ %conv52, %cond.true41 ], [ %conv56, %cond.false53 ], !dbg !278
  %conv59 = trunc i32 %cond58 to i16, !dbg !278
  %49 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !279
  %component_count = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %49, i32 0, i32 4, !dbg !280
  store i16 %conv59, i16* %component_count, align 8, !dbg !281
  %50 = load %struct.firmware*, %struct.firmware** %fw.addr, align 8, !dbg !282
  %data60 = getelementptr inbounds %struct.firmware, %struct.firmware* %50, i32 0, i32 1, !dbg !283
  %51 = load i8*, i8** %data60, align 8, !dbg !283
  %52 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !284
  %cb_offset = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %52, i32 0, i32 2, !dbg !284
  %53 = load i32, i32* %cb_offset, align 1, !dbg !284
  %54 = call i1 @llvm.is.constant.i32(i32 %53), !dbg !284
  br i1 %54, label %cond.true61, label %cond.false77, !dbg !284

cond.true61:                                      ; preds = %cond.end57
  %55 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !284
  %cb_offset62 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %55, i32 0, i32 2, !dbg !284
  %56 = load i32, i32* %cb_offset62, align 1, !dbg !284
  %and63 = and i32 %56, 255, !dbg !284
  %shl64 = shl i32 %and63, 24, !dbg !284
  %57 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !284
  %cb_offset65 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %57, i32 0, i32 2, !dbg !284
  %58 = load i32, i32* %cb_offset65, align 1, !dbg !284
  %and66 = and i32 %58, 65280, !dbg !284
  %shl67 = shl i32 %and66, 8, !dbg !284
  %or68 = or i32 %shl64, %shl67, !dbg !284
  %59 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !284
  %cb_offset69 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %59, i32 0, i32 2, !dbg !284
  %60 = load i32, i32* %cb_offset69, align 1, !dbg !284
  %and70 = and i32 %60, 16711680, !dbg !284
  %shr71 = lshr i32 %and70, 8, !dbg !284
  %or72 = or i32 %or68, %shr71, !dbg !284
  %61 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !284
  %cb_offset73 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %61, i32 0, i32 2, !dbg !284
  %62 = load i32, i32* %cb_offset73, align 1, !dbg !284
  %and74 = and i32 %62, -16777216, !dbg !284
  %shr75 = lshr i32 %and74, 24, !dbg !284
  %or76 = or i32 %or72, %shr75, !dbg !284
  br label %cond.end80, !dbg !284

cond.false77:                                     ; preds = %cond.end57
  %63 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !284
  %cb_offset78 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %63, i32 0, i32 2, !dbg !284
  %64 = load i32, i32* %cb_offset78, align 1, !dbg !284
  %call79 = call i32 @__fswab32(i32 %64) #9, !dbg !284
  br label %cond.end80, !dbg !284

cond.end80:                                       ; preds = %cond.false77, %cond.true61
  %cond81 = phi i32 [ %or76, %cond.true61 ], [ %call79, %cond.false77 ], !dbg !284
  %add = add i32 %cond81, 4, !dbg !284
  %sub = sub i32 %add, 1, !dbg !284
  %and82 = and i32 %sub, -4, !dbg !284
  %idx.ext = zext i32 %and82 to i64, !dbg !285
  %add.ptr83 = getelementptr i8, i8* %51, i64 %idx.ext, !dbg !285
  %65 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !286
  %cb = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %65, i32 0, i32 5, !dbg !287
  store i8* %add.ptr83, i8** %cb, align 8, !dbg !288
  %66 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !289
  %67 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !291
  %cb84 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %67, i32 0, i32 5, !dbg !292
  %68 = load i8*, i8** %cb84, align 8, !dbg !292
  %call85 = call zeroext i1 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %66, i8* %68) #7, !dbg !293
  br i1 %call85, label %if.end88, label %if.then86, !dbg !294

if.then86:                                        ; preds = %cond.end80
  %call87 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !295
  br label %err_out, !dbg !297

if.end88:                                         ; preds = %cond.end80
  %69 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !298
  %cb_archive_size = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %69, i32 0, i32 3, !dbg !298
  %70 = load i32, i32* %cb_archive_size, align 1, !dbg !298
  %71 = call i1 @llvm.is.constant.i32(i32 %70), !dbg !298
  br i1 %71, label %cond.true89, label %cond.false105, !dbg !298

cond.true89:                                      ; preds = %if.end88
  %72 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !298
  %cb_archive_size90 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %72, i32 0, i32 3, !dbg !298
  %73 = load i32, i32* %cb_archive_size90, align 1, !dbg !298
  %and91 = and i32 %73, 255, !dbg !298
  %shl92 = shl i32 %and91, 24, !dbg !298
  %74 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !298
  %cb_archive_size93 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %74, i32 0, i32 3, !dbg !298
  %75 = load i32, i32* %cb_archive_size93, align 1, !dbg !298
  %and94 = and i32 %75, 65280, !dbg !298
  %shl95 = shl i32 %and94, 8, !dbg !298
  %or96 = or i32 %shl92, %shl95, !dbg !298
  %76 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !298
  %cb_archive_size97 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %76, i32 0, i32 3, !dbg !298
  %77 = load i32, i32* %cb_archive_size97, align 1, !dbg !298
  %and98 = and i32 %77, 16711680, !dbg !298
  %shr99 = lshr i32 %and98, 8, !dbg !298
  %or100 = or i32 %or96, %shr99, !dbg !298
  %78 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !298
  %cb_archive_size101 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %78, i32 0, i32 3, !dbg !298
  %79 = load i32, i32* %cb_archive_size101, align 1, !dbg !298
  %and102 = and i32 %79, -16777216, !dbg !298
  %shr103 = lshr i32 %and102, 24, !dbg !298
  %or104 = or i32 %or100, %shr103, !dbg !298
  br label %cond.end108, !dbg !298

cond.false105:                                    ; preds = %if.end88
  %80 = load %struct.mlxfw_mfa2_tlv_package_descriptor*, %struct.mlxfw_mfa2_tlv_package_descriptor** %pd, align 8, !dbg !298
  %cb_archive_size106 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_package_descriptor, %struct.mlxfw_mfa2_tlv_package_descriptor* %80, i32 0, i32 3, !dbg !298
  %81 = load i32, i32* %cb_archive_size106, align 1, !dbg !298
  %call107 = call i32 @__fswab32(i32 %81) #9, !dbg !298
  br label %cond.end108, !dbg !298

cond.end108:                                      ; preds = %cond.false105, %cond.true89
  %cond109 = phi i32 [ %or104, %cond.true89 ], [ %call107, %cond.false105 ], !dbg !298
  %82 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !299
  %cb_archive_size110 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %82, i32 0, i32 6, !dbg !300
  store i32 %cond109, i32* %cb_archive_size110, align 8, !dbg !301
  %83 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !302
  %cb111 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %83, i32 0, i32 5, !dbg !303
  %84 = load i8*, i8** %cb111, align 8, !dbg !303
  %85 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !304
  %cb_archive_size112 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %85, i32 0, i32 6, !dbg !305
  %86 = load i32, i32* %cb_archive_size112, align 8, !dbg !305
  %idx.ext113 = zext i32 %86 to i64, !dbg !306
  %add.ptr114 = getelementptr i8, i8* %84, i64 %idx.ext113, !dbg !306
  %add.ptr115 = getelementptr i8, i8* %add.ptr114, i64 -1, !dbg !307
  store i8* %add.ptr115, i8** %cb_top_ptr, align 8, !dbg !308
  %87 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !309
  %88 = load i8*, i8** %cb_top_ptr, align 8, !dbg !311
  %call116 = call zeroext i1 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %87, i8* %88) #7, !dbg !312
  br i1 %call116, label %if.end119, label %if.then117, !dbg !313

if.then117:                                       ; preds = %cond.end108
  %call118 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !314
  br label %err_out, !dbg !316

if.end119:                                        ; preds = %cond.end108
  %89 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !317
  %call120 = call zeroext i1 @mlxfw_mfa2_file_validate(%struct.mlxfw_mfa2_file* %89) #7, !dbg !319
  br i1 %call120, label %if.end122, label %if.then121, !dbg !320

if.then121:                                       ; preds = %if.end119
  br label %err_out, !dbg !321

if.end122:                                        ; preds = %if.end119
  %90 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !322
  store %struct.mlxfw_mfa2_file* %90, %struct.mlxfw_mfa2_file** %retval, align 8, !dbg !323
  br label %return, !dbg !323

err_out:                                          ; preds = %if.then121, %if.then117, %if.then86, %if.then25, %if.then19, %if.then15, %if.then10, %if.then5
  call void @llvm.dbg.label(metadata !324), !dbg !325
  %91 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file, align 8, !dbg !326
  %92 = bitcast %struct.mlxfw_mfa2_file* %91 to i8*, !dbg !326
  call void @kfree(i8* %92) #7, !dbg !327
  %call123 = call i8* @ERR_PTR(i64 -22) #7, !dbg !328
  %93 = bitcast i8* %call123 to %struct.mlxfw_mfa2_file*, !dbg !328
  store %struct.mlxfw_mfa2_file* %93, %struct.mlxfw_mfa2_file** %retval, align 8, !dbg !329
  br label %return, !dbg !329

return:                                           ; preds = %err_out, %if.end122, %if.then
  %94 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %retval, align 8, !dbg !330
  ret %struct.mlxfw_mfa2_file* %94, !dbg !330
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !331 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !334, metadata !DIExpression()), !dbg !335
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !336, metadata !DIExpression()), !dbg !337
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = load i64, i64* %n.addr, align 8, !dbg !340
  %1 = load i64, i64* %size.addr, align 8, !dbg !341
  %2 = load i32, i32* %flags.addr, align 4, !dbg !342
  %or = or i32 %2, 256, !dbg !343
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #7, !dbg !344
  ret i8* %call, !dbg !345
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !346 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load i64, i64* %error.addr, align 8, !dbg !353
  %1 = inttoptr i64 %0 to i8*, !dbg !354
  ret i8* %1, !dbg !355
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_get(%struct.mlxfw_mfa2_file* %mfa2_file, i8* %ptr) #0 !dbg !356 {
entry:
  %retval = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %ptr.addr = alloca i8*, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !361, metadata !DIExpression()), !dbg !362
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !365
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !367
  %call = call zeroext i1 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %0, i8* %1) #7, !dbg !368
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !369

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !370
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !371
  %add.ptr = getelementptr i8, i8* %3, i64 4, !dbg !372
  %call1 = call zeroext i1 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %2, i8* %add.ptr) #7, !dbg !373
  br i1 %call1, label %if.end, label %if.then, !dbg !374

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.mlxfw_mfa2_tlv* null, %struct.mlxfw_mfa2_tlv** %retval, align 8, !dbg !375
  br label %return, !dbg !375

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !376
  %5 = bitcast i8* %4 to %struct.mlxfw_mfa2_tlv*, !dbg !376
  store %struct.mlxfw_mfa2_tlv* %5, %struct.mlxfw_mfa2_tlv** %retval, align 8, !dbg !377
  br label %return, !dbg !377

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %retval, align 8, !dbg !378
  ret %struct.mlxfw_mfa2_tlv* %6, !dbg !378
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv* %tlv) #0 !dbg !379 {
entry:
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %tlv.addr = alloca %struct.mlxfw_mfa2_tlv*, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !382, metadata !DIExpression()), !dbg !383
  store %struct.mlxfw_mfa2_tlv* %tlv, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv.addr, metadata !384, metadata !DIExpression()), !dbg !383
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !383
  %1 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !383
  %call = call i8* @mlxfw_mfa2_tlv_payload_get(%struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_tlv* %1, i8 zeroext 1, i64 4, i1 zeroext false) #7, !dbg !383
  %2 = bitcast i8* %call to %struct.mlxfw_mfa2_tlv_multi*, !dbg !383
  ret %struct.mlxfw_mfa2_tlv_multi* %2, !dbg !383
}

; Function Attrs: noredzone
declare dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv_multi*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mlxfw_mfa2_tlv_package_descriptor* @mlxfw_mfa2_tlv_package_descriptor_get(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv* %tlv) #0 !dbg !385 {
entry:
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %tlv.addr = alloca %struct.mlxfw_mfa2_tlv*, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !388, metadata !DIExpression()), !dbg !389
  store %struct.mlxfw_mfa2_tlv* %tlv, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv.addr, metadata !390, metadata !DIExpression()), !dbg !389
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !389
  %1 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !389
  %call = call i8* @mlxfw_mfa2_tlv_payload_get(%struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_tlv* %1, i8 zeroext 2, i64 28, i1 zeroext false) #7, !dbg !389
  %2 = bitcast i8* %call to %struct.mlxfw_mfa2_tlv_package_descriptor*, !dbg !389
  ret %struct.mlxfw_mfa2_tlv_package_descriptor* %2, !dbg !389
}

; Function Attrs: noredzone
declare dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_next(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i16 @__fswab16(i16 zeroext %val) #5 !dbg !391 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load i16, i16* %val.addr, align 2, !dbg !397
  %conv = zext i16 %0 to i32, !dbg !397
  %and = and i32 %conv, 255, !dbg !397
  %shl = shl i32 %and, 8, !dbg !397
  %1 = load i16, i16* %val.addr, align 2, !dbg !397
  %conv1 = zext i16 %1 to i32, !dbg !397
  %and2 = and i32 %conv1, 65280, !dbg !397
  %shr = ashr i32 %and2, 8, !dbg !397
  %or = or i32 %shl, %shr, !dbg !397
  %conv3 = trunc i32 %or to i16, !dbg !397
  ret i16 %conv3, !dbg !398
}

; Function Attrs: noredzone
declare dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_advance(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*, i16 zeroext) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #5 !dbg !399 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load i32, i32* %val.addr, align 4, !dbg !404
  %call = call i32 @__arch_swab32(i32 %0) #9, !dbg !405
  ret i32 %call, !dbg !406
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %mfa2_file, i8* %ptr) #0 !dbg !407 {
entry:
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %ptr.addr = alloca i8*, align 8
  %valid_to = alloca i8*, align 8
  %valid_from = alloca i8*, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !410, metadata !DIExpression()), !dbg !411
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !412, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata i8** %valid_to, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !416
  %fw = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %0, i32 0, i32 0, !dbg !417
  %1 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !417
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %1, i32 0, i32 1, !dbg !418
  %2 = load i8*, i8** %data, align 8, !dbg !418
  %3 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !419
  %fw1 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %3, i32 0, i32 0, !dbg !420
  %4 = load %struct.firmware*, %struct.firmware** %fw1, align 8, !dbg !420
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %4, i32 0, i32 0, !dbg !421
  %5 = load i64, i64* %size, align 8, !dbg !421
  %add.ptr = getelementptr i8, i8* %2, i64 %5, !dbg !422
  store i8* %add.ptr, i8** %valid_to, align 8, !dbg !415
  call void @llvm.dbg.declare(metadata i8** %valid_from, metadata !423, metadata !DIExpression()), !dbg !424
  %6 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !425
  %fw2 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %6, i32 0, i32 0, !dbg !426
  %7 = load %struct.firmware*, %struct.firmware** %fw2, align 8, !dbg !426
  %data3 = getelementptr inbounds %struct.firmware, %struct.firmware* %7, i32 0, i32 1, !dbg !427
  %8 = load i8*, i8** %data3, align 8, !dbg !427
  store i8* %8, i8** %valid_from, align 8, !dbg !424
  %9 = load i8*, i8** %ptr.addr, align 8, !dbg !428
  %10 = load i8*, i8** %valid_from, align 8, !dbg !429
  %cmp = icmp ugt i8* %9, %10, !dbg !430
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !431

land.rhs:                                         ; preds = %entry
  %11 = load i8*, i8** %ptr.addr, align 8, !dbg !432
  %12 = load i8*, i8** %valid_to, align 8, !dbg !433
  %cmp4 = icmp ult i8* %11, %12, !dbg !434
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %13 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ], !dbg !435
  ret i1 %13, !dbg !436
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mlxfw_mfa2_file_validate(%struct.mlxfw_mfa2_file* %mfa2_file) #0 !dbg !437 {
entry:
  %retval = alloca i1, align 1
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %tlv = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %idx = alloca i16, align 2
  %tmp = alloca i32, align 4
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !440, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv, metadata !442, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.declare(metadata i16* %idx, metadata !444, metadata !DIExpression()), !dbg !445
  store i32 0, i32* %tmp, align 4, !dbg !446
  %0 = load i32, i32* %tmp, align 4, !dbg !449
  store i16 0, i16* %idx, align 2, !dbg !450
  %1 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !450
  %first_dev = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %1, i32 0, i32 1, !dbg !450
  %2 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %first_dev, align 8, !dbg !450
  store %struct.mlxfw_mfa2_tlv* %2, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !450
  br label %for.cond, !dbg !450

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i16, i16* %idx, align 2, !dbg !452
  %conv = zext i16 %3 to i32, !dbg !452
  %4 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !452
  %dev_count = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %4, i32 0, i32 2, !dbg !452
  %5 = load i16, i16* %dev_count, align 8, !dbg !452
  %conv1 = zext i16 %5 to i32, !dbg !452
  %cmp = icmp slt i32 %conv, %conv1, !dbg !452
  br i1 %cmp, label %for.body, label %for.end, !dbg !450

for.body:                                         ; preds = %for.cond
  %6 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !454
  %tobool = icmp ne %struct.mlxfw_mfa2_tlv* %6, null, !dbg !454
  br i1 %tobool, label %if.end, label %if.then, !dbg !457

if.then:                                          ; preds = %for.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !458
  store i1 false, i1* %retval, align 1, !dbg !460
  br label %return, !dbg !460

if.end:                                           ; preds = %for.body
  %7 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !461
  %8 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !463
  %9 = load i16, i16* %idx, align 2, !dbg !464
  %call3 = call zeroext i1 @mlxfw_mfa2_file_dev_validate(%struct.mlxfw_mfa2_file* %7, %struct.mlxfw_mfa2_tlv* %8, i16 zeroext %9) #7, !dbg !465
  br i1 %call3, label %if.end5, label %if.then4, !dbg !466

if.then4:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !467
  br label %return, !dbg !467

if.end5:                                          ; preds = %if.end
  br label %for.inc, !dbg !468

for.inc:                                          ; preds = %if.end5
  %10 = load i16, i16* %idx, align 2, !dbg !452
  %inc = add i16 %10, 1, !dbg !452
  store i16 %inc, i16* %idx, align 2, !dbg !452
  %11 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !452
  %12 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !452
  %call6 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_next(%struct.mlxfw_mfa2_file* %11, %struct.mlxfw_mfa2_tlv* %12) #7, !dbg !452
  store %struct.mlxfw_mfa2_tlv* %call6, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !452
  br label %for.cond, !dbg !452, !llvm.loop !469

for.end:                                          ; preds = %for.cond
  store i16 0, i16* %idx, align 2, !dbg !471
  %13 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !471
  %first_component = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %13, i32 0, i32 3, !dbg !471
  %14 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %first_component, align 8, !dbg !471
  store %struct.mlxfw_mfa2_tlv* %14, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !471
  br label %for.cond7, !dbg !471

for.cond7:                                        ; preds = %for.inc20, %for.end
  %15 = load i16, i16* %idx, align 2, !dbg !473
  %conv8 = zext i16 %15 to i32, !dbg !473
  %16 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !473
  %component_count = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %16, i32 0, i32 4, !dbg !473
  %17 = load i16, i16* %component_count, align 8, !dbg !473
  %conv9 = zext i16 %17 to i32, !dbg !473
  %cmp10 = icmp slt i32 %conv8, %conv9, !dbg !473
  br i1 %cmp10, label %for.body12, label %for.end23, !dbg !471

for.body12:                                       ; preds = %for.cond7
  %18 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !475
  %tobool13 = icmp ne %struct.mlxfw_mfa2_tlv* %18, null, !dbg !475
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !478

if.then14:                                        ; preds = %for.body12
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !479
  store i1 false, i1* %retval, align 1, !dbg !481
  br label %return, !dbg !481

if.end16:                                         ; preds = %for.body12
  %19 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !482
  %20 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !484
  %21 = load i16, i16* %idx, align 2, !dbg !485
  %call17 = call zeroext i1 @mlxfw_mfa2_file_comp_validate(%struct.mlxfw_mfa2_file* %19, %struct.mlxfw_mfa2_tlv* %20, i16 zeroext %21) #7, !dbg !486
  br i1 %call17, label %if.end19, label %if.then18, !dbg !487

if.then18:                                        ; preds = %if.end16
  store i1 false, i1* %retval, align 1, !dbg !488
  br label %return, !dbg !488

if.end19:                                         ; preds = %if.end16
  br label %for.inc20, !dbg !489

for.inc20:                                        ; preds = %if.end19
  %22 = load i16, i16* %idx, align 2, !dbg !473
  %inc21 = add i16 %22, 1, !dbg !473
  store i16 %inc21, i16* %idx, align 2, !dbg !473
  %23 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !473
  %24 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !473
  %call22 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_next(%struct.mlxfw_mfa2_file* %23, %struct.mlxfw_mfa2_tlv* %24) #7, !dbg !473
  store %struct.mlxfw_mfa2_tlv* %call22, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !473
  br label %for.cond7, !dbg !473, !llvm.loop !490

for.end23:                                        ; preds = %for.cond7
  store i1 true, i1* %retval, align 1, !dbg !492
  br label %return, !dbg !492

return:                                           ; preds = %for.end23, %if.then18, %if.then14, %if.then4, %if.then
  %25 = load i1, i1* %retval, align 1, !dbg !493
  ret i1 %25, !dbg !493
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mlxfw_mfa2_file_component_count(%struct.mlxfw_mfa2_file* %mfa2_file, i8* %psid, i32 %psid_size, i32* %p_count) #0 !dbg !494 {
entry:
  %retval = alloca i32, align 4
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %psid.addr = alloca i8*, align 8
  %psid_size.addr = alloca i32, align 4
  %p_count.addr = alloca i32*, align 8
  %dev_multi = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %count = alloca i16, align 2
  %err = alloca i32, align 4
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !501, metadata !DIExpression()), !dbg !502
  store i8* %psid, i8** %psid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %psid.addr, metadata !503, metadata !DIExpression()), !dbg !504
  store i32 %psid_size, i32* %psid_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %psid_size.addr, metadata !505, metadata !DIExpression()), !dbg !506
  store i32* %p_count, i32** %p_count.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p_count.addr, metadata !507, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_multi** %dev_multi, metadata !509, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.declare(metadata i16* %count, metadata !511, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.declare(metadata i32* %err, metadata !513, metadata !DIExpression()), !dbg !514
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !515
  %1 = load i8*, i8** %psid.addr, align 8, !dbg !516
  %2 = load i32, i32* %psid_size.addr, align 4, !dbg !517
  %conv = trunc i32 %2 to i16, !dbg !517
  %call = call %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_dev_get(%struct.mlxfw_mfa2_file* %0, i8* %1, i16 zeroext %conv) #7, !dbg !518
  store %struct.mlxfw_mfa2_tlv_multi* %call, %struct.mlxfw_mfa2_tlv_multi** %dev_multi, align 8, !dbg !519
  %3 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %dev_multi, align 8, !dbg !520
  %tobool = icmp ne %struct.mlxfw_mfa2_tlv_multi* %3, null, !dbg !520
  br i1 %tobool, label %if.end, label %if.then, !dbg !522

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !523
  br label %return, !dbg !523

if.end:                                           ; preds = %entry
  %4 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !524
  %5 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %dev_multi, align 8, !dbg !525
  %call1 = call i32 @mlxfw_mfa2_tlv_multi_child_count(%struct.mlxfw_mfa2_file* %4, %struct.mlxfw_mfa2_tlv_multi* %5, i32 34, i16* %count) #7, !dbg !526
  store i32 %call1, i32* %err, align 4, !dbg !527
  %6 = load i32, i32* %err, align 4, !dbg !528
  %tobool2 = icmp ne i32 %6, 0, !dbg !528
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !530

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %err, align 4, !dbg !531
  store i32 %7, i32* %retval, align 4, !dbg !532
  br label %return, !dbg !532

if.end4:                                          ; preds = %if.end
  %8 = load i16, i16* %count, align 2, !dbg !533
  %conv5 = zext i16 %8 to i32, !dbg !533
  %9 = load i32*, i32** %p_count.addr, align 8, !dbg !534
  store i32 %conv5, i32* %9, align 4, !dbg !535
  store i32 0, i32* %retval, align 4, !dbg !536
  br label %return, !dbg !536

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !537
  ret i32 %10, !dbg !537
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_dev_get(%struct.mlxfw_mfa2_file* %mfa2_file, i8* %psid, i16 zeroext %psid_size) #0 !dbg !538 {
entry:
  %retval = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %psid.addr = alloca i8*, align 8
  %psid_size.addr = alloca i16, align 2
  %tlv_psid = alloca %struct.mlxfw_mfa2_tlv_psid*, align 8
  %dev_multi = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %dev_tlv = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %tlv = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %idx = alloca i32, align 4
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !541, metadata !DIExpression()), !dbg !542
  store i8* %psid, i8** %psid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %psid.addr, metadata !543, metadata !DIExpression()), !dbg !544
  store i16 %psid_size, i16* %psid_size.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %psid_size.addr, metadata !545, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_psid** %tlv_psid, metadata !547, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_multi** %dev_multi, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %dev_tlv, metadata !559, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv, metadata !561, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !563, metadata !DIExpression()), !dbg !564
  store i32 0, i32* %idx, align 4, !dbg !565
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !565
  %first_dev = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %0, i32 0, i32 1, !dbg !565
  %1 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %first_dev, align 8, !dbg !565
  store %struct.mlxfw_mfa2_tlv* %1, %struct.mlxfw_mfa2_tlv** %dev_tlv, align 8, !dbg !565
  br label %for.cond, !dbg !565

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %idx, align 4, !dbg !567
  %3 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !567
  %dev_count = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %3, i32 0, i32 2, !dbg !567
  %4 = load i16, i16* %dev_count, align 8, !dbg !567
  %conv = zext i16 %4 to i32, !dbg !567
  %cmp = icmp ult i32 %2, %conv, !dbg !567
  br i1 %cmp, label %for.body, label %for.end, !dbg !565

for.body:                                         ; preds = %for.cond
  %5 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %dev_tlv, align 8, !dbg !569
  %tobool = icmp ne %struct.mlxfw_mfa2_tlv* %5, null, !dbg !569
  br i1 %tobool, label %if.end, label %if.then, !dbg !572

if.then:                                          ; preds = %for.body
  store %struct.mlxfw_mfa2_tlv_multi* null, %struct.mlxfw_mfa2_tlv_multi** %retval, align 8, !dbg !573
  br label %return, !dbg !573

if.end:                                           ; preds = %for.body
  %6 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !574
  %7 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %dev_tlv, align 8, !dbg !575
  %call = call %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file* %6, %struct.mlxfw_mfa2_tlv* %7) #7, !dbg !576
  store %struct.mlxfw_mfa2_tlv_multi* %call, %struct.mlxfw_mfa2_tlv_multi** %dev_multi, align 8, !dbg !577
  %8 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %dev_multi, align 8, !dbg !578
  %tobool2 = icmp ne %struct.mlxfw_mfa2_tlv_multi* %8, null, !dbg !578
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !580

if.then3:                                         ; preds = %if.end
  store %struct.mlxfw_mfa2_tlv_multi* null, %struct.mlxfw_mfa2_tlv_multi** %retval, align 8, !dbg !581
  br label %return, !dbg !581

if.end4:                                          ; preds = %if.end
  %9 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !582
  %10 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %dev_multi, align 8, !dbg !583
  %call5 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child_find(%struct.mlxfw_mfa2_file* %9, %struct.mlxfw_mfa2_tlv_multi* %10, i32 42, i16 zeroext 0) #7, !dbg !584
  store %struct.mlxfw_mfa2_tlv* %call5, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !585
  %11 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !586
  %tobool6 = icmp ne %struct.mlxfw_mfa2_tlv* %11, null, !dbg !586
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !588

if.then7:                                         ; preds = %if.end4
  store %struct.mlxfw_mfa2_tlv_multi* null, %struct.mlxfw_mfa2_tlv_multi** %retval, align 8, !dbg !589
  br label %return, !dbg !589

if.end8:                                          ; preds = %if.end4
  %12 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !590
  %len = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %12, i32 0, i32 2, !dbg !590
  %13 = load i16, i16* %len, align 1, !dbg !590
  %14 = call i1 @llvm.is.constant.i16(i16 %13), !dbg !590
  br i1 %14, label %cond.true, label %cond.false, !dbg !590

cond.true:                                        ; preds = %if.end8
  %15 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !590
  %len9 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %15, i32 0, i32 2, !dbg !590
  %16 = load i16, i16* %len9, align 1, !dbg !590
  %conv10 = zext i16 %16 to i32, !dbg !590
  %and = and i32 %conv10, 255, !dbg !590
  %shl = shl i32 %and, 8, !dbg !590
  %17 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !590
  %len11 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %17, i32 0, i32 2, !dbg !590
  %18 = load i16, i16* %len11, align 1, !dbg !590
  %conv12 = zext i16 %18 to i32, !dbg !590
  %and13 = and i32 %conv12, 65280, !dbg !590
  %shr = ashr i32 %and13, 8, !dbg !590
  %or = or i32 %shl, %shr, !dbg !590
  %conv14 = trunc i32 %or to i16, !dbg !590
  %conv15 = zext i16 %conv14 to i32, !dbg !590
  br label %cond.end, !dbg !590

cond.false:                                       ; preds = %if.end8
  %19 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !590
  %len16 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %19, i32 0, i32 2, !dbg !590
  %20 = load i16, i16* %len16, align 1, !dbg !590
  %call17 = call zeroext i16 @__fswab16(i16 zeroext %20) #9, !dbg !590
  %conv18 = zext i16 %call17 to i32, !dbg !590
  br label %cond.end, !dbg !590

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv15, %cond.true ], [ %conv18, %cond.false ], !dbg !590
  %21 = load i16, i16* %psid_size.addr, align 2, !dbg !592
  %conv19 = zext i16 %21 to i32, !dbg !592
  %cmp20 = icmp ne i32 %cond, %conv19, !dbg !593
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !594

if.then22:                                        ; preds = %cond.end
  br label %for.inc, !dbg !595

if.end23:                                         ; preds = %cond.end
  %22 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !596
  %23 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !597
  %call24 = call %struct.mlxfw_mfa2_tlv_psid* @mlxfw_mfa2_tlv_psid_get(%struct.mlxfw_mfa2_file* %22, %struct.mlxfw_mfa2_tlv* %23) #7, !dbg !598
  store %struct.mlxfw_mfa2_tlv_psid* %call24, %struct.mlxfw_mfa2_tlv_psid** %tlv_psid, align 8, !dbg !599
  %24 = load %struct.mlxfw_mfa2_tlv_psid*, %struct.mlxfw_mfa2_tlv_psid** %tlv_psid, align 8, !dbg !600
  %tobool25 = icmp ne %struct.mlxfw_mfa2_tlv_psid* %24, null, !dbg !600
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !602

if.then26:                                        ; preds = %if.end23
  store %struct.mlxfw_mfa2_tlv_multi* null, %struct.mlxfw_mfa2_tlv_multi** %retval, align 8, !dbg !603
  br label %return, !dbg !603

if.end27:                                         ; preds = %if.end23
  %25 = load i8*, i8** %psid.addr, align 8, !dbg !604
  %26 = load %struct.mlxfw_mfa2_tlv_psid*, %struct.mlxfw_mfa2_tlv_psid** %tlv_psid, align 8, !dbg !606
  %psid28 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_psid, %struct.mlxfw_mfa2_tlv_psid* %26, i32 0, i32 0, !dbg !607
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %psid28, i64 0, i64 0, !dbg !606
  %27 = load i16, i16* %psid_size.addr, align 2, !dbg !608
  %conv29 = zext i16 %27 to i64, !dbg !608
  %call30 = call i32 @memcmp(i8* %25, i8* %arraydecay, i64 %conv29) #7, !dbg !609
  %cmp31 = icmp eq i32 %call30, 0, !dbg !610
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !611

if.then33:                                        ; preds = %if.end27
  %28 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %dev_multi, align 8, !dbg !612
  store %struct.mlxfw_mfa2_tlv_multi* %28, %struct.mlxfw_mfa2_tlv_multi** %retval, align 8, !dbg !613
  br label %return, !dbg !613

if.end34:                                         ; preds = %if.end27
  br label %for.inc, !dbg !614

for.inc:                                          ; preds = %if.end34, %if.then22
  %29 = load i32, i32* %idx, align 4, !dbg !567
  %inc = add i32 %29, 1, !dbg !567
  store i32 %inc, i32* %idx, align 4, !dbg !567
  %30 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !567
  %31 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %dev_tlv, align 8, !dbg !567
  %call35 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_next(%struct.mlxfw_mfa2_file* %30, %struct.mlxfw_mfa2_tlv* %31) #7, !dbg !567
  store %struct.mlxfw_mfa2_tlv* %call35, %struct.mlxfw_mfa2_tlv** %dev_tlv, align 8, !dbg !567
  br label %for.cond, !dbg !567, !llvm.loop !615

for.end:                                          ; preds = %for.cond
  store %struct.mlxfw_mfa2_tlv_multi* null, %struct.mlxfw_mfa2_tlv_multi** %retval, align 8, !dbg !617
  br label %return, !dbg !617

return:                                           ; preds = %for.end, %if.then33, %if.then26, %if.then7, %if.then3, %if.then
  %32 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %retval, align 8, !dbg !618
  ret %struct.mlxfw_mfa2_tlv_multi* %32, !dbg !618
}

; Function Attrs: noredzone
declare dso_local i32 @mlxfw_mfa2_tlv_multi_child_count(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv_multi*, i32, i16*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mlxfw_mfa2_component* @mlxfw_mfa2_file_component_get(%struct.mlxfw_mfa2_file* %mfa2_file, i8* %psid, i32 %psid_size, i32 %component_index) #0 !dbg !619 {
entry:
  %retval = alloca %struct.mlxfw_mfa2_component*, align 8
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %psid.addr = alloca i8*, align 8
  %psid_size.addr = alloca i32, align 4
  %component_index.addr = alloca i32, align 4
  %comp = alloca %struct.mlxfw_mfa2_tlv_component_descriptor*, align 8
  %comp_data = alloca %struct.mlxfw_mfa2_comp_data*, align 8
  %comp_buf_size = alloca i32, align 4
  %cb_offset = alloca i64, align 8
  %comp_size = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !623, metadata !DIExpression()), !dbg !624
  store i8* %psid, i8** %psid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %psid.addr, metadata !625, metadata !DIExpression()), !dbg !626
  store i32 %psid_size, i32* %psid_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %psid_size.addr, metadata !627, metadata !DIExpression()), !dbg !628
  store i32 %component_index, i32* %component_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %component_index.addr, metadata !629, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, metadata !631, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_comp_data** %comp_data, metadata !642, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.declare(metadata i32* %comp_buf_size, metadata !644, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.declare(metadata i64* %cb_offset, metadata !646, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.declare(metadata i32* %comp_size, metadata !651, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.declare(metadata i32* %err, metadata !653, metadata !DIExpression()), !dbg !654
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !655
  %1 = load i8*, i8** %psid.addr, align 8, !dbg !656
  %2 = load i32, i32* %psid_size.addr, align 4, !dbg !657
  %3 = load i32, i32* %component_index.addr, align 4, !dbg !658
  %call = call %struct.mlxfw_mfa2_tlv_component_descriptor* @mlxfw_mfa2_file_component_find(%struct.mlxfw_mfa2_file* %0, i8* %1, i32 %2, i32 %3) #7, !dbg !659
  store %struct.mlxfw_mfa2_tlv_component_descriptor* %call, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !660
  %4 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !661
  %tobool = icmp ne %struct.mlxfw_mfa2_tlv_component_descriptor* %4, null, !dbg !661
  br i1 %tobool, label %if.end, label %if.then, !dbg !663

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -22) #7, !dbg !664
  %5 = bitcast i8* %call1 to %struct.mlxfw_mfa2_component*, !dbg !664
  store %struct.mlxfw_mfa2_component* %5, %struct.mlxfw_mfa2_component** %retval, align 8, !dbg !665
  br label %return, !dbg !665

if.end:                                           ; preds = %entry
  %6 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !666
  %cb_offset_h = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %6, i32 0, i32 2, !dbg !666
  %7 = load i32, i32* %cb_offset_h, align 1, !dbg !666
  %8 = call i1 @llvm.is.constant.i32(i32 %7), !dbg !666
  br i1 %8, label %cond.true, label %cond.false, !dbg !666

cond.true:                                        ; preds = %if.end
  %9 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !666
  %cb_offset_h2 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %9, i32 0, i32 2, !dbg !666
  %10 = load i32, i32* %cb_offset_h2, align 1, !dbg !666
  %and = and i32 %10, 255, !dbg !666
  %shl = shl i32 %and, 24, !dbg !666
  %11 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !666
  %cb_offset_h3 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %11, i32 0, i32 2, !dbg !666
  %12 = load i32, i32* %cb_offset_h3, align 1, !dbg !666
  %and4 = and i32 %12, 65280, !dbg !666
  %shl5 = shl i32 %and4, 8, !dbg !666
  %or = or i32 %shl, %shl5, !dbg !666
  %13 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !666
  %cb_offset_h6 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %13, i32 0, i32 2, !dbg !666
  %14 = load i32, i32* %cb_offset_h6, align 1, !dbg !666
  %and7 = and i32 %14, 16711680, !dbg !666
  %shr = lshr i32 %and7, 8, !dbg !666
  %or8 = or i32 %or, %shr, !dbg !666
  %15 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !666
  %cb_offset_h9 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %15, i32 0, i32 2, !dbg !666
  %16 = load i32, i32* %cb_offset_h9, align 1, !dbg !666
  %and10 = and i32 %16, -16777216, !dbg !666
  %shr11 = lshr i32 %and10, 24, !dbg !666
  %or12 = or i32 %or8, %shr11, !dbg !666
  br label %cond.end, !dbg !666

cond.false:                                       ; preds = %if.end
  %17 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !666
  %cb_offset_h13 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %17, i32 0, i32 2, !dbg !666
  %18 = load i32, i32* %cb_offset_h13, align 1, !dbg !666
  %call14 = call i32 @__fswab32(i32 %18) #9, !dbg !666
  br label %cond.end, !dbg !666

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or12, %cond.true ], [ %call14, %cond.false ], !dbg !666
  %conv = zext i32 %cond to i64, !dbg !667
  %shl15 = shl i64 %conv, 32, !dbg !668
  %19 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !669
  %cb_offset_l = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %19, i32 0, i32 3, !dbg !669
  %20 = load i32, i32* %cb_offset_l, align 1, !dbg !669
  %21 = call i1 @llvm.is.constant.i32(i32 %20), !dbg !669
  br i1 %21, label %cond.true16, label %cond.false32, !dbg !669

cond.true16:                                      ; preds = %cond.end
  %22 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !669
  %cb_offset_l17 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %22, i32 0, i32 3, !dbg !669
  %23 = load i32, i32* %cb_offset_l17, align 1, !dbg !669
  %and18 = and i32 %23, 255, !dbg !669
  %shl19 = shl i32 %and18, 24, !dbg !669
  %24 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !669
  %cb_offset_l20 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %24, i32 0, i32 3, !dbg !669
  %25 = load i32, i32* %cb_offset_l20, align 1, !dbg !669
  %and21 = and i32 %25, 65280, !dbg !669
  %shl22 = shl i32 %and21, 8, !dbg !669
  %or23 = or i32 %shl19, %shl22, !dbg !669
  %26 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !669
  %cb_offset_l24 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %26, i32 0, i32 3, !dbg !669
  %27 = load i32, i32* %cb_offset_l24, align 1, !dbg !669
  %and25 = and i32 %27, 16711680, !dbg !669
  %shr26 = lshr i32 %and25, 8, !dbg !669
  %or27 = or i32 %or23, %shr26, !dbg !669
  %28 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !669
  %cb_offset_l28 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %28, i32 0, i32 3, !dbg !669
  %29 = load i32, i32* %cb_offset_l28, align 1, !dbg !669
  %and29 = and i32 %29, -16777216, !dbg !669
  %shr30 = lshr i32 %and29, 24, !dbg !669
  %or31 = or i32 %or27, %shr30, !dbg !669
  br label %cond.end35, !dbg !669

cond.false32:                                     ; preds = %cond.end
  %30 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !669
  %cb_offset_l33 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %30, i32 0, i32 3, !dbg !669
  %31 = load i32, i32* %cb_offset_l33, align 1, !dbg !669
  %call34 = call i32 @__fswab32(i32 %31) #9, !dbg !669
  br label %cond.end35, !dbg !669

cond.end35:                                       ; preds = %cond.false32, %cond.true16
  %cond36 = phi i32 [ %or31, %cond.true16 ], [ %call34, %cond.false32 ], !dbg !669
  %conv37 = zext i32 %cond36 to i64, !dbg !669
  %or38 = or i64 %shl15, %conv37, !dbg !670
  store i64 %or38, i64* %cb_offset, align 8, !dbg !671
  %32 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !672
  %size = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %32, i32 0, i32 4, !dbg !672
  %33 = load i32, i32* %size, align 1, !dbg !672
  %34 = call i1 @llvm.is.constant.i32(i32 %33), !dbg !672
  br i1 %34, label %cond.true39, label %cond.false55, !dbg !672

cond.true39:                                      ; preds = %cond.end35
  %35 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !672
  %size40 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %35, i32 0, i32 4, !dbg !672
  %36 = load i32, i32* %size40, align 1, !dbg !672
  %and41 = and i32 %36, 255, !dbg !672
  %shl42 = shl i32 %and41, 24, !dbg !672
  %37 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !672
  %size43 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %37, i32 0, i32 4, !dbg !672
  %38 = load i32, i32* %size43, align 1, !dbg !672
  %and44 = and i32 %38, 65280, !dbg !672
  %shl45 = shl i32 %and44, 8, !dbg !672
  %or46 = or i32 %shl42, %shl45, !dbg !672
  %39 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !672
  %size47 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %39, i32 0, i32 4, !dbg !672
  %40 = load i32, i32* %size47, align 1, !dbg !672
  %and48 = and i32 %40, 16711680, !dbg !672
  %shr49 = lshr i32 %and48, 8, !dbg !672
  %or50 = or i32 %or46, %shr49, !dbg !672
  %41 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !672
  %size51 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %41, i32 0, i32 4, !dbg !672
  %42 = load i32, i32* %size51, align 1, !dbg !672
  %and52 = and i32 %42, -16777216, !dbg !672
  %shr53 = lshr i32 %and52, 24, !dbg !672
  %or54 = or i32 %or50, %shr53, !dbg !672
  br label %cond.end58, !dbg !672

cond.false55:                                     ; preds = %cond.end35
  %43 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !672
  %size56 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %43, i32 0, i32 4, !dbg !672
  %44 = load i32, i32* %size56, align 1, !dbg !672
  %call57 = call i32 @__fswab32(i32 %44) #9, !dbg !672
  br label %cond.end58, !dbg !672

cond.end58:                                       ; preds = %cond.false55, %cond.true39
  %cond59 = phi i32 [ %or54, %cond.true39 ], [ %call57, %cond.false55 ], !dbg !672
  store i32 %cond59, i32* %comp_size, align 4, !dbg !673
  %45 = load i32, i32* %comp_size, align 4, !dbg !674
  %add = add i32 %45, 16, !dbg !675
  store i32 %add, i32* %comp_buf_size, align 4, !dbg !676
  %46 = load i32, i32* %comp_buf_size, align 4, !dbg !677
  %conv60 = zext i32 %46 to i64, !dbg !677
  %add61 = add i64 16, %conv60, !dbg !678
  %call62 = call i8* @vzalloc(i64 %add61) #7, !dbg !679
  %47 = bitcast i8* %call62 to %struct.mlxfw_mfa2_comp_data*, !dbg !679
  store %struct.mlxfw_mfa2_comp_data* %47, %struct.mlxfw_mfa2_comp_data** %comp_data, align 8, !dbg !680
  %48 = load %struct.mlxfw_mfa2_comp_data*, %struct.mlxfw_mfa2_comp_data** %comp_data, align 8, !dbg !681
  %tobool63 = icmp ne %struct.mlxfw_mfa2_comp_data* %48, null, !dbg !681
  br i1 %tobool63, label %if.end66, label %if.then64, !dbg !683

if.then64:                                        ; preds = %cond.end58
  %call65 = call i8* @ERR_PTR(i64 -12) #7, !dbg !684
  %49 = bitcast i8* %call65 to %struct.mlxfw_mfa2_component*, !dbg !684
  store %struct.mlxfw_mfa2_component* %49, %struct.mlxfw_mfa2_component** %retval, align 8, !dbg !685
  br label %return, !dbg !685

if.end66:                                         ; preds = %cond.end58
  %50 = load i32, i32* %comp_size, align 4, !dbg !686
  %51 = load %struct.mlxfw_mfa2_comp_data*, %struct.mlxfw_mfa2_comp_data** %comp_data, align 8, !dbg !687
  %comp67 = getelementptr inbounds %struct.mlxfw_mfa2_comp_data, %struct.mlxfw_mfa2_comp_data* %51, i32 0, i32 0, !dbg !688
  %data_size = getelementptr inbounds %struct.mlxfw_mfa2_component, %struct.mlxfw_mfa2_component* %comp67, i32 0, i32 1, !dbg !689
  store i32 %50, i32* %data_size, align 4, !dbg !690
  %52 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !691
  %identifier = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %52, i32 0, i32 1, !dbg !691
  %53 = load i16, i16* %identifier, align 1, !dbg !691
  %54 = call i1 @llvm.is.constant.i16(i16 %53), !dbg !691
  br i1 %54, label %cond.true68, label %cond.false80, !dbg !691

cond.true68:                                      ; preds = %if.end66
  %55 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !691
  %identifier69 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %55, i32 0, i32 1, !dbg !691
  %56 = load i16, i16* %identifier69, align 1, !dbg !691
  %conv70 = zext i16 %56 to i32, !dbg !691
  %and71 = and i32 %conv70, 255, !dbg !691
  %shl72 = shl i32 %and71, 8, !dbg !691
  %57 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !691
  %identifier73 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %57, i32 0, i32 1, !dbg !691
  %58 = load i16, i16* %identifier73, align 1, !dbg !691
  %conv74 = zext i16 %58 to i32, !dbg !691
  %and75 = and i32 %conv74, 65280, !dbg !691
  %shr76 = ashr i32 %and75, 8, !dbg !691
  %or77 = or i32 %shl72, %shr76, !dbg !691
  %conv78 = trunc i32 %or77 to i16, !dbg !691
  %conv79 = zext i16 %conv78 to i32, !dbg !691
  br label %cond.end84, !dbg !691

cond.false80:                                     ; preds = %if.end66
  %59 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %comp, align 8, !dbg !691
  %identifier81 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %59, i32 0, i32 1, !dbg !691
  %60 = load i16, i16* %identifier81, align 1, !dbg !691
  %call82 = call zeroext i16 @__fswab16(i16 zeroext %60) #9, !dbg !691
  %conv83 = zext i16 %call82 to i32, !dbg !691
  br label %cond.end84, !dbg !691

cond.end84:                                       ; preds = %cond.false80, %cond.true68
  %cond85 = phi i32 [ %conv79, %cond.true68 ], [ %conv83, %cond.false80 ], !dbg !691
  %conv86 = trunc i32 %cond85 to i16, !dbg !691
  %61 = load %struct.mlxfw_mfa2_comp_data*, %struct.mlxfw_mfa2_comp_data** %comp_data, align 8, !dbg !692
  %comp87 = getelementptr inbounds %struct.mlxfw_mfa2_comp_data, %struct.mlxfw_mfa2_comp_data* %61, i32 0, i32 0, !dbg !693
  %index = getelementptr inbounds %struct.mlxfw_mfa2_component, %struct.mlxfw_mfa2_component* %comp87, i32 0, i32 0, !dbg !694
  store i16 %conv86, i16* %index, align 8, !dbg !695
  %62 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !696
  %63 = load i64, i64* %cb_offset, align 8, !dbg !697
  %64 = load i32, i32* %comp_buf_size, align 4, !dbg !698
  %conv88 = zext i32 %64 to i64, !dbg !698
  %65 = load %struct.mlxfw_mfa2_comp_data*, %struct.mlxfw_mfa2_comp_data** %comp_data, align 8, !dbg !699
  %buff = getelementptr inbounds %struct.mlxfw_mfa2_comp_data, %struct.mlxfw_mfa2_comp_data* %65, i32 0, i32 1, !dbg !700
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %buff, i64 0, i64 0, !dbg !699
  %call89 = call i32 @mlxfw_mfa2_file_cb_offset_xz(%struct.mlxfw_mfa2_file* %62, i64 %63, i64 %conv88, i8* %arraydecay) #7, !dbg !701
  store i32 %call89, i32* %err, align 4, !dbg !702
  %66 = load i32, i32* %err, align 4, !dbg !703
  %tobool90 = icmp ne i32 %66, 0, !dbg !703
  br i1 %tobool90, label %if.then91, label %if.end93, !dbg !705

if.then91:                                        ; preds = %cond.end84
  %call92 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !706
  br label %err_out, !dbg !708

if.end93:                                         ; preds = %cond.end84
  %67 = load %struct.mlxfw_mfa2_comp_data*, %struct.mlxfw_mfa2_comp_data** %comp_data, align 8, !dbg !709
  %buff94 = getelementptr inbounds %struct.mlxfw_mfa2_comp_data, %struct.mlxfw_mfa2_comp_data* %67, i32 0, i32 1, !dbg !711
  %arraydecay95 = getelementptr inbounds [0 x i8], [0 x i8]* %buff94, i64 0, i64 0, !dbg !709
  %call96 = call i32 @memcmp(i8* %arraydecay95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @mlxfw_mfa2_comp_magic, i64 0, i64 0), i64 16) #7, !dbg !712
  %cmp = icmp ne i32 %call96, 0, !dbg !713
  br i1 %cmp, label %if.then98, label %if.end100, !dbg !714

if.then98:                                        ; preds = %if.end93
  %call99 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !715
  store i32 -22, i32* %err, align 4, !dbg !717
  br label %err_out, !dbg !718

if.end100:                                        ; preds = %if.end93
  %68 = load %struct.mlxfw_mfa2_comp_data*, %struct.mlxfw_mfa2_comp_data** %comp_data, align 8, !dbg !719
  %buff101 = getelementptr inbounds %struct.mlxfw_mfa2_comp_data, %struct.mlxfw_mfa2_comp_data* %68, i32 0, i32 1, !dbg !720
  %arraydecay102 = getelementptr inbounds [0 x i8], [0 x i8]* %buff101, i64 0, i64 0, !dbg !719
  %add.ptr = getelementptr i8, i8* %arraydecay102, i64 16, !dbg !721
  %69 = load %struct.mlxfw_mfa2_comp_data*, %struct.mlxfw_mfa2_comp_data** %comp_data, align 8, !dbg !722
  %comp103 = getelementptr inbounds %struct.mlxfw_mfa2_comp_data, %struct.mlxfw_mfa2_comp_data* %69, i32 0, i32 0, !dbg !723
  %data = getelementptr inbounds %struct.mlxfw_mfa2_component, %struct.mlxfw_mfa2_component* %comp103, i32 0, i32 2, !dbg !724
  store i8* %add.ptr, i8** %data, align 8, !dbg !725
  %70 = load %struct.mlxfw_mfa2_comp_data*, %struct.mlxfw_mfa2_comp_data** %comp_data, align 8, !dbg !726
  %comp104 = getelementptr inbounds %struct.mlxfw_mfa2_comp_data, %struct.mlxfw_mfa2_comp_data* %70, i32 0, i32 0, !dbg !727
  store %struct.mlxfw_mfa2_component* %comp104, %struct.mlxfw_mfa2_component** %retval, align 8, !dbg !728
  br label %return, !dbg !728

err_out:                                          ; preds = %if.then98, %if.then91
  call void @llvm.dbg.label(metadata !729), !dbg !730
  %71 = load %struct.mlxfw_mfa2_comp_data*, %struct.mlxfw_mfa2_comp_data** %comp_data, align 8, !dbg !731
  %72 = bitcast %struct.mlxfw_mfa2_comp_data* %71 to i8*, !dbg !731
  call void @vfree(i8* %72) #7, !dbg !732
  %73 = load i32, i32* %err, align 4, !dbg !733
  %conv105 = sext i32 %73 to i64, !dbg !733
  %call106 = call i8* @ERR_PTR(i64 %conv105) #7, !dbg !734
  %74 = bitcast i8* %call106 to %struct.mlxfw_mfa2_component*, !dbg !734
  store %struct.mlxfw_mfa2_component* %74, %struct.mlxfw_mfa2_component** %retval, align 8, !dbg !735
  br label %return, !dbg !735

return:                                           ; preds = %err_out, %if.end100, %if.then64, %if.then
  %75 = load %struct.mlxfw_mfa2_component*, %struct.mlxfw_mfa2_component** %retval, align 8, !dbg !736
  ret %struct.mlxfw_mfa2_component* %75, !dbg !736
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mlxfw_mfa2_tlv_component_descriptor* @mlxfw_mfa2_file_component_find(%struct.mlxfw_mfa2_file* %mfa2_file, i8* %psid, i32 %psid_size, i32 %component_index) #0 !dbg !737 {
entry:
  %retval = alloca %struct.mlxfw_mfa2_tlv_component_descriptor*, align 8
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %psid.addr = alloca i8*, align 8
  %psid_size.addr = alloca i32, align 4
  %component_index.addr = alloca i32, align 4
  %cptr = alloca %struct.mlxfw_mfa2_tlv_component_ptr*, align 8
  %dev_multi = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %cptr_tlv = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %comp_idx = alloca i16, align 2
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !740, metadata !DIExpression()), !dbg !741
  store i8* %psid, i8** %psid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %psid.addr, metadata !742, metadata !DIExpression()), !dbg !743
  store i32 %psid_size, i32* %psid_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %psid_size.addr, metadata !744, metadata !DIExpression()), !dbg !745
  store i32 %component_index, i32* %component_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %component_index.addr, metadata !746, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_component_ptr** %cptr, metadata !748, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_multi** %dev_multi, metadata !757, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %cptr_tlv, metadata !759, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.declare(metadata i16* %comp_idx, metadata !761, metadata !DIExpression()), !dbg !762
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !763
  %1 = load i8*, i8** %psid.addr, align 8, !dbg !764
  %2 = load i32, i32* %psid_size.addr, align 4, !dbg !765
  %conv = trunc i32 %2 to i16, !dbg !765
  %call = call %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_dev_get(%struct.mlxfw_mfa2_file* %0, i8* %1, i16 zeroext %conv) #7, !dbg !766
  store %struct.mlxfw_mfa2_tlv_multi* %call, %struct.mlxfw_mfa2_tlv_multi** %dev_multi, align 8, !dbg !767
  %3 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %dev_multi, align 8, !dbg !768
  %tobool = icmp ne %struct.mlxfw_mfa2_tlv_multi* %3, null, !dbg !768
  br i1 %tobool, label %if.end, label %if.then, !dbg !770

if.then:                                          ; preds = %entry
  store %struct.mlxfw_mfa2_tlv_component_descriptor* null, %struct.mlxfw_mfa2_tlv_component_descriptor** %retval, align 8, !dbg !771
  br label %return, !dbg !771

if.end:                                           ; preds = %entry
  %4 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !772
  %5 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %dev_multi, align 8, !dbg !773
  %6 = load i32, i32* %component_index.addr, align 4, !dbg !774
  %conv1 = trunc i32 %6 to i16, !dbg !774
  %call2 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child_find(%struct.mlxfw_mfa2_file* %4, %struct.mlxfw_mfa2_tlv_multi* %5, i32 34, i16 zeroext %conv1) #7, !dbg !775
  store %struct.mlxfw_mfa2_tlv* %call2, %struct.mlxfw_mfa2_tlv** %cptr_tlv, align 8, !dbg !776
  %7 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %cptr_tlv, align 8, !dbg !777
  %tobool3 = icmp ne %struct.mlxfw_mfa2_tlv* %7, null, !dbg !777
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !779

if.then4:                                         ; preds = %if.end
  store %struct.mlxfw_mfa2_tlv_component_descriptor* null, %struct.mlxfw_mfa2_tlv_component_descriptor** %retval, align 8, !dbg !780
  br label %return, !dbg !780

if.end5:                                          ; preds = %if.end
  %8 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !781
  %9 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %cptr_tlv, align 8, !dbg !782
  %call6 = call %struct.mlxfw_mfa2_tlv_component_ptr* @mlxfw_mfa2_tlv_component_ptr_get(%struct.mlxfw_mfa2_file* %8, %struct.mlxfw_mfa2_tlv* %9) #7, !dbg !783
  store %struct.mlxfw_mfa2_tlv_component_ptr* %call6, %struct.mlxfw_mfa2_tlv_component_ptr** %cptr, align 8, !dbg !784
  %10 = load %struct.mlxfw_mfa2_tlv_component_ptr*, %struct.mlxfw_mfa2_tlv_component_ptr** %cptr, align 8, !dbg !785
  %tobool7 = icmp ne %struct.mlxfw_mfa2_tlv_component_ptr* %10, null, !dbg !785
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !787

if.then8:                                         ; preds = %if.end5
  store %struct.mlxfw_mfa2_tlv_component_descriptor* null, %struct.mlxfw_mfa2_tlv_component_descriptor** %retval, align 8, !dbg !788
  br label %return, !dbg !788

if.end9:                                          ; preds = %if.end5
  %11 = load %struct.mlxfw_mfa2_tlv_component_ptr*, %struct.mlxfw_mfa2_tlv_component_ptr** %cptr, align 8, !dbg !789
  %component_index10 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_ptr, %struct.mlxfw_mfa2_tlv_component_ptr* %11, i32 0, i32 1, !dbg !789
  %12 = load i16, i16* %component_index10, align 1, !dbg !789
  %13 = call i1 @llvm.is.constant.i16(i16 %12), !dbg !789
  br i1 %13, label %cond.true, label %cond.false, !dbg !789

cond.true:                                        ; preds = %if.end9
  %14 = load %struct.mlxfw_mfa2_tlv_component_ptr*, %struct.mlxfw_mfa2_tlv_component_ptr** %cptr, align 8, !dbg !789
  %component_index11 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_ptr, %struct.mlxfw_mfa2_tlv_component_ptr* %14, i32 0, i32 1, !dbg !789
  %15 = load i16, i16* %component_index11, align 1, !dbg !789
  %conv12 = zext i16 %15 to i32, !dbg !789
  %and = and i32 %conv12, 255, !dbg !789
  %shl = shl i32 %and, 8, !dbg !789
  %16 = load %struct.mlxfw_mfa2_tlv_component_ptr*, %struct.mlxfw_mfa2_tlv_component_ptr** %cptr, align 8, !dbg !789
  %component_index13 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_ptr, %struct.mlxfw_mfa2_tlv_component_ptr* %16, i32 0, i32 1, !dbg !789
  %17 = load i16, i16* %component_index13, align 1, !dbg !789
  %conv14 = zext i16 %17 to i32, !dbg !789
  %and15 = and i32 %conv14, 65280, !dbg !789
  %shr = ashr i32 %and15, 8, !dbg !789
  %or = or i32 %shl, %shr, !dbg !789
  %conv16 = trunc i32 %or to i16, !dbg !789
  %conv17 = zext i16 %conv16 to i32, !dbg !789
  br label %cond.end, !dbg !789

cond.false:                                       ; preds = %if.end9
  %18 = load %struct.mlxfw_mfa2_tlv_component_ptr*, %struct.mlxfw_mfa2_tlv_component_ptr** %cptr, align 8, !dbg !789
  %component_index18 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_ptr, %struct.mlxfw_mfa2_tlv_component_ptr* %18, i32 0, i32 1, !dbg !789
  %19 = load i16, i16* %component_index18, align 1, !dbg !789
  %call19 = call zeroext i16 @__fswab16(i16 zeroext %19) #9, !dbg !789
  %conv20 = zext i16 %call19 to i32, !dbg !789
  br label %cond.end, !dbg !789

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv17, %cond.true ], [ %conv20, %cond.false ], !dbg !789
  %conv21 = trunc i32 %cond to i16, !dbg !789
  store i16 %conv21, i16* %comp_idx, align 2, !dbg !790
  %20 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !791
  %21 = load i16, i16* %comp_idx, align 2, !dbg !792
  %call22 = call %struct.mlxfw_mfa2_tlv_component_descriptor* @mlxfw_mfa2_file_component_tlv_get(%struct.mlxfw_mfa2_file* %20, i16 zeroext %21) #7, !dbg !793
  store %struct.mlxfw_mfa2_tlv_component_descriptor* %call22, %struct.mlxfw_mfa2_tlv_component_descriptor** %retval, align 8, !dbg !794
  br label %return, !dbg !794

return:                                           ; preds = %cond.end, %if.then8, %if.then4, %if.then
  %22 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %retval, align 8, !dbg !795
  ret %struct.mlxfw_mfa2_tlv_component_descriptor* %22, !dbg !795
}

; Function Attrs: noredzone
declare dso_local i8* @vzalloc(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mlxfw_mfa2_file_cb_offset_xz(%struct.mlxfw_mfa2_file* %mfa2_file, i64 %off, i64 %size, i8* %buf) #0 !dbg !796 {
entry:
  %retval = alloca i32, align 4
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %off.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %xz_dec = alloca %struct.xz_dec*, align 8
  %dec_buf = alloca %struct.xz_buf, align 8
  %curr_off = alloca i64, align 8
  %finished = alloca i8, align 1
  %err = alloca i32, align 4
  %__UNIQUE_ID___x320 = alloca i64, align 8
  %__UNIQUE_ID___y321 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !799, metadata !DIExpression()), !dbg !800
  store i64 %off, i64* %off.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %off.addr, metadata !801, metadata !DIExpression()), !dbg !802
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !803, metadata !DIExpression()), !dbg !804
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !805, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.declare(metadata %struct.xz_dec** %xz_dec, metadata !807, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.declare(metadata %struct.xz_buf* %dec_buf, metadata !811, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.declare(metadata i64* %curr_off, metadata !825, metadata !DIExpression()), !dbg !826
  store i64 0, i64* %curr_off, align 8, !dbg !826
  call void @llvm.dbg.declare(metadata i8* %finished, metadata !827, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.declare(metadata i32* %err, metadata !829, metadata !DIExpression()), !dbg !830
  %call = call %struct.xz_dec* @xz_dec_init(i32 2, i32 -1) #7, !dbg !831
  store %struct.xz_dec* %call, %struct.xz_dec** %xz_dec, align 8, !dbg !832
  %0 = load %struct.xz_dec*, %struct.xz_dec** %xz_dec, align 8, !dbg !833
  %tobool = icmp ne %struct.xz_dec* %0, null, !dbg !833
  br i1 %tobool, label %if.end, label %if.then, !dbg !835

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !836
  br label %return, !dbg !836

if.end:                                           ; preds = %entry
  %1 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !837
  %cb_archive_size = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %1, i32 0, i32 6, !dbg !838
  %2 = load i32, i32* %cb_archive_size, align 8, !dbg !838
  %conv = zext i32 %2 to i64, !dbg !837
  %in_size = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %dec_buf, i32 0, i32 2, !dbg !839
  store i64 %conv, i64* %in_size, align 8, !dbg !840
  %3 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !841
  %cb = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %3, i32 0, i32 5, !dbg !842
  %4 = load i8*, i8** %cb, align 8, !dbg !842
  %in = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %dec_buf, i32 0, i32 0, !dbg !843
  store i8* %4, i8** %in, align 8, !dbg !844
  %in_pos = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %dec_buf, i32 0, i32 1, !dbg !845
  store i64 0, i64* %in_pos, align 8, !dbg !846
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !847
  %out = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %dec_buf, i32 0, i32 3, !dbg !848
  store i8* %5, i8** %out, align 8, !dbg !849
  br label %do.body, !dbg !850

do.body:                                          ; preds = %do.cond, %if.end
  %out_pos = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %dec_buf, i32 0, i32 4, !dbg !851
  store i64 0, i64* %out_pos, align 8, !dbg !853
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x320, metadata !854, metadata !DIExpression()), !dbg !856
  %6 = load i64, i64* %size.addr, align 8, !dbg !856
  store i64 %6, i64* %__UNIQUE_ID___x320, align 8, !dbg !856
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y321, metadata !857, metadata !DIExpression()), !dbg !856
  %7 = load i64, i64* %off.addr, align 8, !dbg !856
  %8 = load i64, i64* %curr_off, align 8, !dbg !856
  %sub = sub i64 %7, %8, !dbg !856
  store i64 %sub, i64* %__UNIQUE_ID___y321, align 8, !dbg !856
  %9 = load i64, i64* %__UNIQUE_ID___x320, align 8, !dbg !856
  %10 = load i64, i64* %__UNIQUE_ID___y321, align 8, !dbg !856
  %cmp = icmp ult i64 %9, %10, !dbg !856
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !856

cond.true:                                        ; preds = %do.body
  %11 = load i64, i64* %__UNIQUE_ID___x320, align 8, !dbg !856
  br label %cond.end, !dbg !856

cond.false:                                       ; preds = %do.body
  %12 = load i64, i64* %__UNIQUE_ID___y321, align 8, !dbg !856
  br label %cond.end, !dbg !856

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !856
  store i64 %cond, i64* %tmp, align 8, !dbg !856
  %13 = load i64, i64* %tmp, align 8, !dbg !856
  %out_size = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %dec_buf, i32 0, i32 5, !dbg !858
  store i64 %13, i64* %out_size, align 8, !dbg !859
  %out_size2 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %dec_buf, i32 0, i32 5, !dbg !860
  %14 = load i64, i64* %out_size2, align 8, !dbg !860
  %cmp3 = icmp eq i64 %14, 0, !dbg !862
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !863

if.then5:                                         ; preds = %cond.end
  br label %do.end, !dbg !864

if.end6:                                          ; preds = %cond.end
  %15 = load %struct.xz_dec*, %struct.xz_dec** %xz_dec, align 8, !dbg !865
  %call7 = call i32 @mlxfw_mfa2_xz_dec_run(%struct.xz_dec* %15, %struct.xz_buf* %dec_buf, i8* %finished) #7, !dbg !866
  store i32 %call7, i32* %err, align 4, !dbg !867
  %16 = load i32, i32* %err, align 4, !dbg !868
  %tobool8 = icmp ne i32 %16, 0, !dbg !868
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !870

if.then9:                                         ; preds = %if.end6
  br label %out21, !dbg !871

if.end10:                                         ; preds = %if.end6
  %17 = load i8, i8* %finished, align 1, !dbg !872
  %tobool11 = trunc i8 %17 to i1, !dbg !872
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !874

if.then12:                                        ; preds = %if.end10
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !875
  store i32 -22, i32* %err, align 4, !dbg !877
  br label %out21, !dbg !878

if.end14:                                         ; preds = %if.end10
  %out_pos15 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %dec_buf, i32 0, i32 4, !dbg !879
  %18 = load i64, i64* %out_pos15, align 8, !dbg !879
  %19 = load i64, i64* %curr_off, align 8, !dbg !880
  %add = add i64 %19, %18, !dbg !880
  store i64 %add, i64* %curr_off, align 8, !dbg !880
  br label %do.cond, !dbg !881

do.cond:                                          ; preds = %if.end14
  %20 = load i64, i64* %curr_off, align 8, !dbg !882
  %21 = load i64, i64* %off.addr, align 8, !dbg !883
  %cmp16 = icmp ne i64 %20, %21, !dbg !884
  br i1 %cmp16, label %do.body, label %do.end, !dbg !881, !llvm.loop !885

do.end:                                           ; preds = %do.cond, %if.then5
  %out_pos18 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %dec_buf, i32 0, i32 4, !dbg !887
  store i64 0, i64* %out_pos18, align 8, !dbg !888
  %22 = load i64, i64* %size.addr, align 8, !dbg !889
  %out_size19 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %dec_buf, i32 0, i32 5, !dbg !890
  store i64 %22, i64* %out_size19, align 8, !dbg !891
  %23 = load %struct.xz_dec*, %struct.xz_dec** %xz_dec, align 8, !dbg !892
  %call20 = call i32 @mlxfw_mfa2_xz_dec_run(%struct.xz_dec* %23, %struct.xz_buf* %dec_buf, i8* %finished) #7, !dbg !893
  store i32 %call20, i32* %err, align 4, !dbg !894
  br label %out21, !dbg !895

out21:                                            ; preds = %do.end, %if.then12, %if.then9
  call void @llvm.dbg.label(metadata !896), !dbg !897
  %24 = load %struct.xz_dec*, %struct.xz_dec** %xz_dec, align 8, !dbg !898
  call void @xz_dec_end(%struct.xz_dec* %24) #7, !dbg !899
  %25 = load i32, i32* %err, align 4, !dbg !900
  store i32 %25, i32* %retval, align 4, !dbg !901
  br label %return, !dbg !901

return:                                           ; preds = %out21, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !902
  ret i32 %26, !dbg !902
}

; Function Attrs: noredzone
declare dso_local void @vfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mlxfw_mfa2_file_component_put(%struct.mlxfw_mfa2_component* %comp) #0 !dbg !903 {
entry:
  %comp.addr = alloca %struct.mlxfw_mfa2_component*, align 8
  %comp_data = alloca %struct.mlxfw_mfa2_comp_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mlxfw_mfa2_comp_data*, align 8
  store %struct.mlxfw_mfa2_component* %comp, %struct.mlxfw_mfa2_component** %comp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_component** %comp.addr, metadata !906, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_comp_data** %comp_data, metadata !908, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !912, metadata !DIExpression()), !dbg !914
  %0 = load %struct.mlxfw_mfa2_component*, %struct.mlxfw_mfa2_component** %comp.addr, align 8, !dbg !914
  %1 = bitcast %struct.mlxfw_mfa2_component* %0 to i8*, !dbg !914
  store i8* %1, i8** %__mptr, align 8, !dbg !914
  br label %do.body, !dbg !914

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !915

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !914
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !914
  %3 = bitcast i8* %add.ptr to %struct.mlxfw_mfa2_comp_data*, !dbg !914
  store %struct.mlxfw_mfa2_comp_data* %3, %struct.mlxfw_mfa2_comp_data** %tmp, align 8, !dbg !915
  %4 = load %struct.mlxfw_mfa2_comp_data*, %struct.mlxfw_mfa2_comp_data** %tmp, align 8, !dbg !914
  store %struct.mlxfw_mfa2_comp_data* %4, %struct.mlxfw_mfa2_comp_data** %comp_data, align 8, !dbg !917
  %5 = load %struct.mlxfw_mfa2_comp_data*, %struct.mlxfw_mfa2_comp_data** %comp_data, align 8, !dbg !918
  %6 = bitcast %struct.mlxfw_mfa2_comp_data* %5 to i8*, !dbg !918
  call void @vfree(i8* %6) #7, !dbg !919
  ret void, !dbg !920
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mlxfw_mfa2_file_fini(%struct.mlxfw_mfa2_file* %mfa2_file) #0 !dbg !921 {
entry:
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !924, metadata !DIExpression()), !dbg !925
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !926
  %1 = bitcast %struct.mlxfw_mfa2_file* %0 to i8*, !dbg !926
  call void @kfree(i8* %1) #7, !dbg !927
  ret void, !dbg !928
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !929 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !930, metadata !DIExpression()), !dbg !937
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !946, metadata !DIExpression()), !dbg !947
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !948, metadata !DIExpression()), !dbg !949
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !950, metadata !DIExpression()), !dbg !951
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !952, metadata !DIExpression()), !dbg !956
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !958, metadata !DIExpression()), !dbg !962
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !964, metadata !DIExpression()), !dbg !968
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !973, metadata !DIExpression()), !dbg !974
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !975, metadata !DIExpression()), !dbg !976
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !977, metadata !DIExpression()), !dbg !978
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !979, metadata !DIExpression()), !dbg !980
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !981, metadata !DIExpression()), !dbg !982
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !983, metadata !DIExpression()), !dbg !984
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !985, metadata !DIExpression()), !dbg !986
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !987, metadata !DIExpression()), !dbg !988
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !989, metadata !DIExpression()), !dbg !990
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !991, metadata !DIExpression()), !dbg !992
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !993, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !995, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !997, metadata !DIExpression()), !dbg !1000
  %0 = load i64, i64* %n.addr, align 8, !dbg !1000
  store i64 %0, i64* %__a, align 8, !dbg !1000
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !1001, metadata !DIExpression()), !dbg !1000
  %1 = load i64, i64* %size.addr, align 8, !dbg !1000
  store i64 %1, i64* %__b, align 8, !dbg !1000
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !1002, metadata !DIExpression()), !dbg !1000
  store i64* %bytes, i64** %__d, align 8, !dbg !1000
  %cmp = icmp eq i64* %__a, %__b, !dbg !1000
  %conv = zext i1 %cmp to i32, !dbg !1000
  %2 = load i64*, i64** %__d, align 8, !dbg !1000
  %cmp1 = icmp eq i64* %__a, %2, !dbg !1000
  %conv2 = zext i1 %cmp1 to i32, !dbg !1000
  %3 = load i64, i64* %__a, align 8, !dbg !1000
  %4 = load i64, i64* %__b, align 8, !dbg !1000
  %5 = load i64*, i64** %__d, align 8, !dbg !1000
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !1000
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !1000
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !1000
  store i64 %8, i64* %5, align 8, !dbg !1000
  %frombool = zext i1 %7 to i8, !dbg !1000
  store i8 %frombool, i8* %tmp, align 1, !dbg !1000
  %9 = load i8, i8* %tmp, align 1, !dbg !1000
  %tobool = trunc i8 %9 to i1, !dbg !1000
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #7, !dbg !1004
  %lnot = xor i1 %call, true, !dbg !1004
  %lnot3 = xor i1 %lnot, true, !dbg !1004
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1004
  %conv4 = sext i32 %lnot.ext to i64, !dbg !1004
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !1004
  br i1 %tobool5, label %if.then, label %if.end, !dbg !1005

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !1006
  br label %return, !dbg !1006

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !1007
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !1008
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !1009

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !1010
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !1011
  br i1 %13, label %if.then6, label %if.end8, !dbg !1012

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !1013
  %15 = load i32, i32* %flags.addr, align 4, !dbg !1014
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !1015
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #10, !dbg !1016
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !1017

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !1018
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !1019
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1020

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !1021
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !1022
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !1023
  %call.i.i = call i32 @get_order(i64 %21) #9, !dbg !1024
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !982
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !1025
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1026
  %24 = load i32, i32* %order.i.i, align 4, !dbg !1027
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1028
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1029
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1030
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #11, !dbg !1031
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1031
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1031
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1031
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !1031
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1032
  br label %kmalloc.exit, !dbg !1032

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !1033
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1034
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !1034
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1036

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1037
  br label %kmalloc_index.exit.i, !dbg !1037

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1038
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !1040
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1041

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1042
  br label %kmalloc_index.exit.i, !dbg !1042

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1043
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !1045
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1046

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1047
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !1048
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1049

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1050
  br label %kmalloc_index.exit.i, !dbg !1050

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1051
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !1053
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1054

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1055
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !1056
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1057

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1058
  br label %kmalloc_index.exit.i, !dbg !1058

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1059
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !1061
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1062

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1063
  br label %kmalloc_index.exit.i, !dbg !1063

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1064
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !1066
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1067

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1068
  br label %kmalloc_index.exit.i, !dbg !1068

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1069
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !1071
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1072

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1073
  br label %kmalloc_index.exit.i, !dbg !1073

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1074
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !1076
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1077

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1078
  br label %kmalloc_index.exit.i, !dbg !1078

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1079
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !1081
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1082

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1083
  br label %kmalloc_index.exit.i, !dbg !1083

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1084
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !1086
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1087

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1088
  br label %kmalloc_index.exit.i, !dbg !1088

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1089
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !1091
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1092

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1093
  br label %kmalloc_index.exit.i, !dbg !1093

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1094
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !1096
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1097

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1098
  br label %kmalloc_index.exit.i, !dbg !1098

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1099
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !1101
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1102

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1103
  br label %kmalloc_index.exit.i, !dbg !1103

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1104
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !1106
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1107

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1108
  br label %kmalloc_index.exit.i, !dbg !1108

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1109
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !1111
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1112

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1113
  br label %kmalloc_index.exit.i, !dbg !1113

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1114
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !1116
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1117

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1118
  br label %kmalloc_index.exit.i, !dbg !1118

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1119
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !1121
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1122

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1123
  br label %kmalloc_index.exit.i, !dbg !1123

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1124
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !1126
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1127

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1128
  br label %kmalloc_index.exit.i, !dbg !1128

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1129
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !1131
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1132

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1133
  br label %kmalloc_index.exit.i, !dbg !1133

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1134
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !1136
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1137

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1138
  br label %kmalloc_index.exit.i, !dbg !1138

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1139
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !1141
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1142

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1143
  br label %kmalloc_index.exit.i, !dbg !1143

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1144
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !1146
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1147

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1148
  br label %kmalloc_index.exit.i, !dbg !1148

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1149
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !1151
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1152

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1153
  br label %kmalloc_index.exit.i, !dbg !1153

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1154
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !1156
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1157

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1158
  br label %kmalloc_index.exit.i, !dbg !1158

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1159
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !1161
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1162

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1163
  br label %kmalloc_index.exit.i, !dbg !1163

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1164
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !1166
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1167

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1168
  br label %kmalloc_index.exit.i, !dbg !1168

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1169
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !1171
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1172

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1173
  br label %kmalloc_index.exit.i, !dbg !1173

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1174
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !1176
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1177

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1178
  br label %kmalloc_index.exit.i, !dbg !1178

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !1179, !srcloc !1182
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 232) #10, !dbg !1183, !srcloc !1186
  unreachable, !dbg !1187

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !1188
  store i32 %59, i32* %index.i, align 4, !dbg !1189
  %60 = load i32, i32* %index.i, align 4, !dbg !1190
  %tobool.i = icmp ne i32 %60, 0, !dbg !1190
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1192

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1193
  br label %kmalloc.exit, !dbg !1193

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !1194
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1195
  %and.i.i = and i32 %62, 17, !dbg !1195
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1195
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1195
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1195
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1195
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1197

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1198
  br label %kmalloc_type.exit.i, !dbg !1198

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1199
  %and2.i.i = and i32 %63, 1, !dbg !1200
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1199
  %64 = zext i1 %tobool3.i.i to i64, !dbg !1199
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1199
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1201
  br label %kmalloc_type.exit.i, !dbg !1201

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !1202
  %idxprom.i = zext i32 %65 to i64, !dbg !1203
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1203
  %66 = load i32, i32* %index.i, align 4, !dbg !1204
  %idxprom6.i = zext i32 %66 to i64, !dbg !1203
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1203
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1203
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !1205
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !1206
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1207
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1208
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #11, !dbg !1209
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1209
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1209
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1209
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !1209
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !951
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1210
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !1211
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1212
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1213
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #11, !dbg !1214
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1215
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !1216
  store i8* %76, i8** %retval.i, align 8, !dbg !1217
  br label %kmalloc.exit, !dbg !1217

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !1218
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !1219
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #11, !dbg !1220
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1220
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1220
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1220
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !1220
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1221
  br label %kmalloc.exit, !dbg !1221

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !1222
  store i8* %79, i8** %retval, align 8, !dbg !1223
  br label %return, !dbg !1223

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !1224
  %81 = load i32, i32* %flags.addr, align 4, !dbg !1225
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #7, !dbg !1226
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !1226
  %maskedptr = and i64 %ptrint, 7, !dbg !1226
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !1226
  call void @llvm.assume(i1 %maskcond), !dbg !1226
  store i8* %call9, i8** %retval, align 8, !dbg !1227
  br label %return, !dbg !1227

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !1228
  ret i8* %82, !dbg !1228
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !1229 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !1233, metadata !DIExpression()), !dbg !1234
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !1235
  %tobool = trunc i8 %0 to i1, !dbg !1235
  %lnot = xor i1 %tobool, true, !dbg !1235
  %lnot1 = xor i1 %lnot, true, !dbg !1235
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1235
  %conv = sext i32 %lnot.ext to i64, !dbg !1235
  %tobool2 = icmp ne i64 %conv, 0, !dbg !1235
  ret i1 %tobool2, !dbg !1236
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1237 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1241, metadata !DIExpression()), !dbg !1246
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1248, metadata !DIExpression()), !dbg !1249
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1250, metadata !DIExpression()), !dbg !1251
  %0 = load i64, i64* %size.addr, align 8, !dbg !1252
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1254
  br i1 %1, label %if.then, label %if.end447, !dbg !1255

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1256
  %tobool = icmp ne i64 %2, 0, !dbg !1256
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1259

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1260
  br label %return, !dbg !1260

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1261
  %cmp = icmp ult i64 %3, 4096, !dbg !1263
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1264

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1265
  br label %return, !dbg !1265

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub = sub i64 %4, 1, !dbg !1266
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1266
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1266

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub4 = sub i64 %6, 1, !dbg !1266
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1266
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1266

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub6 = sub i64 %8, 1, !dbg !1266
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1266
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1266

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1266

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub9 = sub i64 %9, 1, !dbg !1266
  %and = and i64 %sub9, -9223372036854775808, !dbg !1266
  %tobool10 = icmp ne i64 %and, 0, !dbg !1266
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1266

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1266

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub13 = sub i64 %10, 1, !dbg !1266
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1266
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1266
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1266

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1266

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub18 = sub i64 %11, 1, !dbg !1266
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1266
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1266
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1266

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1266

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub23 = sub i64 %12, 1, !dbg !1266
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1266
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1266
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1266

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1266

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub28 = sub i64 %13, 1, !dbg !1266
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1266
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1266
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1266

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1266

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub33 = sub i64 %14, 1, !dbg !1266
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1266
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1266
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1266

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1266

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub38 = sub i64 %15, 1, !dbg !1266
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1266
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1266
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1266

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1266

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub43 = sub i64 %16, 1, !dbg !1266
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1266
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1266
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1266

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1266

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub48 = sub i64 %17, 1, !dbg !1266
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1266
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1266
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1266

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1266

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub53 = sub i64 %18, 1, !dbg !1266
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1266
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1266
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1266

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1266

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub58 = sub i64 %19, 1, !dbg !1266
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1266
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1266
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1266

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1266

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub63 = sub i64 %20, 1, !dbg !1266
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1266
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1266
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1266

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1266

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub68 = sub i64 %21, 1, !dbg !1266
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1266
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1266
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1266

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1266

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub73 = sub i64 %22, 1, !dbg !1266
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1266
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1266
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1266

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1266

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub78 = sub i64 %23, 1, !dbg !1266
  %and79 = and i64 %sub78, 562949953421312, !dbg !1266
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1266
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1266

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1266

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub83 = sub i64 %24, 1, !dbg !1266
  %and84 = and i64 %sub83, 281474976710656, !dbg !1266
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1266
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1266

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1266

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub88 = sub i64 %25, 1, !dbg !1266
  %and89 = and i64 %sub88, 140737488355328, !dbg !1266
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1266
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1266

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1266

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub93 = sub i64 %26, 1, !dbg !1266
  %and94 = and i64 %sub93, 70368744177664, !dbg !1266
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1266
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1266

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1266

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub98 = sub i64 %27, 1, !dbg !1266
  %and99 = and i64 %sub98, 35184372088832, !dbg !1266
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1266
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1266

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1266

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub103 = sub i64 %28, 1, !dbg !1266
  %and104 = and i64 %sub103, 17592186044416, !dbg !1266
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1266
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1266

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1266

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub108 = sub i64 %29, 1, !dbg !1266
  %and109 = and i64 %sub108, 8796093022208, !dbg !1266
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1266
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1266

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1266

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub113 = sub i64 %30, 1, !dbg !1266
  %and114 = and i64 %sub113, 4398046511104, !dbg !1266
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1266
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1266

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1266

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub118 = sub i64 %31, 1, !dbg !1266
  %and119 = and i64 %sub118, 2199023255552, !dbg !1266
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1266
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1266

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1266

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub123 = sub i64 %32, 1, !dbg !1266
  %and124 = and i64 %sub123, 1099511627776, !dbg !1266
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1266
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1266

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1266

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub128 = sub i64 %33, 1, !dbg !1266
  %and129 = and i64 %sub128, 549755813888, !dbg !1266
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1266
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1266

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1266

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub133 = sub i64 %34, 1, !dbg !1266
  %and134 = and i64 %sub133, 274877906944, !dbg !1266
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1266
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1266

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1266

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub138 = sub i64 %35, 1, !dbg !1266
  %and139 = and i64 %sub138, 137438953472, !dbg !1266
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1266
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1266

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1266

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub143 = sub i64 %36, 1, !dbg !1266
  %and144 = and i64 %sub143, 68719476736, !dbg !1266
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1266
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1266

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1266

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub148 = sub i64 %37, 1, !dbg !1266
  %and149 = and i64 %sub148, 34359738368, !dbg !1266
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1266
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1266

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1266

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub153 = sub i64 %38, 1, !dbg !1266
  %and154 = and i64 %sub153, 17179869184, !dbg !1266
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1266
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1266

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1266

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub158 = sub i64 %39, 1, !dbg !1266
  %and159 = and i64 %sub158, 8589934592, !dbg !1266
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1266
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1266

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1266

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub163 = sub i64 %40, 1, !dbg !1266
  %and164 = and i64 %sub163, 4294967296, !dbg !1266
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1266
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1266

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1266

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub168 = sub i64 %41, 1, !dbg !1266
  %and169 = and i64 %sub168, 2147483648, !dbg !1266
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1266
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1266

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1266

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub173 = sub i64 %42, 1, !dbg !1266
  %and174 = and i64 %sub173, 1073741824, !dbg !1266
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1266
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1266

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1266

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub178 = sub i64 %43, 1, !dbg !1266
  %and179 = and i64 %sub178, 536870912, !dbg !1266
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1266
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1266

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1266

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub183 = sub i64 %44, 1, !dbg !1266
  %and184 = and i64 %sub183, 268435456, !dbg !1266
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1266
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1266

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1266

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub188 = sub i64 %45, 1, !dbg !1266
  %and189 = and i64 %sub188, 134217728, !dbg !1266
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1266
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1266

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1266

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub193 = sub i64 %46, 1, !dbg !1266
  %and194 = and i64 %sub193, 67108864, !dbg !1266
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1266
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1266

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1266

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub198 = sub i64 %47, 1, !dbg !1266
  %and199 = and i64 %sub198, 33554432, !dbg !1266
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1266
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1266

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1266

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub203 = sub i64 %48, 1, !dbg !1266
  %and204 = and i64 %sub203, 16777216, !dbg !1266
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1266
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1266

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1266

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub208 = sub i64 %49, 1, !dbg !1266
  %and209 = and i64 %sub208, 8388608, !dbg !1266
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1266
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1266

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1266

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub213 = sub i64 %50, 1, !dbg !1266
  %and214 = and i64 %sub213, 4194304, !dbg !1266
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1266
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1266

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1266

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub218 = sub i64 %51, 1, !dbg !1266
  %and219 = and i64 %sub218, 2097152, !dbg !1266
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1266
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1266

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1266

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub223 = sub i64 %52, 1, !dbg !1266
  %and224 = and i64 %sub223, 1048576, !dbg !1266
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1266
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1266

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1266

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub228 = sub i64 %53, 1, !dbg !1266
  %and229 = and i64 %sub228, 524288, !dbg !1266
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1266
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1266

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1266

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub233 = sub i64 %54, 1, !dbg !1266
  %and234 = and i64 %sub233, 262144, !dbg !1266
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1266
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1266

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1266

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub238 = sub i64 %55, 1, !dbg !1266
  %and239 = and i64 %sub238, 131072, !dbg !1266
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1266
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1266

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1266

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub243 = sub i64 %56, 1, !dbg !1266
  %and244 = and i64 %sub243, 65536, !dbg !1266
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1266
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1266

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1266

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub248 = sub i64 %57, 1, !dbg !1266
  %and249 = and i64 %sub248, 32768, !dbg !1266
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1266
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1266

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1266

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub253 = sub i64 %58, 1, !dbg !1266
  %and254 = and i64 %sub253, 16384, !dbg !1266
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1266
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1266

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1266

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub258 = sub i64 %59, 1, !dbg !1266
  %and259 = and i64 %sub258, 8192, !dbg !1266
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1266
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1266

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1266

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub263 = sub i64 %60, 1, !dbg !1266
  %and264 = and i64 %sub263, 4096, !dbg !1266
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1266
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1266

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1266

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub268 = sub i64 %61, 1, !dbg !1266
  %and269 = and i64 %sub268, 2048, !dbg !1266
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1266
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1266

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1266

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub273 = sub i64 %62, 1, !dbg !1266
  %and274 = and i64 %sub273, 1024, !dbg !1266
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1266
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1266

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1266

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub278 = sub i64 %63, 1, !dbg !1266
  %and279 = and i64 %sub278, 512, !dbg !1266
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1266
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1266

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1266

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub283 = sub i64 %64, 1, !dbg !1266
  %and284 = and i64 %sub283, 256, !dbg !1266
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1266
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1266

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1266

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub288 = sub i64 %65, 1, !dbg !1266
  %and289 = and i64 %sub288, 128, !dbg !1266
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1266
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1266

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1266

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub293 = sub i64 %66, 1, !dbg !1266
  %and294 = and i64 %sub293, 64, !dbg !1266
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1266
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1266

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1266

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub298 = sub i64 %67, 1, !dbg !1266
  %and299 = and i64 %sub298, 32, !dbg !1266
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1266
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1266

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1266

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub303 = sub i64 %68, 1, !dbg !1266
  %and304 = and i64 %sub303, 16, !dbg !1266
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1266
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1266

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1266

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub308 = sub i64 %69, 1, !dbg !1266
  %and309 = and i64 %sub308, 8, !dbg !1266
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1266
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1266

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1266

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub313 = sub i64 %70, 1, !dbg !1266
  %and314 = and i64 %sub313, 4, !dbg !1266
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1266
  %71 = zext i1 %tobool315 to i64, !dbg !1266
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1266
  br label %cond.end, !dbg !1266

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1266
  br label %cond.end317, !dbg !1266

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1266
  br label %cond.end319, !dbg !1266

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1266
  br label %cond.end321, !dbg !1266

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1266
  br label %cond.end323, !dbg !1266

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1266
  br label %cond.end325, !dbg !1266

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1266
  br label %cond.end327, !dbg !1266

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1266
  br label %cond.end329, !dbg !1266

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1266
  br label %cond.end331, !dbg !1266

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1266
  br label %cond.end333, !dbg !1266

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1266
  br label %cond.end335, !dbg !1266

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1266
  br label %cond.end337, !dbg !1266

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1266
  br label %cond.end339, !dbg !1266

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1266
  br label %cond.end341, !dbg !1266

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1266
  br label %cond.end343, !dbg !1266

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1266
  br label %cond.end345, !dbg !1266

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1266
  br label %cond.end347, !dbg !1266

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1266
  br label %cond.end349, !dbg !1266

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1266
  br label %cond.end351, !dbg !1266

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1266
  br label %cond.end353, !dbg !1266

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1266
  br label %cond.end355, !dbg !1266

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1266
  br label %cond.end357, !dbg !1266

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1266
  br label %cond.end359, !dbg !1266

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1266
  br label %cond.end361, !dbg !1266

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1266
  br label %cond.end363, !dbg !1266

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1266
  br label %cond.end365, !dbg !1266

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1266
  br label %cond.end367, !dbg !1266

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1266
  br label %cond.end369, !dbg !1266

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1266
  br label %cond.end371, !dbg !1266

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1266
  br label %cond.end373, !dbg !1266

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1266
  br label %cond.end375, !dbg !1266

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1266
  br label %cond.end377, !dbg !1266

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1266
  br label %cond.end379, !dbg !1266

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1266
  br label %cond.end381, !dbg !1266

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1266
  br label %cond.end383, !dbg !1266

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1266
  br label %cond.end385, !dbg !1266

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1266
  br label %cond.end387, !dbg !1266

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1266
  br label %cond.end389, !dbg !1266

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1266
  br label %cond.end391, !dbg !1266

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1266
  br label %cond.end393, !dbg !1266

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1266
  br label %cond.end395, !dbg !1266

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1266
  br label %cond.end397, !dbg !1266

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1266
  br label %cond.end399, !dbg !1266

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1266
  br label %cond.end401, !dbg !1266

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1266
  br label %cond.end403, !dbg !1266

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1266
  br label %cond.end405, !dbg !1266

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1266
  br label %cond.end407, !dbg !1266

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1266
  br label %cond.end409, !dbg !1266

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1266
  br label %cond.end411, !dbg !1266

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1266
  br label %cond.end413, !dbg !1266

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1266
  br label %cond.end415, !dbg !1266

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1266
  br label %cond.end417, !dbg !1266

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1266
  br label %cond.end419, !dbg !1266

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1266
  br label %cond.end421, !dbg !1266

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1266
  br label %cond.end423, !dbg !1266

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1266
  br label %cond.end425, !dbg !1266

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1266
  br label %cond.end427, !dbg !1266

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1266
  br label %cond.end429, !dbg !1266

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1266
  br label %cond.end431, !dbg !1266

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1266
  br label %cond.end433, !dbg !1266

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1266
  br label %cond.end435, !dbg !1266

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1266
  br label %cond.end437, !dbg !1266

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1266
  br label %cond.end440, !dbg !1266

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1266

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1266
  br label %cond.end444, !dbg !1266

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1266
  %sub443 = sub i64 %72, 1, !dbg !1266
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1266
  br label %cond.end444, !dbg !1266

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1266
  %sub446 = sub i32 %cond445, 12, !dbg !1267
  %add = add i32 %sub446, 1, !dbg !1268
  store i32 %add, i32* %retval, align 4, !dbg !1269
  br label %return, !dbg !1269

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1270
  %dec = add i64 %73, -1, !dbg !1270
  store i64 %dec, i64* %size.addr, align 8, !dbg !1270
  %74 = load i64, i64* %size.addr, align 8, !dbg !1271
  %shr = lshr i64 %74, 12, !dbg !1271
  store i64 %shr, i64* %size.addr, align 8, !dbg !1271
  %75 = load i64, i64* %size.addr, align 8, !dbg !1272
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1249
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1273
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1274
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !1273, !srcloc !1275
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1273
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1276
  %add.i = add i32 %79, 1, !dbg !1277
  store i32 %add.i, i32* %retval, align 4, !dbg !1278
  br label %return, !dbg !1278

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1279
  ret i32 %80, !dbg !1279
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1280 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1241, metadata !DIExpression()), !dbg !1284
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1248, metadata !DIExpression()), !dbg !1286
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1287, metadata !DIExpression()), !dbg !1288
  %0 = load i64, i64* %n.addr, align 8, !dbg !1289
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1286
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1290
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1291
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !1290, !srcloc !1275
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1290
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1292
  %add.i = add i32 %4, 1, !dbg !1293
  %sub = sub i32 %add.i, 1, !dbg !1294
  ret i32 %sub, !dbg !1295
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1296 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1300, metadata !DIExpression()), !dbg !1301
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1302, metadata !DIExpression()), !dbg !1303
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1304, metadata !DIExpression()), !dbg !1305
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1306, metadata !DIExpression()), !dbg !1307
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1308
  ret i8* %0, !dbg !1309
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @mlxfw_mfa2_tlv_payload_get(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv* %tlv, i8 zeroext %payload_type, i64 %payload_size, i1 zeroext %varsize) #0 !dbg !1310 {
entry:
  %retval = alloca i8*, align 8
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %tlv.addr = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %payload_type.addr = alloca i8, align 1
  %payload_size.addr = alloca i64, align 8
  %varsize.addr = alloca i8, align 1
  %tlv_top = alloca i8*, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !1313, metadata !DIExpression()), !dbg !1314
  store %struct.mlxfw_mfa2_tlv* %tlv, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv.addr, metadata !1315, metadata !DIExpression()), !dbg !1316
  store i8 %payload_type, i8* %payload_type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %payload_type.addr, metadata !1317, metadata !DIExpression()), !dbg !1318
  store i64 %payload_size, i64* %payload_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %payload_size.addr, metadata !1319, metadata !DIExpression()), !dbg !1320
  %frombool = zext i1 %varsize to i8
  store i8 %frombool, i8* %varsize.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %varsize.addr, metadata !1321, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.declare(metadata i8** %tlv_top, metadata !1323, metadata !DIExpression()), !dbg !1324
  %0 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1325
  %1 = bitcast %struct.mlxfw_mfa2_tlv* %0 to i8*, !dbg !1326
  %2 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1327
  %len = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %2, i32 0, i32 2, !dbg !1327
  %3 = load i16, i16* %len, align 1, !dbg !1327
  %4 = call i1 @llvm.is.constant.i16(i16 %3), !dbg !1327
  br i1 %4, label %cond.true, label %cond.false, !dbg !1327

cond.true:                                        ; preds = %entry
  %5 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1327
  %len1 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %5, i32 0, i32 2, !dbg !1327
  %6 = load i16, i16* %len1, align 1, !dbg !1327
  %conv = zext i16 %6 to i32, !dbg !1327
  %and = and i32 %conv, 255, !dbg !1327
  %shl = shl i32 %and, 8, !dbg !1327
  %7 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1327
  %len2 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %7, i32 0, i32 2, !dbg !1327
  %8 = load i16, i16* %len2, align 1, !dbg !1327
  %conv3 = zext i16 %8 to i32, !dbg !1327
  %and4 = and i32 %conv3, 65280, !dbg !1327
  %shr = ashr i32 %and4, 8, !dbg !1327
  %or = or i32 %shl, %shr, !dbg !1327
  %conv5 = trunc i32 %or to i16, !dbg !1327
  %conv6 = zext i16 %conv5 to i32, !dbg !1327
  br label %cond.end, !dbg !1327

cond.false:                                       ; preds = %entry
  %9 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1327
  %len7 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %9, i32 0, i32 2, !dbg !1327
  %10 = load i16, i16* %len7, align 1, !dbg !1327
  %call = call zeroext i16 @__fswab16(i16 zeroext %10) #9, !dbg !1327
  %conv8 = zext i16 %call to i32, !dbg !1327
  br label %cond.end, !dbg !1327

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv6, %cond.true ], [ %conv8, %cond.false ], !dbg !1327
  %idx.ext = sext i32 %cond to i64, !dbg !1328
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !1328
  %add.ptr9 = getelementptr i8, i8* %add.ptr, i64 -1, !dbg !1329
  store i8* %add.ptr9, i8** %tlv_top, align 8, !dbg !1330
  %11 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1331
  %12 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1333
  %13 = bitcast %struct.mlxfw_mfa2_tlv* %12 to i8*, !dbg !1333
  %call10 = call zeroext i1 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %11, i8* %13) #7, !dbg !1334
  br i1 %call10, label %lor.lhs.false, label %if.then, !dbg !1335

lor.lhs.false:                                    ; preds = %cond.end
  %14 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1336
  %15 = load i8*, i8** %tlv_top, align 8, !dbg !1337
  %call11 = call zeroext i1 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %14, i8* %15) #7, !dbg !1338
  br i1 %call11, label %if.end, label %if.then, !dbg !1339

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i8* null, i8** %retval, align 8, !dbg !1340
  br label %return, !dbg !1340

if.end:                                           ; preds = %lor.lhs.false
  %16 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1341
  %type = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %16, i32 0, i32 1, !dbg !1343
  %17 = load i8, i8* %type, align 1, !dbg !1343
  %conv12 = zext i8 %17 to i32, !dbg !1341
  %18 = load i8, i8* %payload_type.addr, align 1, !dbg !1344
  %conv13 = zext i8 %18 to i32, !dbg !1344
  %cmp = icmp ne i32 %conv12, %conv13, !dbg !1345
  br i1 %cmp, label %if.then15, label %if.end16, !dbg !1346

if.then15:                                        ; preds = %if.end
  store i8* null, i8** %retval, align 8, !dbg !1347
  br label %return, !dbg !1347

if.end16:                                         ; preds = %if.end
  %19 = load i8, i8* %varsize.addr, align 1, !dbg !1348
  %tobool = trunc i8 %19 to i1, !dbg !1348
  br i1 %tobool, label %land.lhs.true, label %if.end41, !dbg !1350

land.lhs.true:                                    ; preds = %if.end16
  %20 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1351
  %len18 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %20, i32 0, i32 2, !dbg !1351
  %21 = load i16, i16* %len18, align 1, !dbg !1351
  %22 = call i1 @llvm.is.constant.i16(i16 %21), !dbg !1351
  br i1 %22, label %cond.true19, label %cond.false31, !dbg !1351

cond.true19:                                      ; preds = %land.lhs.true
  %23 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1351
  %len20 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %23, i32 0, i32 2, !dbg !1351
  %24 = load i16, i16* %len20, align 1, !dbg !1351
  %conv21 = zext i16 %24 to i32, !dbg !1351
  %and22 = and i32 %conv21, 255, !dbg !1351
  %shl23 = shl i32 %and22, 8, !dbg !1351
  %25 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1351
  %len24 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %25, i32 0, i32 2, !dbg !1351
  %26 = load i16, i16* %len24, align 1, !dbg !1351
  %conv25 = zext i16 %26 to i32, !dbg !1351
  %and26 = and i32 %conv25, 65280, !dbg !1351
  %shr27 = ashr i32 %and26, 8, !dbg !1351
  %or28 = or i32 %shl23, %shr27, !dbg !1351
  %conv29 = trunc i32 %or28 to i16, !dbg !1351
  %conv30 = zext i16 %conv29 to i32, !dbg !1351
  br label %cond.end35, !dbg !1351

cond.false31:                                     ; preds = %land.lhs.true
  %27 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1351
  %len32 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %27, i32 0, i32 2, !dbg !1351
  %28 = load i16, i16* %len32, align 1, !dbg !1351
  %call33 = call zeroext i16 @__fswab16(i16 zeroext %28) #9, !dbg !1351
  %conv34 = zext i16 %call33 to i32, !dbg !1351
  br label %cond.end35, !dbg !1351

cond.end35:                                       ; preds = %cond.false31, %cond.true19
  %cond36 = phi i32 [ %conv30, %cond.true19 ], [ %conv34, %cond.false31 ], !dbg !1351
  %conv37 = sext i32 %cond36 to i64, !dbg !1351
  %29 = load i64, i64* %payload_size.addr, align 8, !dbg !1352
  %cmp38 = icmp ult i64 %conv37, %29, !dbg !1353
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !1354

if.then40:                                        ; preds = %cond.end35
  store i8* null, i8** %retval, align 8, !dbg !1355
  br label %return, !dbg !1355

if.end41:                                         ; preds = %cond.end35, %if.end16
  %30 = load i8, i8* %varsize.addr, align 1, !dbg !1356
  %tobool42 = trunc i8 %30 to i1, !dbg !1356
  br i1 %tobool42, label %if.end67, label %land.lhs.true43, !dbg !1358

land.lhs.true43:                                  ; preds = %if.end41
  %31 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1359
  %len44 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %31, i32 0, i32 2, !dbg !1359
  %32 = load i16, i16* %len44, align 1, !dbg !1359
  %33 = call i1 @llvm.is.constant.i16(i16 %32), !dbg !1359
  br i1 %33, label %cond.true45, label %cond.false57, !dbg !1359

cond.true45:                                      ; preds = %land.lhs.true43
  %34 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1359
  %len46 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %34, i32 0, i32 2, !dbg !1359
  %35 = load i16, i16* %len46, align 1, !dbg !1359
  %conv47 = zext i16 %35 to i32, !dbg !1359
  %and48 = and i32 %conv47, 255, !dbg !1359
  %shl49 = shl i32 %and48, 8, !dbg !1359
  %36 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1359
  %len50 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %36, i32 0, i32 2, !dbg !1359
  %37 = load i16, i16* %len50, align 1, !dbg !1359
  %conv51 = zext i16 %37 to i32, !dbg !1359
  %and52 = and i32 %conv51, 65280, !dbg !1359
  %shr53 = ashr i32 %and52, 8, !dbg !1359
  %or54 = or i32 %shl49, %shr53, !dbg !1359
  %conv55 = trunc i32 %or54 to i16, !dbg !1359
  %conv56 = zext i16 %conv55 to i32, !dbg !1359
  br label %cond.end61, !dbg !1359

cond.false57:                                     ; preds = %land.lhs.true43
  %38 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1359
  %len58 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %38, i32 0, i32 2, !dbg !1359
  %39 = load i16, i16* %len58, align 1, !dbg !1359
  %call59 = call zeroext i16 @__fswab16(i16 zeroext %39) #9, !dbg !1359
  %conv60 = zext i16 %call59 to i32, !dbg !1359
  br label %cond.end61, !dbg !1359

cond.end61:                                       ; preds = %cond.false57, %cond.true45
  %cond62 = phi i32 [ %conv56, %cond.true45 ], [ %conv60, %cond.false57 ], !dbg !1359
  %conv63 = sext i32 %cond62 to i64, !dbg !1359
  %40 = load i64, i64* %payload_size.addr, align 8, !dbg !1360
  %cmp64 = icmp ne i64 %conv63, %40, !dbg !1361
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !1362

if.then66:                                        ; preds = %cond.end61
  store i8* null, i8** %retval, align 8, !dbg !1363
  br label %return, !dbg !1363

if.end67:                                         ; preds = %cond.end61, %if.end41
  %41 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1364
  %data = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %41, i32 0, i32 3, !dbg !1365
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !1364
  store i8* %arraydecay, i8** %retval, align 8, !dbg !1366
  br label %return, !dbg !1366

return:                                           ; preds = %if.end67, %if.then66, %if.then40, %if.then15, %if.then
  %42 = load i8*, i8** %retval, align 8, !dbg !1367
  ret i8* %42, !dbg !1367
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #5 !dbg !1368 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !1370, metadata !DIExpression()), !dbg !1371
  %0 = load i32, i32* %val.addr, align 4, !dbg !1372
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #13, !dbg !1373, !srcloc !1374
  store i32 %1, i32* %val.addr, align 4, !dbg !1373
  %2 = load i32, i32* %val.addr, align 4, !dbg !1375
  ret i32 %2, !dbg !1376
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mlxfw_mfa2_file_dev_validate(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv* %dev_tlv, i16 zeroext %dev_idx) #0 !dbg !1377 {
entry:
  %retval = alloca i1, align 1
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %dev_tlv.addr = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %dev_idx.addr = alloca i16, align 2
  %cptr = alloca %struct.mlxfw_mfa2_tlv_component_ptr*, align 8
  %multi = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %psid = alloca %struct.mlxfw_mfa2_tlv_psid*, align 8
  %tlv = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %cptr_count = alloca i16, align 2
  %cptr_idx = alloca i16, align 2
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !1380, metadata !DIExpression()), !dbg !1381
  store %struct.mlxfw_mfa2_tlv* %dev_tlv, %struct.mlxfw_mfa2_tlv** %dev_tlv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %dev_tlv.addr, metadata !1382, metadata !DIExpression()), !dbg !1383
  store i16 %dev_idx, i16* %dev_idx.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %dev_idx.addr, metadata !1384, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_component_ptr** %cptr, metadata !1386, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_multi** %multi, metadata !1388, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_psid** %psid, metadata !1390, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv, metadata !1392, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.declare(metadata i16* %cptr_count, metadata !1394, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.declare(metadata i16* %cptr_idx, metadata !1396, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.declare(metadata i32* %err, metadata !1398, metadata !DIExpression()), !dbg !1399
  store i32 0, i32* %tmp, align 4, !dbg !1400
  %0 = load i32, i32* %tmp, align 4, !dbg !1403
  %1 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1404
  %2 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %dev_tlv.addr, align 8, !dbg !1405
  %call = call %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file* %1, %struct.mlxfw_mfa2_tlv* %2) #7, !dbg !1406
  store %struct.mlxfw_mfa2_tlv_multi* %call, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !1407
  %3 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !1408
  %tobool = icmp ne %struct.mlxfw_mfa2_tlv_multi* %3, null, !dbg !1408
  br i1 %tobool, label %if.end, label %if.then, !dbg !1410

if.then:                                          ; preds = %entry
  %4 = load i16, i16* %dev_idx.addr, align 2, !dbg !1411
  %conv = zext i16 %4 to i32, !dbg !1411
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %conv) #8, !dbg !1411
  store i1 false, i1* %retval, align 1, !dbg !1413
  br label %return, !dbg !1413

if.end:                                           ; preds = %entry
  %5 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1414
  %6 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !1416
  %call2 = call zeroext i1 @mlxfw_mfa2_tlv_multi_validate(%struct.mlxfw_mfa2_file* %5, %struct.mlxfw_mfa2_tlv_multi* %6) #7, !dbg !1417
  br i1 %call2, label %if.end4, label %if.then3, !dbg !1418

if.then3:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !1419
  br label %return, !dbg !1419

if.end4:                                          ; preds = %if.end
  %7 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1420
  %8 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !1421
  %call5 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child_find(%struct.mlxfw_mfa2_file* %7, %struct.mlxfw_mfa2_tlv_multi* %8, i32 42, i16 zeroext 0) #7, !dbg !1422
  store %struct.mlxfw_mfa2_tlv* %call5, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1423
  %9 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1424
  %tobool6 = icmp ne %struct.mlxfw_mfa2_tlv* %9, null, !dbg !1424
  br i1 %tobool6, label %if.end10, label %if.then7, !dbg !1426

if.then7:                                         ; preds = %if.end4
  %10 = load i16, i16* %dev_idx.addr, align 2, !dbg !1427
  %conv8 = zext i16 %10 to i32, !dbg !1427
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %conv8) #8, !dbg !1427
  store i1 false, i1* %retval, align 1, !dbg !1429
  br label %return, !dbg !1429

if.end10:                                         ; preds = %if.end4
  %11 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1430
  %12 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1431
  %call11 = call %struct.mlxfw_mfa2_tlv_psid* @mlxfw_mfa2_tlv_psid_get(%struct.mlxfw_mfa2_file* %11, %struct.mlxfw_mfa2_tlv* %12) #7, !dbg !1432
  store %struct.mlxfw_mfa2_tlv_psid* %call11, %struct.mlxfw_mfa2_tlv_psid** %psid, align 8, !dbg !1433
  %13 = load %struct.mlxfw_mfa2_tlv_psid*, %struct.mlxfw_mfa2_tlv_psid** %psid, align 8, !dbg !1434
  %tobool12 = icmp ne %struct.mlxfw_mfa2_tlv_psid* %13, null, !dbg !1434
  br i1 %tobool12, label %if.end16, label %if.then13, !dbg !1436

if.then13:                                        ; preds = %if.end10
  %14 = load i16, i16* %dev_idx.addr, align 2, !dbg !1437
  %conv14 = zext i16 %14 to i32, !dbg !1437
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %conv14) #8, !dbg !1437
  store i1 false, i1* %retval, align 1, !dbg !1439
  br label %return, !dbg !1439

if.end16:                                         ; preds = %if.end10
  %15 = load %struct.mlxfw_mfa2_tlv_psid*, %struct.mlxfw_mfa2_tlv_psid** %psid, align 8, !dbg !1440
  %psid17 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_psid, %struct.mlxfw_mfa2_tlv_psid* %15, i32 0, i32 0, !dbg !1441
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %psid17, i64 0, i64 0, !dbg !1440
  %16 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1442
  %len = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %16, i32 0, i32 2, !dbg !1442
  %17 = load i16, i16* %len, align 1, !dbg !1442
  %18 = call i1 @llvm.is.constant.i16(i16 %17), !dbg !1442
  br i1 %18, label %cond.true, label %cond.false, !dbg !1442

cond.true:                                        ; preds = %if.end16
  %19 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1442
  %len18 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %19, i32 0, i32 2, !dbg !1442
  %20 = load i16, i16* %len18, align 1, !dbg !1442
  %conv19 = zext i16 %20 to i32, !dbg !1442
  %and = and i32 %conv19, 255, !dbg !1442
  %shl = shl i32 %and, 8, !dbg !1442
  %21 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1442
  %len20 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %21, i32 0, i32 2, !dbg !1442
  %22 = load i16, i16* %len20, align 1, !dbg !1442
  %conv21 = zext i16 %22 to i32, !dbg !1442
  %and22 = and i32 %conv21, 65280, !dbg !1442
  %shr = ashr i32 %and22, 8, !dbg !1442
  %or = or i32 %shl, %shr, !dbg !1442
  %conv23 = trunc i32 %or to i16, !dbg !1442
  %conv24 = zext i16 %conv23 to i32, !dbg !1442
  br label %cond.end, !dbg !1442

cond.false:                                       ; preds = %if.end16
  %23 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1442
  %len25 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %23, i32 0, i32 2, !dbg !1442
  %24 = load i16, i16* %len25, align 1, !dbg !1442
  %call26 = call zeroext i16 @__fswab16(i16 zeroext %24) #9, !dbg !1442
  %conv27 = zext i16 %call26 to i32, !dbg !1442
  br label %cond.end, !dbg !1442

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv24, %cond.true ], [ %conv27, %cond.false ], !dbg !1442
  %conv28 = sext i32 %cond to i64, !dbg !1442
  call void @print_hex_dump_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 0, i32 16, i32 16, i8* %arraydecay, i64 %conv28, i1 zeroext true) #7, !dbg !1443
  %25 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1444
  %26 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !1445
  %call29 = call i32 @mlxfw_mfa2_tlv_multi_child_count(%struct.mlxfw_mfa2_file* %25, %struct.mlxfw_mfa2_tlv_multi* %26, i32 34, i16* %cptr_count) #7, !dbg !1446
  store i32 %call29, i32* %err, align 4, !dbg !1447
  %27 = load i32, i32* %err, align 4, !dbg !1448
  %tobool30 = icmp ne i32 %27, 0, !dbg !1448
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !1450

if.then31:                                        ; preds = %cond.end
  store i1 false, i1* %retval, align 1, !dbg !1451
  br label %return, !dbg !1451

if.end32:                                         ; preds = %cond.end
  %28 = load i16, i16* %cptr_count, align 2, !dbg !1452
  %conv33 = zext i16 %28 to i32, !dbg !1452
  %cmp = icmp eq i32 %conv33, 0, !dbg !1454
  br i1 %cmp, label %if.then35, label %if.end38, !dbg !1455

if.then35:                                        ; preds = %if.end32
  %29 = load i16, i16* %dev_idx.addr, align 2, !dbg !1456
  %conv36 = zext i16 %29 to i32, !dbg !1456
  %call37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %conv36) #8, !dbg !1456
  store i1 false, i1* %retval, align 1, !dbg !1458
  br label %return, !dbg !1458

if.end38:                                         ; preds = %if.end32
  store i16 0, i16* %cptr_idx, align 2, !dbg !1459
  br label %for.cond, !dbg !1461

for.cond:                                         ; preds = %for.inc, %if.end38
  %30 = load i16, i16* %cptr_idx, align 2, !dbg !1462
  %conv39 = zext i16 %30 to i32, !dbg !1462
  %31 = load i16, i16* %cptr_count, align 2, !dbg !1464
  %conv40 = zext i16 %31 to i32, !dbg !1464
  %cmp41 = icmp slt i32 %conv39, %conv40, !dbg !1465
  br i1 %cmp41, label %for.body, label %for.end, !dbg !1466

for.body:                                         ; preds = %for.cond
  %32 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1467
  %33 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !1469
  %34 = load i16, i16* %cptr_idx, align 2, !dbg !1470
  %call43 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child_find(%struct.mlxfw_mfa2_file* %32, %struct.mlxfw_mfa2_tlv_multi* %33, i32 34, i16 zeroext %34) #7, !dbg !1471
  store %struct.mlxfw_mfa2_tlv* %call43, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1472
  %35 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1473
  %tobool44 = icmp ne %struct.mlxfw_mfa2_tlv* %35, null, !dbg !1473
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !1475

if.then45:                                        ; preds = %for.body
  store i1 false, i1* %retval, align 1, !dbg !1476
  br label %return, !dbg !1476

if.end46:                                         ; preds = %for.body
  %36 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1477
  %37 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1478
  %call47 = call %struct.mlxfw_mfa2_tlv_component_ptr* @mlxfw_mfa2_tlv_component_ptr_get(%struct.mlxfw_mfa2_file* %36, %struct.mlxfw_mfa2_tlv* %37) #7, !dbg !1479
  store %struct.mlxfw_mfa2_tlv_component_ptr* %call47, %struct.mlxfw_mfa2_tlv_component_ptr** %cptr, align 8, !dbg !1480
  %38 = load %struct.mlxfw_mfa2_tlv_component_ptr*, %struct.mlxfw_mfa2_tlv_component_ptr** %cptr, align 8, !dbg !1481
  %tobool48 = icmp ne %struct.mlxfw_mfa2_tlv_component_ptr* %38, null, !dbg !1481
  br i1 %tobool48, label %if.end52, label %if.then49, !dbg !1483

if.then49:                                        ; preds = %if.end46
  %39 = load i16, i16* %dev_idx.addr, align 2, !dbg !1484
  %conv50 = zext i16 %39 to i32, !dbg !1484
  %call51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i32 %conv50) #8, !dbg !1484
  store i1 false, i1* %retval, align 1, !dbg !1486
  br label %return, !dbg !1486

if.end52:                                         ; preds = %if.end46
  store i32 0, i32* %tmp53, align 4, !dbg !1487
  %40 = load i32, i32* %tmp53, align 4, !dbg !1490
  br label %for.inc, !dbg !1491

for.inc:                                          ; preds = %if.end52
  %41 = load i16, i16* %cptr_idx, align 2, !dbg !1492
  %inc = add i16 %41, 1, !dbg !1492
  store i16 %inc, i16* %cptr_idx, align 2, !dbg !1492
  br label %for.cond, !dbg !1493, !llvm.loop !1494

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1, !dbg !1496
  br label %return, !dbg !1496

return:                                           ; preds = %for.end, %if.then49, %if.then45, %if.then35, %if.then31, %if.then13, %if.then7, %if.then3, %if.then
  %42 = load i1, i1* %retval, align 1, !dbg !1497
  ret i1 %42, !dbg !1497
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mlxfw_mfa2_file_comp_validate(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv* %comp_tlv, i16 zeroext %comp_idx) #0 !dbg !1498 {
entry:
  %retval = alloca i1, align 1
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %comp_tlv.addr = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %comp_idx.addr = alloca i16, align 2
  %cdesc = alloca %struct.mlxfw_mfa2_tlv_component_descriptor*, align 8
  %multi = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %tlv = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %tmp = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !1499, metadata !DIExpression()), !dbg !1500
  store %struct.mlxfw_mfa2_tlv* %comp_tlv, %struct.mlxfw_mfa2_tlv** %comp_tlv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %comp_tlv.addr, metadata !1501, metadata !DIExpression()), !dbg !1502
  store i16 %comp_idx, i16* %comp_idx.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %comp_idx.addr, metadata !1503, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_component_descriptor** %cdesc, metadata !1505, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_multi** %multi, metadata !1507, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv, metadata !1509, metadata !DIExpression()), !dbg !1510
  store i32 0, i32* %tmp, align 4, !dbg !1511
  %0 = load i32, i32* %tmp, align 4, !dbg !1514
  %1 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1515
  %2 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %comp_tlv.addr, align 8, !dbg !1516
  %call = call %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file* %1, %struct.mlxfw_mfa2_tlv* %2) #7, !dbg !1517
  store %struct.mlxfw_mfa2_tlv_multi* %call, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !1518
  %3 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !1519
  %tobool = icmp ne %struct.mlxfw_mfa2_tlv_multi* %3, null, !dbg !1519
  br i1 %tobool, label %if.end, label %if.then, !dbg !1521

if.then:                                          ; preds = %entry
  %4 = load i16, i16* %comp_idx.addr, align 2, !dbg !1522
  %conv = zext i16 %4 to i32, !dbg !1522
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0), i32 %conv) #8, !dbg !1522
  store i1 false, i1* %retval, align 1, !dbg !1524
  br label %return, !dbg !1524

if.end:                                           ; preds = %entry
  %5 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1525
  %6 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !1527
  %call2 = call zeroext i1 @mlxfw_mfa2_tlv_multi_validate(%struct.mlxfw_mfa2_file* %5, %struct.mlxfw_mfa2_tlv_multi* %6) #7, !dbg !1528
  br i1 %call2, label %if.end4, label %if.then3, !dbg !1529

if.then3:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !1530
  br label %return, !dbg !1530

if.end4:                                          ; preds = %if.end
  %7 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1531
  %8 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !1532
  %call5 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file* %7, %struct.mlxfw_mfa2_tlv_multi* %8) #7, !dbg !1533
  store %struct.mlxfw_mfa2_tlv* %call5, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1534
  %9 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1535
  %tobool6 = icmp ne %struct.mlxfw_mfa2_tlv* %9, null, !dbg !1535
  br i1 %tobool6, label %if.end10, label %if.then7, !dbg !1537

if.then7:                                         ; preds = %if.end4
  %10 = load i16, i16* %comp_idx.addr, align 2, !dbg !1538
  %conv8 = zext i16 %10 to i32, !dbg !1538
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0), i32 %conv8) #8, !dbg !1538
  store i1 false, i1* %retval, align 1, !dbg !1540
  br label %return, !dbg !1540

if.end10:                                         ; preds = %if.end4
  %11 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1541
  %12 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1542
  %call11 = call %struct.mlxfw_mfa2_tlv_component_descriptor* @mlxfw_mfa2_tlv_component_descriptor_get(%struct.mlxfw_mfa2_file* %11, %struct.mlxfw_mfa2_tlv* %12) #7, !dbg !1543
  store %struct.mlxfw_mfa2_tlv_component_descriptor* %call11, %struct.mlxfw_mfa2_tlv_component_descriptor** %cdesc, align 8, !dbg !1544
  %13 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %cdesc, align 8, !dbg !1545
  %tobool12 = icmp ne %struct.mlxfw_mfa2_tlv_component_descriptor* %13, null, !dbg !1545
  br i1 %tobool12, label %if.end16, label %if.then13, !dbg !1547

if.then13:                                        ; preds = %if.end10
  %14 = load i16, i16* %comp_idx.addr, align 2, !dbg !1548
  %conv14 = zext i16 %14 to i32, !dbg !1548
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i64 0, i64 0), i32 %conv14) #8, !dbg !1548
  store i1 false, i1* %retval, align 1, !dbg !1550
  br label %return, !dbg !1550

if.end16:                                         ; preds = %if.end10
  store i32 0, i32* %tmp17, align 4, !dbg !1551
  %15 = load i32, i32* %tmp17, align 4, !dbg !1554
  store i32 0, i32* %tmp18, align 4, !dbg !1555
  %16 = load i32, i32* %tmp18, align 4, !dbg !1558
  store i1 true, i1* %retval, align 1, !dbg !1559
  br label %return, !dbg !1559

return:                                           ; preds = %if.end16, %if.then13, %if.then7, %if.then3, %if.then
  %17 = load i1, i1* %retval, align 1, !dbg !1560
  ret i1 %17, !dbg !1560
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mlxfw_mfa2_tlv_multi_validate(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv_multi* %multi) #0 !dbg !1561 {
entry:
  %retval = alloca i1, align 1
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %multi.addr = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %tlv = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %idx = alloca i16, align 2
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !1564, metadata !DIExpression()), !dbg !1565
  store %struct.mlxfw_mfa2_tlv_multi* %multi, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_multi** %multi.addr, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv, metadata !1568, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.declare(metadata i16* %idx, metadata !1570, metadata !DIExpression()), !dbg !1571
  store i16 0, i16* %idx, align 2, !dbg !1572
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1572
  %1 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !1572
  %call = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_tlv_multi* %1) #7, !dbg !1572
  store %struct.mlxfw_mfa2_tlv* %call, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1572
  br label %for.cond, !dbg !1572

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i16, i16* %idx, align 2, !dbg !1574
  %conv = zext i16 %2 to i32, !dbg !1574
  %3 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !1574
  %num_extensions = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %3, i32 0, i32 0, !dbg !1574
  %4 = load i16, i16* %num_extensions, align 1, !dbg !1574
  %5 = call i1 @llvm.is.constant.i16(i16 %4), !dbg !1574
  br i1 %5, label %cond.true, label %cond.false, !dbg !1574

cond.true:                                        ; preds = %for.cond
  %6 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !1574
  %num_extensions1 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %6, i32 0, i32 0, !dbg !1574
  %7 = load i16, i16* %num_extensions1, align 1, !dbg !1574
  %conv2 = zext i16 %7 to i32, !dbg !1574
  %and = and i32 %conv2, 255, !dbg !1574
  %shl = shl i32 %and, 8, !dbg !1574
  %8 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !1574
  %num_extensions3 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %8, i32 0, i32 0, !dbg !1574
  %9 = load i16, i16* %num_extensions3, align 1, !dbg !1574
  %conv4 = zext i16 %9 to i32, !dbg !1574
  %and5 = and i32 %conv4, 65280, !dbg !1574
  %shr = ashr i32 %and5, 8, !dbg !1574
  %or = or i32 %shl, %shr, !dbg !1574
  %conv6 = trunc i32 %or to i16, !dbg !1574
  %conv7 = zext i16 %conv6 to i32, !dbg !1574
  br label %cond.end, !dbg !1574

cond.false:                                       ; preds = %for.cond
  %10 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !1574
  %num_extensions8 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %10, i32 0, i32 0, !dbg !1574
  %11 = load i16, i16* %num_extensions8, align 1, !dbg !1574
  %call9 = call zeroext i16 @__fswab16(i16 zeroext %11) #9, !dbg !1574
  %conv10 = zext i16 %call9 to i32, !dbg !1574
  br label %cond.end, !dbg !1574

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !1574
  %add = add i32 %cond, 1, !dbg !1574
  %cmp = icmp slt i32 %conv, %add, !dbg !1574
  br i1 %cmp, label %for.body, label %for.end, !dbg !1572

for.body:                                         ; preds = %cond.end
  %12 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1576
  %tobool = icmp ne %struct.mlxfw_mfa2_tlv* %12, null, !dbg !1576
  br i1 %tobool, label %if.end, label %if.then, !dbg !1579

if.then:                                          ; preds = %for.body
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !1580
  store i1 false, i1* %retval, align 1, !dbg !1582
  br label %return, !dbg !1582

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1583

for.inc:                                          ; preds = %if.end
  %13 = load i16, i16* %idx, align 2, !dbg !1574
  %inc = add i16 %13, 1, !dbg !1574
  store i16 %inc, i16* %idx, align 2, !dbg !1574
  %14 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1574
  %15 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1574
  %call13 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_next(%struct.mlxfw_mfa2_file* %14, %struct.mlxfw_mfa2_tlv* %15) #7, !dbg !1574
  store %struct.mlxfw_mfa2_tlv* %call13, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !1574
  br label %for.cond, !dbg !1574, !llvm.loop !1584

for.end:                                          ; preds = %cond.end
  store i1 true, i1* %retval, align 1, !dbg !1586
  br label %return, !dbg !1586

return:                                           ; preds = %for.end, %if.then
  %16 = load i1, i1* %retval, align 1, !dbg !1587
  ret i1 %16, !dbg !1587
}

; Function Attrs: noredzone
declare dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child_find(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv_multi*, i32, i16 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mlxfw_mfa2_tlv_psid* @mlxfw_mfa2_tlv_psid_get(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv* %tlv) #0 !dbg !1588 {
entry:
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %tlv.addr = alloca %struct.mlxfw_mfa2_tlv*, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !1591, metadata !DIExpression()), !dbg !1592
  store %struct.mlxfw_mfa2_tlv* %tlv, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv.addr, metadata !1593, metadata !DIExpression()), !dbg !1592
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1592
  %1 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1592
  %call = call i8* @mlxfw_mfa2_tlv_payload_get(%struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_tlv* %1, i8 zeroext 42, i64 0, i1 zeroext true) #7, !dbg !1592
  %2 = bitcast i8* %call to %struct.mlxfw_mfa2_tlv_psid*, !dbg !1592
  ret %struct.mlxfw_mfa2_tlv_psid* %2, !dbg !1592
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @print_hex_dump_debug(i8* %prefix_str, i32 %prefix_type, i32 %rowsize, i32 %groupsize, i8* %buf, i64 %len, i1 zeroext %ascii) #0 !dbg !1594 {
entry:
  %prefix_str.addr = alloca i8*, align 8
  %prefix_type.addr = alloca i32, align 4
  %rowsize.addr = alloca i32, align 4
  %groupsize.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ascii.addr = alloca i8, align 1
  store i8* %prefix_str, i8** %prefix_str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prefix_str.addr, metadata !1597, metadata !DIExpression()), !dbg !1598
  store i32 %prefix_type, i32* %prefix_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %prefix_type.addr, metadata !1599, metadata !DIExpression()), !dbg !1600
  store i32 %rowsize, i32* %rowsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rowsize.addr, metadata !1601, metadata !DIExpression()), !dbg !1602
  store i32 %groupsize, i32* %groupsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %groupsize.addr, metadata !1603, metadata !DIExpression()), !dbg !1604
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !1605, metadata !DIExpression()), !dbg !1606
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !1607, metadata !DIExpression()), !dbg !1608
  %frombool = zext i1 %ascii to i8
  store i8 %frombool, i8* %ascii.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ascii.addr, metadata !1609, metadata !DIExpression()), !dbg !1610
  ret void, !dbg !1611
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mlxfw_mfa2_tlv_component_ptr* @mlxfw_mfa2_tlv_component_ptr_get(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv* %tlv) #0 !dbg !1612 {
entry:
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %tlv.addr = alloca %struct.mlxfw_mfa2_tlv*, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !1615, metadata !DIExpression()), !dbg !1616
  store %struct.mlxfw_mfa2_tlv* %tlv, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv.addr, metadata !1617, metadata !DIExpression()), !dbg !1616
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1616
  %1 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1616
  %call = call i8* @mlxfw_mfa2_tlv_payload_get(%struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_tlv* %1, i8 zeroext 34, i64 8, i1 zeroext false) #7, !dbg !1616
  %2 = bitcast i8* %call to %struct.mlxfw_mfa2_tlv_component_ptr*, !dbg !1616
  ret %struct.mlxfw_mfa2_tlv_component_ptr* %2, !dbg !1616
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mlxfw_mfa2_tlv_component_descriptor* @mlxfw_mfa2_tlv_component_descriptor_get(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv* %tlv) #0 !dbg !1618 {
entry:
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %tlv.addr = alloca %struct.mlxfw_mfa2_tlv*, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !1621, metadata !DIExpression()), !dbg !1622
  store %struct.mlxfw_mfa2_tlv* %tlv, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv.addr, metadata !1623, metadata !DIExpression()), !dbg !1622
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1622
  %1 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !1622
  %call = call i8* @mlxfw_mfa2_tlv_payload_get(%struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_tlv* %1, i8 zeroext 4, i64 16, i1 zeroext false) #7, !dbg !1622
  %2 = bitcast i8* %call to %struct.mlxfw_mfa2_tlv_component_descriptor*, !dbg !1622
  ret %struct.mlxfw_mfa2_tlv_component_descriptor* %2, !dbg !1622
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mlxfw_mfa2_tlv_component_descriptor* @mlxfw_mfa2_file_component_tlv_get(%struct.mlxfw_mfa2_file* %mfa2_file, i16 zeroext %comp_index) #0 !dbg !1624 {
entry:
  %retval = alloca %struct.mlxfw_mfa2_tlv_component_descriptor*, align 8
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %comp_index.addr = alloca i16, align 2
  %multi = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %multi_child = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %comp_tlv = alloca %struct.mlxfw_mfa2_tlv*, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !1627, metadata !DIExpression()), !dbg !1628
  store i16 %comp_index, i16* %comp_index.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %comp_index.addr, metadata !1629, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_multi** %multi, metadata !1631, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %multi_child, metadata !1633, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %comp_tlv, metadata !1635, metadata !DIExpression()), !dbg !1636
  %0 = load i16, i16* %comp_index.addr, align 2, !dbg !1637
  %conv = zext i16 %0 to i32, !dbg !1637
  %1 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1639
  %component_count = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %1, i32 0, i32 4, !dbg !1640
  %2 = load i16, i16* %component_count, align 8, !dbg !1640
  %conv1 = zext i16 %2 to i32, !dbg !1639
  %cmp = icmp sgt i32 %conv, %conv1, !dbg !1641
  br i1 %cmp, label %if.then, label %if.end, !dbg !1642

if.then:                                          ; preds = %entry
  store %struct.mlxfw_mfa2_tlv_component_descriptor* null, %struct.mlxfw_mfa2_tlv_component_descriptor** %retval, align 8, !dbg !1643
  br label %return, !dbg !1643

if.end:                                           ; preds = %entry
  %3 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1644
  %4 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1645
  %first_component = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %4, i32 0, i32 3, !dbg !1646
  %5 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %first_component, align 8, !dbg !1646
  %6 = load i16, i16* %comp_index.addr, align 2, !dbg !1647
  %call = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_advance(%struct.mlxfw_mfa2_file* %3, %struct.mlxfw_mfa2_tlv* %5, i16 zeroext %6) #7, !dbg !1648
  store %struct.mlxfw_mfa2_tlv* %call, %struct.mlxfw_mfa2_tlv** %comp_tlv, align 8, !dbg !1649
  %7 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %comp_tlv, align 8, !dbg !1650
  %tobool = icmp ne %struct.mlxfw_mfa2_tlv* %7, null, !dbg !1650
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !1652

if.then3:                                         ; preds = %if.end
  store %struct.mlxfw_mfa2_tlv_component_descriptor* null, %struct.mlxfw_mfa2_tlv_component_descriptor** %retval, align 8, !dbg !1653
  br label %return, !dbg !1653

if.end4:                                          ; preds = %if.end
  %8 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1654
  %9 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %comp_tlv, align 8, !dbg !1655
  %call5 = call %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file* %8, %struct.mlxfw_mfa2_tlv* %9) #7, !dbg !1656
  store %struct.mlxfw_mfa2_tlv_multi* %call5, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !1657
  %10 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !1658
  %tobool6 = icmp ne %struct.mlxfw_mfa2_tlv_multi* %10, null, !dbg !1658
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1660

if.then7:                                         ; preds = %if.end4
  store %struct.mlxfw_mfa2_tlv_component_descriptor* null, %struct.mlxfw_mfa2_tlv_component_descriptor** %retval, align 8, !dbg !1661
  br label %return, !dbg !1661

if.end8:                                          ; preds = %if.end4
  %11 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1662
  %12 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !1663
  %call9 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file* %11, %struct.mlxfw_mfa2_tlv_multi* %12) #7, !dbg !1664
  store %struct.mlxfw_mfa2_tlv* %call9, %struct.mlxfw_mfa2_tlv** %multi_child, align 8, !dbg !1665
  %13 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %multi_child, align 8, !dbg !1666
  %tobool10 = icmp ne %struct.mlxfw_mfa2_tlv* %13, null, !dbg !1666
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1668

if.then11:                                        ; preds = %if.end8
  store %struct.mlxfw_mfa2_tlv_component_descriptor* null, %struct.mlxfw_mfa2_tlv_component_descriptor** %retval, align 8, !dbg !1669
  br label %return, !dbg !1669

if.end12:                                         ; preds = %if.end8
  %14 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !1670
  %15 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %multi_child, align 8, !dbg !1671
  %call13 = call %struct.mlxfw_mfa2_tlv_component_descriptor* @mlxfw_mfa2_tlv_component_descriptor_get(%struct.mlxfw_mfa2_file* %14, %struct.mlxfw_mfa2_tlv* %15) #7, !dbg !1672
  store %struct.mlxfw_mfa2_tlv_component_descriptor* %call13, %struct.mlxfw_mfa2_tlv_component_descriptor** %retval, align 8, !dbg !1673
  br label %return, !dbg !1673

return:                                           ; preds = %if.end12, %if.then11, %if.then7, %if.then3, %if.then
  %16 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %retval, align 8, !dbg !1674
  ret %struct.mlxfw_mfa2_tlv_component_descriptor* %16, !dbg !1674
}

; Function Attrs: noredzone
declare dso_local %struct.xz_dec* @xz_dec_init(i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mlxfw_mfa2_xz_dec_run(%struct.xz_dec* %xz_dec, %struct.xz_buf* %xz_buf, i8* %finished) #0 !dbg !1675 {
entry:
  %retval = alloca i32, align 4
  %xz_dec.addr = alloca %struct.xz_dec*, align 8
  %xz_buf.addr = alloca %struct.xz_buf*, align 8
  %finished.addr = alloca i8*, align 8
  %xz_ret = alloca i32, align 4
  store %struct.xz_dec* %xz_dec, %struct.xz_dec** %xz_dec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xz_dec** %xz_dec.addr, metadata !1680, metadata !DIExpression()), !dbg !1681
  store %struct.xz_buf* %xz_buf, %struct.xz_buf** %xz_buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xz_buf** %xz_buf.addr, metadata !1682, metadata !DIExpression()), !dbg !1683
  store i8* %finished, i8** %finished.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %finished.addr, metadata !1684, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.declare(metadata i32* %xz_ret, metadata !1686, metadata !DIExpression()), !dbg !1687
  %0 = load %struct.xz_dec*, %struct.xz_dec** %xz_dec.addr, align 8, !dbg !1688
  %1 = load %struct.xz_buf*, %struct.xz_buf** %xz_buf.addr, align 8, !dbg !1689
  %call = call i32 @xz_dec_run(%struct.xz_dec* %0, %struct.xz_buf* %1) #7, !dbg !1690
  store i32 %call, i32* %xz_ret, align 4, !dbg !1691
  %2 = load i32, i32* %xz_ret, align 4, !dbg !1692
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 3, label %sw.bb2
    i32 7, label %sw.bb4
    i32 5, label %sw.bb6
    i32 6, label %sw.bb8
    i32 4, label %sw.bb10
  ], !dbg !1693

sw.bb:                                            ; preds = %entry
  %3 = load i8*, i8** %finished.addr, align 8, !dbg !1694
  store i8 1, i8* %3, align 1, !dbg !1696
  store i32 0, i32* %retval, align 4, !dbg !1697
  br label %return, !dbg !1697

sw.bb1:                                           ; preds = %entry
  %4 = load i8*, i8** %finished.addr, align 8, !dbg !1698
  store i8 0, i8* %4, align 1, !dbg !1699
  store i32 0, i32* %retval, align 4, !dbg !1700
  br label %return, !dbg !1700

sw.bb2:                                           ; preds = %entry
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !1701
  store i32 -12, i32* %retval, align 4, !dbg !1702
  br label %return, !dbg !1702

sw.bb4:                                           ; preds = %entry
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1703
  store i32 -22, i32* %retval, align 4, !dbg !1704
  br label %return, !dbg !1704

sw.bb6:                                           ; preds = %entry
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !1705
  store i32 -22, i32* %retval, align 4, !dbg !1706
  br label %return, !dbg !1706

sw.bb8:                                           ; preds = %entry
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !1707
  store i32 -22, i32* %retval, align 4, !dbg !1708
  br label %return, !dbg !1708

sw.bb10:                                          ; preds = %entry
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !1709
  store i32 -22, i32* %retval, align 4, !dbg !1710
  br label %return, !dbg !1710

sw.default:                                       ; preds = %entry
  %5 = load i32, i32* %xz_ret, align 4, !dbg !1711
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32 %5) #8, !dbg !1711
  store i32 -22, i32* %retval, align 4, !dbg !1712
  br label %return, !dbg !1712

return:                                           ; preds = %sw.default, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  %6 = load i32, i32* %retval, align 4, !dbg !1713
  ret i32 %6, !dbg !1713
}

; Function Attrs: noredzone
declare dso_local void @xz_dec_end(%struct.xz_dec*) #2

; Function Attrs: noredzone
declare dso_local i32 @xz_dec_run(%struct.xz_dec*, %struct.xz_buf*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind willreturn }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mlxfw_mfa2_fingerprint", scope: !2, file: !3, line: 78, type: !98, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !49, globals: !89, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !19, !26, !32, !38}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mlxfw_mfa2_tlv_type", file: !12, line: 10, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2_format.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "MLXFW_MFA2_TLV_MULTI_PART", value: 1, isUnsigned: true)
!15 = !DIEnumerator(name: "MLXFW_MFA2_TLV_PACKAGE_DESCRIPTOR", value: 2, isUnsigned: true)
!16 = !DIEnumerator(name: "MLXFW_MFA2_TLV_COMPONENT_DESCRIPTOR", value: 4, isUnsigned: true)
!17 = !DIEnumerator(name: "MLXFW_MFA2_TLV_COMPONENT_PTR", value: 34, isUnsigned: true)
!18 = !DIEnumerator(name: "MLXFW_MFA2_TLV_PSID", value: 42, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !20, line: 305, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 567, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/lizy2001/genbc/linux")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "DUMP_PREFIX_NONE", value: 0, isUnsigned: true)
!30 = !DIEnumerator(name: "DUMP_PREFIX_ADDRESS", value: 1, isUnsigned: true)
!31 = !DIEnumerator(name: "DUMP_PREFIX_OFFSET", value: 2, isUnsigned: true)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xz_mode", file: !33, line: 52, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/xz.h", directory: "/home/lizy2001/genbc/linux")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "XZ_SINGLE", value: 0, isUnsigned: true)
!36 = !DIEnumerator(name: "XZ_PREALLOC", value: 1, isUnsigned: true)
!37 = !DIEnumerator(name: "XZ_DYNALLOC", value: 2, isUnsigned: true)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xz_ret", file: !33, line: 108, baseType: !7, size: 32, elements: !39)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48}
!40 = !DIEnumerator(name: "XZ_OK", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "XZ_STREAM_END", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "XZ_UNSUPPORTED_CHECK", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "XZ_MEM_ERROR", value: 3, isUnsigned: true)
!44 = !DIEnumerator(name: "XZ_MEMLIMIT_ERROR", value: 4, isUnsigned: true)
!45 = !DIEnumerator(name: "XZ_FORMAT_ERROR", value: 5, isUnsigned: true)
!46 = !DIEnumerator(name: "XZ_OPTIONS_ERROR", value: 6, isUnsigned: true)
!47 = !DIEnumerator(name: "XZ_DATA_ERROR", value: 7, isUnsigned: true)
!48 = !DIEnumerator(name: "XZ_BUF_ERROR", value: 8, isUnsigned: true)
!49 = !{!50, !52, !55, !57, !58, !59, !63, !64, !74, !84}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !51, line: 148, baseType: !7)
!51 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !53, line: 24, baseType: !54)
!53 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !56, line: 30, baseType: !52)
!56 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !53, line: 27, baseType: !7)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !56, line: 32, baseType: !57)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !60, line: 23, baseType: !61)
!60 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !53, line: 31, baseType: !62)
!62 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxfw_mfa2_comp_data", file: !3, line: 497, size: 128, elements: !66)
!66 = !{!67, !80}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !65, file: !3, line: 498, baseType: !68, size: 128)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxfw_mfa2_component", file: !69, line: 10, size: 128, elements: !70)
!69 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.h", directory: "/home/lizy2001/genbc/linux")
!70 = !{!71, !73, !75}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !68, file: !69, line: 11, baseType: !72, size: 16)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !60, line: 19, baseType: !52)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !68, file: !69, line: 12, baseType: !74, size: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !60, line: 21, baseType: !57)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !68, file: !69, line: 13, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !60, line: 17, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !53, line: 21, baseType: !79)
!79 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !65, file: !3, line: 499, baseType: !81, offset: 128)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: -1)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 55, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !86, line: 72, baseType: !87)
!86 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !86, line: 16, baseType: !88)
!88 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!89 = !{!90, !94, !0, !96}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!91 = distinct !DIGlobalVariable(name: "mlxfw_mfa2_fingerprint_len", scope: !2, file: !3, line: 79, type: !92, isLocal: true, isDefinition: true)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!95 = distinct !DIGlobalVariable(name: "mlxfw_mfa2_comp_magic_len", scope: !2, file: !3, line: 83, type: !92, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "mlxfw_mfa2_comp_magic", scope: !2, file: !3, line: 82, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 136, elements: !100)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!100 = !{!101}
!101 = !DISubrange(count: 17)
!102 = !{i32 7, !"Dwarf Version", i32 4}
!103 = !{i32 2, !"Debug Info Version", i32 3}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"Code Model", i32 2}
!106 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!107 = distinct !DISubprogram(name: "mlxfw_mfa2_check", scope: !3, file: !3, line: 85, type: !108, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !112}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !51, line: 30, baseType: !111)
!111 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !115, line: 12, size: 192, elements: !116)
!115 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !120}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !114, file: !115, line: 13, baseType: !84, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !114, file: !115, line: 14, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !114, file: !115, line: 17, baseType: !63, size: 64, offset: 128)
!121 = !{}
!122 = !DILocalVariable(name: "fw", arg: 1, scope: !107, file: !3, line: 85, type: !112)
!123 = !DILocation(line: 85, column: 46, scope: !107)
!124 = !DILocation(line: 87, column: 6, scope: !125)
!125 = distinct !DILexicalBlock(scope: !107, file: !3, line: 87, column: 6)
!126 = !DILocation(line: 87, column: 10, scope: !125)
!127 = !DILocation(line: 87, column: 15, scope: !125)
!128 = !DILocation(line: 87, column: 6, scope: !107)
!129 = !DILocation(line: 88, column: 3, scope: !125)
!130 = !DILocation(line: 90, column: 16, scope: !107)
!131 = !DILocation(line: 90, column: 20, scope: !107)
!132 = !DILocation(line: 90, column: 9, scope: !107)
!133 = !DILocation(line: 91, column: 37, scope: !107)
!134 = !DILocation(line: 90, column: 2, scope: !107)
!135 = !DILocation(line: 92, column: 1, scope: !107)
!136 = distinct !DISubprogram(name: "mlxfw_mfa2_file_init", scope: !3, file: !3, line: 260, type: !137, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!137 = !DISubroutineType(types: !138)
!138 = !{!139, !112}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxfw_mfa2_file", file: !141, line: 10, size: 448, elements: !142)
!141 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2_file.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !144, !154, !155, !156, !157, !160}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "fw", scope: !140, file: !141, line: 11, baseType: !112, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "first_dev", scope: !140, file: !141, line: 12, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxfw_mfa2_tlv", file: !148, line: 10, size: 32, elements: !149)
!148 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2_tlv.h", directory: "/home/lizy2001/genbc/linux")
!149 = !{!150, !151, !152, !153}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !147, file: !148, line: 11, baseType: !77, size: 8)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !148, line: 12, baseType: !77, size: 8, offset: 8)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !147, file: !148, line: 13, baseType: !55, size: 16, offset: 16)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !147, file: !148, line: 14, baseType: !81, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "dev_count", scope: !140, file: !141, line: 13, baseType: !72, size: 16, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "first_component", scope: !140, file: !141, line: 14, baseType: !145, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "component_count", scope: !140, file: !141, line: 15, baseType: !72, size: 16, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !140, file: !141, line: 16, baseType: !158, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cb_archive_size", scope: !140, file: !141, line: 17, baseType: !74, size: 32, offset: 384)
!161 = !DILocalVariable(name: "fw", arg: 1, scope: !136, file: !3, line: 260, type: !112)
!162 = !DILocation(line: 260, column: 69, scope: !136)
!163 = !DILocalVariable(name: "pd", scope: !136, file: !3, line: 262, type: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxfw_mfa2_tlv_package_descriptor", file: !12, line: 23, size: 224, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174, !178, !179}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !166, file: !12, line: 24, baseType: !55, size: 16)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "num_devices", scope: !166, file: !12, line: 25, baseType: !55, size: 16, offset: 16)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "cb_offset", scope: !166, file: !12, line: 26, baseType: !58, size: 32, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "cb_archive_size", scope: !166, file: !12, line: 27, baseType: !58, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "cb_size_h", scope: !166, file: !12, line: 28, baseType: !58, size: 32, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "cb_size_l", scope: !166, file: !12, line: 29, baseType: !58, size: 32, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !166, file: !12, line: 30, baseType: !175, size: 24, offset: 160)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 24, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 3)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "cv_compression", scope: !166, file: !12, line: 31, baseType: !77, size: 8, offset: 184)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "user_data_offset", scope: !166, file: !12, line: 32, baseType: !58, size: 32, offset: 192)
!180 = !DILocation(line: 262, column: 50, scope: !136)
!181 = !DILocalVariable(name: "multi", scope: !136, file: !3, line: 263, type: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxfw_mfa2_tlv_multi", file: !12, line: 38, size: 32, elements: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "num_extensions", scope: !184, file: !12, line: 39, baseType: !55, size: 16)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "total_len", scope: !184, file: !12, line: 40, baseType: !55, size: 16, offset: 16)
!188 = !DILocation(line: 263, column: 37, scope: !136)
!189 = !DILocalVariable(name: "multi_child", scope: !136, file: !3, line: 264, type: !145)
!190 = !DILocation(line: 264, column: 31, scope: !136)
!191 = !DILocalVariable(name: "first_tlv", scope: !136, file: !3, line: 265, type: !145)
!192 = !DILocation(line: 265, column: 31, scope: !136)
!193 = !DILocalVariable(name: "mfa2_file", scope: !136, file: !3, line: 266, type: !139)
!194 = !DILocation(line: 266, column: 26, scope: !136)
!195 = !DILocalVariable(name: "first_tlv_ptr", scope: !136, file: !3, line: 267, type: !158)
!196 = !DILocation(line: 267, column: 14, scope: !136)
!197 = !DILocalVariable(name: "cb_top_ptr", scope: !136, file: !3, line: 268, type: !158)
!198 = !DILocation(line: 268, column: 14, scope: !136)
!199 = !DILocation(line: 270, column: 14, scope: !136)
!200 = !DILocation(line: 270, column: 12, scope: !136)
!201 = !DILocation(line: 271, column: 7, scope: !202)
!202 = distinct !DILexicalBlock(scope: !136, file: !3, line: 271, column: 6)
!203 = !DILocation(line: 271, column: 6, scope: !136)
!204 = !DILocation(line: 272, column: 10, scope: !202)
!205 = !DILocation(line: 272, column: 3, scope: !202)
!206 = !DILocation(line: 274, column: 18, scope: !136)
!207 = !DILocation(line: 274, column: 2, scope: !136)
!208 = !DILocation(line: 274, column: 13, scope: !136)
!209 = !DILocation(line: 274, column: 16, scope: !136)
!210 = !DILocation(line: 275, column: 18, scope: !136)
!211 = !DILocation(line: 275, column: 22, scope: !136)
!212 = !DILocation(line: 275, column: 27, scope: !136)
!213 = !DILocation(line: 275, column: 16, scope: !136)
!214 = !DILocation(line: 276, column: 33, scope: !136)
!215 = !DILocation(line: 276, column: 44, scope: !136)
!216 = !DILocation(line: 276, column: 14, scope: !136)
!217 = !DILocation(line: 276, column: 12, scope: !136)
!218 = !DILocation(line: 277, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !136, file: !3, line: 277, column: 6)
!220 = !DILocation(line: 277, column: 6, scope: !136)
!221 = !DILocation(line: 278, column: 3, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !3, line: 277, column: 18)
!223 = !DILocation(line: 279, column: 3, scope: !222)
!224 = !DILocation(line: 282, column: 35, scope: !136)
!225 = !DILocation(line: 282, column: 46, scope: !136)
!226 = !DILocation(line: 282, column: 10, scope: !136)
!227 = !DILocation(line: 282, column: 8, scope: !136)
!228 = !DILocation(line: 283, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !136, file: !3, line: 283, column: 6)
!230 = !DILocation(line: 283, column: 6, scope: !136)
!231 = !DILocation(line: 284, column: 3, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !3, line: 283, column: 14)
!233 = !DILocation(line: 285, column: 3, scope: !232)
!234 = !DILocation(line: 288, column: 43, scope: !136)
!235 = !DILocation(line: 288, column: 54, scope: !136)
!236 = !DILocation(line: 288, column: 16, scope: !136)
!237 = !DILocation(line: 288, column: 14, scope: !136)
!238 = !DILocation(line: 289, column: 7, scope: !239)
!239 = distinct !DILexicalBlock(scope: !136, file: !3, line: 289, column: 6)
!240 = !DILocation(line: 289, column: 6, scope: !136)
!241 = !DILocation(line: 290, column: 3, scope: !239)
!242 = !DILocation(line: 292, column: 45, scope: !136)
!243 = !DILocation(line: 292, column: 56, scope: !136)
!244 = !DILocation(line: 292, column: 7, scope: !136)
!245 = !DILocation(line: 292, column: 5, scope: !136)
!246 = !DILocation(line: 293, column: 7, scope: !247)
!247 = distinct !DILexicalBlock(scope: !136, file: !3, line: 293, column: 6)
!248 = !DILocation(line: 293, column: 6, scope: !136)
!249 = !DILocation(line: 294, column: 3, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !3, line: 293, column: 11)
!251 = !DILocation(line: 295, column: 3, scope: !250)
!252 = !DILocation(line: 298, column: 45, scope: !136)
!253 = !DILocation(line: 298, column: 56, scope: !136)
!254 = !DILocation(line: 298, column: 25, scope: !136)
!255 = !DILocation(line: 298, column: 2, scope: !136)
!256 = !DILocation(line: 298, column: 13, scope: !136)
!257 = !DILocation(line: 298, column: 23, scope: !136)
!258 = !DILocation(line: 299, column: 7, scope: !259)
!259 = distinct !DILexicalBlock(scope: !136, file: !3, line: 299, column: 6)
!260 = !DILocation(line: 299, column: 18, scope: !259)
!261 = !DILocation(line: 299, column: 6, scope: !136)
!262 = !DILocation(line: 300, column: 3, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !3, line: 299, column: 29)
!264 = !DILocation(line: 301, column: 3, scope: !263)
!265 = !DILocation(line: 304, column: 25, scope: !136)
!266 = !DILocation(line: 304, column: 2, scope: !136)
!267 = !DILocation(line: 304, column: 13, scope: !136)
!268 = !DILocation(line: 304, column: 23, scope: !136)
!269 = !DILocation(line: 305, column: 54, scope: !136)
!270 = !DILocation(line: 306, column: 12, scope: !136)
!271 = !DILocation(line: 306, column: 23, scope: !136)
!272 = !DILocation(line: 307, column: 12, scope: !136)
!273 = !DILocation(line: 307, column: 23, scope: !136)
!274 = !DILocation(line: 305, column: 31, scope: !136)
!275 = !DILocation(line: 305, column: 2, scope: !136)
!276 = !DILocation(line: 305, column: 13, scope: !136)
!277 = !DILocation(line: 305, column: 29, scope: !136)
!278 = !DILocation(line: 308, column: 31, scope: !136)
!279 = !DILocation(line: 308, column: 2, scope: !136)
!280 = !DILocation(line: 308, column: 13, scope: !136)
!281 = !DILocation(line: 308, column: 29, scope: !136)
!282 = !DILocation(line: 309, column: 18, scope: !136)
!283 = !DILocation(line: 309, column: 22, scope: !136)
!284 = !DILocation(line: 309, column: 29, scope: !136)
!285 = !DILocation(line: 309, column: 27, scope: !136)
!286 = !DILocation(line: 309, column: 2, scope: !136)
!287 = !DILocation(line: 309, column: 13, scope: !136)
!288 = !DILocation(line: 309, column: 16, scope: !136)
!289 = !DILocation(line: 310, column: 28, scope: !290)
!290 = distinct !DILexicalBlock(scope: !136, file: !3, line: 310, column: 6)
!291 = !DILocation(line: 310, column: 39, scope: !290)
!292 = !DILocation(line: 310, column: 50, scope: !290)
!293 = !DILocation(line: 310, column: 7, scope: !290)
!294 = !DILocation(line: 310, column: 6, scope: !136)
!295 = !DILocation(line: 311, column: 3, scope: !296)
!296 = distinct !DILexicalBlock(scope: !290, file: !3, line: 310, column: 55)
!297 = !DILocation(line: 312, column: 3, scope: !296)
!298 = !DILocation(line: 314, column: 31, scope: !136)
!299 = !DILocation(line: 314, column: 2, scope: !136)
!300 = !DILocation(line: 314, column: 13, scope: !136)
!301 = !DILocation(line: 314, column: 29, scope: !136)
!302 = !DILocation(line: 315, column: 15, scope: !136)
!303 = !DILocation(line: 315, column: 26, scope: !136)
!304 = !DILocation(line: 315, column: 31, scope: !136)
!305 = !DILocation(line: 315, column: 42, scope: !136)
!306 = !DILocation(line: 315, column: 29, scope: !136)
!307 = !DILocation(line: 315, column: 58, scope: !136)
!308 = !DILocation(line: 315, column: 13, scope: !136)
!309 = !DILocation(line: 316, column: 28, scope: !310)
!310 = distinct !DILexicalBlock(scope: !136, file: !3, line: 316, column: 6)
!311 = !DILocation(line: 316, column: 39, scope: !310)
!312 = !DILocation(line: 316, column: 7, scope: !310)
!313 = !DILocation(line: 316, column: 6, scope: !136)
!314 = !DILocation(line: 317, column: 3, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !3, line: 316, column: 52)
!316 = !DILocation(line: 318, column: 3, scope: !315)
!317 = !DILocation(line: 321, column: 32, scope: !318)
!318 = distinct !DILexicalBlock(scope: !136, file: !3, line: 321, column: 6)
!319 = !DILocation(line: 321, column: 7, scope: !318)
!320 = !DILocation(line: 321, column: 6, scope: !136)
!321 = !DILocation(line: 322, column: 3, scope: !318)
!322 = !DILocation(line: 323, column: 9, scope: !136)
!323 = !DILocation(line: 323, column: 2, scope: !136)
!324 = !DILabel(scope: !136, name: "err_out", file: !3, line: 324)
!325 = !DILocation(line: 324, column: 1, scope: !136)
!326 = !DILocation(line: 325, column: 8, scope: !136)
!327 = !DILocation(line: 325, column: 2, scope: !136)
!328 = !DILocation(line: 326, column: 9, scope: !136)
!329 = !DILocation(line: 326, column: 2, scope: !136)
!330 = !DILocation(line: 327, column: 1, scope: !136)
!331 = distinct !DISubprogram(name: "kcalloc", scope: !20, file: !20, line: 601, type: !332, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!332 = !DISubroutineType(types: !333)
!333 = !{!63, !84, !84, !50}
!334 = !DILocalVariable(name: "n", arg: 1, scope: !331, file: !20, line: 601, type: !84)
!335 = !DILocation(line: 601, column: 36, scope: !331)
!336 = !DILocalVariable(name: "size", arg: 2, scope: !331, file: !20, line: 601, type: !84)
!337 = !DILocation(line: 601, column: 46, scope: !331)
!338 = !DILocalVariable(name: "flags", arg: 3, scope: !331, file: !20, line: 601, type: !50)
!339 = !DILocation(line: 601, column: 58, scope: !331)
!340 = !DILocation(line: 603, column: 23, scope: !331)
!341 = !DILocation(line: 603, column: 26, scope: !331)
!342 = !DILocation(line: 603, column: 32, scope: !331)
!343 = !DILocation(line: 603, column: 38, scope: !331)
!344 = !DILocation(line: 603, column: 9, scope: !331)
!345 = !DILocation(line: 603, column: 2, scope: !331)
!346 = distinct !DISubprogram(name: "ERR_PTR", scope: !347, file: !347, line: 24, type: !348, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!347 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!348 = !DISubroutineType(types: !349)
!349 = !{!63, !350}
!350 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!351 = !DILocalVariable(name: "error", arg: 1, scope: !346, file: !347, line: 24, type: !350)
!352 = !DILocation(line: 24, column: 48, scope: !346)
!353 = !DILocation(line: 26, column: 18, scope: !346)
!354 = !DILocation(line: 26, column: 9, scope: !346)
!355 = !DILocation(line: 26, column: 2, scope: !346)
!356 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_get", scope: !148, file: !148, line: 18, type: !357, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!357 = !DISubroutineType(types: !358)
!358 = !{!145, !359, !158}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!361 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !356, file: !148, line: 18, type: !359)
!362 = !DILocation(line: 18, column: 50, scope: !356)
!363 = !DILocalVariable(name: "ptr", arg: 2, scope: !356, file: !148, line: 18, type: !158)
!364 = !DILocation(line: 18, column: 73, scope: !356)
!365 = !DILocation(line: 20, column: 28, scope: !366)
!366 = distinct !DILexicalBlock(scope: !356, file: !148, line: 20, column: 6)
!367 = !DILocation(line: 20, column: 39, scope: !366)
!368 = !DILocation(line: 20, column: 7, scope: !366)
!369 = !DILocation(line: 20, column: 44, scope: !366)
!370 = !DILocation(line: 21, column: 28, scope: !366)
!371 = !DILocation(line: 21, column: 39, scope: !366)
!372 = !DILocation(line: 21, column: 43, scope: !366)
!373 = !DILocation(line: 21, column: 7, scope: !366)
!374 = !DILocation(line: 20, column: 6, scope: !356)
!375 = !DILocation(line: 22, column: 3, scope: !366)
!376 = !DILocation(line: 23, column: 9, scope: !356)
!377 = !DILocation(line: 23, column: 2, scope: !356)
!378 = !DILocation(line: 24, column: 1, scope: !356)
!379 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_multi_get", scope: !12, file: !12, line: 43, type: !380, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!380 = !DISubroutineType(types: !381)
!381 = !{!182, !359, !145}
!382 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !379, file: !12, line: 43, type: !359)
!383 = !DILocation(line: 43, column: 1, scope: !379)
!384 = !DILocalVariable(name: "tlv", arg: 2, scope: !379, file: !12, line: 43, type: !145)
!385 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_package_descriptor_get", scope: !12, file: !12, line: 35, type: !386, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!386 = !DISubroutineType(types: !387)
!387 = !{!164, !359, !145}
!388 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !385, file: !12, line: 35, type: !359)
!389 = !DILocation(line: 35, column: 1, scope: !385)
!390 = !DILocalVariable(name: "tlv", arg: 2, scope: !385, file: !12, line: 35, type: !145)
!391 = distinct !DISubprogram(name: "__fswab16", scope: !392, file: !392, line: 48, type: !393, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!392 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!393 = !DISubroutineType(types: !394)
!394 = !{!52, !52}
!395 = !DILocalVariable(name: "val", arg: 1, scope: !391, file: !392, line: 48, type: !52)
!396 = !DILocation(line: 48, column: 57, scope: !391)
!397 = !DILocation(line: 53, column: 9, scope: !391)
!398 = !DILocation(line: 53, column: 2, scope: !391)
!399 = distinct !DISubprogram(name: "__fswab32", scope: !392, file: !392, line: 57, type: !400, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!400 = !DISubroutineType(types: !401)
!401 = !{!57, !57}
!402 = !DILocalVariable(name: "val", arg: 1, scope: !399, file: !392, line: 57, type: !57)
!403 = !DILocation(line: 57, column: 57, scope: !399)
!404 = !DILocation(line: 60, column: 23, scope: !399)
!405 = !DILocation(line: 60, column: 9, scope: !399)
!406 = !DILocation(line: 60, column: 2, scope: !399)
!407 = distinct !DISubprogram(name: "mlxfw_mfa2_valid_ptr", scope: !141, file: !141, line: 20, type: !408, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!408 = !DISubroutineType(types: !409)
!409 = !{!110, !359, !158}
!410 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !407, file: !141, line: 20, type: !359)
!411 = !DILocation(line: 20, column: 71, scope: !407)
!412 = !DILocalVariable(name: "ptr", arg: 2, scope: !407, file: !141, line: 21, type: !158)
!413 = !DILocation(line: 21, column: 18, scope: !407)
!414 = !DILocalVariable(name: "valid_to", scope: !407, file: !141, line: 23, type: !158)
!415 = !DILocation(line: 23, column: 14, scope: !407)
!416 = !DILocation(line: 23, column: 25, scope: !407)
!417 = !DILocation(line: 23, column: 36, scope: !407)
!418 = !DILocation(line: 23, column: 40, scope: !407)
!419 = !DILocation(line: 23, column: 47, scope: !407)
!420 = !DILocation(line: 23, column: 58, scope: !407)
!421 = !DILocation(line: 23, column: 62, scope: !407)
!422 = !DILocation(line: 23, column: 45, scope: !407)
!423 = !DILocalVariable(name: "valid_from", scope: !407, file: !141, line: 24, type: !158)
!424 = !DILocation(line: 24, column: 14, scope: !407)
!425 = !DILocation(line: 24, column: 27, scope: !407)
!426 = !DILocation(line: 24, column: 38, scope: !407)
!427 = !DILocation(line: 24, column: 42, scope: !407)
!428 = !DILocation(line: 26, column: 9, scope: !407)
!429 = !DILocation(line: 26, column: 15, scope: !407)
!430 = !DILocation(line: 26, column: 13, scope: !407)
!431 = !DILocation(line: 26, column: 26, scope: !407)
!432 = !DILocation(line: 26, column: 29, scope: !407)
!433 = !DILocation(line: 26, column: 35, scope: !407)
!434 = !DILocation(line: 26, column: 33, scope: !407)
!435 = !DILocation(line: 0, scope: !407)
!436 = !DILocation(line: 26, column: 2, scope: !407)
!437 = distinct !DISubprogram(name: "mlxfw_mfa2_file_validate", scope: !3, file: !3, line: 225, type: !438, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!438 = !DISubroutineType(types: !439)
!439 = !{!110, !359}
!440 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !437, file: !3, line: 225, type: !359)
!441 = !DILocation(line: 225, column: 68, scope: !437)
!442 = !DILocalVariable(name: "tlv", scope: !437, file: !3, line: 227, type: !145)
!443 = !DILocation(line: 227, column: 31, scope: !437)
!444 = !DILocalVariable(name: "idx", scope: !437, file: !3, line: 228, type: !72)
!445 = !DILocation(line: 228, column: 6, scope: !437)
!446 = !DILocation(line: 230, column: 2, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 230, column: 2)
!448 = distinct !DILexicalBlock(scope: !437, file: !3, line: 230, column: 2)
!449 = !DILocation(line: 230, column: 2, scope: !448)
!450 = !DILocation(line: 233, column: 2, scope: !451)
!451 = distinct !DILexicalBlock(scope: !437, file: !3, line: 233, column: 2)
!452 = !DILocation(line: 233, column: 2, scope: !453)
!453 = distinct !DILexicalBlock(scope: !451, file: !3, line: 233, column: 2)
!454 = !DILocation(line: 235, column: 8, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 235, column: 7)
!456 = distinct !DILexicalBlock(scope: !453, file: !3, line: 234, column: 33)
!457 = !DILocation(line: 235, column: 7, scope: !456)
!458 = !DILocation(line: 236, column: 4, scope: !459)
!459 = distinct !DILexicalBlock(scope: !455, file: !3, line: 235, column: 13)
!460 = !DILocation(line: 237, column: 4, scope: !459)
!461 = !DILocation(line: 241, column: 37, scope: !462)
!462 = distinct !DILexicalBlock(scope: !456, file: !3, line: 241, column: 7)
!463 = !DILocation(line: 241, column: 48, scope: !462)
!464 = !DILocation(line: 241, column: 53, scope: !462)
!465 = !DILocation(line: 241, column: 8, scope: !462)
!466 = !DILocation(line: 241, column: 7, scope: !456)
!467 = !DILocation(line: 242, column: 4, scope: !462)
!468 = !DILocation(line: 243, column: 2, scope: !456)
!469 = distinct !{!469, !450, !470}
!470 = !DILocation(line: 243, column: 2, scope: !451)
!471 = !DILocation(line: 246, column: 2, scope: !472)
!472 = distinct !DILexicalBlock(scope: !437, file: !3, line: 246, column: 2)
!473 = !DILocation(line: 246, column: 2, scope: !474)
!474 = distinct !DILexicalBlock(scope: !472, file: !3, line: 246, column: 2)
!475 = !DILocation(line: 248, column: 8, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 248, column: 7)
!477 = distinct !DILexicalBlock(scope: !474, file: !3, line: 247, column: 39)
!478 = !DILocation(line: 248, column: 7, scope: !477)
!479 = !DILocation(line: 249, column: 4, scope: !480)
!480 = distinct !DILexicalBlock(scope: !476, file: !3, line: 248, column: 13)
!481 = !DILocation(line: 250, column: 4, scope: !480)
!482 = !DILocation(line: 254, column: 38, scope: !483)
!483 = distinct !DILexicalBlock(scope: !477, file: !3, line: 254, column: 7)
!484 = !DILocation(line: 254, column: 49, scope: !483)
!485 = !DILocation(line: 254, column: 54, scope: !483)
!486 = !DILocation(line: 254, column: 8, scope: !483)
!487 = !DILocation(line: 254, column: 7, scope: !477)
!488 = !DILocation(line: 255, column: 4, scope: !483)
!489 = !DILocation(line: 256, column: 2, scope: !477)
!490 = distinct !{!490, !471, !491}
!491 = !DILocation(line: 256, column: 2, scope: !472)
!492 = !DILocation(line: 257, column: 2, scope: !437)
!493 = !DILocation(line: 258, column: 1, scope: !437)
!494 = distinct !DISubprogram(name: "mlxfw_mfa2_file_component_count", scope: !3, file: !3, line: 368, type: !495, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!495 = !DISubroutineType(types: !496)
!496 = !{!93, !359, !497, !74, !500}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!499 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!501 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !494, file: !3, line: 368, type: !359)
!502 = !DILocation(line: 368, column: 67, scope: !494)
!503 = !DILocalVariable(name: "psid", arg: 2, scope: !494, file: !3, line: 369, type: !497)
!504 = !DILocation(line: 369, column: 21, scope: !494)
!505 = !DILocalVariable(name: "psid_size", arg: 3, scope: !494, file: !3, line: 369, type: !74)
!506 = !DILocation(line: 369, column: 31, scope: !494)
!507 = !DILocalVariable(name: "p_count", arg: 4, scope: !494, file: !3, line: 370, type: !500)
!508 = !DILocation(line: 370, column: 14, scope: !494)
!509 = !DILocalVariable(name: "dev_multi", scope: !494, file: !3, line: 372, type: !182)
!510 = !DILocation(line: 372, column: 37, scope: !494)
!511 = !DILocalVariable(name: "count", scope: !494, file: !3, line: 373, type: !72)
!512 = !DILocation(line: 373, column: 6, scope: !494)
!513 = !DILocalVariable(name: "err", scope: !494, file: !3, line: 374, type: !93)
!514 = !DILocation(line: 374, column: 6, scope: !494)
!515 = !DILocation(line: 376, column: 37, scope: !494)
!516 = !DILocation(line: 376, column: 48, scope: !494)
!517 = !DILocation(line: 376, column: 54, scope: !494)
!518 = !DILocation(line: 376, column: 14, scope: !494)
!519 = !DILocation(line: 376, column: 12, scope: !494)
!520 = !DILocation(line: 377, column: 7, scope: !521)
!521 = distinct !DILexicalBlock(scope: !494, file: !3, line: 377, column: 6)
!522 = !DILocation(line: 377, column: 6, scope: !494)
!523 = !DILocation(line: 378, column: 3, scope: !521)
!524 = !DILocation(line: 380, column: 41, scope: !494)
!525 = !DILocation(line: 380, column: 52, scope: !494)
!526 = !DILocation(line: 380, column: 8, scope: !494)
!527 = !DILocation(line: 380, column: 6, scope: !494)
!528 = !DILocation(line: 383, column: 6, scope: !529)
!529 = distinct !DILexicalBlock(scope: !494, file: !3, line: 383, column: 6)
!530 = !DILocation(line: 383, column: 6, scope: !494)
!531 = !DILocation(line: 384, column: 10, scope: !529)
!532 = !DILocation(line: 384, column: 3, scope: !529)
!533 = !DILocation(line: 386, column: 13, scope: !494)
!534 = !DILocation(line: 386, column: 3, scope: !494)
!535 = !DILocation(line: 386, column: 11, scope: !494)
!536 = !DILocation(line: 387, column: 2, scope: !494)
!537 = !DILocation(line: 388, column: 1, scope: !494)
!538 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_dev_get", scope: !3, file: !3, line: 330, type: !539, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!539 = !DISubroutineType(types: !540)
!540 = !{!182, !359, !497, !72}
!541 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !538, file: !3, line: 330, type: !359)
!542 = !DILocation(line: 330, column: 54, scope: !538)
!543 = !DILocalVariable(name: "psid", arg: 2, scope: !538, file: !3, line: 331, type: !497)
!544 = !DILocation(line: 331, column: 22, scope: !538)
!545 = !DILocalVariable(name: "psid_size", arg: 3, scope: !538, file: !3, line: 331, type: !72)
!546 = !DILocation(line: 331, column: 32, scope: !538)
!547 = !DILocalVariable(name: "tlv_psid", scope: !538, file: !3, line: 333, type: !548)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxfw_mfa2_tlv_psid", file: !12, line: 46, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "psid", scope: !550, file: !12, line: 47, baseType: !553)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, elements: !554)
!554 = !{!555}
!555 = !DISubrange(count: 0)
!556 = !DILocation(line: 333, column: 36, scope: !538)
!557 = !DILocalVariable(name: "dev_multi", scope: !538, file: !3, line: 334, type: !182)
!558 = !DILocation(line: 334, column: 37, scope: !538)
!559 = !DILocalVariable(name: "dev_tlv", scope: !538, file: !3, line: 335, type: !145)
!560 = !DILocation(line: 335, column: 31, scope: !538)
!561 = !DILocalVariable(name: "tlv", scope: !538, file: !3, line: 336, type: !145)
!562 = !DILocation(line: 336, column: 31, scope: !538)
!563 = !DILocalVariable(name: "idx", scope: !538, file: !3, line: 337, type: !74)
!564 = !DILocation(line: 337, column: 6, scope: !538)
!565 = !DILocation(line: 340, column: 2, scope: !566)
!566 = distinct !DILexicalBlock(scope: !538, file: !3, line: 340, column: 2)
!567 = !DILocation(line: 340, column: 2, scope: !568)
!568 = distinct !DILexicalBlock(scope: !566, file: !3, line: 340, column: 2)
!569 = !DILocation(line: 342, column: 8, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !3, line: 342, column: 7)
!571 = distinct !DILexicalBlock(scope: !568, file: !3, line: 341, column: 33)
!572 = !DILocation(line: 342, column: 7, scope: !571)
!573 = !DILocation(line: 343, column: 4, scope: !570)
!574 = !DILocation(line: 345, column: 40, scope: !571)
!575 = !DILocation(line: 345, column: 51, scope: !571)
!576 = !DILocation(line: 345, column: 15, scope: !571)
!577 = !DILocation(line: 345, column: 13, scope: !571)
!578 = !DILocation(line: 346, column: 8, scope: !579)
!579 = distinct !DILexicalBlock(scope: !571, file: !3, line: 346, column: 7)
!580 = !DILocation(line: 346, column: 7, scope: !571)
!581 = !DILocation(line: 347, column: 4, scope: !579)
!582 = !DILocation(line: 350, column: 41, scope: !571)
!583 = !DILocation(line: 350, column: 52, scope: !571)
!584 = !DILocation(line: 350, column: 9, scope: !571)
!585 = !DILocation(line: 350, column: 7, scope: !571)
!586 = !DILocation(line: 352, column: 8, scope: !587)
!587 = distinct !DILexicalBlock(scope: !571, file: !3, line: 352, column: 7)
!588 = !DILocation(line: 352, column: 7, scope: !571)
!589 = !DILocation(line: 353, column: 4, scope: !587)
!590 = !DILocation(line: 354, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !571, file: !3, line: 354, column: 7)
!592 = !DILocation(line: 354, column: 32, scope: !591)
!593 = !DILocation(line: 354, column: 29, scope: !591)
!594 = !DILocation(line: 354, column: 7, scope: !571)
!595 = !DILocation(line: 355, column: 4, scope: !591)
!596 = !DILocation(line: 357, column: 38, scope: !571)
!597 = !DILocation(line: 357, column: 49, scope: !571)
!598 = !DILocation(line: 357, column: 14, scope: !571)
!599 = !DILocation(line: 357, column: 12, scope: !571)
!600 = !DILocation(line: 358, column: 8, scope: !601)
!601 = distinct !DILexicalBlock(scope: !571, file: !3, line: 358, column: 7)
!602 = !DILocation(line: 358, column: 7, scope: !571)
!603 = !DILocation(line: 359, column: 4, scope: !601)
!604 = !DILocation(line: 361, column: 14, scope: !605)
!605 = distinct !DILexicalBlock(scope: !571, file: !3, line: 361, column: 7)
!606 = !DILocation(line: 361, column: 20, scope: !605)
!607 = !DILocation(line: 361, column: 30, scope: !605)
!608 = !DILocation(line: 361, column: 36, scope: !605)
!609 = !DILocation(line: 361, column: 7, scope: !605)
!610 = !DILocation(line: 361, column: 47, scope: !605)
!611 = !DILocation(line: 361, column: 7, scope: !571)
!612 = !DILocation(line: 362, column: 11, scope: !605)
!613 = !DILocation(line: 362, column: 4, scope: !605)
!614 = !DILocation(line: 363, column: 2, scope: !571)
!615 = distinct !{!615, !565, !616}
!616 = !DILocation(line: 363, column: 2, scope: !566)
!617 = !DILocation(line: 365, column: 2, scope: !538)
!618 = !DILocation(line: 366, column: 1, scope: !538)
!619 = distinct !DISubprogram(name: "mlxfw_mfa2_file_component_get", scope: !3, file: !3, line: 531, type: !620, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!620 = !DISubroutineType(types: !621)
!621 = !{!622, !359, !497, !93, !93}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!623 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !619, file: !3, line: 531, type: !359)
!624 = !DILocation(line: 531, column: 61, scope: !619)
!625 = !DILocalVariable(name: "psid", arg: 2, scope: !619, file: !3, line: 532, type: !497)
!626 = !DILocation(line: 532, column: 22, scope: !619)
!627 = !DILocalVariable(name: "psid_size", arg: 3, scope: !619, file: !3, line: 532, type: !93)
!628 = !DILocation(line: 532, column: 32, scope: !619)
!629 = !DILocalVariable(name: "component_index", arg: 4, scope: !619, file: !3, line: 533, type: !93)
!630 = !DILocation(line: 533, column: 14, scope: !619)
!631 = !DILocalVariable(name: "comp", scope: !619, file: !3, line: 535, type: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxfw_mfa2_tlv_component_descriptor", file: !12, line: 62, size: 128, elements: !635)
!635 = !{!636, !637, !638, !639, !640}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "pldm_classification", scope: !634, file: !12, line: 63, baseType: !55, size: 16)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !634, file: !12, line: 64, baseType: !55, size: 16, offset: 16)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "cb_offset_h", scope: !634, file: !12, line: 65, baseType: !58, size: 32, offset: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "cb_offset_l", scope: !634, file: !12, line: 66, baseType: !58, size: 32, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !634, file: !12, line: 67, baseType: !58, size: 32, offset: 96)
!641 = !DILocation(line: 535, column: 52, scope: !619)
!642 = !DILocalVariable(name: "comp_data", scope: !619, file: !3, line: 536, type: !64)
!643 = !DILocation(line: 536, column: 31, scope: !619)
!644 = !DILocalVariable(name: "comp_buf_size", scope: !619, file: !3, line: 537, type: !74)
!645 = !DILocation(line: 537, column: 6, scope: !619)
!646 = !DILocalVariable(name: "cb_offset", scope: !619, file: !3, line: 538, type: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !51, line: 21, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_off_t", file: !86, line: 87, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !86, line: 15, baseType: !350)
!650 = !DILocation(line: 538, column: 8, scope: !619)
!651 = !DILocalVariable(name: "comp_size", scope: !619, file: !3, line: 539, type: !74)
!652 = !DILocation(line: 539, column: 6, scope: !619)
!653 = !DILocalVariable(name: "err", scope: !619, file: !3, line: 540, type: !93)
!654 = !DILocation(line: 540, column: 6, scope: !619)
!655 = !DILocation(line: 542, column: 40, scope: !619)
!656 = !DILocation(line: 542, column: 51, scope: !619)
!657 = !DILocation(line: 542, column: 57, scope: !619)
!658 = !DILocation(line: 543, column: 12, scope: !619)
!659 = !DILocation(line: 542, column: 9, scope: !619)
!660 = !DILocation(line: 542, column: 7, scope: !619)
!661 = !DILocation(line: 544, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !619, file: !3, line: 544, column: 6)
!663 = !DILocation(line: 544, column: 6, scope: !619)
!664 = !DILocation(line: 545, column: 10, scope: !662)
!665 = !DILocation(line: 545, column: 3, scope: !662)
!666 = !DILocation(line: 547, column: 20, scope: !619)
!667 = !DILocation(line: 547, column: 14, scope: !619)
!668 = !DILocation(line: 547, column: 51, scope: !619)
!669 = !DILocation(line: 548, column: 7, scope: !619)
!670 = !DILocation(line: 547, column: 57, scope: !619)
!671 = !DILocation(line: 547, column: 12, scope: !619)
!672 = !DILocation(line: 549, column: 14, scope: !619)
!673 = !DILocation(line: 549, column: 12, scope: !619)
!674 = !DILocation(line: 550, column: 18, scope: !619)
!675 = !DILocation(line: 550, column: 28, scope: !619)
!676 = !DILocation(line: 550, column: 16, scope: !619)
!677 = !DILocation(line: 552, column: 43, scope: !619)
!678 = !DILocation(line: 552, column: 41, scope: !619)
!679 = !DILocation(line: 552, column: 14, scope: !619)
!680 = !DILocation(line: 552, column: 12, scope: !619)
!681 = !DILocation(line: 553, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !619, file: !3, line: 553, column: 6)
!683 = !DILocation(line: 553, column: 6, scope: !619)
!684 = !DILocation(line: 554, column: 10, scope: !682)
!685 = !DILocation(line: 554, column: 3, scope: !682)
!686 = !DILocation(line: 555, column: 30, scope: !619)
!687 = !DILocation(line: 555, column: 2, scope: !619)
!688 = !DILocation(line: 555, column: 13, scope: !619)
!689 = !DILocation(line: 555, column: 18, scope: !619)
!690 = !DILocation(line: 555, column: 28, scope: !619)
!691 = !DILocation(line: 556, column: 26, scope: !619)
!692 = !DILocation(line: 556, column: 2, scope: !619)
!693 = !DILocation(line: 556, column: 13, scope: !619)
!694 = !DILocation(line: 556, column: 18, scope: !619)
!695 = !DILocation(line: 556, column: 24, scope: !619)
!696 = !DILocation(line: 557, column: 37, scope: !619)
!697 = !DILocation(line: 557, column: 48, scope: !619)
!698 = !DILocation(line: 557, column: 59, scope: !619)
!699 = !DILocation(line: 558, column: 9, scope: !619)
!700 = !DILocation(line: 558, column: 20, scope: !619)
!701 = !DILocation(line: 557, column: 8, scope: !619)
!702 = !DILocation(line: 557, column: 6, scope: !619)
!703 = !DILocation(line: 559, column: 6, scope: !704)
!704 = distinct !DILexicalBlock(scope: !619, file: !3, line: 559, column: 6)
!705 = !DILocation(line: 559, column: 6, scope: !619)
!706 = !DILocation(line: 560, column: 3, scope: !707)
!707 = distinct !DILexicalBlock(scope: !704, file: !3, line: 559, column: 11)
!708 = !DILocation(line: 561, column: 3, scope: !707)
!709 = !DILocation(line: 564, column: 13, scope: !710)
!710 = distinct !DILexicalBlock(scope: !619, file: !3, line: 564, column: 6)
!711 = !DILocation(line: 564, column: 24, scope: !710)
!712 = !DILocation(line: 564, column: 6, scope: !710)
!713 = !DILocation(line: 565, column: 33, scope: !710)
!714 = !DILocation(line: 564, column: 6, scope: !619)
!715 = !DILocation(line: 566, column: 3, scope: !716)
!716 = distinct !DILexicalBlock(scope: !710, file: !3, line: 565, column: 39)
!717 = !DILocation(line: 567, column: 7, scope: !716)
!718 = !DILocation(line: 568, column: 3, scope: !716)
!719 = !DILocation(line: 571, column: 25, scope: !619)
!720 = !DILocation(line: 571, column: 36, scope: !619)
!721 = !DILocation(line: 571, column: 41, scope: !619)
!722 = !DILocation(line: 571, column: 2, scope: !619)
!723 = !DILocation(line: 571, column: 13, scope: !619)
!724 = !DILocation(line: 571, column: 18, scope: !619)
!725 = !DILocation(line: 571, column: 23, scope: !619)
!726 = !DILocation(line: 572, column: 10, scope: !619)
!727 = !DILocation(line: 572, column: 21, scope: !619)
!728 = !DILocation(line: 572, column: 2, scope: !619)
!729 = !DILabel(scope: !619, name: "err_out", file: !3, line: 573)
!730 = !DILocation(line: 573, column: 1, scope: !619)
!731 = !DILocation(line: 574, column: 8, scope: !619)
!732 = !DILocation(line: 574, column: 2, scope: !619)
!733 = !DILocation(line: 575, column: 17, scope: !619)
!734 = !DILocation(line: 575, column: 9, scope: !619)
!735 = !DILocation(line: 575, column: 2, scope: !619)
!736 = !DILocation(line: 576, column: 1, scope: !619)
!737 = distinct !DISubprogram(name: "mlxfw_mfa2_file_component_find", scope: !3, file: !3, line: 503, type: !738, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!738 = !DISubroutineType(types: !739)
!739 = !{!632, !359, !497, !93, !93}
!740 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !737, file: !3, line: 503, type: !359)
!741 = !DILocation(line: 503, column: 62, scope: !737)
!742 = !DILocalVariable(name: "psid", arg: 2, scope: !737, file: !3, line: 504, type: !497)
!743 = !DILocation(line: 504, column: 23, scope: !737)
!744 = !DILocalVariable(name: "psid_size", arg: 3, scope: !737, file: !3, line: 504, type: !93)
!745 = !DILocation(line: 504, column: 33, scope: !737)
!746 = !DILocalVariable(name: "component_index", arg: 4, scope: !737, file: !3, line: 505, type: !93)
!747 = !DILocation(line: 505, column: 15, scope: !737)
!748 = !DILocalVariable(name: "cptr", scope: !737, file: !3, line: 507, type: !749)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxfw_mfa2_tlv_component_ptr", file: !12, line: 53, size: 64, elements: !752)
!752 = !{!753, !754, !755}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "storage_id", scope: !751, file: !12, line: 54, baseType: !55, size: 16)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !751, file: !12, line: 55, baseType: !55, size: 16, offset: 16)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "storage_address", scope: !751, file: !12, line: 56, baseType: !58, size: 32, offset: 32)
!756 = !DILocation(line: 507, column: 45, scope: !737)
!757 = !DILocalVariable(name: "dev_multi", scope: !737, file: !3, line: 508, type: !182)
!758 = !DILocation(line: 508, column: 37, scope: !737)
!759 = !DILocalVariable(name: "cptr_tlv", scope: !737, file: !3, line: 509, type: !145)
!760 = !DILocation(line: 509, column: 31, scope: !737)
!761 = !DILocalVariable(name: "comp_idx", scope: !737, file: !3, line: 510, type: !72)
!762 = !DILocation(line: 510, column: 6, scope: !737)
!763 = !DILocation(line: 512, column: 37, scope: !737)
!764 = !DILocation(line: 512, column: 48, scope: !737)
!765 = !DILocation(line: 512, column: 54, scope: !737)
!766 = !DILocation(line: 512, column: 14, scope: !737)
!767 = !DILocation(line: 512, column: 12, scope: !737)
!768 = !DILocation(line: 513, column: 7, scope: !769)
!769 = distinct !DILexicalBlock(scope: !737, file: !3, line: 513, column: 6)
!770 = !DILocation(line: 513, column: 6, scope: !737)
!771 = !DILocation(line: 514, column: 3, scope: !769)
!772 = !DILocation(line: 516, column: 45, scope: !737)
!773 = !DILocation(line: 516, column: 56, scope: !737)
!774 = !DILocation(line: 518, column: 10, scope: !737)
!775 = !DILocation(line: 516, column: 13, scope: !737)
!776 = !DILocation(line: 516, column: 11, scope: !737)
!777 = !DILocation(line: 519, column: 7, scope: !778)
!778 = distinct !DILexicalBlock(scope: !737, file: !3, line: 519, column: 6)
!779 = !DILocation(line: 519, column: 6, scope: !737)
!780 = !DILocation(line: 520, column: 3, scope: !778)
!781 = !DILocation(line: 522, column: 42, scope: !737)
!782 = !DILocation(line: 522, column: 53, scope: !737)
!783 = !DILocation(line: 522, column: 9, scope: !737)
!784 = !DILocation(line: 522, column: 7, scope: !737)
!785 = !DILocation(line: 523, column: 7, scope: !786)
!786 = distinct !DILexicalBlock(scope: !737, file: !3, line: 523, column: 6)
!787 = !DILocation(line: 523, column: 6, scope: !737)
!788 = !DILocation(line: 524, column: 3, scope: !786)
!789 = !DILocation(line: 526, column: 13, scope: !737)
!790 = !DILocation(line: 526, column: 11, scope: !737)
!791 = !DILocation(line: 527, column: 43, scope: !737)
!792 = !DILocation(line: 527, column: 54, scope: !737)
!793 = !DILocation(line: 527, column: 9, scope: !737)
!794 = !DILocation(line: 527, column: 2, scope: !737)
!795 = !DILocation(line: 528, column: 1, scope: !737)
!796 = distinct !DISubprogram(name: "mlxfw_mfa2_file_cb_offset_xz", scope: !3, file: !3, line: 425, type: !797, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!797 = !DISubroutineType(types: !798)
!798 = !{!93, !359, !647, !84, !76}
!799 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !796, file: !3, line: 425, type: !359)
!800 = !DILocation(line: 425, column: 71, scope: !796)
!801 = !DILocalVariable(name: "off", arg: 2, scope: !796, file: !3, line: 426, type: !647)
!802 = !DILocation(line: 426, column: 12, scope: !796)
!803 = !DILocalVariable(name: "size", arg: 3, scope: !796, file: !3, line: 426, type: !84)
!804 = !DILocation(line: 426, column: 24, scope: !796)
!805 = !DILocalVariable(name: "buf", arg: 4, scope: !796, file: !3, line: 426, type: !76)
!806 = !DILocation(line: 426, column: 34, scope: !796)
!807 = !DILocalVariable(name: "xz_dec", scope: !796, file: !3, line: 428, type: !808)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "xz_dec", file: !33, line: 149, flags: DIFlagFwdDecl)
!810 = !DILocation(line: 428, column: 17, scope: !796)
!811 = !DILocalVariable(name: "dec_buf", scope: !796, file: !3, line: 429, type: !812)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xz_buf", file: !33, line: 136, size: 384, elements: !813)
!813 = !{!814, !818, !819, !820, !822, !823}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !812, file: !33, line: 137, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !51, line: 102, baseType: !77)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "in_pos", scope: !812, file: !33, line: 138, baseType: !84, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "in_size", scope: !812, file: !33, line: 139, baseType: !84, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !812, file: !33, line: 141, baseType: !821, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "out_pos", scope: !812, file: !33, line: 142, baseType: !84, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "out_size", scope: !812, file: !33, line: 143, baseType: !84, size: 64, offset: 320)
!824 = !DILocation(line: 429, column: 16, scope: !796)
!825 = !DILocalVariable(name: "curr_off", scope: !796, file: !3, line: 430, type: !647)
!826 = !DILocation(line: 430, column: 8, scope: !796)
!827 = !DILocalVariable(name: "finished", scope: !796, file: !3, line: 431, type: !110)
!828 = !DILocation(line: 431, column: 7, scope: !796)
!829 = !DILocalVariable(name: "err", scope: !796, file: !3, line: 432, type: !93)
!830 = !DILocation(line: 432, column: 6, scope: !796)
!831 = !DILocation(line: 434, column: 11, scope: !796)
!832 = !DILocation(line: 434, column: 9, scope: !796)
!833 = !DILocation(line: 435, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !796, file: !3, line: 435, column: 6)
!835 = !DILocation(line: 435, column: 6, scope: !796)
!836 = !DILocation(line: 436, column: 3, scope: !834)
!837 = !DILocation(line: 438, column: 20, scope: !796)
!838 = !DILocation(line: 438, column: 31, scope: !796)
!839 = !DILocation(line: 438, column: 10, scope: !796)
!840 = !DILocation(line: 438, column: 18, scope: !796)
!841 = !DILocation(line: 439, column: 15, scope: !796)
!842 = !DILocation(line: 439, column: 26, scope: !796)
!843 = !DILocation(line: 439, column: 10, scope: !796)
!844 = !DILocation(line: 439, column: 13, scope: !796)
!845 = !DILocation(line: 440, column: 10, scope: !796)
!846 = !DILocation(line: 440, column: 17, scope: !796)
!847 = !DILocation(line: 441, column: 16, scope: !796)
!848 = !DILocation(line: 441, column: 10, scope: !796)
!849 = !DILocation(line: 441, column: 14, scope: !796)
!850 = !DILocation(line: 444, column: 2, scope: !796)
!851 = !DILocation(line: 445, column: 11, scope: !852)
!852 = distinct !DILexicalBlock(scope: !796, file: !3, line: 444, column: 5)
!853 = !DILocation(line: 445, column: 19, scope: !852)
!854 = !DILocalVariable(name: "__UNIQUE_ID___x320", scope: !855, file: !3, line: 446, type: !84)
!855 = distinct !DILexicalBlock(scope: !852, file: !3, line: 446, column: 22)
!856 = !DILocation(line: 446, column: 22, scope: !855)
!857 = !DILocalVariable(name: "__UNIQUE_ID___y321", scope: !855, file: !3, line: 446, type: !84)
!858 = !DILocation(line: 446, column: 11, scope: !852)
!859 = !DILocation(line: 446, column: 20, scope: !852)
!860 = !DILocation(line: 447, column: 15, scope: !861)
!861 = distinct !DILexicalBlock(scope: !852, file: !3, line: 447, column: 7)
!862 = !DILocation(line: 447, column: 24, scope: !861)
!863 = !DILocation(line: 447, column: 7, scope: !852)
!864 = !DILocation(line: 448, column: 4, scope: !861)
!865 = !DILocation(line: 450, column: 31, scope: !852)
!866 = !DILocation(line: 450, column: 9, scope: !852)
!867 = !DILocation(line: 450, column: 7, scope: !852)
!868 = !DILocation(line: 451, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !852, file: !3, line: 451, column: 7)
!870 = !DILocation(line: 451, column: 7, scope: !852)
!871 = !DILocation(line: 452, column: 4, scope: !869)
!872 = !DILocation(line: 453, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !852, file: !3, line: 453, column: 7)
!874 = !DILocation(line: 453, column: 7, scope: !852)
!875 = !DILocation(line: 454, column: 4, scope: !876)
!876 = distinct !DILexicalBlock(scope: !873, file: !3, line: 453, column: 17)
!877 = !DILocation(line: 455, column: 8, scope: !876)
!878 = !DILocation(line: 456, column: 4, scope: !876)
!879 = !DILocation(line: 458, column: 23, scope: !852)
!880 = !DILocation(line: 458, column: 12, scope: !852)
!881 = !DILocation(line: 459, column: 2, scope: !852)
!882 = !DILocation(line: 459, column: 11, scope: !796)
!883 = !DILocation(line: 459, column: 23, scope: !796)
!884 = !DILocation(line: 459, column: 20, scope: !796)
!885 = distinct !{!885, !850, !886}
!886 = !DILocation(line: 459, column: 26, scope: !796)
!887 = !DILocation(line: 462, column: 10, scope: !796)
!888 = !DILocation(line: 462, column: 18, scope: !796)
!889 = !DILocation(line: 463, column: 21, scope: !796)
!890 = !DILocation(line: 463, column: 10, scope: !796)
!891 = !DILocation(line: 463, column: 19, scope: !796)
!892 = !DILocation(line: 464, column: 30, scope: !796)
!893 = !DILocation(line: 464, column: 8, scope: !796)
!894 = !DILocation(line: 464, column: 6, scope: !796)
!895 = !DILocation(line: 464, column: 2, scope: !796)
!896 = !DILabel(scope: !796, name: "out", file: !3, line: 465)
!897 = !DILocation(line: 465, column: 1, scope: !796)
!898 = !DILocation(line: 466, column: 13, scope: !796)
!899 = !DILocation(line: 466, column: 2, scope: !796)
!900 = !DILocation(line: 467, column: 9, scope: !796)
!901 = !DILocation(line: 467, column: 2, scope: !796)
!902 = !DILocation(line: 468, column: 1, scope: !796)
!903 = distinct !DISubprogram(name: "mlxfw_mfa2_file_component_put", scope: !3, file: !3, line: 578, type: !904, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !622}
!906 = !DILocalVariable(name: "comp", arg: 1, scope: !903, file: !3, line: 578, type: !622)
!907 = !DILocation(line: 578, column: 65, scope: !903)
!908 = !DILocalVariable(name: "comp_data", scope: !903, file: !3, line: 580, type: !909)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!911 = !DILocation(line: 580, column: 37, scope: !903)
!912 = !DILocalVariable(name: "__mptr", scope: !913, file: !3, line: 582, type: !63)
!913 = distinct !DILexicalBlock(scope: !903, file: !3, line: 582, column: 14)
!914 = !DILocation(line: 582, column: 14, scope: !913)
!915 = !DILocation(line: 582, column: 14, scope: !916)
!916 = distinct !DILexicalBlock(scope: !913, file: !3, line: 582, column: 14)
!917 = !DILocation(line: 582, column: 12, scope: !903)
!918 = !DILocation(line: 583, column: 8, scope: !903)
!919 = !DILocation(line: 583, column: 2, scope: !903)
!920 = !DILocation(line: 584, column: 1, scope: !903)
!921 = distinct !DISubprogram(name: "mlxfw_mfa2_file_fini", scope: !3, file: !3, line: 586, type: !922, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !121)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !139}
!924 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !921, file: !3, line: 586, type: !139)
!925 = !DILocation(line: 586, column: 51, scope: !921)
!926 = !DILocation(line: 588, column: 8, scope: !921)
!927 = !DILocation(line: 588, column: 2, scope: !921)
!928 = !DILocation(line: 589, column: 1, scope: !921)
!929 = distinct !DISubprogram(name: "kmalloc_array", scope: !20, file: !20, line: 584, type: !332, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!930 = !DILocalVariable(name: "s", arg: 1, scope: !931, file: !20, line: 445, type: !934)
!931 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !20, file: !20, line: 445, type: !932, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!932 = !DISubroutineType(types: !933)
!933 = !{!63, !934, !50, !84}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !936, line: 117, flags: DIFlagFwdDecl)
!936 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!937 = !DILocation(line: 445, column: 72, scope: !931, inlinedAt: !938)
!938 = distinct !DILocation(line: 552, column: 10, scope: !939, inlinedAt: !944)
!939 = distinct !DILexicalBlock(scope: !940, file: !20, line: 540, column: 34)
!940 = distinct !DILexicalBlock(scope: !941, file: !20, line: 540, column: 6)
!941 = distinct !DISubprogram(name: "kmalloc", scope: !20, file: !20, line: 538, type: !942, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!942 = !DISubroutineType(types: !943)
!943 = !{!63, !84, !50}
!944 = distinct !DILocation(line: 591, column: 10, scope: !945)
!945 = distinct !DILexicalBlock(scope: !929, file: !20, line: 590, column: 6)
!946 = !DILocalVariable(name: "flags", arg: 2, scope: !931, file: !20, line: 446, type: !50)
!947 = !DILocation(line: 446, column: 9, scope: !931, inlinedAt: !938)
!948 = !DILocalVariable(name: "size", arg: 3, scope: !931, file: !20, line: 446, type: !84)
!949 = !DILocation(line: 446, column: 23, scope: !931, inlinedAt: !938)
!950 = !DILocalVariable(name: "ret", scope: !931, file: !20, line: 448, type: !63)
!951 = !DILocation(line: 448, column: 8, scope: !931, inlinedAt: !938)
!952 = !DILocalVariable(name: "flags", arg: 1, scope: !953, file: !20, line: 318, type: !50)
!953 = distinct !DISubprogram(name: "kmalloc_type", scope: !20, file: !20, line: 318, type: !954, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!954 = !DISubroutineType(types: !955)
!955 = !{!19, !50}
!956 = !DILocation(line: 318, column: 67, scope: !953, inlinedAt: !957)
!957 = distinct !DILocation(line: 553, column: 20, scope: !939, inlinedAt: !944)
!958 = !DILocalVariable(name: "size", arg: 1, scope: !959, file: !20, line: 346, type: !84)
!959 = distinct !DISubprogram(name: "kmalloc_index", scope: !20, file: !20, line: 346, type: !960, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!960 = !DISubroutineType(types: !961)
!961 = !{!7, !84}
!962 = !DILocation(line: 346, column: 58, scope: !959, inlinedAt: !963)
!963 = distinct !DILocation(line: 547, column: 11, scope: !939, inlinedAt: !944)
!964 = !DILocalVariable(name: "size", arg: 1, scope: !965, file: !20, line: 472, type: !84)
!965 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !20, file: !20, line: 472, type: !966, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!966 = !DISubroutineType(types: !967)
!967 = !{!63, !84, !50, !7}
!968 = !DILocation(line: 472, column: 28, scope: !965, inlinedAt: !969)
!969 = distinct !DILocation(line: 481, column: 9, scope: !970, inlinedAt: !971)
!970 = distinct !DISubprogram(name: "kmalloc_large", scope: !20, file: !20, line: 478, type: !942, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!971 = distinct !DILocation(line: 545, column: 11, scope: !972, inlinedAt: !944)
!972 = distinct !DILexicalBlock(scope: !939, file: !20, line: 544, column: 7)
!973 = !DILocalVariable(name: "flags", arg: 2, scope: !965, file: !20, line: 472, type: !50)
!974 = !DILocation(line: 472, column: 40, scope: !965, inlinedAt: !969)
!975 = !DILocalVariable(name: "order", arg: 3, scope: !965, file: !20, line: 472, type: !7)
!976 = !DILocation(line: 472, column: 60, scope: !965, inlinedAt: !969)
!977 = !DILocalVariable(name: "size", arg: 1, scope: !970, file: !20, line: 478, type: !84)
!978 = !DILocation(line: 478, column: 51, scope: !970, inlinedAt: !971)
!979 = !DILocalVariable(name: "flags", arg: 2, scope: !970, file: !20, line: 478, type: !50)
!980 = !DILocation(line: 478, column: 63, scope: !970, inlinedAt: !971)
!981 = !DILocalVariable(name: "order", scope: !970, file: !20, line: 480, type: !7)
!982 = !DILocation(line: 480, column: 15, scope: !970, inlinedAt: !971)
!983 = !DILocalVariable(name: "size", arg: 1, scope: !941, file: !20, line: 538, type: !84)
!984 = !DILocation(line: 538, column: 45, scope: !941, inlinedAt: !944)
!985 = !DILocalVariable(name: "flags", arg: 2, scope: !941, file: !20, line: 538, type: !50)
!986 = !DILocation(line: 538, column: 57, scope: !941, inlinedAt: !944)
!987 = !DILocalVariable(name: "index", scope: !939, file: !20, line: 542, type: !7)
!988 = !DILocation(line: 542, column: 16, scope: !939, inlinedAt: !944)
!989 = !DILocalVariable(name: "n", arg: 1, scope: !929, file: !20, line: 584, type: !84)
!990 = !DILocation(line: 584, column: 42, scope: !929)
!991 = !DILocalVariable(name: "size", arg: 2, scope: !929, file: !20, line: 584, type: !84)
!992 = !DILocation(line: 584, column: 52, scope: !929)
!993 = !DILocalVariable(name: "flags", arg: 3, scope: !929, file: !20, line: 584, type: !50)
!994 = !DILocation(line: 584, column: 64, scope: !929)
!995 = !DILocalVariable(name: "bytes", scope: !929, file: !20, line: 586, type: !84)
!996 = !DILocation(line: 586, column: 9, scope: !929)
!997 = !DILocalVariable(name: "__a", scope: !998, file: !20, line: 588, type: !84)
!998 = distinct !DILexicalBlock(scope: !999, file: !20, line: 588, column: 6)
!999 = distinct !DILexicalBlock(scope: !929, file: !20, line: 588, column: 6)
!1000 = !DILocation(line: 588, column: 6, scope: !998)
!1001 = !DILocalVariable(name: "__b", scope: !998, file: !20, line: 588, type: !84)
!1002 = !DILocalVariable(name: "__d", scope: !998, file: !20, line: 588, type: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1004 = !DILocation(line: 588, column: 6, scope: !999)
!1005 = !DILocation(line: 588, column: 6, scope: !929)
!1006 = !DILocation(line: 589, column: 3, scope: !999)
!1007 = !DILocation(line: 590, column: 27, scope: !945)
!1008 = !DILocation(line: 590, column: 6, scope: !945)
!1009 = !DILocation(line: 590, column: 30, scope: !945)
!1010 = !DILocation(line: 590, column: 54, scope: !945)
!1011 = !DILocation(line: 590, column: 33, scope: !945)
!1012 = !DILocation(line: 590, column: 6, scope: !929)
!1013 = !DILocation(line: 591, column: 18, scope: !945)
!1014 = !DILocation(line: 591, column: 25, scope: !945)
!1015 = !DILocation(line: 540, column: 27, scope: !940, inlinedAt: !944)
!1016 = !DILocation(line: 540, column: 6, scope: !940, inlinedAt: !944)
!1017 = !DILocation(line: 540, column: 6, scope: !941, inlinedAt: !944)
!1018 = !DILocation(line: 544, column: 7, scope: !972, inlinedAt: !944)
!1019 = !DILocation(line: 544, column: 12, scope: !972, inlinedAt: !944)
!1020 = !DILocation(line: 544, column: 7, scope: !939, inlinedAt: !944)
!1021 = !DILocation(line: 545, column: 25, scope: !972, inlinedAt: !944)
!1022 = !DILocation(line: 545, column: 31, scope: !972, inlinedAt: !944)
!1023 = !DILocation(line: 480, column: 33, scope: !970, inlinedAt: !971)
!1024 = !DILocation(line: 480, column: 23, scope: !970, inlinedAt: !971)
!1025 = !DILocation(line: 481, column: 29, scope: !970, inlinedAt: !971)
!1026 = !DILocation(line: 481, column: 35, scope: !970, inlinedAt: !971)
!1027 = !DILocation(line: 481, column: 42, scope: !970, inlinedAt: !971)
!1028 = !DILocation(line: 474, column: 23, scope: !965, inlinedAt: !969)
!1029 = !DILocation(line: 474, column: 29, scope: !965, inlinedAt: !969)
!1030 = !DILocation(line: 474, column: 36, scope: !965, inlinedAt: !969)
!1031 = !DILocation(line: 474, column: 9, scope: !965, inlinedAt: !969)
!1032 = !DILocation(line: 545, column: 4, scope: !972, inlinedAt: !944)
!1033 = !DILocation(line: 547, column: 25, scope: !939, inlinedAt: !944)
!1034 = !DILocation(line: 348, column: 7, scope: !1035, inlinedAt: !963)
!1035 = distinct !DILexicalBlock(scope: !959, file: !20, line: 348, column: 6)
!1036 = !DILocation(line: 348, column: 6, scope: !959, inlinedAt: !963)
!1037 = !DILocation(line: 349, column: 3, scope: !1035, inlinedAt: !963)
!1038 = !DILocation(line: 351, column: 6, scope: !1039, inlinedAt: !963)
!1039 = distinct !DILexicalBlock(scope: !959, file: !20, line: 351, column: 6)
!1040 = !DILocation(line: 351, column: 11, scope: !1039, inlinedAt: !963)
!1041 = !DILocation(line: 351, column: 6, scope: !959, inlinedAt: !963)
!1042 = !DILocation(line: 352, column: 3, scope: !1039, inlinedAt: !963)
!1043 = !DILocation(line: 354, column: 32, scope: !1044, inlinedAt: !963)
!1044 = distinct !DILexicalBlock(scope: !959, file: !20, line: 354, column: 6)
!1045 = !DILocation(line: 354, column: 37, scope: !1044, inlinedAt: !963)
!1046 = !DILocation(line: 354, column: 42, scope: !1044, inlinedAt: !963)
!1047 = !DILocation(line: 354, column: 45, scope: !1044, inlinedAt: !963)
!1048 = !DILocation(line: 354, column: 50, scope: !1044, inlinedAt: !963)
!1049 = !DILocation(line: 354, column: 6, scope: !959, inlinedAt: !963)
!1050 = !DILocation(line: 355, column: 3, scope: !1044, inlinedAt: !963)
!1051 = !DILocation(line: 356, column: 32, scope: !1052, inlinedAt: !963)
!1052 = distinct !DILexicalBlock(scope: !959, file: !20, line: 356, column: 6)
!1053 = !DILocation(line: 356, column: 37, scope: !1052, inlinedAt: !963)
!1054 = !DILocation(line: 356, column: 43, scope: !1052, inlinedAt: !963)
!1055 = !DILocation(line: 356, column: 46, scope: !1052, inlinedAt: !963)
!1056 = !DILocation(line: 356, column: 51, scope: !1052, inlinedAt: !963)
!1057 = !DILocation(line: 356, column: 6, scope: !959, inlinedAt: !963)
!1058 = !DILocation(line: 357, column: 3, scope: !1052, inlinedAt: !963)
!1059 = !DILocation(line: 358, column: 6, scope: !1060, inlinedAt: !963)
!1060 = distinct !DILexicalBlock(scope: !959, file: !20, line: 358, column: 6)
!1061 = !DILocation(line: 358, column: 11, scope: !1060, inlinedAt: !963)
!1062 = !DILocation(line: 358, column: 6, scope: !959, inlinedAt: !963)
!1063 = !DILocation(line: 358, column: 26, scope: !1060, inlinedAt: !963)
!1064 = !DILocation(line: 359, column: 6, scope: !1065, inlinedAt: !963)
!1065 = distinct !DILexicalBlock(scope: !959, file: !20, line: 359, column: 6)
!1066 = !DILocation(line: 359, column: 11, scope: !1065, inlinedAt: !963)
!1067 = !DILocation(line: 359, column: 6, scope: !959, inlinedAt: !963)
!1068 = !DILocation(line: 359, column: 26, scope: !1065, inlinedAt: !963)
!1069 = !DILocation(line: 360, column: 6, scope: !1070, inlinedAt: !963)
!1070 = distinct !DILexicalBlock(scope: !959, file: !20, line: 360, column: 6)
!1071 = !DILocation(line: 360, column: 11, scope: !1070, inlinedAt: !963)
!1072 = !DILocation(line: 360, column: 6, scope: !959, inlinedAt: !963)
!1073 = !DILocation(line: 360, column: 26, scope: !1070, inlinedAt: !963)
!1074 = !DILocation(line: 361, column: 6, scope: !1075, inlinedAt: !963)
!1075 = distinct !DILexicalBlock(scope: !959, file: !20, line: 361, column: 6)
!1076 = !DILocation(line: 361, column: 11, scope: !1075, inlinedAt: !963)
!1077 = !DILocation(line: 361, column: 6, scope: !959, inlinedAt: !963)
!1078 = !DILocation(line: 361, column: 26, scope: !1075, inlinedAt: !963)
!1079 = !DILocation(line: 362, column: 6, scope: !1080, inlinedAt: !963)
!1080 = distinct !DILexicalBlock(scope: !959, file: !20, line: 362, column: 6)
!1081 = !DILocation(line: 362, column: 11, scope: !1080, inlinedAt: !963)
!1082 = !DILocation(line: 362, column: 6, scope: !959, inlinedAt: !963)
!1083 = !DILocation(line: 362, column: 26, scope: !1080, inlinedAt: !963)
!1084 = !DILocation(line: 363, column: 6, scope: !1085, inlinedAt: !963)
!1085 = distinct !DILexicalBlock(scope: !959, file: !20, line: 363, column: 6)
!1086 = !DILocation(line: 363, column: 11, scope: !1085, inlinedAt: !963)
!1087 = !DILocation(line: 363, column: 6, scope: !959, inlinedAt: !963)
!1088 = !DILocation(line: 363, column: 26, scope: !1085, inlinedAt: !963)
!1089 = !DILocation(line: 364, column: 6, scope: !1090, inlinedAt: !963)
!1090 = distinct !DILexicalBlock(scope: !959, file: !20, line: 364, column: 6)
!1091 = !DILocation(line: 364, column: 11, scope: !1090, inlinedAt: !963)
!1092 = !DILocation(line: 364, column: 6, scope: !959, inlinedAt: !963)
!1093 = !DILocation(line: 364, column: 26, scope: !1090, inlinedAt: !963)
!1094 = !DILocation(line: 365, column: 6, scope: !1095, inlinedAt: !963)
!1095 = distinct !DILexicalBlock(scope: !959, file: !20, line: 365, column: 6)
!1096 = !DILocation(line: 365, column: 11, scope: !1095, inlinedAt: !963)
!1097 = !DILocation(line: 365, column: 6, scope: !959, inlinedAt: !963)
!1098 = !DILocation(line: 365, column: 26, scope: !1095, inlinedAt: !963)
!1099 = !DILocation(line: 366, column: 6, scope: !1100, inlinedAt: !963)
!1100 = distinct !DILexicalBlock(scope: !959, file: !20, line: 366, column: 6)
!1101 = !DILocation(line: 366, column: 11, scope: !1100, inlinedAt: !963)
!1102 = !DILocation(line: 366, column: 6, scope: !959, inlinedAt: !963)
!1103 = !DILocation(line: 366, column: 26, scope: !1100, inlinedAt: !963)
!1104 = !DILocation(line: 367, column: 6, scope: !1105, inlinedAt: !963)
!1105 = distinct !DILexicalBlock(scope: !959, file: !20, line: 367, column: 6)
!1106 = !DILocation(line: 367, column: 11, scope: !1105, inlinedAt: !963)
!1107 = !DILocation(line: 367, column: 6, scope: !959, inlinedAt: !963)
!1108 = !DILocation(line: 367, column: 26, scope: !1105, inlinedAt: !963)
!1109 = !DILocation(line: 368, column: 6, scope: !1110, inlinedAt: !963)
!1110 = distinct !DILexicalBlock(scope: !959, file: !20, line: 368, column: 6)
!1111 = !DILocation(line: 368, column: 11, scope: !1110, inlinedAt: !963)
!1112 = !DILocation(line: 368, column: 6, scope: !959, inlinedAt: !963)
!1113 = !DILocation(line: 368, column: 26, scope: !1110, inlinedAt: !963)
!1114 = !DILocation(line: 369, column: 6, scope: !1115, inlinedAt: !963)
!1115 = distinct !DILexicalBlock(scope: !959, file: !20, line: 369, column: 6)
!1116 = !DILocation(line: 369, column: 11, scope: !1115, inlinedAt: !963)
!1117 = !DILocation(line: 369, column: 6, scope: !959, inlinedAt: !963)
!1118 = !DILocation(line: 369, column: 26, scope: !1115, inlinedAt: !963)
!1119 = !DILocation(line: 370, column: 6, scope: !1120, inlinedAt: !963)
!1120 = distinct !DILexicalBlock(scope: !959, file: !20, line: 370, column: 6)
!1121 = !DILocation(line: 370, column: 11, scope: !1120, inlinedAt: !963)
!1122 = !DILocation(line: 370, column: 6, scope: !959, inlinedAt: !963)
!1123 = !DILocation(line: 370, column: 26, scope: !1120, inlinedAt: !963)
!1124 = !DILocation(line: 371, column: 6, scope: !1125, inlinedAt: !963)
!1125 = distinct !DILexicalBlock(scope: !959, file: !20, line: 371, column: 6)
!1126 = !DILocation(line: 371, column: 11, scope: !1125, inlinedAt: !963)
!1127 = !DILocation(line: 371, column: 6, scope: !959, inlinedAt: !963)
!1128 = !DILocation(line: 371, column: 26, scope: !1125, inlinedAt: !963)
!1129 = !DILocation(line: 372, column: 6, scope: !1130, inlinedAt: !963)
!1130 = distinct !DILexicalBlock(scope: !959, file: !20, line: 372, column: 6)
!1131 = !DILocation(line: 372, column: 11, scope: !1130, inlinedAt: !963)
!1132 = !DILocation(line: 372, column: 6, scope: !959, inlinedAt: !963)
!1133 = !DILocation(line: 372, column: 26, scope: !1130, inlinedAt: !963)
!1134 = !DILocation(line: 373, column: 6, scope: !1135, inlinedAt: !963)
!1135 = distinct !DILexicalBlock(scope: !959, file: !20, line: 373, column: 6)
!1136 = !DILocation(line: 373, column: 11, scope: !1135, inlinedAt: !963)
!1137 = !DILocation(line: 373, column: 6, scope: !959, inlinedAt: !963)
!1138 = !DILocation(line: 373, column: 26, scope: !1135, inlinedAt: !963)
!1139 = !DILocation(line: 374, column: 6, scope: !1140, inlinedAt: !963)
!1140 = distinct !DILexicalBlock(scope: !959, file: !20, line: 374, column: 6)
!1141 = !DILocation(line: 374, column: 11, scope: !1140, inlinedAt: !963)
!1142 = !DILocation(line: 374, column: 6, scope: !959, inlinedAt: !963)
!1143 = !DILocation(line: 374, column: 26, scope: !1140, inlinedAt: !963)
!1144 = !DILocation(line: 375, column: 6, scope: !1145, inlinedAt: !963)
!1145 = distinct !DILexicalBlock(scope: !959, file: !20, line: 375, column: 6)
!1146 = !DILocation(line: 375, column: 11, scope: !1145, inlinedAt: !963)
!1147 = !DILocation(line: 375, column: 6, scope: !959, inlinedAt: !963)
!1148 = !DILocation(line: 375, column: 27, scope: !1145, inlinedAt: !963)
!1149 = !DILocation(line: 376, column: 6, scope: !1150, inlinedAt: !963)
!1150 = distinct !DILexicalBlock(scope: !959, file: !20, line: 376, column: 6)
!1151 = !DILocation(line: 376, column: 11, scope: !1150, inlinedAt: !963)
!1152 = !DILocation(line: 376, column: 6, scope: !959, inlinedAt: !963)
!1153 = !DILocation(line: 376, column: 32, scope: !1150, inlinedAt: !963)
!1154 = !DILocation(line: 377, column: 6, scope: !1155, inlinedAt: !963)
!1155 = distinct !DILexicalBlock(scope: !959, file: !20, line: 377, column: 6)
!1156 = !DILocation(line: 377, column: 11, scope: !1155, inlinedAt: !963)
!1157 = !DILocation(line: 377, column: 6, scope: !959, inlinedAt: !963)
!1158 = !DILocation(line: 377, column: 32, scope: !1155, inlinedAt: !963)
!1159 = !DILocation(line: 378, column: 6, scope: !1160, inlinedAt: !963)
!1160 = distinct !DILexicalBlock(scope: !959, file: !20, line: 378, column: 6)
!1161 = !DILocation(line: 378, column: 11, scope: !1160, inlinedAt: !963)
!1162 = !DILocation(line: 378, column: 6, scope: !959, inlinedAt: !963)
!1163 = !DILocation(line: 378, column: 32, scope: !1160, inlinedAt: !963)
!1164 = !DILocation(line: 379, column: 6, scope: !1165, inlinedAt: !963)
!1165 = distinct !DILexicalBlock(scope: !959, file: !20, line: 379, column: 6)
!1166 = !DILocation(line: 379, column: 11, scope: !1165, inlinedAt: !963)
!1167 = !DILocation(line: 379, column: 6, scope: !959, inlinedAt: !963)
!1168 = !DILocation(line: 379, column: 33, scope: !1165, inlinedAt: !963)
!1169 = !DILocation(line: 380, column: 6, scope: !1170, inlinedAt: !963)
!1170 = distinct !DILexicalBlock(scope: !959, file: !20, line: 380, column: 6)
!1171 = !DILocation(line: 380, column: 11, scope: !1170, inlinedAt: !963)
!1172 = !DILocation(line: 380, column: 6, scope: !959, inlinedAt: !963)
!1173 = !DILocation(line: 380, column: 33, scope: !1170, inlinedAt: !963)
!1174 = !DILocation(line: 381, column: 6, scope: !1175, inlinedAt: !963)
!1175 = distinct !DILexicalBlock(scope: !959, file: !20, line: 381, column: 6)
!1176 = !DILocation(line: 381, column: 11, scope: !1175, inlinedAt: !963)
!1177 = !DILocation(line: 381, column: 6, scope: !959, inlinedAt: !963)
!1178 = !DILocation(line: 381, column: 33, scope: !1175, inlinedAt: !963)
!1179 = !DILocation(line: 382, column: 2, scope: !1180, inlinedAt: !963)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !20, line: 382, column: 2)
!1181 = distinct !DILexicalBlock(scope: !959, file: !20, line: 382, column: 2)
!1182 = !{i32 -2142177905, i32 -2142177876, i32 -2142177830, i32 -2142177772, i32 -2142177718, i32 -2142177664, i32 -2142177609, i32 -2142177578}
!1183 = !DILocation(line: 382, column: 2, scope: !1184, inlinedAt: !963)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !20, line: 382, column: 2)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !20, line: 382, column: 2)
!1186 = !{i32 -2142177135, i32 -2142177128, i32 -2142177074, i32 -2142177043, i32 -2142177013}
!1187 = !DILocation(line: 382, column: 2, scope: !1185, inlinedAt: !963)
!1188 = !DILocation(line: 386, column: 1, scope: !959, inlinedAt: !963)
!1189 = !DILocation(line: 547, column: 9, scope: !939, inlinedAt: !944)
!1190 = !DILocation(line: 549, column: 8, scope: !1191, inlinedAt: !944)
!1191 = distinct !DILexicalBlock(scope: !939, file: !20, line: 549, column: 7)
!1192 = !DILocation(line: 549, column: 7, scope: !939, inlinedAt: !944)
!1193 = !DILocation(line: 550, column: 4, scope: !1191, inlinedAt: !944)
!1194 = !DILocation(line: 553, column: 33, scope: !939, inlinedAt: !944)
!1195 = !DILocation(line: 325, column: 6, scope: !1196, inlinedAt: !957)
!1196 = distinct !DILexicalBlock(scope: !953, file: !20, line: 325, column: 6)
!1197 = !DILocation(line: 325, column: 6, scope: !953, inlinedAt: !957)
!1198 = !DILocation(line: 326, column: 3, scope: !1196, inlinedAt: !957)
!1199 = !DILocation(line: 332, column: 9, scope: !953, inlinedAt: !957)
!1200 = !DILocation(line: 332, column: 15, scope: !953, inlinedAt: !957)
!1201 = !DILocation(line: 332, column: 2, scope: !953, inlinedAt: !957)
!1202 = !DILocation(line: 336, column: 1, scope: !953, inlinedAt: !957)
!1203 = !DILocation(line: 553, column: 5, scope: !939, inlinedAt: !944)
!1204 = !DILocation(line: 553, column: 41, scope: !939, inlinedAt: !944)
!1205 = !DILocation(line: 554, column: 5, scope: !939, inlinedAt: !944)
!1206 = !DILocation(line: 554, column: 12, scope: !939, inlinedAt: !944)
!1207 = !DILocation(line: 448, column: 31, scope: !931, inlinedAt: !938)
!1208 = !DILocation(line: 448, column: 34, scope: !931, inlinedAt: !938)
!1209 = !DILocation(line: 448, column: 14, scope: !931, inlinedAt: !938)
!1210 = !DILocation(line: 450, column: 22, scope: !931, inlinedAt: !938)
!1211 = !DILocation(line: 450, column: 25, scope: !931, inlinedAt: !938)
!1212 = !DILocation(line: 450, column: 30, scope: !931, inlinedAt: !938)
!1213 = !DILocation(line: 450, column: 36, scope: !931, inlinedAt: !938)
!1214 = !DILocation(line: 450, column: 8, scope: !931, inlinedAt: !938)
!1215 = !DILocation(line: 450, column: 6, scope: !931, inlinedAt: !938)
!1216 = !DILocation(line: 451, column: 9, scope: !931, inlinedAt: !938)
!1217 = !DILocation(line: 552, column: 3, scope: !939, inlinedAt: !944)
!1218 = !DILocation(line: 557, column: 19, scope: !941, inlinedAt: !944)
!1219 = !DILocation(line: 557, column: 25, scope: !941, inlinedAt: !944)
!1220 = !DILocation(line: 557, column: 9, scope: !941, inlinedAt: !944)
!1221 = !DILocation(line: 557, column: 2, scope: !941, inlinedAt: !944)
!1222 = !DILocation(line: 558, column: 1, scope: !941, inlinedAt: !944)
!1223 = !DILocation(line: 591, column: 3, scope: !945)
!1224 = !DILocation(line: 592, column: 19, scope: !929)
!1225 = !DILocation(line: 592, column: 26, scope: !929)
!1226 = !DILocation(line: 592, column: 9, scope: !929)
!1227 = !DILocation(line: 592, column: 2, scope: !929)
!1228 = !DILocation(line: 593, column: 1, scope: !929)
!1229 = distinct !DISubprogram(name: "__must_check_overflow", scope: !1230, file: !1230, line: 52, type: !1231, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1230 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!110, !110}
!1233 = !DILocalVariable(name: "overflow", arg: 1, scope: !1229, file: !1230, line: 52, type: !110)
!1234 = !DILocation(line: 52, column: 60, scope: !1229)
!1235 = !DILocation(line: 54, column: 9, scope: !1229)
!1236 = !DILocation(line: 54, column: 2, scope: !1229)
!1237 = distinct !DISubprogram(name: "get_order", scope: !1238, file: !1238, line: 29, type: !1239, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1238 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!93, !88}
!1241 = !DILocalVariable(name: "x", arg: 1, scope: !1242, file: !1243, line: 366, type: !61)
!1242 = distinct !DISubprogram(name: "fls64", scope: !1243, file: !1243, line: 366, type: !1244, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1243 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!93, !61}
!1246 = !DILocation(line: 366, column: 40, scope: !1242, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 46, column: 9, scope: !1237)
!1248 = !DILocalVariable(name: "bitpos", scope: !1242, file: !1243, line: 368, type: !93)
!1249 = !DILocation(line: 368, column: 6, scope: !1242, inlinedAt: !1247)
!1250 = !DILocalVariable(name: "size", arg: 1, scope: !1237, file: !1238, line: 29, type: !88)
!1251 = !DILocation(line: 29, column: 63, scope: !1237)
!1252 = !DILocation(line: 31, column: 27, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1237, file: !1238, line: 31, column: 6)
!1254 = !DILocation(line: 31, column: 6, scope: !1253)
!1255 = !DILocation(line: 31, column: 6, scope: !1237)
!1256 = !DILocation(line: 32, column: 8, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !1238, line: 32, column: 7)
!1258 = distinct !DILexicalBlock(scope: !1253, file: !1238, line: 31, column: 34)
!1259 = !DILocation(line: 32, column: 7, scope: !1258)
!1260 = !DILocation(line: 33, column: 4, scope: !1257)
!1261 = !DILocation(line: 35, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1258, file: !1238, line: 35, column: 7)
!1263 = !DILocation(line: 35, column: 12, scope: !1262)
!1264 = !DILocation(line: 35, column: 7, scope: !1258)
!1265 = !DILocation(line: 36, column: 4, scope: !1262)
!1266 = !DILocation(line: 38, column: 10, scope: !1258)
!1267 = !DILocation(line: 38, column: 28, scope: !1258)
!1268 = !DILocation(line: 38, column: 41, scope: !1258)
!1269 = !DILocation(line: 38, column: 3, scope: !1258)
!1270 = !DILocation(line: 41, column: 6, scope: !1237)
!1271 = !DILocation(line: 42, column: 7, scope: !1237)
!1272 = !DILocation(line: 46, column: 15, scope: !1237)
!1273 = !DILocation(line: 374, column: 2, scope: !1242, inlinedAt: !1247)
!1274 = !DILocation(line: 376, column: 14, scope: !1242, inlinedAt: !1247)
!1275 = !{i32 255693}
!1276 = !DILocation(line: 377, column: 9, scope: !1242, inlinedAt: !1247)
!1277 = !DILocation(line: 377, column: 16, scope: !1242, inlinedAt: !1247)
!1278 = !DILocation(line: 46, column: 2, scope: !1237)
!1279 = !DILocation(line: 48, column: 1, scope: !1237)
!1280 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1281, file: !1281, line: 30, type: !1282, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1281 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!93, !59}
!1284 = !DILocation(line: 366, column: 40, scope: !1242, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 32, column: 9, scope: !1280)
!1286 = !DILocation(line: 368, column: 6, scope: !1242, inlinedAt: !1285)
!1287 = !DILocalVariable(name: "n", arg: 1, scope: !1280, file: !1281, line: 30, type: !59)
!1288 = !DILocation(line: 30, column: 21, scope: !1280)
!1289 = !DILocation(line: 32, column: 15, scope: !1280)
!1290 = !DILocation(line: 374, column: 2, scope: !1242, inlinedAt: !1285)
!1291 = !DILocation(line: 376, column: 14, scope: !1242, inlinedAt: !1285)
!1292 = !DILocation(line: 377, column: 9, scope: !1242, inlinedAt: !1285)
!1293 = !DILocation(line: 377, column: 16, scope: !1242, inlinedAt: !1285)
!1294 = !DILocation(line: 32, column: 18, scope: !1280)
!1295 = !DILocation(line: 32, column: 2, scope: !1280)
!1296 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1297, file: !1297, line: 137, type: !1298, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1297 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!63, !934, !158, !84, !50}
!1300 = !DILocalVariable(name: "s", arg: 1, scope: !1296, file: !1297, line: 137, type: !934)
!1301 = !DILocation(line: 137, column: 54, scope: !1296)
!1302 = !DILocalVariable(name: "object", arg: 2, scope: !1296, file: !1297, line: 137, type: !158)
!1303 = !DILocation(line: 137, column: 69, scope: !1296)
!1304 = !DILocalVariable(name: "size", arg: 3, scope: !1296, file: !1297, line: 138, type: !84)
!1305 = !DILocation(line: 138, column: 12, scope: !1296)
!1306 = !DILocalVariable(name: "flags", arg: 4, scope: !1296, file: !1297, line: 138, type: !50)
!1307 = !DILocation(line: 138, column: 24, scope: !1296)
!1308 = !DILocation(line: 140, column: 17, scope: !1296)
!1309 = !DILocation(line: 140, column: 2, scope: !1296)
!1310 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_payload_get", scope: !148, file: !148, line: 27, type: !1311, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!158, !359, !145, !77, !84, !110}
!1313 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !1310, file: !148, line: 27, type: !359)
!1314 = !DILocation(line: 27, column: 58, scope: !1310)
!1315 = !DILocalVariable(name: "tlv", arg: 2, scope: !1310, file: !148, line: 28, type: !145)
!1316 = !DILocation(line: 28, column: 36, scope: !1310)
!1317 = !DILocalVariable(name: "payload_type", arg: 3, scope: !1310, file: !148, line: 28, type: !77)
!1318 = !DILocation(line: 28, column: 44, scope: !1310)
!1319 = !DILocalVariable(name: "payload_size", arg: 4, scope: !1310, file: !148, line: 29, type: !84)
!1320 = !DILocation(line: 29, column: 14, scope: !1310)
!1321 = !DILocalVariable(name: "varsize", arg: 5, scope: !1310, file: !148, line: 29, type: !110)
!1322 = !DILocation(line: 29, column: 33, scope: !1310)
!1323 = !DILocalVariable(name: "tlv_top", scope: !1310, file: !148, line: 31, type: !63)
!1324 = !DILocation(line: 31, column: 8, scope: !1310)
!1325 = !DILocation(line: 33, column: 21, scope: !1310)
!1326 = !DILocation(line: 33, column: 12, scope: !1310)
!1327 = !DILocation(line: 33, column: 27, scope: !1310)
!1328 = !DILocation(line: 33, column: 25, scope: !1310)
!1329 = !DILocation(line: 33, column: 49, scope: !1310)
!1330 = !DILocation(line: 33, column: 10, scope: !1310)
!1331 = !DILocation(line: 34, column: 28, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1310, file: !148, line: 34, column: 6)
!1333 = !DILocation(line: 34, column: 39, scope: !1332)
!1334 = !DILocation(line: 34, column: 7, scope: !1332)
!1335 = !DILocation(line: 34, column: 44, scope: !1332)
!1336 = !DILocation(line: 35, column: 28, scope: !1332)
!1337 = !DILocation(line: 35, column: 39, scope: !1332)
!1338 = !DILocation(line: 35, column: 7, scope: !1332)
!1339 = !DILocation(line: 34, column: 6, scope: !1310)
!1340 = !DILocation(line: 36, column: 3, scope: !1332)
!1341 = !DILocation(line: 37, column: 6, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1310, file: !148, line: 37, column: 6)
!1343 = !DILocation(line: 37, column: 11, scope: !1342)
!1344 = !DILocation(line: 37, column: 19, scope: !1342)
!1345 = !DILocation(line: 37, column: 16, scope: !1342)
!1346 = !DILocation(line: 37, column: 6, scope: !1310)
!1347 = !DILocation(line: 38, column: 3, scope: !1342)
!1348 = !DILocation(line: 39, column: 6, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1310, file: !148, line: 39, column: 6)
!1350 = !DILocation(line: 39, column: 14, scope: !1349)
!1351 = !DILocation(line: 39, column: 18, scope: !1349)
!1352 = !DILocation(line: 39, column: 42, scope: !1349)
!1353 = !DILocation(line: 39, column: 40, scope: !1349)
!1354 = !DILocation(line: 39, column: 6, scope: !1310)
!1355 = !DILocation(line: 40, column: 3, scope: !1349)
!1356 = !DILocation(line: 41, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1310, file: !148, line: 41, column: 6)
!1358 = !DILocation(line: 41, column: 15, scope: !1357)
!1359 = !DILocation(line: 41, column: 19, scope: !1357)
!1360 = !DILocation(line: 41, column: 44, scope: !1357)
!1361 = !DILocation(line: 41, column: 41, scope: !1357)
!1362 = !DILocation(line: 41, column: 6, scope: !1310)
!1363 = !DILocation(line: 42, column: 3, scope: !1357)
!1364 = !DILocation(line: 44, column: 9, scope: !1310)
!1365 = !DILocation(line: 44, column: 14, scope: !1310)
!1366 = !DILocation(line: 44, column: 2, scope: !1310)
!1367 = !DILocation(line: 45, column: 1, scope: !1310)
!1368 = distinct !DISubprogram(name: "__arch_swab32", scope: !1369, file: !1369, line: 8, type: !400, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1369 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!1370 = !DILocalVariable(name: "val", arg: 1, scope: !1368, file: !1369, line: 8, type: !57)
!1371 = !DILocation(line: 8, column: 61, scope: !1368)
!1372 = !DILocation(line: 10, column: 38, scope: !1368)
!1373 = !DILocation(line: 10, column: 2, scope: !1368)
!1374 = !{i32 375917}
!1375 = !DILocation(line: 11, column: 9, scope: !1368)
!1376 = !DILocation(line: 11, column: 2, scope: !1368)
!1377 = distinct !DISubprogram(name: "mlxfw_mfa2_file_dev_validate", scope: !3, file: !3, line: 112, type: !1378, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!110, !359, !145, !72}
!1380 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !1377, file: !3, line: 112, type: !359)
!1381 = !DILocation(line: 112, column: 60, scope: !1377)
!1382 = !DILocalVariable(name: "dev_tlv", arg: 2, scope: !1377, file: !3, line: 113, type: !145)
!1383 = !DILocation(line: 113, column: 38, scope: !1377)
!1384 = !DILocalVariable(name: "dev_idx", arg: 3, scope: !1377, file: !3, line: 114, type: !72)
!1385 = !DILocation(line: 114, column: 13, scope: !1377)
!1386 = !DILocalVariable(name: "cptr", scope: !1377, file: !3, line: 116, type: !749)
!1387 = !DILocation(line: 116, column: 45, scope: !1377)
!1388 = !DILocalVariable(name: "multi", scope: !1377, file: !3, line: 117, type: !182)
!1389 = !DILocation(line: 117, column: 37, scope: !1377)
!1390 = !DILocalVariable(name: "psid", scope: !1377, file: !3, line: 118, type: !548)
!1391 = !DILocation(line: 118, column: 36, scope: !1377)
!1392 = !DILocalVariable(name: "tlv", scope: !1377, file: !3, line: 119, type: !145)
!1393 = !DILocation(line: 119, column: 31, scope: !1377)
!1394 = !DILocalVariable(name: "cptr_count", scope: !1377, file: !3, line: 120, type: !72)
!1395 = !DILocation(line: 120, column: 6, scope: !1377)
!1396 = !DILocalVariable(name: "cptr_idx", scope: !1377, file: !3, line: 121, type: !72)
!1397 = !DILocation(line: 121, column: 6, scope: !1377)
!1398 = !DILocalVariable(name: "err", scope: !1377, file: !3, line: 122, type: !93)
!1399 = !DILocation(line: 122, column: 6, scope: !1377)
!1400 = !DILocation(line: 124, column: 2, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 124, column: 2)
!1402 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 124, column: 2)
!1403 = !DILocation(line: 124, column: 2, scope: !1402)
!1404 = !DILocation(line: 126, column: 35, scope: !1377)
!1405 = !DILocation(line: 126, column: 46, scope: !1377)
!1406 = !DILocation(line: 126, column: 10, scope: !1377)
!1407 = !DILocation(line: 126, column: 8, scope: !1377)
!1408 = !DILocation(line: 127, column: 7, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 127, column: 6)
!1410 = !DILocation(line: 127, column: 6, scope: !1377)
!1411 = !DILocation(line: 128, column: 3, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 127, column: 14)
!1413 = !DILocation(line: 129, column: 3, scope: !1412)
!1414 = !DILocation(line: 132, column: 37, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 132, column: 6)
!1416 = !DILocation(line: 132, column: 48, scope: !1415)
!1417 = !DILocation(line: 132, column: 7, scope: !1415)
!1418 = !DILocation(line: 132, column: 6, scope: !1377)
!1419 = !DILocation(line: 133, column: 3, scope: !1415)
!1420 = !DILocation(line: 136, column: 40, scope: !1377)
!1421 = !DILocation(line: 136, column: 51, scope: !1377)
!1422 = !DILocation(line: 136, column: 8, scope: !1377)
!1423 = !DILocation(line: 136, column: 6, scope: !1377)
!1424 = !DILocation(line: 138, column: 7, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 138, column: 6)
!1426 = !DILocation(line: 138, column: 6, scope: !1377)
!1427 = !DILocation(line: 139, column: 3, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 138, column: 12)
!1429 = !DILocation(line: 140, column: 3, scope: !1428)
!1430 = !DILocation(line: 143, column: 33, scope: !1377)
!1431 = !DILocation(line: 143, column: 44, scope: !1377)
!1432 = !DILocation(line: 143, column: 9, scope: !1377)
!1433 = !DILocation(line: 143, column: 7, scope: !1377)
!1434 = !DILocation(line: 144, column: 7, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 144, column: 6)
!1436 = !DILocation(line: 144, column: 6, scope: !1377)
!1437 = !DILocation(line: 145, column: 3, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 144, column: 13)
!1439 = !DILocation(line: 146, column: 3, scope: !1438)
!1440 = !DILocation(line: 150, column: 9, scope: !1377)
!1441 = !DILocation(line: 150, column: 15, scope: !1377)
!1442 = !DILocation(line: 150, column: 21, scope: !1377)
!1443 = !DILocation(line: 149, column: 2, scope: !1377)
!1444 = !DILocation(line: 153, column: 41, scope: !1377)
!1445 = !DILocation(line: 153, column: 52, scope: !1377)
!1446 = !DILocation(line: 153, column: 8, scope: !1377)
!1447 = !DILocation(line: 153, column: 6, scope: !1377)
!1448 = !DILocation(line: 156, column: 6, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 156, column: 6)
!1450 = !DILocation(line: 156, column: 6, scope: !1377)
!1451 = !DILocation(line: 157, column: 3, scope: !1449)
!1452 = !DILocation(line: 159, column: 6, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 159, column: 6)
!1454 = !DILocation(line: 159, column: 17, scope: !1453)
!1455 = !DILocation(line: 159, column: 6, scope: !1377)
!1456 = !DILocation(line: 160, column: 3, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 159, column: 23)
!1458 = !DILocation(line: 161, column: 3, scope: !1457)
!1459 = !DILocation(line: 164, column: 16, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 164, column: 2)
!1461 = !DILocation(line: 164, column: 7, scope: !1460)
!1462 = !DILocation(line: 164, column: 21, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 164, column: 2)
!1464 = !DILocation(line: 164, column: 32, scope: !1463)
!1465 = !DILocation(line: 164, column: 30, scope: !1463)
!1466 = !DILocation(line: 164, column: 2, scope: !1460)
!1467 = !DILocation(line: 165, column: 41, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 164, column: 56)
!1469 = !DILocation(line: 165, column: 52, scope: !1468)
!1470 = !DILocation(line: 167, column: 13, scope: !1468)
!1471 = !DILocation(line: 165, column: 9, scope: !1468)
!1472 = !DILocation(line: 165, column: 7, scope: !1468)
!1473 = !DILocation(line: 168, column: 8, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 168, column: 7)
!1475 = !DILocation(line: 168, column: 7, scope: !1468)
!1476 = !DILocation(line: 169, column: 4, scope: !1474)
!1477 = !DILocation(line: 171, column: 43, scope: !1468)
!1478 = !DILocation(line: 171, column: 54, scope: !1468)
!1479 = !DILocation(line: 171, column: 10, scope: !1468)
!1480 = !DILocation(line: 171, column: 8, scope: !1468)
!1481 = !DILocation(line: 172, column: 8, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 172, column: 7)
!1483 = !DILocation(line: 172, column: 7, scope: !1468)
!1484 = !DILocation(line: 173, column: 4, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 172, column: 14)
!1486 = !DILocation(line: 175, column: 4, scope: !1485)
!1487 = !DILocation(line: 178, column: 3, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 178, column: 3)
!1489 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 178, column: 3)
!1490 = !DILocation(line: 178, column: 3, scope: !1489)
!1491 = !DILocation(line: 180, column: 2, scope: !1468)
!1492 = !DILocation(line: 164, column: 52, scope: !1463)
!1493 = !DILocation(line: 164, column: 2, scope: !1463)
!1494 = distinct !{!1494, !1466, !1495}
!1495 = !DILocation(line: 180, column: 2, scope: !1460)
!1496 = !DILocation(line: 181, column: 2, scope: !1377)
!1497 = !DILocation(line: 182, column: 1, scope: !1377)
!1498 = distinct !DISubprogram(name: "mlxfw_mfa2_file_comp_validate", scope: !3, file: !3, line: 185, type: !1378, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1499 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !1498, file: !3, line: 185, type: !359)
!1500 = !DILocation(line: 185, column: 61, scope: !1498)
!1501 = !DILocalVariable(name: "comp_tlv", arg: 2, scope: !1498, file: !3, line: 186, type: !145)
!1502 = !DILocation(line: 186, column: 39, scope: !1498)
!1503 = !DILocalVariable(name: "comp_idx", arg: 3, scope: !1498, file: !3, line: 187, type: !72)
!1504 = !DILocation(line: 187, column: 14, scope: !1498)
!1505 = !DILocalVariable(name: "cdesc", scope: !1498, file: !3, line: 189, type: !632)
!1506 = !DILocation(line: 189, column: 52, scope: !1498)
!1507 = !DILocalVariable(name: "multi", scope: !1498, file: !3, line: 190, type: !182)
!1508 = !DILocation(line: 190, column: 37, scope: !1498)
!1509 = !DILocalVariable(name: "tlv", scope: !1498, file: !3, line: 191, type: !145)
!1510 = !DILocation(line: 191, column: 31, scope: !1498)
!1511 = !DILocation(line: 193, column: 2, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 193, column: 2)
!1513 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 193, column: 2)
!1514 = !DILocation(line: 193, column: 2, scope: !1513)
!1515 = !DILocation(line: 195, column: 35, scope: !1498)
!1516 = !DILocation(line: 195, column: 46, scope: !1498)
!1517 = !DILocation(line: 195, column: 10, scope: !1498)
!1518 = !DILocation(line: 195, column: 8, scope: !1498)
!1519 = !DILocation(line: 196, column: 7, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 196, column: 6)
!1521 = !DILocation(line: 196, column: 6, scope: !1498)
!1522 = !DILocation(line: 197, column: 3, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 196, column: 14)
!1524 = !DILocation(line: 198, column: 3, scope: !1523)
!1525 = !DILocation(line: 201, column: 37, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 201, column: 6)
!1527 = !DILocation(line: 201, column: 48, scope: !1526)
!1528 = !DILocation(line: 201, column: 7, scope: !1526)
!1529 = !DILocation(line: 201, column: 6, scope: !1498)
!1530 = !DILocation(line: 202, column: 3, scope: !1526)
!1531 = !DILocation(line: 205, column: 35, scope: !1498)
!1532 = !DILocation(line: 205, column: 46, scope: !1498)
!1533 = !DILocation(line: 205, column: 8, scope: !1498)
!1534 = !DILocation(line: 205, column: 6, scope: !1498)
!1535 = !DILocation(line: 206, column: 7, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 206, column: 6)
!1537 = !DILocation(line: 206, column: 6, scope: !1498)
!1538 = !DILocation(line: 207, column: 3, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 206, column: 12)
!1540 = !DILocation(line: 208, column: 3, scope: !1539)
!1541 = !DILocation(line: 211, column: 50, scope: !1498)
!1542 = !DILocation(line: 211, column: 61, scope: !1498)
!1543 = !DILocation(line: 211, column: 10, scope: !1498)
!1544 = !DILocation(line: 211, column: 8, scope: !1498)
!1545 = !DILocation(line: 212, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 212, column: 6)
!1547 = !DILocation(line: 212, column: 6, scope: !1498)
!1548 = !DILocation(line: 213, column: 3, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 212, column: 14)
!1550 = !DILocation(line: 215, column: 3, scope: !1549)
!1551 = !DILocation(line: 217, column: 2, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 217, column: 2)
!1553 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 217, column: 2)
!1554 = !DILocation(line: 217, column: 2, scope: !1553)
!1555 = !DILocation(line: 218, column: 2, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 218, column: 2)
!1557 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 218, column: 2)
!1558 = !DILocation(line: 218, column: 2, scope: !1557)
!1559 = !DILocation(line: 222, column: 2, scope: !1498)
!1560 = !DILocation(line: 223, column: 1, scope: !1498)
!1561 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_multi_validate", scope: !3, file: !3, line: 95, type: !1562, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!110, !359, !182}
!1564 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !1561, file: !3, line: 95, type: !359)
!1565 = !DILocation(line: 95, column: 61, scope: !1561)
!1566 = !DILocalVariable(name: "multi", arg: 2, scope: !1561, file: !3, line: 96, type: !182)
!1567 = !DILocation(line: 96, column: 45, scope: !1561)
!1568 = !DILocalVariable(name: "tlv", scope: !1561, file: !3, line: 98, type: !145)
!1569 = !DILocation(line: 98, column: 31, scope: !1561)
!1570 = !DILocalVariable(name: "idx", scope: !1561, file: !3, line: 99, type: !72)
!1571 = !DILocation(line: 99, column: 6, scope: !1561)
!1572 = !DILocation(line: 102, column: 2, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 102, column: 2)
!1574 = !DILocation(line: 102, column: 2, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 102, column: 2)
!1576 = !DILocation(line: 103, column: 8, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 103, column: 7)
!1578 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 102, column: 59)
!1579 = !DILocation(line: 103, column: 7, scope: !1578)
!1580 = !DILocation(line: 104, column: 4, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 103, column: 13)
!1582 = !DILocation(line: 105, column: 4, scope: !1581)
!1583 = !DILocation(line: 107, column: 2, scope: !1578)
!1584 = distinct !{!1584, !1572, !1585}
!1585 = !DILocation(line: 107, column: 2, scope: !1573)
!1586 = !DILocation(line: 108, column: 2, scope: !1561)
!1587 = !DILocation(line: 109, column: 1, scope: !1561)
!1588 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_psid_get", scope: !12, file: !12, line: 50, type: !1589, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!548, !359, !145}
!1591 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !1588, file: !12, line: 50, type: !359)
!1592 = !DILocation(line: 50, column: 1, scope: !1588)
!1593 = !DILocalVariable(name: "tlv", arg: 2, scope: !1588, file: !12, line: 50, type: !145)
!1594 = distinct !DISubprogram(name: "print_hex_dump_debug", scope: !27, file: !27, line: 604, type: !1595, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !497, !93, !93, !93, !158, !84, !110}
!1597 = !DILocalVariable(name: "prefix_str", arg: 1, scope: !1594, file: !27, line: 604, type: !497)
!1598 = !DILocation(line: 604, column: 53, scope: !1594)
!1599 = !DILocalVariable(name: "prefix_type", arg: 2, scope: !1594, file: !27, line: 604, type: !93)
!1600 = !DILocation(line: 604, column: 69, scope: !1594)
!1601 = !DILocalVariable(name: "rowsize", arg: 3, scope: !1594, file: !27, line: 605, type: !93)
!1602 = !DILocation(line: 605, column: 10, scope: !1594)
!1603 = !DILocalVariable(name: "groupsize", arg: 4, scope: !1594, file: !27, line: 605, type: !93)
!1604 = !DILocation(line: 605, column: 23, scope: !1594)
!1605 = !DILocalVariable(name: "buf", arg: 5, scope: !1594, file: !27, line: 606, type: !158)
!1606 = !DILocation(line: 606, column: 18, scope: !1594)
!1607 = !DILocalVariable(name: "len", arg: 6, scope: !1594, file: !27, line: 606, type: !84)
!1608 = !DILocation(line: 606, column: 30, scope: !1594)
!1609 = !DILocalVariable(name: "ascii", arg: 7, scope: !1594, file: !27, line: 606, type: !110)
!1610 = !DILocation(line: 606, column: 40, scope: !1594)
!1611 = !DILocation(line: 608, column: 1, scope: !1594)
!1612 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_component_ptr_get", scope: !12, file: !12, line: 59, type: !1613, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!749, !359, !145}
!1615 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !1612, file: !12, line: 59, type: !359)
!1616 = !DILocation(line: 59, column: 1, scope: !1612)
!1617 = !DILocalVariable(name: "tlv", arg: 2, scope: !1612, file: !12, line: 59, type: !145)
!1618 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_component_descriptor_get", scope: !12, file: !12, line: 70, type: !1619, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!632, !359, !145}
!1621 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !1618, file: !12, line: 70, type: !359)
!1622 = !DILocation(line: 70, column: 1, scope: !1618)
!1623 = !DILocalVariable(name: "tlv", arg: 2, scope: !1618, file: !12, line: 70, type: !145)
!1624 = distinct !DISubprogram(name: "mlxfw_mfa2_file_component_tlv_get", scope: !3, file: !3, line: 471, type: !1625, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!632, !359, !72}
!1627 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !1624, file: !3, line: 471, type: !359)
!1628 = !DILocation(line: 471, column: 65, scope: !1624)
!1629 = !DILocalVariable(name: "comp_index", arg: 2, scope: !1624, file: !3, line: 472, type: !72)
!1630 = !DILocation(line: 472, column: 11, scope: !1624)
!1631 = !DILocalVariable(name: "multi", scope: !1624, file: !3, line: 474, type: !182)
!1632 = !DILocation(line: 474, column: 37, scope: !1624)
!1633 = !DILocalVariable(name: "multi_child", scope: !1624, file: !3, line: 475, type: !145)
!1634 = !DILocation(line: 475, column: 31, scope: !1624)
!1635 = !DILocalVariable(name: "comp_tlv", scope: !1624, file: !3, line: 476, type: !145)
!1636 = !DILocation(line: 476, column: 31, scope: !1624)
!1637 = !DILocation(line: 478, column: 6, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 478, column: 6)
!1639 = !DILocation(line: 478, column: 19, scope: !1638)
!1640 = !DILocation(line: 478, column: 30, scope: !1638)
!1641 = !DILocation(line: 478, column: 17, scope: !1638)
!1642 = !DILocation(line: 478, column: 6, scope: !1624)
!1643 = !DILocation(line: 479, column: 3, scope: !1638)
!1644 = !DILocation(line: 481, column: 36, scope: !1624)
!1645 = !DILocation(line: 481, column: 47, scope: !1624)
!1646 = !DILocation(line: 481, column: 58, scope: !1624)
!1647 = !DILocation(line: 482, column: 8, scope: !1624)
!1648 = !DILocation(line: 481, column: 13, scope: !1624)
!1649 = !DILocation(line: 481, column: 11, scope: !1624)
!1650 = !DILocation(line: 483, column: 7, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 483, column: 6)
!1652 = !DILocation(line: 483, column: 6, scope: !1624)
!1653 = !DILocation(line: 484, column: 3, scope: !1651)
!1654 = !DILocation(line: 486, column: 35, scope: !1624)
!1655 = !DILocation(line: 486, column: 46, scope: !1624)
!1656 = !DILocation(line: 486, column: 10, scope: !1624)
!1657 = !DILocation(line: 486, column: 8, scope: !1624)
!1658 = !DILocation(line: 487, column: 7, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 487, column: 6)
!1660 = !DILocation(line: 487, column: 6, scope: !1624)
!1661 = !DILocation(line: 488, column: 3, scope: !1659)
!1662 = !DILocation(line: 490, column: 43, scope: !1624)
!1663 = !DILocation(line: 490, column: 54, scope: !1624)
!1664 = !DILocation(line: 490, column: 16, scope: !1624)
!1665 = !DILocation(line: 490, column: 14, scope: !1624)
!1666 = !DILocation(line: 491, column: 7, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 491, column: 6)
!1668 = !DILocation(line: 491, column: 6, scope: !1624)
!1669 = !DILocation(line: 492, column: 3, scope: !1667)
!1670 = !DILocation(line: 494, column: 49, scope: !1624)
!1671 = !DILocation(line: 494, column: 60, scope: !1624)
!1672 = !DILocation(line: 494, column: 9, scope: !1624)
!1673 = !DILocation(line: 494, column: 2, scope: !1624)
!1674 = !DILocation(line: 495, column: 1, scope: !1624)
!1675 = distinct !DISubprogram(name: "mlxfw_mfa2_xz_dec_run", scope: !3, file: !3, line: 390, type: !1676, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !121)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!93, !808, !1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!1680 = !DILocalVariable(name: "xz_dec", arg: 1, scope: !1675, file: !3, line: 390, type: !808)
!1681 = !DILocation(line: 390, column: 49, scope: !1675)
!1682 = !DILocalVariable(name: "xz_buf", arg: 2, scope: !1675, file: !3, line: 390, type: !1678)
!1683 = !DILocation(line: 390, column: 72, scope: !1675)
!1684 = !DILocalVariable(name: "finished", arg: 3, scope: !1675, file: !3, line: 391, type: !1679)
!1685 = !DILocation(line: 391, column: 12, scope: !1675)
!1686 = !DILocalVariable(name: "xz_ret", scope: !1675, file: !3, line: 393, type: !38)
!1687 = !DILocation(line: 393, column: 14, scope: !1675)
!1688 = !DILocation(line: 395, column: 22, scope: !1675)
!1689 = !DILocation(line: 395, column: 30, scope: !1675)
!1690 = !DILocation(line: 395, column: 11, scope: !1675)
!1691 = !DILocation(line: 395, column: 9, scope: !1675)
!1692 = !DILocation(line: 397, column: 10, scope: !1675)
!1693 = !DILocation(line: 397, column: 2, scope: !1675)
!1694 = !DILocation(line: 399, column: 4, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 397, column: 18)
!1696 = !DILocation(line: 399, column: 13, scope: !1695)
!1697 = !DILocation(line: 400, column: 3, scope: !1695)
!1698 = !DILocation(line: 402, column: 4, scope: !1695)
!1699 = !DILocation(line: 402, column: 13, scope: !1695)
!1700 = !DILocation(line: 403, column: 3, scope: !1695)
!1701 = !DILocation(line: 405, column: 3, scope: !1695)
!1702 = !DILocation(line: 406, column: 3, scope: !1695)
!1703 = !DILocation(line: 408, column: 3, scope: !1695)
!1704 = !DILocation(line: 409, column: 3, scope: !1695)
!1705 = !DILocation(line: 411, column: 3, scope: !1695)
!1706 = !DILocation(line: 412, column: 3, scope: !1695)
!1707 = !DILocation(line: 414, column: 3, scope: !1695)
!1708 = !DILocation(line: 415, column: 3, scope: !1695)
!1709 = !DILocation(line: 417, column: 3, scope: !1695)
!1710 = !DILocation(line: 418, column: 3, scope: !1695)
!1711 = !DILocation(line: 420, column: 3, scope: !1695)
!1712 = !DILocation(line: 421, column: 3, scope: !1695)
!1713 = !DILocation(line: 423, column: 1, scope: !1675)
