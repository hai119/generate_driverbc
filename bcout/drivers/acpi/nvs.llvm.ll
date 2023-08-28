; ModuleID = '../bcout/drivers/acpi/nvs.llvm.bc'
source_filename = "drivers/acpi/nvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kmem_cache = type opaque
%struct.nvs_region = type { i64, i64, %struct.list_head }
%struct.nvs_page = type { i64, i32, i8*, i8*, i8, %struct.list_head }

@nvs_region_list = internal global %struct.list_head { %struct.list_head* @nvs_region_list, %struct.list_head* @nvs_region_list }, align 8, !dbg !0
@nvs_list = internal global %struct.list_head { %struct.list_head* @nvs_list, %struct.list_head* @nvs_list }, align 8, !dbg !51
@.str = private unnamed_addr constant [34 x i8] c"\016PM: Saving platform NVS memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\016PM: Restoring platform NVS memory\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"\016PM: Registering ACPI NVS region [mem %#010lx-%#010lx] (%ld bytes)\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_nvs_register(i64 %start, i64 %size) #0 !dbg !58 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !63, metadata !DIExpression()), !dbg !74
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !82, metadata !DIExpression()), !dbg !83
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !84, metadata !DIExpression()), !dbg !85
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !86, metadata !DIExpression()), !dbg !87
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !88, metadata !DIExpression()), !dbg !92
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !94, metadata !DIExpression()), !dbg !98
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !100, metadata !DIExpression()), !dbg !104
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !109, metadata !DIExpression()), !dbg !110
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !111, metadata !DIExpression()), !dbg !112
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !113, metadata !DIExpression()), !dbg !114
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !115, metadata !DIExpression()), !dbg !116
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !117, metadata !DIExpression()), !dbg !118
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !119, metadata !DIExpression()), !dbg !120
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !121, metadata !DIExpression()), !dbg !122
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !123, metadata !DIExpression()), !dbg !124
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %region = alloca %struct.nvs_region*, align 8
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !125, metadata !DIExpression()), !dbg !126
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata %struct.nvs_region** %region, metadata !129, metadata !DIExpression()), !dbg !130
  store i64 32, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !131
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #8, !dbg !132
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !133

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !134
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !135
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !136

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !137
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !138
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !139
  %call.i.i = call i32 @get_order(i64 %5) #9, !dbg !140
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !118
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !141
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !142
  %8 = load i32, i32* %order.i.i, align 4, !dbg !143
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !144
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !145
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !146
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #10, !dbg !147
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !147
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !147
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !147
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !147
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !148
  br label %kmalloc.exit, !dbg !148

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !149
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !150
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !150
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !152

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !153
  br label %kmalloc_index.exit.i, !dbg !153

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !154
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !156
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !157

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !158
  br label %kmalloc_index.exit.i, !dbg !158

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !159
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !161
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !162

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !163
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !164
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !165

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !166
  br label %kmalloc_index.exit.i, !dbg !166

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !167
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !169
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !170

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !171
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !172
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !173

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !174
  br label %kmalloc_index.exit.i, !dbg !174

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !175
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !177
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !178

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !179
  br label %kmalloc_index.exit.i, !dbg !179

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !180
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !182
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !183

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !184
  br label %kmalloc_index.exit.i, !dbg !184

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !185
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !187
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !188

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !189
  br label %kmalloc_index.exit.i, !dbg !189

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !190
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !192
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !193

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !194
  br label %kmalloc_index.exit.i, !dbg !194

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !195
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !197
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !198

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !199
  br label %kmalloc_index.exit.i, !dbg !199

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !200
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !202
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !203

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !204
  br label %kmalloc_index.exit.i, !dbg !204

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !205
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !207
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !208

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !209
  br label %kmalloc_index.exit.i, !dbg !209

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !210
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !212
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !213

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !214
  br label %kmalloc_index.exit.i, !dbg !214

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !215
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !217
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !218

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !219
  br label %kmalloc_index.exit.i, !dbg !219

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !220
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !222
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !223

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !224
  br label %kmalloc_index.exit.i, !dbg !224

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !225
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !227
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !228

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !229
  br label %kmalloc_index.exit.i, !dbg !229

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !230
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !232
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !233

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !234
  br label %kmalloc_index.exit.i, !dbg !234

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !235
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !237
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !238

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !239
  br label %kmalloc_index.exit.i, !dbg !239

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !240
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !242
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !243

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !244
  br label %kmalloc_index.exit.i, !dbg !244

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !245
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !247
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !248

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !249
  br label %kmalloc_index.exit.i, !dbg !249

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !250
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !252
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !253

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !254
  br label %kmalloc_index.exit.i, !dbg !254

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !255
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !257
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !258

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !259
  br label %kmalloc_index.exit.i, !dbg !259

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !260
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !262
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !263

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !264
  br label %kmalloc_index.exit.i, !dbg !264

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !265
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !267
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !268

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !269
  br label %kmalloc_index.exit.i, !dbg !269

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !270
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !272
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !273

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !274
  br label %kmalloc_index.exit.i, !dbg !274

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !275
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !277
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !278

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !279
  br label %kmalloc_index.exit.i, !dbg !279

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !280
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !282
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !283

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !284
  br label %kmalloc_index.exit.i, !dbg !284

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !285
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !287
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !288

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !289
  br label %kmalloc_index.exit.i, !dbg !289

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !290
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !292
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !293

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !294
  br label %kmalloc_index.exit.i, !dbg !294

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !295, !srcloc !298
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 214) #8, !dbg !299, !srcloc !302
  unreachable, !dbg !303

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !304
  store i32 %43, i32* %index.i, align 4, !dbg !305
  %44 = load i32, i32* %index.i, align 4, !dbg !306
  %tobool.i = icmp ne i32 %44, 0, !dbg !306
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !308

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !309
  br label %kmalloc.exit, !dbg !309

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !310
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !311
  %and.i.i = and i32 %46, 17, !dbg !311
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !311
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !311
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !311
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !311
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !313

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !314
  br label %kmalloc_type.exit.i, !dbg !314

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !315
  %and2.i.i = and i32 %47, 1, !dbg !316
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !315
  %48 = zext i1 %tobool3.i.i to i64, !dbg !315
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !315
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !317
  br label %kmalloc_type.exit.i, !dbg !317

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !318
  %idxprom.i = zext i32 %49 to i64, !dbg !319
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !319
  %50 = load i32, i32* %index.i, align 4, !dbg !320
  %idxprom6.i = zext i32 %50 to i64, !dbg !319
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !319
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !319
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !321
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !322
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !323
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !324
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #10, !dbg !325
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !325
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !325
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !325
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !325
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !87
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !326
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !327
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !328
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !329
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #10, !dbg !330
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !331
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !332
  store i8* %60, i8** %retval.i, align 8, !dbg !333
  br label %kmalloc.exit, !dbg !333

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !334
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !335
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #10, !dbg !336
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !336
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !336
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !336
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !336
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !337
  br label %kmalloc.exit, !dbg !337

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !338
  %64 = bitcast i8* %63 to %struct.nvs_region*, !dbg !339
  store %struct.nvs_region* %64, %struct.nvs_region** %region, align 8, !dbg !340
  %65 = load %struct.nvs_region*, %struct.nvs_region** %region, align 8, !dbg !341
  %tobool = icmp ne %struct.nvs_region* %65, null, !dbg !341
  br i1 %tobool, label %if.end, label %if.then, !dbg !343

if.then:                                          ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !344
  br label %return, !dbg !344

if.end:                                           ; preds = %kmalloc.exit
  %66 = load i64, i64* %start.addr, align 8, !dbg !345
  %67 = load %struct.nvs_region*, %struct.nvs_region** %region, align 8, !dbg !346
  %phys_start = getelementptr inbounds %struct.nvs_region, %struct.nvs_region* %67, i32 0, i32 0, !dbg !347
  store i64 %66, i64* %phys_start, align 8, !dbg !348
  %68 = load i64, i64* %size.addr, align 8, !dbg !349
  %69 = load %struct.nvs_region*, %struct.nvs_region** %region, align 8, !dbg !350
  %size1 = getelementptr inbounds %struct.nvs_region, %struct.nvs_region* %69, i32 0, i32 1, !dbg !351
  store i64 %68, i64* %size1, align 8, !dbg !352
  %70 = load %struct.nvs_region*, %struct.nvs_region** %region, align 8, !dbg !353
  %node = getelementptr inbounds %struct.nvs_region, %struct.nvs_region* %70, i32 0, i32 2, !dbg !354
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* @nvs_region_list) #11, !dbg !355
  %71 = load i64, i64* %start.addr, align 8, !dbg !356
  %72 = load i64, i64* %size.addr, align 8, !dbg !357
  %call2 = call i32 @suspend_nvs_register(i64 %71, i64 %72) #11, !dbg !358
  store i32 %call2, i32* %retval, align 4, !dbg !359
  br label %return, !dbg !359

return:                                           ; preds = %if.end, %if.then
  %73 = load i32, i32* %retval, align 4, !dbg !360
  ret i32 %73, !dbg !360
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !361 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !365, metadata !DIExpression()), !dbg !366
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !369
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !370
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !371
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !371
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !372
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #11, !dbg !373
  ret void, !dbg !374
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @suspend_nvs_register(i64 %start, i64 %size) #0 !dbg !375 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %entry1 = alloca %struct.nvs_page*, align 8
  %next = alloca %struct.nvs_page*, align 8
  %nr_bytes = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.nvs_page*, align 8
  %__mptr16 = alloca i8*, align 8
  %tmp21 = alloca %struct.nvs_page*, align 8
  %__mptr27 = alloca i8*, align 8
  %tmp32 = alloca %struct.nvs_page*, align 8
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !378, metadata !DIExpression()), !dbg !379
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !380, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.declare(metadata %struct.nvs_page** %entry1, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata %struct.nvs_page** %next, metadata !384, metadata !DIExpression()), !dbg !385
  %0 = load i64, i64* %start.addr, align 8, !dbg !386
  %1 = load i64, i64* %start.addr, align 8, !dbg !386
  %2 = load i64, i64* %size.addr, align 8, !dbg !386
  %add = add i64 %1, %2, !dbg !386
  %sub = sub i64 %add, 1, !dbg !386
  %3 = load i64, i64* %size.addr, align 8, !dbg !386
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i64 %0, i64 %sub, i64 %3) #12, !dbg !386
  br label %while.cond, !dbg !387

while.cond:                                       ; preds = %cond.end, %entry
  %4 = load i64, i64* %size.addr, align 8, !dbg !388
  %cmp = icmp ugt i64 %4, 0, !dbg !389
  br i1 %cmp, label %while.body, label %while.end, !dbg !387

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %nr_bytes, metadata !390, metadata !DIExpression()), !dbg !392
  %call2 = call i8* @kzalloc(i64 56, i32 3264) #11, !dbg !393
  %5 = bitcast i8* %call2 to %struct.nvs_page*, !dbg !393
  store %struct.nvs_page* %5, %struct.nvs_page** %entry1, align 8, !dbg !394
  %6 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !395
  %tobool = icmp ne %struct.nvs_page* %6, null, !dbg !395
  br i1 %tobool, label %if.end, label %if.then, !dbg !397

if.then:                                          ; preds = %while.body
  br label %Error, !dbg !398

if.end:                                           ; preds = %while.body
  %7 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !399
  %node = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %7, i32 0, i32 5, !dbg !400
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* @nvs_list) #11, !dbg !401
  %8 = load i64, i64* %start.addr, align 8, !dbg !402
  %9 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !403
  %phys_start = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %9, i32 0, i32 0, !dbg !404
  store i64 %8, i64* %phys_start, align 8, !dbg !405
  %10 = load i64, i64* %start.addr, align 8, !dbg !406
  %and = and i64 %10, 4095, !dbg !407
  %sub3 = sub i64 4096, %and, !dbg !408
  %conv = trunc i64 %sub3 to i32, !dbg !409
  store i32 %conv, i32* %nr_bytes, align 4, !dbg !410
  %11 = load i64, i64* %size.addr, align 8, !dbg !411
  %12 = load i32, i32* %nr_bytes, align 4, !dbg !412
  %conv4 = zext i32 %12 to i64, !dbg !412
  %cmp5 = icmp ult i64 %11, %conv4, !dbg !413
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !414

cond.true:                                        ; preds = %if.end
  %13 = load i64, i64* %size.addr, align 8, !dbg !415
  br label %cond.end, !dbg !414

cond.false:                                       ; preds = %if.end
  %14 = load i32, i32* %nr_bytes, align 4, !dbg !416
  %conv7 = zext i32 %14 to i64, !dbg !416
  br label %cond.end, !dbg !414

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %conv7, %cond.false ], !dbg !414
  %conv8 = trunc i64 %cond to i32, !dbg !414
  %15 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !417
  %size9 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %15, i32 0, i32 1, !dbg !418
  store i32 %conv8, i32* %size9, align 8, !dbg !419
  %16 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !420
  %size10 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %16, i32 0, i32 1, !dbg !421
  %17 = load i32, i32* %size10, align 8, !dbg !421
  %conv11 = zext i32 %17 to i64, !dbg !420
  %18 = load i64, i64* %start.addr, align 8, !dbg !422
  %add12 = add i64 %18, %conv11, !dbg !422
  store i64 %add12, i64* %start.addr, align 8, !dbg !422
  %19 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !423
  %size13 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %19, i32 0, i32 1, !dbg !424
  %20 = load i32, i32* %size13, align 8, !dbg !424
  %conv14 = zext i32 %20 to i64, !dbg !423
  %21 = load i64, i64* %size.addr, align 8, !dbg !425
  %sub15 = sub i64 %21, %conv14, !dbg !425
  store i64 %sub15, i64* %size.addr, align 8, !dbg !425
  br label %while.cond, !dbg !387, !llvm.loop !426

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !428
  br label %return, !dbg !428

Error:                                            ; preds = %if.then
  call void @llvm.dbg.label(metadata !429), !dbg !430
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !431, metadata !DIExpression()), !dbg !434
  %22 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @nvs_list, i32 0, i32 0), align 8, !dbg !434
  %23 = bitcast %struct.list_head* %22 to i8*, !dbg !434
  store i8* %23, i8** %__mptr, align 8, !dbg !434
  br label %do.body, !dbg !434

do.body:                                          ; preds = %Error
  br label %do.end, !dbg !435

do.end:                                           ; preds = %do.body
  %24 = load i8*, i8** %__mptr, align 8, !dbg !434
  %add.ptr = getelementptr i8, i8* %24, i64 -40, !dbg !434
  %25 = bitcast i8* %add.ptr to %struct.nvs_page*, !dbg !434
  store %struct.nvs_page* %25, %struct.nvs_page** %tmp, align 8, !dbg !435
  %26 = load %struct.nvs_page*, %struct.nvs_page** %tmp, align 8, !dbg !434
  store %struct.nvs_page* %26, %struct.nvs_page** %entry1, align 8, !dbg !437
  call void @llvm.dbg.declare(metadata i8** %__mptr16, metadata !438, metadata !DIExpression()), !dbg !440
  %27 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !440
  %node17 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %27, i32 0, i32 5, !dbg !440
  %next18 = getelementptr inbounds %struct.list_head, %struct.list_head* %node17, i32 0, i32 0, !dbg !440
  %28 = load %struct.list_head*, %struct.list_head** %next18, align 8, !dbg !440
  %29 = bitcast %struct.list_head* %28 to i8*, !dbg !440
  store i8* %29, i8** %__mptr16, align 8, !dbg !440
  br label %do.body19, !dbg !440

do.body19:                                        ; preds = %do.end
  br label %do.end20, !dbg !441

do.end20:                                         ; preds = %do.body19
  %30 = load i8*, i8** %__mptr16, align 8, !dbg !440
  %add.ptr22 = getelementptr i8, i8* %30, i64 -40, !dbg !440
  %31 = bitcast i8* %add.ptr22 to %struct.nvs_page*, !dbg !440
  store %struct.nvs_page* %31, %struct.nvs_page** %tmp21, align 8, !dbg !441
  %32 = load %struct.nvs_page*, %struct.nvs_page** %tmp21, align 8, !dbg !440
  store %struct.nvs_page* %32, %struct.nvs_page** %next, align 8, !dbg !437
  br label %for.cond, !dbg !437

for.cond:                                         ; preds = %do.end31, %do.end20
  %33 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !443
  %node23 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %33, i32 0, i32 5, !dbg !443
  %cmp24 = icmp eq %struct.list_head* %node23, @nvs_list, !dbg !443
  %lnot = xor i1 %cmp24, true, !dbg !443
  br i1 %lnot, label %for.body, label %for.end, !dbg !437

for.body:                                         ; preds = %for.cond
  %34 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !445
  %node26 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %34, i32 0, i32 5, !dbg !447
  call void @list_del(%struct.list_head* %node26) #11, !dbg !448
  %35 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !449
  %36 = bitcast %struct.nvs_page* %35 to i8*, !dbg !449
  call void @kfree(i8* %36) #11, !dbg !450
  br label %for.inc, !dbg !451

for.inc:                                          ; preds = %for.body
  %37 = load %struct.nvs_page*, %struct.nvs_page** %next, align 8, !dbg !443
  store %struct.nvs_page* %37, %struct.nvs_page** %entry1, align 8, !dbg !443
  call void @llvm.dbg.declare(metadata i8** %__mptr27, metadata !452, metadata !DIExpression()), !dbg !454
  %38 = load %struct.nvs_page*, %struct.nvs_page** %next, align 8, !dbg !454
  %node28 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %38, i32 0, i32 5, !dbg !454
  %next29 = getelementptr inbounds %struct.list_head, %struct.list_head* %node28, i32 0, i32 0, !dbg !454
  %39 = load %struct.list_head*, %struct.list_head** %next29, align 8, !dbg !454
  %40 = bitcast %struct.list_head* %39 to i8*, !dbg !454
  store i8* %40, i8** %__mptr27, align 8, !dbg !454
  br label %do.body30, !dbg !454

do.body30:                                        ; preds = %for.inc
  br label %do.end31, !dbg !455

do.end31:                                         ; preds = %do.body30
  %41 = load i8*, i8** %__mptr27, align 8, !dbg !454
  %add.ptr33 = getelementptr i8, i8* %41, i64 -40, !dbg !454
  %42 = bitcast i8* %add.ptr33 to %struct.nvs_page*, !dbg !454
  store %struct.nvs_page* %42, %struct.nvs_page** %tmp32, align 8, !dbg !455
  %43 = load %struct.nvs_page*, %struct.nvs_page** %tmp32, align 8, !dbg !454
  store %struct.nvs_page* %43, %struct.nvs_page** %next, align 8, !dbg !443
  br label %for.cond, !dbg !443, !llvm.loop !457

for.end:                                          ; preds = %for.cond
  store i32 -12, i32* %retval, align 4, !dbg !459
  br label %return, !dbg !459

return:                                           ; preds = %for.end, %while.end
  %44 = load i32, i32* %retval, align 4, !dbg !460
  ret i32 %44, !dbg !460
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_nvs_for_each_region(i32 (i64, i64, i8*)* %func, i8* %data) #0 !dbg !461 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca i32 (i64, i64, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  %region = alloca %struct.nvs_region*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.nvs_region*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.nvs_region*, align 8
  store i32 (i64, i64, i8*)* %func, i32 (i64, i64, i8*)** %func.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i64, i64, i8*)** %func.addr, metadata !467, metadata !DIExpression()), !dbg !468
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata %struct.nvs_region** %region, metadata !473, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !475, metadata !DIExpression()), !dbg !478
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @nvs_region_list, i32 0, i32 0), align 8, !dbg !478
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !478
  store i8* %1, i8** %__mptr, align 8, !dbg !478
  br label %do.body, !dbg !478

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !479

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !478
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !478
  %3 = bitcast i8* %add.ptr to %struct.nvs_region*, !dbg !478
  store %struct.nvs_region* %3, %struct.nvs_region** %tmp, align 8, !dbg !479
  %4 = load %struct.nvs_region*, %struct.nvs_region** %tmp, align 8, !dbg !478
  store %struct.nvs_region* %4, %struct.nvs_region** %region, align 8, !dbg !481
  br label %for.cond, !dbg !481

for.cond:                                         ; preds = %do.end4, %do.end
  %5 = load %struct.nvs_region*, %struct.nvs_region** %region, align 8, !dbg !482
  %node = getelementptr inbounds %struct.nvs_region, %struct.nvs_region* %5, i32 0, i32 2, !dbg !482
  %cmp = icmp eq %struct.list_head* %node, @nvs_region_list, !dbg !482
  %lnot = xor i1 %cmp, true, !dbg !482
  br i1 %lnot, label %for.body, label %for.end, !dbg !481

for.body:                                         ; preds = %for.cond
  %6 = load i32 (i64, i64, i8*)*, i32 (i64, i64, i8*)** %func.addr, align 8, !dbg !484
  %7 = load %struct.nvs_region*, %struct.nvs_region** %region, align 8, !dbg !486
  %phys_start = getelementptr inbounds %struct.nvs_region, %struct.nvs_region* %7, i32 0, i32 0, !dbg !487
  %8 = load i64, i64* %phys_start, align 8, !dbg !487
  %9 = load %struct.nvs_region*, %struct.nvs_region** %region, align 8, !dbg !488
  %size = getelementptr inbounds %struct.nvs_region, %struct.nvs_region* %9, i32 0, i32 1, !dbg !489
  %10 = load i64, i64* %size, align 8, !dbg !489
  %11 = load i8*, i8** %data.addr, align 8, !dbg !490
  %call = call i32 %6(i64 %8, i64 %10, i8* %11) #11, !dbg !484
  store i32 %call, i32* %rc, align 4, !dbg !491
  %12 = load i32, i32* %rc, align 4, !dbg !492
  %tobool = icmp ne i32 %12, 0, !dbg !492
  br i1 %tobool, label %if.then, label %if.end, !dbg !494

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %rc, align 4, !dbg !495
  store i32 %13, i32* %retval, align 4, !dbg !496
  br label %return, !dbg !496

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !497

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !498, metadata !DIExpression()), !dbg !500
  %14 = load %struct.nvs_region*, %struct.nvs_region** %region, align 8, !dbg !500
  %node2 = getelementptr inbounds %struct.nvs_region, %struct.nvs_region* %14, i32 0, i32 2, !dbg !500
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node2, i32 0, i32 0, !dbg !500
  %15 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !500
  %16 = bitcast %struct.list_head* %15 to i8*, !dbg !500
  store i8* %16, i8** %__mptr1, align 8, !dbg !500
  br label %do.body3, !dbg !500

do.body3:                                         ; preds = %for.inc
  br label %do.end4, !dbg !501

do.end4:                                          ; preds = %do.body3
  %17 = load i8*, i8** %__mptr1, align 8, !dbg !500
  %add.ptr6 = getelementptr i8, i8* %17, i64 -16, !dbg !500
  %18 = bitcast i8* %add.ptr6 to %struct.nvs_region*, !dbg !500
  store %struct.nvs_region* %18, %struct.nvs_region** %tmp5, align 8, !dbg !501
  %19 = load %struct.nvs_region*, %struct.nvs_region** %tmp5, align 8, !dbg !500
  store %struct.nvs_region* %19, %struct.nvs_region** %region, align 8, !dbg !482
  br label %for.cond, !dbg !482, !llvm.loop !503

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !505
  br label %return, !dbg !505

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !506
  ret i32 %20, !dbg !506
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @suspend_nvs_free() #0 !dbg !507 {
entry:
  %entry1 = alloca %struct.nvs_page*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.nvs_page*, align 8
  %__mptr14 = alloca i8*, align 8
  %tmp18 = alloca %struct.nvs_page*, align 8
  call void @llvm.dbg.declare(metadata %struct.nvs_page** %entry1, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !512, metadata !DIExpression()), !dbg !515
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @nvs_list, i32 0, i32 0), align 8, !dbg !515
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !515
  store i8* %1, i8** %__mptr, align 8, !dbg !515
  br label %do.body, !dbg !515

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !516

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !515
  %add.ptr = getelementptr i8, i8* %2, i64 -40, !dbg !515
  %3 = bitcast i8* %add.ptr to %struct.nvs_page*, !dbg !515
  store %struct.nvs_page* %3, %struct.nvs_page** %tmp, align 8, !dbg !516
  %4 = load %struct.nvs_page*, %struct.nvs_page** %tmp, align 8, !dbg !515
  store %struct.nvs_page* %4, %struct.nvs_page** %entry1, align 8, !dbg !518
  br label %for.cond, !dbg !518

for.cond:                                         ; preds = %do.end17, %do.end
  %5 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !519
  %node = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %5, i32 0, i32 5, !dbg !519
  %cmp = icmp eq %struct.list_head* %node, @nvs_list, !dbg !519
  %lnot = xor i1 %cmp, true, !dbg !519
  br i1 %lnot, label %for.body, label %for.end, !dbg !518

for.body:                                         ; preds = %for.cond
  %6 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !521
  %data = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %6, i32 0, i32 3, !dbg !523
  %7 = load i8*, i8** %data, align 8, !dbg !523
  %tobool = icmp ne i8* %7, null, !dbg !521
  br i1 %tobool, label %if.then, label %if.end13, !dbg !524

if.then:                                          ; preds = %for.body
  %8 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !525
  %data2 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %8, i32 0, i32 3, !dbg !525
  %9 = load i8*, i8** %data2, align 8, !dbg !525
  %10 = ptrtoint i8* %9 to i64, !dbg !525
  call void @free_pages(i64 %10, i32 0) #11, !dbg !525
  %11 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !527
  %data3 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %11, i32 0, i32 3, !dbg !528
  store i8* null, i8** %data3, align 8, !dbg !529
  %12 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !530
  %kaddr = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %12, i32 0, i32 2, !dbg !532
  %13 = load i8*, i8** %kaddr, align 8, !dbg !532
  %tobool4 = icmp ne i8* %13, null, !dbg !530
  br i1 %tobool4, label %if.then5, label %if.end12, !dbg !533

if.then5:                                         ; preds = %if.then
  %14 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !534
  %unmap = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %14, i32 0, i32 4, !dbg !537
  %15 = load i8, i8* %unmap, align 8, !dbg !537
  %tobool6 = trunc i8 %15 to i1, !dbg !537
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !538

if.then7:                                         ; preds = %if.then5
  %16 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !539
  %kaddr8 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %16, i32 0, i32 2, !dbg !541
  %17 = load i8*, i8** %kaddr8, align 8, !dbg !541
  call void @iounmap(i8* %17) #11, !dbg !542
  %18 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !543
  %unmap9 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %18, i32 0, i32 4, !dbg !544
  store i8 0, i8* %unmap9, align 8, !dbg !545
  br label %if.end, !dbg !546

if.else:                                          ; preds = %if.then5
  %19 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !547
  %kaddr10 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %19, i32 0, i32 2, !dbg !549
  %20 = load i8*, i8** %kaddr10, align 8, !dbg !549
  %21 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !550
  %size = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %21, i32 0, i32 1, !dbg !551
  %22 = load i32, i32* %size, align 8, !dbg !551
  %conv = zext i32 %22 to i64, !dbg !550
  call void @acpi_os_unmap_iomem(i8* %20, i64 %conv) #11, !dbg !552
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %23 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !553
  %kaddr11 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %23, i32 0, i32 2, !dbg !554
  store i8* null, i8** %kaddr11, align 8, !dbg !555
  br label %if.end12, !dbg !556

if.end12:                                         ; preds = %if.end, %if.then
  br label %if.end13, !dbg !557

if.end13:                                         ; preds = %if.end12, %for.body
  br label %for.inc, !dbg !523

for.inc:                                          ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i8** %__mptr14, metadata !558, metadata !DIExpression()), !dbg !560
  %24 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !560
  %node15 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %24, i32 0, i32 5, !dbg !560
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node15, i32 0, i32 0, !dbg !560
  %25 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !560
  %26 = bitcast %struct.list_head* %25 to i8*, !dbg !560
  store i8* %26, i8** %__mptr14, align 8, !dbg !560
  br label %do.body16, !dbg !560

do.body16:                                        ; preds = %for.inc
  br label %do.end17, !dbg !561

do.end17:                                         ; preds = %do.body16
  %27 = load i8*, i8** %__mptr14, align 8, !dbg !560
  %add.ptr19 = getelementptr i8, i8* %27, i64 -40, !dbg !560
  %28 = bitcast i8* %add.ptr19 to %struct.nvs_page*, !dbg !560
  store %struct.nvs_page* %28, %struct.nvs_page** %tmp18, align 8, !dbg !561
  %29 = load %struct.nvs_page*, %struct.nvs_page** %tmp18, align 8, !dbg !560
  store %struct.nvs_page* %29, %struct.nvs_page** %entry1, align 8, !dbg !519
  br label %for.cond, !dbg !519, !llvm.loop !563

for.end:                                          ; preds = %for.cond
  ret void, !dbg !565
}

; Function Attrs: noredzone
declare dso_local void @free_pages(i64, i32) #2

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_unmap_iomem(i8*, i64) #2 section ".ref.text"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @suspend_nvs_alloc() #0 !dbg !566 {
entry:
  %retval = alloca i32, align 4
  %entry1 = alloca %struct.nvs_page*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.nvs_page*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp7 = alloca %struct.nvs_page*, align 8
  call void @llvm.dbg.declare(metadata %struct.nvs_page** %entry1, metadata !569, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !571, metadata !DIExpression()), !dbg !574
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @nvs_list, i32 0, i32 0), align 8, !dbg !574
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !574
  store i8* %1, i8** %__mptr, align 8, !dbg !574
  br label %do.body, !dbg !574

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !575

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !574
  %add.ptr = getelementptr i8, i8* %2, i64 -40, !dbg !574
  %3 = bitcast i8* %add.ptr to %struct.nvs_page*, !dbg !574
  store %struct.nvs_page* %3, %struct.nvs_page** %tmp, align 8, !dbg !575
  %4 = load %struct.nvs_page*, %struct.nvs_page** %tmp, align 8, !dbg !574
  store %struct.nvs_page* %4, %struct.nvs_page** %entry1, align 8, !dbg !577
  br label %for.cond, !dbg !577

for.cond:                                         ; preds = %do.end6, %do.end
  %5 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !578
  %node = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %5, i32 0, i32 5, !dbg !578
  %cmp = icmp eq %struct.list_head* %node, @nvs_list, !dbg !578
  %lnot = xor i1 %cmp, true, !dbg !578
  br i1 %lnot, label %for.body, label %for.end, !dbg !577

for.body:                                         ; preds = %for.cond
  %call = call i64 @__get_free_pages(i32 3264, i32 0) #11, !dbg !580
  %6 = inttoptr i64 %call to i8*, !dbg !582
  %7 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !583
  %data = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %7, i32 0, i32 3, !dbg !584
  store i8* %6, i8** %data, align 8, !dbg !585
  %8 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !586
  %data2 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %8, i32 0, i32 3, !dbg !588
  %9 = load i8*, i8** %data2, align 8, !dbg !588
  %tobool = icmp ne i8* %9, null, !dbg !586
  br i1 %tobool, label %if.end, label %if.then, !dbg !589

if.then:                                          ; preds = %for.body
  call void @suspend_nvs_free() #11, !dbg !590
  store i32 -12, i32* %retval, align 4, !dbg !592
  br label %return, !dbg !592

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !593

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !594, metadata !DIExpression()), !dbg !596
  %10 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !596
  %node4 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %10, i32 0, i32 5, !dbg !596
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node4, i32 0, i32 0, !dbg !596
  %11 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !596
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !596
  store i8* %12, i8** %__mptr3, align 8, !dbg !596
  br label %do.body5, !dbg !596

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !597

do.end6:                                          ; preds = %do.body5
  %13 = load i8*, i8** %__mptr3, align 8, !dbg !596
  %add.ptr8 = getelementptr i8, i8* %13, i64 -40, !dbg !596
  %14 = bitcast i8* %add.ptr8 to %struct.nvs_page*, !dbg !596
  store %struct.nvs_page* %14, %struct.nvs_page** %tmp7, align 8, !dbg !597
  %15 = load %struct.nvs_page*, %struct.nvs_page** %tmp7, align 8, !dbg !596
  store %struct.nvs_page* %15, %struct.nvs_page** %entry1, align 8, !dbg !578
  br label %for.cond, !dbg !578, !llvm.loop !599

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !601
  br label %return, !dbg !601

return:                                           ; preds = %for.end, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !602
  ret i32 %16, !dbg !602
}

; Function Attrs: noredzone
declare dso_local i64 @__get_free_pages(i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @suspend_nvs_save() #0 !dbg !603 {
entry:
  %retval = alloca i32, align 4
  %entry1 = alloca %struct.nvs_page*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.nvs_page*, align 8
  %phys = alloca i64, align 8
  %size = alloca i32, align 4
  %__mptr22 = alloca i8*, align 8
  %tmp26 = alloca %struct.nvs_page*, align 8
  call void @llvm.dbg.declare(metadata %struct.nvs_page** %entry1, metadata !604, metadata !DIExpression()), !dbg !605
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #12, !dbg !606
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !607, metadata !DIExpression()), !dbg !610
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @nvs_list, i32 0, i32 0), align 8, !dbg !610
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !610
  store i8* %1, i8** %__mptr, align 8, !dbg !610
  br label %do.body, !dbg !610

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !611

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !610
  %add.ptr = getelementptr i8, i8* %2, i64 -40, !dbg !610
  %3 = bitcast i8* %add.ptr to %struct.nvs_page*, !dbg !610
  store %struct.nvs_page* %3, %struct.nvs_page** %tmp, align 8, !dbg !611
  %4 = load %struct.nvs_page*, %struct.nvs_page** %tmp, align 8, !dbg !610
  store %struct.nvs_page* %4, %struct.nvs_page** %entry1, align 8, !dbg !613
  br label %for.cond, !dbg !613

for.cond:                                         ; preds = %do.end25, %do.end
  %5 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !614
  %node = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %5, i32 0, i32 5, !dbg !614
  %cmp = icmp eq %struct.list_head* %node, @nvs_list, !dbg !614
  %lnot = xor i1 %cmp, true, !dbg !614
  br i1 %lnot, label %for.body, label %for.end, !dbg !613

for.body:                                         ; preds = %for.cond
  %6 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !616
  %data = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %6, i32 0, i32 3, !dbg !618
  %7 = load i8*, i8** %data, align 8, !dbg !618
  %tobool = icmp ne i8* %7, null, !dbg !616
  br i1 %tobool, label %if.then, label %if.end21, !dbg !619

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i64* %phys, metadata !620, metadata !DIExpression()), !dbg !622
  %8 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !623
  %phys_start = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %8, i32 0, i32 0, !dbg !624
  %9 = load i64, i64* %phys_start, align 8, !dbg !624
  store i64 %9, i64* %phys, align 8, !dbg !622
  call void @llvm.dbg.declare(metadata i32* %size, metadata !625, metadata !DIExpression()), !dbg !626
  %10 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !627
  %size2 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %10, i32 0, i32 1, !dbg !628
  %11 = load i32, i32* %size2, align 8, !dbg !628
  store i32 %11, i32* %size, align 4, !dbg !626
  %12 = load i64, i64* %phys, align 8, !dbg !629
  %13 = load i32, i32* %size, align 4, !dbg !630
  %call3 = call i8* @acpi_os_get_iomem(i64 %12, i32 %13) #11, !dbg !631
  %14 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !632
  %kaddr = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %14, i32 0, i32 2, !dbg !633
  store i8* %call3, i8** %kaddr, align 8, !dbg !634
  %15 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !635
  %kaddr4 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %15, i32 0, i32 2, !dbg !637
  %16 = load i8*, i8** %kaddr4, align 8, !dbg !637
  %tobool5 = icmp ne i8* %16, null, !dbg !635
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !638

if.then6:                                         ; preds = %if.then
  %17 = load i64, i64* %phys, align 8, !dbg !639
  %18 = load i32, i32* %size, align 4, !dbg !641
  %conv = zext i32 %18 to i64, !dbg !641
  %call7 = call i8* @acpi_os_ioremap(i64 %17, i64 %conv) #11, !dbg !642
  %19 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !643
  %kaddr8 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %19, i32 0, i32 2, !dbg !644
  store i8* %call7, i8** %kaddr8, align 8, !dbg !645
  %20 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !646
  %kaddr9 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %20, i32 0, i32 2, !dbg !647
  %21 = load i8*, i8** %kaddr9, align 8, !dbg !647
  %tobool10 = icmp ne i8* %21, null, !dbg !648
  %lnot11 = xor i1 %tobool10, true, !dbg !648
  %lnot12 = xor i1 %lnot11, true, !dbg !649
  %22 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !650
  %unmap = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %22, i32 0, i32 4, !dbg !651
  %frombool = zext i1 %lnot12 to i8, !dbg !652
  store i8 %frombool, i8* %unmap, align 8, !dbg !652
  br label %if.end, !dbg !653

if.end:                                           ; preds = %if.then6, %if.then
  %23 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !654
  %kaddr13 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %23, i32 0, i32 2, !dbg !656
  %24 = load i8*, i8** %kaddr13, align 8, !dbg !656
  %tobool14 = icmp ne i8* %24, null, !dbg !654
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !657

if.then15:                                        ; preds = %if.end
  call void @suspend_nvs_free() #11, !dbg !658
  store i32 -12, i32* %retval, align 4, !dbg !660
  br label %return, !dbg !660

if.end16:                                         ; preds = %if.end
  %25 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !661
  %data17 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %25, i32 0, i32 3, !dbg !662
  %26 = load i8*, i8** %data17, align 8, !dbg !662
  %27 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !663
  %kaddr18 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %27, i32 0, i32 2, !dbg !664
  %28 = load i8*, i8** %kaddr18, align 8, !dbg !664
  %29 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !665
  %size19 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %29, i32 0, i32 1, !dbg !666
  %30 = load i32, i32* %size19, align 8, !dbg !666
  %conv20 = zext i32 %30 to i64, !dbg !665
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %28, i64 %conv20, i1 false), !dbg !667
  br label %if.end21, !dbg !668

if.end21:                                         ; preds = %if.end16, %for.body
  br label %for.inc, !dbg !618

for.inc:                                          ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i8** %__mptr22, metadata !669, metadata !DIExpression()), !dbg !671
  %31 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !671
  %node23 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %31, i32 0, i32 5, !dbg !671
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node23, i32 0, i32 0, !dbg !671
  %32 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !671
  %33 = bitcast %struct.list_head* %32 to i8*, !dbg !671
  store i8* %33, i8** %__mptr22, align 8, !dbg !671
  br label %do.body24, !dbg !671

do.body24:                                        ; preds = %for.inc
  br label %do.end25, !dbg !672

do.end25:                                         ; preds = %do.body24
  %34 = load i8*, i8** %__mptr22, align 8, !dbg !671
  %add.ptr27 = getelementptr i8, i8* %34, i64 -40, !dbg !671
  %35 = bitcast i8* %add.ptr27 to %struct.nvs_page*, !dbg !671
  store %struct.nvs_page* %35, %struct.nvs_page** %tmp26, align 8, !dbg !672
  %36 = load %struct.nvs_page*, %struct.nvs_page** %tmp26, align 8, !dbg !671
  store %struct.nvs_page* %36, %struct.nvs_page** %entry1, align 8, !dbg !614
  br label %for.cond, !dbg !614, !llvm.loop !674

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !676
  br label %return, !dbg !676

return:                                           ; preds = %for.end, %if.then15
  %37 = load i32, i32* %retval, align 4, !dbg !677
  ret i32 %37, !dbg !677
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i8* @acpi_os_get_iomem(i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_ioremap(i64 %phys, i64 %size) #0 !dbg !678 {
entry:
  %phys.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %phys, i64* %phys.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %phys.addr, metadata !687, metadata !DIExpression()), !dbg !688
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !689, metadata !DIExpression()), !dbg !690
  %0 = load i64, i64* %phys.addr, align 8, !dbg !691
  %1 = load i64, i64* %size.addr, align 8, !dbg !692
  %call = call i8* @ioremap_cache(i64 %0, i64 %1) #11, !dbg !693
  ret i8* %call, !dbg !694
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @suspend_nvs_restore() #0 !dbg !695 {
entry:
  %entry1 = alloca %struct.nvs_page*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.nvs_page*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp7 = alloca %struct.nvs_page*, align 8
  call void @llvm.dbg.declare(metadata %struct.nvs_page** %entry1, metadata !696, metadata !DIExpression()), !dbg !697
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0)) #12, !dbg !698
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !699, metadata !DIExpression()), !dbg !702
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @nvs_list, i32 0, i32 0), align 8, !dbg !702
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !702
  store i8* %1, i8** %__mptr, align 8, !dbg !702
  br label %do.body, !dbg !702

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !703

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !702
  %add.ptr = getelementptr i8, i8* %2, i64 -40, !dbg !702
  %3 = bitcast i8* %add.ptr to %struct.nvs_page*, !dbg !702
  store %struct.nvs_page* %3, %struct.nvs_page** %tmp, align 8, !dbg !703
  %4 = load %struct.nvs_page*, %struct.nvs_page** %tmp, align 8, !dbg !702
  store %struct.nvs_page* %4, %struct.nvs_page** %entry1, align 8, !dbg !705
  br label %for.cond, !dbg !705

for.cond:                                         ; preds = %do.end6, %do.end
  %5 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !706
  %node = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %5, i32 0, i32 5, !dbg !706
  %cmp = icmp eq %struct.list_head* %node, @nvs_list, !dbg !706
  %lnot = xor i1 %cmp, true, !dbg !706
  br i1 %lnot, label %for.body, label %for.end, !dbg !705

for.body:                                         ; preds = %for.cond
  %6 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !708
  %data = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %6, i32 0, i32 3, !dbg !710
  %7 = load i8*, i8** %data, align 8, !dbg !710
  %tobool = icmp ne i8* %7, null, !dbg !708
  br i1 %tobool, label %if.then, label %if.end, !dbg !711

if.then:                                          ; preds = %for.body
  %8 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !712
  %kaddr = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %8, i32 0, i32 2, !dbg !713
  %9 = load i8*, i8** %kaddr, align 8, !dbg !713
  %10 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !714
  %data2 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %10, i32 0, i32 3, !dbg !715
  %11 = load i8*, i8** %data2, align 8, !dbg !715
  %12 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !716
  %size = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %12, i32 0, i32 1, !dbg !717
  %13 = load i32, i32* %size, align 8, !dbg !717
  %conv = zext i32 %13 to i64, !dbg !716
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %11, i64 %conv, i1 false), !dbg !718
  br label %if.end, !dbg !718

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !710

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !719, metadata !DIExpression()), !dbg !721
  %14 = load %struct.nvs_page*, %struct.nvs_page** %entry1, align 8, !dbg !721
  %node4 = getelementptr inbounds %struct.nvs_page, %struct.nvs_page* %14, i32 0, i32 5, !dbg !721
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node4, i32 0, i32 0, !dbg !721
  %15 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !721
  %16 = bitcast %struct.list_head* %15 to i8*, !dbg !721
  store i8* %16, i8** %__mptr3, align 8, !dbg !721
  br label %do.body5, !dbg !721

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !722

do.end6:                                          ; preds = %do.body5
  %17 = load i8*, i8** %__mptr3, align 8, !dbg !721
  %add.ptr8 = getelementptr i8, i8* %17, i64 -40, !dbg !721
  %18 = bitcast i8* %add.ptr8 to %struct.nvs_page*, !dbg !721
  store %struct.nvs_page* %18, %struct.nvs_page** %tmp7, align 8, !dbg !722
  %19 = load %struct.nvs_page*, %struct.nvs_page** %tmp7, align 8, !dbg !721
  store %struct.nvs_page* %19, %struct.nvs_page** %entry1, align 8, !dbg !706
  br label %for.cond, !dbg !706, !llvm.loop !724

for.end:                                          ; preds = %for.cond
  ret void, !dbg !726
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !727 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !731, metadata !DIExpression()), !dbg !736
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !738, metadata !DIExpression()), !dbg !739
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !740, metadata !DIExpression()), !dbg !741
  %0 = load i64, i64* %size.addr, align 8, !dbg !742
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !744
  br i1 %1, label %if.then, label %if.end447, !dbg !745

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !746
  %tobool = icmp ne i64 %2, 0, !dbg !746
  br i1 %tobool, label %if.end, label %if.then1, !dbg !749

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !750
  br label %return, !dbg !750

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !751
  %cmp = icmp ult i64 %3, 4096, !dbg !753
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !754

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !755
  br label %return, !dbg !755

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub = sub i64 %4, 1, !dbg !756
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !756
  br i1 %5, label %cond.true, label %cond.false442, !dbg !756

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub4 = sub i64 %6, 1, !dbg !756
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !756
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !756

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub6 = sub i64 %8, 1, !dbg !756
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !756
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !756

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !756

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub9 = sub i64 %9, 1, !dbg !756
  %and = and i64 %sub9, -9223372036854775808, !dbg !756
  %tobool10 = icmp ne i64 %and, 0, !dbg !756
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !756

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !756

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub13 = sub i64 %10, 1, !dbg !756
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !756
  %tobool15 = icmp ne i64 %and14, 0, !dbg !756
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !756

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !756

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub18 = sub i64 %11, 1, !dbg !756
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !756
  %tobool20 = icmp ne i64 %and19, 0, !dbg !756
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !756

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !756

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub23 = sub i64 %12, 1, !dbg !756
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !756
  %tobool25 = icmp ne i64 %and24, 0, !dbg !756
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !756

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !756

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub28 = sub i64 %13, 1, !dbg !756
  %and29 = and i64 %sub28, 576460752303423488, !dbg !756
  %tobool30 = icmp ne i64 %and29, 0, !dbg !756
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !756

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !756

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub33 = sub i64 %14, 1, !dbg !756
  %and34 = and i64 %sub33, 288230376151711744, !dbg !756
  %tobool35 = icmp ne i64 %and34, 0, !dbg !756
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !756

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !756

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub38 = sub i64 %15, 1, !dbg !756
  %and39 = and i64 %sub38, 144115188075855872, !dbg !756
  %tobool40 = icmp ne i64 %and39, 0, !dbg !756
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !756

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !756

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub43 = sub i64 %16, 1, !dbg !756
  %and44 = and i64 %sub43, 72057594037927936, !dbg !756
  %tobool45 = icmp ne i64 %and44, 0, !dbg !756
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !756

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !756

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub48 = sub i64 %17, 1, !dbg !756
  %and49 = and i64 %sub48, 36028797018963968, !dbg !756
  %tobool50 = icmp ne i64 %and49, 0, !dbg !756
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !756

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !756

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub53 = sub i64 %18, 1, !dbg !756
  %and54 = and i64 %sub53, 18014398509481984, !dbg !756
  %tobool55 = icmp ne i64 %and54, 0, !dbg !756
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !756

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !756

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub58 = sub i64 %19, 1, !dbg !756
  %and59 = and i64 %sub58, 9007199254740992, !dbg !756
  %tobool60 = icmp ne i64 %and59, 0, !dbg !756
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !756

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !756

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub63 = sub i64 %20, 1, !dbg !756
  %and64 = and i64 %sub63, 4503599627370496, !dbg !756
  %tobool65 = icmp ne i64 %and64, 0, !dbg !756
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !756

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !756

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub68 = sub i64 %21, 1, !dbg !756
  %and69 = and i64 %sub68, 2251799813685248, !dbg !756
  %tobool70 = icmp ne i64 %and69, 0, !dbg !756
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !756

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !756

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub73 = sub i64 %22, 1, !dbg !756
  %and74 = and i64 %sub73, 1125899906842624, !dbg !756
  %tobool75 = icmp ne i64 %and74, 0, !dbg !756
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !756

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !756

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub78 = sub i64 %23, 1, !dbg !756
  %and79 = and i64 %sub78, 562949953421312, !dbg !756
  %tobool80 = icmp ne i64 %and79, 0, !dbg !756
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !756

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !756

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub83 = sub i64 %24, 1, !dbg !756
  %and84 = and i64 %sub83, 281474976710656, !dbg !756
  %tobool85 = icmp ne i64 %and84, 0, !dbg !756
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !756

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !756

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub88 = sub i64 %25, 1, !dbg !756
  %and89 = and i64 %sub88, 140737488355328, !dbg !756
  %tobool90 = icmp ne i64 %and89, 0, !dbg !756
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !756

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !756

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub93 = sub i64 %26, 1, !dbg !756
  %and94 = and i64 %sub93, 70368744177664, !dbg !756
  %tobool95 = icmp ne i64 %and94, 0, !dbg !756
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !756

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !756

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub98 = sub i64 %27, 1, !dbg !756
  %and99 = and i64 %sub98, 35184372088832, !dbg !756
  %tobool100 = icmp ne i64 %and99, 0, !dbg !756
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !756

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !756

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub103 = sub i64 %28, 1, !dbg !756
  %and104 = and i64 %sub103, 17592186044416, !dbg !756
  %tobool105 = icmp ne i64 %and104, 0, !dbg !756
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !756

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !756

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub108 = sub i64 %29, 1, !dbg !756
  %and109 = and i64 %sub108, 8796093022208, !dbg !756
  %tobool110 = icmp ne i64 %and109, 0, !dbg !756
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !756

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !756

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub113 = sub i64 %30, 1, !dbg !756
  %and114 = and i64 %sub113, 4398046511104, !dbg !756
  %tobool115 = icmp ne i64 %and114, 0, !dbg !756
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !756

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !756

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub118 = sub i64 %31, 1, !dbg !756
  %and119 = and i64 %sub118, 2199023255552, !dbg !756
  %tobool120 = icmp ne i64 %and119, 0, !dbg !756
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !756

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !756

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub123 = sub i64 %32, 1, !dbg !756
  %and124 = and i64 %sub123, 1099511627776, !dbg !756
  %tobool125 = icmp ne i64 %and124, 0, !dbg !756
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !756

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !756

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub128 = sub i64 %33, 1, !dbg !756
  %and129 = and i64 %sub128, 549755813888, !dbg !756
  %tobool130 = icmp ne i64 %and129, 0, !dbg !756
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !756

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !756

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub133 = sub i64 %34, 1, !dbg !756
  %and134 = and i64 %sub133, 274877906944, !dbg !756
  %tobool135 = icmp ne i64 %and134, 0, !dbg !756
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !756

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !756

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub138 = sub i64 %35, 1, !dbg !756
  %and139 = and i64 %sub138, 137438953472, !dbg !756
  %tobool140 = icmp ne i64 %and139, 0, !dbg !756
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !756

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !756

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub143 = sub i64 %36, 1, !dbg !756
  %and144 = and i64 %sub143, 68719476736, !dbg !756
  %tobool145 = icmp ne i64 %and144, 0, !dbg !756
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !756

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !756

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub148 = sub i64 %37, 1, !dbg !756
  %and149 = and i64 %sub148, 34359738368, !dbg !756
  %tobool150 = icmp ne i64 %and149, 0, !dbg !756
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !756

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !756

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub153 = sub i64 %38, 1, !dbg !756
  %and154 = and i64 %sub153, 17179869184, !dbg !756
  %tobool155 = icmp ne i64 %and154, 0, !dbg !756
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !756

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !756

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub158 = sub i64 %39, 1, !dbg !756
  %and159 = and i64 %sub158, 8589934592, !dbg !756
  %tobool160 = icmp ne i64 %and159, 0, !dbg !756
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !756

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !756

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub163 = sub i64 %40, 1, !dbg !756
  %and164 = and i64 %sub163, 4294967296, !dbg !756
  %tobool165 = icmp ne i64 %and164, 0, !dbg !756
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !756

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !756

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub168 = sub i64 %41, 1, !dbg !756
  %and169 = and i64 %sub168, 2147483648, !dbg !756
  %tobool170 = icmp ne i64 %and169, 0, !dbg !756
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !756

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !756

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub173 = sub i64 %42, 1, !dbg !756
  %and174 = and i64 %sub173, 1073741824, !dbg !756
  %tobool175 = icmp ne i64 %and174, 0, !dbg !756
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !756

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !756

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub178 = sub i64 %43, 1, !dbg !756
  %and179 = and i64 %sub178, 536870912, !dbg !756
  %tobool180 = icmp ne i64 %and179, 0, !dbg !756
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !756

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !756

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub183 = sub i64 %44, 1, !dbg !756
  %and184 = and i64 %sub183, 268435456, !dbg !756
  %tobool185 = icmp ne i64 %and184, 0, !dbg !756
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !756

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !756

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub188 = sub i64 %45, 1, !dbg !756
  %and189 = and i64 %sub188, 134217728, !dbg !756
  %tobool190 = icmp ne i64 %and189, 0, !dbg !756
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !756

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !756

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub193 = sub i64 %46, 1, !dbg !756
  %and194 = and i64 %sub193, 67108864, !dbg !756
  %tobool195 = icmp ne i64 %and194, 0, !dbg !756
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !756

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !756

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub198 = sub i64 %47, 1, !dbg !756
  %and199 = and i64 %sub198, 33554432, !dbg !756
  %tobool200 = icmp ne i64 %and199, 0, !dbg !756
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !756

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !756

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub203 = sub i64 %48, 1, !dbg !756
  %and204 = and i64 %sub203, 16777216, !dbg !756
  %tobool205 = icmp ne i64 %and204, 0, !dbg !756
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !756

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !756

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub208 = sub i64 %49, 1, !dbg !756
  %and209 = and i64 %sub208, 8388608, !dbg !756
  %tobool210 = icmp ne i64 %and209, 0, !dbg !756
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !756

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !756

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub213 = sub i64 %50, 1, !dbg !756
  %and214 = and i64 %sub213, 4194304, !dbg !756
  %tobool215 = icmp ne i64 %and214, 0, !dbg !756
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !756

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !756

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub218 = sub i64 %51, 1, !dbg !756
  %and219 = and i64 %sub218, 2097152, !dbg !756
  %tobool220 = icmp ne i64 %and219, 0, !dbg !756
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !756

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !756

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub223 = sub i64 %52, 1, !dbg !756
  %and224 = and i64 %sub223, 1048576, !dbg !756
  %tobool225 = icmp ne i64 %and224, 0, !dbg !756
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !756

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !756

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub228 = sub i64 %53, 1, !dbg !756
  %and229 = and i64 %sub228, 524288, !dbg !756
  %tobool230 = icmp ne i64 %and229, 0, !dbg !756
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !756

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !756

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub233 = sub i64 %54, 1, !dbg !756
  %and234 = and i64 %sub233, 262144, !dbg !756
  %tobool235 = icmp ne i64 %and234, 0, !dbg !756
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !756

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !756

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub238 = sub i64 %55, 1, !dbg !756
  %and239 = and i64 %sub238, 131072, !dbg !756
  %tobool240 = icmp ne i64 %and239, 0, !dbg !756
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !756

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !756

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub243 = sub i64 %56, 1, !dbg !756
  %and244 = and i64 %sub243, 65536, !dbg !756
  %tobool245 = icmp ne i64 %and244, 0, !dbg !756
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !756

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !756

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub248 = sub i64 %57, 1, !dbg !756
  %and249 = and i64 %sub248, 32768, !dbg !756
  %tobool250 = icmp ne i64 %and249, 0, !dbg !756
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !756

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !756

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub253 = sub i64 %58, 1, !dbg !756
  %and254 = and i64 %sub253, 16384, !dbg !756
  %tobool255 = icmp ne i64 %and254, 0, !dbg !756
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !756

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !756

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub258 = sub i64 %59, 1, !dbg !756
  %and259 = and i64 %sub258, 8192, !dbg !756
  %tobool260 = icmp ne i64 %and259, 0, !dbg !756
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !756

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !756

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub263 = sub i64 %60, 1, !dbg !756
  %and264 = and i64 %sub263, 4096, !dbg !756
  %tobool265 = icmp ne i64 %and264, 0, !dbg !756
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !756

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !756

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub268 = sub i64 %61, 1, !dbg !756
  %and269 = and i64 %sub268, 2048, !dbg !756
  %tobool270 = icmp ne i64 %and269, 0, !dbg !756
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !756

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !756

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub273 = sub i64 %62, 1, !dbg !756
  %and274 = and i64 %sub273, 1024, !dbg !756
  %tobool275 = icmp ne i64 %and274, 0, !dbg !756
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !756

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !756

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub278 = sub i64 %63, 1, !dbg !756
  %and279 = and i64 %sub278, 512, !dbg !756
  %tobool280 = icmp ne i64 %and279, 0, !dbg !756
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !756

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !756

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub283 = sub i64 %64, 1, !dbg !756
  %and284 = and i64 %sub283, 256, !dbg !756
  %tobool285 = icmp ne i64 %and284, 0, !dbg !756
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !756

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !756

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub288 = sub i64 %65, 1, !dbg !756
  %and289 = and i64 %sub288, 128, !dbg !756
  %tobool290 = icmp ne i64 %and289, 0, !dbg !756
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !756

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !756

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub293 = sub i64 %66, 1, !dbg !756
  %and294 = and i64 %sub293, 64, !dbg !756
  %tobool295 = icmp ne i64 %and294, 0, !dbg !756
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !756

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !756

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub298 = sub i64 %67, 1, !dbg !756
  %and299 = and i64 %sub298, 32, !dbg !756
  %tobool300 = icmp ne i64 %and299, 0, !dbg !756
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !756

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !756

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub303 = sub i64 %68, 1, !dbg !756
  %and304 = and i64 %sub303, 16, !dbg !756
  %tobool305 = icmp ne i64 %and304, 0, !dbg !756
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !756

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !756

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub308 = sub i64 %69, 1, !dbg !756
  %and309 = and i64 %sub308, 8, !dbg !756
  %tobool310 = icmp ne i64 %and309, 0, !dbg !756
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !756

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !756

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub313 = sub i64 %70, 1, !dbg !756
  %and314 = and i64 %sub313, 4, !dbg !756
  %tobool315 = icmp ne i64 %and314, 0, !dbg !756
  %71 = zext i1 %tobool315 to i64, !dbg !756
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !756
  br label %cond.end, !dbg !756

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !756
  br label %cond.end317, !dbg !756

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !756
  br label %cond.end319, !dbg !756

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !756
  br label %cond.end321, !dbg !756

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !756
  br label %cond.end323, !dbg !756

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !756
  br label %cond.end325, !dbg !756

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !756
  br label %cond.end327, !dbg !756

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !756
  br label %cond.end329, !dbg !756

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !756
  br label %cond.end331, !dbg !756

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !756
  br label %cond.end333, !dbg !756

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !756
  br label %cond.end335, !dbg !756

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !756
  br label %cond.end337, !dbg !756

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !756
  br label %cond.end339, !dbg !756

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !756
  br label %cond.end341, !dbg !756

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !756
  br label %cond.end343, !dbg !756

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !756
  br label %cond.end345, !dbg !756

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !756
  br label %cond.end347, !dbg !756

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !756
  br label %cond.end349, !dbg !756

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !756
  br label %cond.end351, !dbg !756

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !756
  br label %cond.end353, !dbg !756

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !756
  br label %cond.end355, !dbg !756

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !756
  br label %cond.end357, !dbg !756

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !756
  br label %cond.end359, !dbg !756

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !756
  br label %cond.end361, !dbg !756

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !756
  br label %cond.end363, !dbg !756

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !756
  br label %cond.end365, !dbg !756

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !756
  br label %cond.end367, !dbg !756

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !756
  br label %cond.end369, !dbg !756

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !756
  br label %cond.end371, !dbg !756

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !756
  br label %cond.end373, !dbg !756

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !756
  br label %cond.end375, !dbg !756

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !756
  br label %cond.end377, !dbg !756

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !756
  br label %cond.end379, !dbg !756

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !756
  br label %cond.end381, !dbg !756

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !756
  br label %cond.end383, !dbg !756

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !756
  br label %cond.end385, !dbg !756

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !756
  br label %cond.end387, !dbg !756

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !756
  br label %cond.end389, !dbg !756

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !756
  br label %cond.end391, !dbg !756

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !756
  br label %cond.end393, !dbg !756

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !756
  br label %cond.end395, !dbg !756

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !756
  br label %cond.end397, !dbg !756

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !756
  br label %cond.end399, !dbg !756

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !756
  br label %cond.end401, !dbg !756

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !756
  br label %cond.end403, !dbg !756

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !756
  br label %cond.end405, !dbg !756

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !756
  br label %cond.end407, !dbg !756

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !756
  br label %cond.end409, !dbg !756

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !756
  br label %cond.end411, !dbg !756

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !756
  br label %cond.end413, !dbg !756

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !756
  br label %cond.end415, !dbg !756

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !756
  br label %cond.end417, !dbg !756

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !756
  br label %cond.end419, !dbg !756

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !756
  br label %cond.end421, !dbg !756

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !756
  br label %cond.end423, !dbg !756

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !756
  br label %cond.end425, !dbg !756

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !756
  br label %cond.end427, !dbg !756

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !756
  br label %cond.end429, !dbg !756

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !756
  br label %cond.end431, !dbg !756

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !756
  br label %cond.end433, !dbg !756

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !756
  br label %cond.end435, !dbg !756

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !756
  br label %cond.end437, !dbg !756

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !756
  br label %cond.end440, !dbg !756

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !756

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !756
  br label %cond.end444, !dbg !756

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !756
  %sub443 = sub i64 %72, 1, !dbg !756
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !756
  br label %cond.end444, !dbg !756

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !756
  %sub446 = sub i32 %cond445, 12, !dbg !757
  %add = add i32 %sub446, 1, !dbg !758
  store i32 %add, i32* %retval, align 4, !dbg !759
  br label %return, !dbg !759

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !760
  %dec = add i64 %73, -1, !dbg !760
  store i64 %dec, i64* %size.addr, align 8, !dbg !760
  %74 = load i64, i64* %size.addr, align 8, !dbg !761
  %shr = lshr i64 %74, 12, !dbg !761
  store i64 %shr, i64* %size.addr, align 8, !dbg !761
  %75 = load i64, i64* %size.addr, align 8, !dbg !762
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !739
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !763
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !764
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !763, !srcloc !765
  store i32 %78, i32* %bitpos.i, align 4, !dbg !763
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !766
  %add.i = add i32 %79, 1, !dbg !767
  store i32 %add.i, i32* %retval, align 4, !dbg !768
  br label %return, !dbg !768

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !769
  ret i32 %80, !dbg !769
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !770 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !731, metadata !DIExpression()), !dbg !774
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !738, metadata !DIExpression()), !dbg !776
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !777, metadata !DIExpression()), !dbg !778
  %0 = load i64, i64* %n.addr, align 8, !dbg !779
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !776
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !780
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !781
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !780, !srcloc !765
  store i32 %3, i32* %bitpos.i, align 4, !dbg !780
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !782
  %add.i = add i32 %4, 1, !dbg !783
  %sub = sub i32 %add.i, 1, !dbg !784
  ret i32 %sub, !dbg !785
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !786 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !792, metadata !DIExpression()), !dbg !793
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !794, metadata !DIExpression()), !dbg !795
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !796, metadata !DIExpression()), !dbg !797
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !798, metadata !DIExpression()), !dbg !799
  %0 = load i8*, i8** %object.addr, align 8, !dbg !800
  ret i8* %0, !dbg !801
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !802 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !805, metadata !DIExpression()), !dbg !806
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !807, metadata !DIExpression()), !dbg !808
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !809, metadata !DIExpression()), !dbg !810
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !811
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !813
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !814
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #11, !dbg !815
  br i1 %call, label %if.end, label %if.then, !dbg !816

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !817

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !818
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !819
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !820
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !821
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !822
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !823
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !824
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !825
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !826
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !827
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !828
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !829
  br label %do.body, !dbg !830

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !831

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !833

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !831

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !835
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !835
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !835
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !835
  br label %do.end7, !dbg !835

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !831

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !837
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !838 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !841, metadata !DIExpression()), !dbg !842
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !843, metadata !DIExpression()), !dbg !844
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !845, metadata !DIExpression()), !dbg !846
  ret i1 true, !dbg !847
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !848 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !63, metadata !DIExpression()), !dbg !849
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !82, metadata !DIExpression()), !dbg !852
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !84, metadata !DIExpression()), !dbg !853
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !86, metadata !DIExpression()), !dbg !854
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !88, metadata !DIExpression()), !dbg !855
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !94, metadata !DIExpression()), !dbg !857
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !100, metadata !DIExpression()), !dbg !859
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !109, metadata !DIExpression()), !dbg !862
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !111, metadata !DIExpression()), !dbg !863
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !113, metadata !DIExpression()), !dbg !864
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !115, metadata !DIExpression()), !dbg !865
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !117, metadata !DIExpression()), !dbg !866
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !119, metadata !DIExpression()), !dbg !867
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !121, metadata !DIExpression()), !dbg !868
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !123, metadata !DIExpression()), !dbg !869
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !870, metadata !DIExpression()), !dbg !871
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !872, metadata !DIExpression()), !dbg !873
  %0 = load i64, i64* %size.addr, align 8, !dbg !874
  %1 = load i32, i32* %flags.addr, align 4, !dbg !875
  %or = or i32 %1, 256, !dbg !876
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !877
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !878
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !879

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !880
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !881
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !882

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !883
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !884
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !885
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !886
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !866
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !887
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !888
  %10 = load i32, i32* %order.i.i, align 4, !dbg !889
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !890
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !891
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !892
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !893
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !893
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !893
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !893
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !893
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !894
  br label %kmalloc.exit, !dbg !894

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !895
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !896
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !896
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !897

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !898
  br label %kmalloc_index.exit.i, !dbg !898

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !899
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !900
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !901

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !902
  br label %kmalloc_index.exit.i, !dbg !902

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !903
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !904
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !905

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !906
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !907
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !908

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !909
  br label %kmalloc_index.exit.i, !dbg !909

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !910
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !911
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !912

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !913
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !914
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !915

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !916
  br label %kmalloc_index.exit.i, !dbg !916

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !917
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !918
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !919

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !920
  br label %kmalloc_index.exit.i, !dbg !920

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !921
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !922
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !923

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !924
  br label %kmalloc_index.exit.i, !dbg !924

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !925
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !926
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !927

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !928
  br label %kmalloc_index.exit.i, !dbg !928

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !929
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !930
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !931

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !932
  br label %kmalloc_index.exit.i, !dbg !932

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !933
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !934
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !935

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !936
  br label %kmalloc_index.exit.i, !dbg !936

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !937
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !938
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !939

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !940
  br label %kmalloc_index.exit.i, !dbg !940

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !941
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !942
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !943

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !944
  br label %kmalloc_index.exit.i, !dbg !944

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !945
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !946
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !947

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !948
  br label %kmalloc_index.exit.i, !dbg !948

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !949
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !950
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !951

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !952
  br label %kmalloc_index.exit.i, !dbg !952

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !953
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !954
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !955

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !956
  br label %kmalloc_index.exit.i, !dbg !956

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !957
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !958
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !959

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !960
  br label %kmalloc_index.exit.i, !dbg !960

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !961
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !962
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !963

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !964
  br label %kmalloc_index.exit.i, !dbg !964

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !965
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !966
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !967

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !968
  br label %kmalloc_index.exit.i, !dbg !968

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !969
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !970
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !971

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !972
  br label %kmalloc_index.exit.i, !dbg !972

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !973
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !974
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !975

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !976
  br label %kmalloc_index.exit.i, !dbg !976

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !977
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !978
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !979

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !980
  br label %kmalloc_index.exit.i, !dbg !980

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !981
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !982
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !983

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !984
  br label %kmalloc_index.exit.i, !dbg !984

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !985
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !986
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !987

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !988
  br label %kmalloc_index.exit.i, !dbg !988

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !989
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !990
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !991

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !992
  br label %kmalloc_index.exit.i, !dbg !992

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !993
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !994
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !995

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !996
  br label %kmalloc_index.exit.i, !dbg !996

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !997
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !998
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !999

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1000
  br label %kmalloc_index.exit.i, !dbg !1000

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1001
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1002
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1003

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1004
  br label %kmalloc_index.exit.i, !dbg !1004

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1005
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1006
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1007

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1008
  br label %kmalloc_index.exit.i, !dbg !1008

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1009
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1010
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1011

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1012
  br label %kmalloc_index.exit.i, !dbg !1012

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1013, !srcloc !298
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 214) #8, !dbg !1014, !srcloc !302
  unreachable, !dbg !1015

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1016
  store i32 %45, i32* %index.i, align 4, !dbg !1017
  %46 = load i32, i32* %index.i, align 4, !dbg !1018
  %tobool.i = icmp ne i32 %46, 0, !dbg !1018
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1019

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1020
  br label %kmalloc.exit, !dbg !1020

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1021
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1022
  %and.i.i = and i32 %48, 17, !dbg !1022
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1022
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1022
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1022
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1022
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1023

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1024
  br label %kmalloc_type.exit.i, !dbg !1024

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1025
  %and2.i.i = and i32 %49, 1, !dbg !1026
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1025
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1025
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1025
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1027
  br label %kmalloc_type.exit.i, !dbg !1027

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1028
  %idxprom.i = zext i32 %51 to i64, !dbg !1029
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1029
  %52 = load i32, i32* %index.i, align 4, !dbg !1030
  %idxprom6.i = zext i32 %52 to i64, !dbg !1029
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1029
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1029
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1031
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1032
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1033
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1034
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1035
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1035
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1035
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1035
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1035
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !854
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1036
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1037
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1038
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1039
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1040
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1041
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1042
  store i8* %62, i8** %retval.i, align 8, !dbg !1043
  br label %kmalloc.exit, !dbg !1043

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1044
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1045
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1046
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1046
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1046
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1046
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1046
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1047
  br label %kmalloc.exit, !dbg !1047

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1048
  ret i8* %65, !dbg !1049
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !1050 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !1053, metadata !DIExpression()), !dbg !1054
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1055
  call void @__list_del_entry(%struct.list_head* %0) #11, !dbg !1056
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1057
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !1058
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !1059
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1060
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !1061
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !1062
  ret void, !dbg !1063
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !1064 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !1065, metadata !DIExpression()), !dbg !1066
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1067
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #11, !dbg !1069
  br i1 %call, label %if.end, label %if.then, !dbg !1070

if.then:                                          ; preds = %entry
  br label %return, !dbg !1071

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1072
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !1073
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !1073
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1074
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !1075
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1075
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #11, !dbg !1076
  br label %return, !dbg !1077

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1077
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !1078 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !1081, metadata !DIExpression()), !dbg !1082
  ret i1 true, !dbg !1083
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !1084 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !1085, metadata !DIExpression()), !dbg !1086
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !1087, metadata !DIExpression()), !dbg !1088
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1089
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1090
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !1091
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !1092
  br label %do.body, !dbg !1093

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !1094

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !1096

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !1094

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1098
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1098
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !1098
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !1098
  br label %do.end5, !dbg !1098

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !1094

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !1100
}

; Function Attrs: noredzone
declare dso_local i8* @ioremap_cache(i64, i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nvs_region_list", scope: !2, file: !3, line: 25, type: !31, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !50, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/nvs.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 305, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!18 = !{!19, !21, !22, !36, !40, !48}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !20, line: 148, baseType: !7)
!20 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nvs_region", file: !3, line: 19, size: 256, elements: !24)
!24 = !{!25, !29, !30}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "phys_start", scope: !23, file: !3, line: 20, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !28)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!28 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !23, file: !3, line: 21, baseType: !26, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !23, file: !3, line: 22, baseType: !31, size: 128, offset: 128)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !20, line: 178, size: 128, elements: !32)
!32 = !{!33, !35}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !31, file: !20, line: 179, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !31, file: !20, line: 179, baseType: !34, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nvs_page", file: !3, line: 73, size: 448, elements: !38)
!38 = !{!39, !41, !42, !43, !44, !47}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "phys_start", scope: !37, file: !3, line: 74, baseType: !40, size: 64)
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !37, file: !3, line: 75, baseType: !7, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "kaddr", scope: !37, file: !3, line: 76, baseType: !21, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !37, file: !3, line: 77, baseType: !21, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !37, file: !3, line: 78, baseType: !45, size: 8, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !20, line: 30, baseType: !46)
!46 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !37, file: !3, line: 79, baseType: !31, size: 128, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!50 = !{!0, !51}
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "nvs_list", scope: !2, file: !3, line: 82, type: !31, isLocal: true, isDefinition: true)
!53 = !{i32 7, !"Dwarf Version", i32 4}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"Code Model", i32 2}
!57 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!58 = distinct !DISubprogram(name: "acpi_nvs_register", scope: !3, file: !3, line: 36, type: !59, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !26, !26}
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !{}
!63 = !DILocalVariable(name: "s", arg: 1, scope: !64, file: !12, line: 445, type: !67)
!64 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !12, file: !12, line: 445, type: !65, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!65 = !DISubroutineType(types: !66)
!66 = !{!21, !67, !19, !70}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !69, line: 117, flags: DIFlagFwdDecl)
!69 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 55, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !72, line: 72, baseType: !73)
!72 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !72, line: 16, baseType: !40)
!74 = !DILocation(line: 445, column: 72, scope: !64, inlinedAt: !75)
!75 = distinct !DILocation(line: 552, column: 10, scope: !76, inlinedAt: !81)
!76 = distinct !DILexicalBlock(scope: !77, file: !12, line: 540, column: 34)
!77 = distinct !DILexicalBlock(scope: !78, file: !12, line: 540, column: 6)
!78 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 538, type: !79, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!79 = !DISubroutineType(types: !80)
!80 = !{!21, !70, !19}
!81 = distinct !DILocation(line: 40, column: 11, scope: !58)
!82 = !DILocalVariable(name: "flags", arg: 2, scope: !64, file: !12, line: 446, type: !19)
!83 = !DILocation(line: 446, column: 9, scope: !64, inlinedAt: !75)
!84 = !DILocalVariable(name: "size", arg: 3, scope: !64, file: !12, line: 446, type: !70)
!85 = !DILocation(line: 446, column: 23, scope: !64, inlinedAt: !75)
!86 = !DILocalVariable(name: "ret", scope: !64, file: !12, line: 448, type: !21)
!87 = !DILocation(line: 448, column: 8, scope: !64, inlinedAt: !75)
!88 = !DILocalVariable(name: "flags", arg: 1, scope: !89, file: !12, line: 318, type: !19)
!89 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 318, type: !90, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!90 = !DISubroutineType(types: !91)
!91 = !{!11, !19}
!92 = !DILocation(line: 318, column: 67, scope: !89, inlinedAt: !93)
!93 = distinct !DILocation(line: 553, column: 20, scope: !76, inlinedAt: !81)
!94 = !DILocalVariable(name: "size", arg: 1, scope: !95, file: !12, line: 346, type: !70)
!95 = distinct !DISubprogram(name: "kmalloc_index", scope: !12, file: !12, line: 346, type: !96, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!96 = !DISubroutineType(types: !97)
!97 = !{!7, !70}
!98 = !DILocation(line: 346, column: 58, scope: !95, inlinedAt: !99)
!99 = distinct !DILocation(line: 547, column: 11, scope: !76, inlinedAt: !81)
!100 = !DILocalVariable(name: "size", arg: 1, scope: !101, file: !12, line: 472, type: !70)
!101 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !12, file: !12, line: 472, type: !102, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!102 = !DISubroutineType(types: !103)
!103 = !{!21, !70, !19, !7}
!104 = !DILocation(line: 472, column: 28, scope: !101, inlinedAt: !105)
!105 = distinct !DILocation(line: 481, column: 9, scope: !106, inlinedAt: !107)
!106 = distinct !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 478, type: !79, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!107 = distinct !DILocation(line: 545, column: 11, scope: !108, inlinedAt: !81)
!108 = distinct !DILexicalBlock(scope: !76, file: !12, line: 544, column: 7)
!109 = !DILocalVariable(name: "flags", arg: 2, scope: !101, file: !12, line: 472, type: !19)
!110 = !DILocation(line: 472, column: 40, scope: !101, inlinedAt: !105)
!111 = !DILocalVariable(name: "order", arg: 3, scope: !101, file: !12, line: 472, type: !7)
!112 = !DILocation(line: 472, column: 60, scope: !101, inlinedAt: !105)
!113 = !DILocalVariable(name: "size", arg: 1, scope: !106, file: !12, line: 478, type: !70)
!114 = !DILocation(line: 478, column: 51, scope: !106, inlinedAt: !107)
!115 = !DILocalVariable(name: "flags", arg: 2, scope: !106, file: !12, line: 478, type: !19)
!116 = !DILocation(line: 478, column: 63, scope: !106, inlinedAt: !107)
!117 = !DILocalVariable(name: "order", scope: !106, file: !12, line: 480, type: !7)
!118 = !DILocation(line: 480, column: 15, scope: !106, inlinedAt: !107)
!119 = !DILocalVariable(name: "size", arg: 1, scope: !78, file: !12, line: 538, type: !70)
!120 = !DILocation(line: 538, column: 45, scope: !78, inlinedAt: !81)
!121 = !DILocalVariable(name: "flags", arg: 2, scope: !78, file: !12, line: 538, type: !19)
!122 = !DILocation(line: 538, column: 57, scope: !78, inlinedAt: !81)
!123 = !DILocalVariable(name: "index", scope: !76, file: !12, line: 542, type: !7)
!124 = !DILocation(line: 542, column: 16, scope: !76, inlinedAt: !81)
!125 = !DILocalVariable(name: "start", arg: 1, scope: !58, file: !3, line: 36, type: !26)
!126 = !DILocation(line: 36, column: 29, scope: !58)
!127 = !DILocalVariable(name: "size", arg: 2, scope: !58, file: !3, line: 36, type: !26)
!128 = !DILocation(line: 36, column: 42, scope: !58)
!129 = !DILocalVariable(name: "region", scope: !58, file: !3, line: 38, type: !22)
!130 = !DILocation(line: 38, column: 21, scope: !58)
!131 = !DILocation(line: 540, column: 27, scope: !77, inlinedAt: !81)
!132 = !DILocation(line: 540, column: 6, scope: !77, inlinedAt: !81)
!133 = !DILocation(line: 540, column: 6, scope: !78, inlinedAt: !81)
!134 = !DILocation(line: 544, column: 7, scope: !108, inlinedAt: !81)
!135 = !DILocation(line: 544, column: 12, scope: !108, inlinedAt: !81)
!136 = !DILocation(line: 544, column: 7, scope: !76, inlinedAt: !81)
!137 = !DILocation(line: 545, column: 25, scope: !108, inlinedAt: !81)
!138 = !DILocation(line: 545, column: 31, scope: !108, inlinedAt: !81)
!139 = !DILocation(line: 480, column: 33, scope: !106, inlinedAt: !107)
!140 = !DILocation(line: 480, column: 23, scope: !106, inlinedAt: !107)
!141 = !DILocation(line: 481, column: 29, scope: !106, inlinedAt: !107)
!142 = !DILocation(line: 481, column: 35, scope: !106, inlinedAt: !107)
!143 = !DILocation(line: 481, column: 42, scope: !106, inlinedAt: !107)
!144 = !DILocation(line: 474, column: 23, scope: !101, inlinedAt: !105)
!145 = !DILocation(line: 474, column: 29, scope: !101, inlinedAt: !105)
!146 = !DILocation(line: 474, column: 36, scope: !101, inlinedAt: !105)
!147 = !DILocation(line: 474, column: 9, scope: !101, inlinedAt: !105)
!148 = !DILocation(line: 545, column: 4, scope: !108, inlinedAt: !81)
!149 = !DILocation(line: 547, column: 25, scope: !76, inlinedAt: !81)
!150 = !DILocation(line: 348, column: 7, scope: !151, inlinedAt: !99)
!151 = distinct !DILexicalBlock(scope: !95, file: !12, line: 348, column: 6)
!152 = !DILocation(line: 348, column: 6, scope: !95, inlinedAt: !99)
!153 = !DILocation(line: 349, column: 3, scope: !151, inlinedAt: !99)
!154 = !DILocation(line: 351, column: 6, scope: !155, inlinedAt: !99)
!155 = distinct !DILexicalBlock(scope: !95, file: !12, line: 351, column: 6)
!156 = !DILocation(line: 351, column: 11, scope: !155, inlinedAt: !99)
!157 = !DILocation(line: 351, column: 6, scope: !95, inlinedAt: !99)
!158 = !DILocation(line: 352, column: 3, scope: !155, inlinedAt: !99)
!159 = !DILocation(line: 354, column: 32, scope: !160, inlinedAt: !99)
!160 = distinct !DILexicalBlock(scope: !95, file: !12, line: 354, column: 6)
!161 = !DILocation(line: 354, column: 37, scope: !160, inlinedAt: !99)
!162 = !DILocation(line: 354, column: 42, scope: !160, inlinedAt: !99)
!163 = !DILocation(line: 354, column: 45, scope: !160, inlinedAt: !99)
!164 = !DILocation(line: 354, column: 50, scope: !160, inlinedAt: !99)
!165 = !DILocation(line: 354, column: 6, scope: !95, inlinedAt: !99)
!166 = !DILocation(line: 355, column: 3, scope: !160, inlinedAt: !99)
!167 = !DILocation(line: 356, column: 32, scope: !168, inlinedAt: !99)
!168 = distinct !DILexicalBlock(scope: !95, file: !12, line: 356, column: 6)
!169 = !DILocation(line: 356, column: 37, scope: !168, inlinedAt: !99)
!170 = !DILocation(line: 356, column: 43, scope: !168, inlinedAt: !99)
!171 = !DILocation(line: 356, column: 46, scope: !168, inlinedAt: !99)
!172 = !DILocation(line: 356, column: 51, scope: !168, inlinedAt: !99)
!173 = !DILocation(line: 356, column: 6, scope: !95, inlinedAt: !99)
!174 = !DILocation(line: 357, column: 3, scope: !168, inlinedAt: !99)
!175 = !DILocation(line: 358, column: 6, scope: !176, inlinedAt: !99)
!176 = distinct !DILexicalBlock(scope: !95, file: !12, line: 358, column: 6)
!177 = !DILocation(line: 358, column: 11, scope: !176, inlinedAt: !99)
!178 = !DILocation(line: 358, column: 6, scope: !95, inlinedAt: !99)
!179 = !DILocation(line: 358, column: 26, scope: !176, inlinedAt: !99)
!180 = !DILocation(line: 359, column: 6, scope: !181, inlinedAt: !99)
!181 = distinct !DILexicalBlock(scope: !95, file: !12, line: 359, column: 6)
!182 = !DILocation(line: 359, column: 11, scope: !181, inlinedAt: !99)
!183 = !DILocation(line: 359, column: 6, scope: !95, inlinedAt: !99)
!184 = !DILocation(line: 359, column: 26, scope: !181, inlinedAt: !99)
!185 = !DILocation(line: 360, column: 6, scope: !186, inlinedAt: !99)
!186 = distinct !DILexicalBlock(scope: !95, file: !12, line: 360, column: 6)
!187 = !DILocation(line: 360, column: 11, scope: !186, inlinedAt: !99)
!188 = !DILocation(line: 360, column: 6, scope: !95, inlinedAt: !99)
!189 = !DILocation(line: 360, column: 26, scope: !186, inlinedAt: !99)
!190 = !DILocation(line: 361, column: 6, scope: !191, inlinedAt: !99)
!191 = distinct !DILexicalBlock(scope: !95, file: !12, line: 361, column: 6)
!192 = !DILocation(line: 361, column: 11, scope: !191, inlinedAt: !99)
!193 = !DILocation(line: 361, column: 6, scope: !95, inlinedAt: !99)
!194 = !DILocation(line: 361, column: 26, scope: !191, inlinedAt: !99)
!195 = !DILocation(line: 362, column: 6, scope: !196, inlinedAt: !99)
!196 = distinct !DILexicalBlock(scope: !95, file: !12, line: 362, column: 6)
!197 = !DILocation(line: 362, column: 11, scope: !196, inlinedAt: !99)
!198 = !DILocation(line: 362, column: 6, scope: !95, inlinedAt: !99)
!199 = !DILocation(line: 362, column: 26, scope: !196, inlinedAt: !99)
!200 = !DILocation(line: 363, column: 6, scope: !201, inlinedAt: !99)
!201 = distinct !DILexicalBlock(scope: !95, file: !12, line: 363, column: 6)
!202 = !DILocation(line: 363, column: 11, scope: !201, inlinedAt: !99)
!203 = !DILocation(line: 363, column: 6, scope: !95, inlinedAt: !99)
!204 = !DILocation(line: 363, column: 26, scope: !201, inlinedAt: !99)
!205 = !DILocation(line: 364, column: 6, scope: !206, inlinedAt: !99)
!206 = distinct !DILexicalBlock(scope: !95, file: !12, line: 364, column: 6)
!207 = !DILocation(line: 364, column: 11, scope: !206, inlinedAt: !99)
!208 = !DILocation(line: 364, column: 6, scope: !95, inlinedAt: !99)
!209 = !DILocation(line: 364, column: 26, scope: !206, inlinedAt: !99)
!210 = !DILocation(line: 365, column: 6, scope: !211, inlinedAt: !99)
!211 = distinct !DILexicalBlock(scope: !95, file: !12, line: 365, column: 6)
!212 = !DILocation(line: 365, column: 11, scope: !211, inlinedAt: !99)
!213 = !DILocation(line: 365, column: 6, scope: !95, inlinedAt: !99)
!214 = !DILocation(line: 365, column: 26, scope: !211, inlinedAt: !99)
!215 = !DILocation(line: 366, column: 6, scope: !216, inlinedAt: !99)
!216 = distinct !DILexicalBlock(scope: !95, file: !12, line: 366, column: 6)
!217 = !DILocation(line: 366, column: 11, scope: !216, inlinedAt: !99)
!218 = !DILocation(line: 366, column: 6, scope: !95, inlinedAt: !99)
!219 = !DILocation(line: 366, column: 26, scope: !216, inlinedAt: !99)
!220 = !DILocation(line: 367, column: 6, scope: !221, inlinedAt: !99)
!221 = distinct !DILexicalBlock(scope: !95, file: !12, line: 367, column: 6)
!222 = !DILocation(line: 367, column: 11, scope: !221, inlinedAt: !99)
!223 = !DILocation(line: 367, column: 6, scope: !95, inlinedAt: !99)
!224 = !DILocation(line: 367, column: 26, scope: !221, inlinedAt: !99)
!225 = !DILocation(line: 368, column: 6, scope: !226, inlinedAt: !99)
!226 = distinct !DILexicalBlock(scope: !95, file: !12, line: 368, column: 6)
!227 = !DILocation(line: 368, column: 11, scope: !226, inlinedAt: !99)
!228 = !DILocation(line: 368, column: 6, scope: !95, inlinedAt: !99)
!229 = !DILocation(line: 368, column: 26, scope: !226, inlinedAt: !99)
!230 = !DILocation(line: 369, column: 6, scope: !231, inlinedAt: !99)
!231 = distinct !DILexicalBlock(scope: !95, file: !12, line: 369, column: 6)
!232 = !DILocation(line: 369, column: 11, scope: !231, inlinedAt: !99)
!233 = !DILocation(line: 369, column: 6, scope: !95, inlinedAt: !99)
!234 = !DILocation(line: 369, column: 26, scope: !231, inlinedAt: !99)
!235 = !DILocation(line: 370, column: 6, scope: !236, inlinedAt: !99)
!236 = distinct !DILexicalBlock(scope: !95, file: !12, line: 370, column: 6)
!237 = !DILocation(line: 370, column: 11, scope: !236, inlinedAt: !99)
!238 = !DILocation(line: 370, column: 6, scope: !95, inlinedAt: !99)
!239 = !DILocation(line: 370, column: 26, scope: !236, inlinedAt: !99)
!240 = !DILocation(line: 371, column: 6, scope: !241, inlinedAt: !99)
!241 = distinct !DILexicalBlock(scope: !95, file: !12, line: 371, column: 6)
!242 = !DILocation(line: 371, column: 11, scope: !241, inlinedAt: !99)
!243 = !DILocation(line: 371, column: 6, scope: !95, inlinedAt: !99)
!244 = !DILocation(line: 371, column: 26, scope: !241, inlinedAt: !99)
!245 = !DILocation(line: 372, column: 6, scope: !246, inlinedAt: !99)
!246 = distinct !DILexicalBlock(scope: !95, file: !12, line: 372, column: 6)
!247 = !DILocation(line: 372, column: 11, scope: !246, inlinedAt: !99)
!248 = !DILocation(line: 372, column: 6, scope: !95, inlinedAt: !99)
!249 = !DILocation(line: 372, column: 26, scope: !246, inlinedAt: !99)
!250 = !DILocation(line: 373, column: 6, scope: !251, inlinedAt: !99)
!251 = distinct !DILexicalBlock(scope: !95, file: !12, line: 373, column: 6)
!252 = !DILocation(line: 373, column: 11, scope: !251, inlinedAt: !99)
!253 = !DILocation(line: 373, column: 6, scope: !95, inlinedAt: !99)
!254 = !DILocation(line: 373, column: 26, scope: !251, inlinedAt: !99)
!255 = !DILocation(line: 374, column: 6, scope: !256, inlinedAt: !99)
!256 = distinct !DILexicalBlock(scope: !95, file: !12, line: 374, column: 6)
!257 = !DILocation(line: 374, column: 11, scope: !256, inlinedAt: !99)
!258 = !DILocation(line: 374, column: 6, scope: !95, inlinedAt: !99)
!259 = !DILocation(line: 374, column: 26, scope: !256, inlinedAt: !99)
!260 = !DILocation(line: 375, column: 6, scope: !261, inlinedAt: !99)
!261 = distinct !DILexicalBlock(scope: !95, file: !12, line: 375, column: 6)
!262 = !DILocation(line: 375, column: 11, scope: !261, inlinedAt: !99)
!263 = !DILocation(line: 375, column: 6, scope: !95, inlinedAt: !99)
!264 = !DILocation(line: 375, column: 27, scope: !261, inlinedAt: !99)
!265 = !DILocation(line: 376, column: 6, scope: !266, inlinedAt: !99)
!266 = distinct !DILexicalBlock(scope: !95, file: !12, line: 376, column: 6)
!267 = !DILocation(line: 376, column: 11, scope: !266, inlinedAt: !99)
!268 = !DILocation(line: 376, column: 6, scope: !95, inlinedAt: !99)
!269 = !DILocation(line: 376, column: 32, scope: !266, inlinedAt: !99)
!270 = !DILocation(line: 377, column: 6, scope: !271, inlinedAt: !99)
!271 = distinct !DILexicalBlock(scope: !95, file: !12, line: 377, column: 6)
!272 = !DILocation(line: 377, column: 11, scope: !271, inlinedAt: !99)
!273 = !DILocation(line: 377, column: 6, scope: !95, inlinedAt: !99)
!274 = !DILocation(line: 377, column: 32, scope: !271, inlinedAt: !99)
!275 = !DILocation(line: 378, column: 6, scope: !276, inlinedAt: !99)
!276 = distinct !DILexicalBlock(scope: !95, file: !12, line: 378, column: 6)
!277 = !DILocation(line: 378, column: 11, scope: !276, inlinedAt: !99)
!278 = !DILocation(line: 378, column: 6, scope: !95, inlinedAt: !99)
!279 = !DILocation(line: 378, column: 32, scope: !276, inlinedAt: !99)
!280 = !DILocation(line: 379, column: 6, scope: !281, inlinedAt: !99)
!281 = distinct !DILexicalBlock(scope: !95, file: !12, line: 379, column: 6)
!282 = !DILocation(line: 379, column: 11, scope: !281, inlinedAt: !99)
!283 = !DILocation(line: 379, column: 6, scope: !95, inlinedAt: !99)
!284 = !DILocation(line: 379, column: 33, scope: !281, inlinedAt: !99)
!285 = !DILocation(line: 380, column: 6, scope: !286, inlinedAt: !99)
!286 = distinct !DILexicalBlock(scope: !95, file: !12, line: 380, column: 6)
!287 = !DILocation(line: 380, column: 11, scope: !286, inlinedAt: !99)
!288 = !DILocation(line: 380, column: 6, scope: !95, inlinedAt: !99)
!289 = !DILocation(line: 380, column: 33, scope: !286, inlinedAt: !99)
!290 = !DILocation(line: 381, column: 6, scope: !291, inlinedAt: !99)
!291 = distinct !DILexicalBlock(scope: !95, file: !12, line: 381, column: 6)
!292 = !DILocation(line: 381, column: 11, scope: !291, inlinedAt: !99)
!293 = !DILocation(line: 381, column: 6, scope: !95, inlinedAt: !99)
!294 = !DILocation(line: 381, column: 33, scope: !291, inlinedAt: !99)
!295 = !DILocation(line: 382, column: 2, scope: !296, inlinedAt: !99)
!296 = distinct !DILexicalBlock(scope: !297, file: !12, line: 382, column: 2)
!297 = distinct !DILexicalBlock(scope: !95, file: !12, line: 382, column: 2)
!298 = !{i32 -2142593317, i32 -2142593288, i32 -2142593242, i32 -2142593184, i32 -2142593130, i32 -2142593076, i32 -2142593021, i32 -2142592990}
!299 = !DILocation(line: 382, column: 2, scope: !300, inlinedAt: !99)
!300 = distinct !DILexicalBlock(scope: !301, file: !12, line: 382, column: 2)
!301 = distinct !DILexicalBlock(scope: !297, file: !12, line: 382, column: 2)
!302 = !{i32 -2142592547, i32 -2142592540, i32 -2142592486, i32 -2142592455, i32 -2142592425}
!303 = !DILocation(line: 382, column: 2, scope: !301, inlinedAt: !99)
!304 = !DILocation(line: 386, column: 1, scope: !95, inlinedAt: !99)
!305 = !DILocation(line: 547, column: 9, scope: !76, inlinedAt: !81)
!306 = !DILocation(line: 549, column: 8, scope: !307, inlinedAt: !81)
!307 = distinct !DILexicalBlock(scope: !76, file: !12, line: 549, column: 7)
!308 = !DILocation(line: 549, column: 7, scope: !76, inlinedAt: !81)
!309 = !DILocation(line: 550, column: 4, scope: !307, inlinedAt: !81)
!310 = !DILocation(line: 553, column: 33, scope: !76, inlinedAt: !81)
!311 = !DILocation(line: 325, column: 6, scope: !312, inlinedAt: !93)
!312 = distinct !DILexicalBlock(scope: !89, file: !12, line: 325, column: 6)
!313 = !DILocation(line: 325, column: 6, scope: !89, inlinedAt: !93)
!314 = !DILocation(line: 326, column: 3, scope: !312, inlinedAt: !93)
!315 = !DILocation(line: 332, column: 9, scope: !89, inlinedAt: !93)
!316 = !DILocation(line: 332, column: 15, scope: !89, inlinedAt: !93)
!317 = !DILocation(line: 332, column: 2, scope: !89, inlinedAt: !93)
!318 = !DILocation(line: 336, column: 1, scope: !89, inlinedAt: !93)
!319 = !DILocation(line: 553, column: 5, scope: !76, inlinedAt: !81)
!320 = !DILocation(line: 553, column: 41, scope: !76, inlinedAt: !81)
!321 = !DILocation(line: 554, column: 5, scope: !76, inlinedAt: !81)
!322 = !DILocation(line: 554, column: 12, scope: !76, inlinedAt: !81)
!323 = !DILocation(line: 448, column: 31, scope: !64, inlinedAt: !75)
!324 = !DILocation(line: 448, column: 34, scope: !64, inlinedAt: !75)
!325 = !DILocation(line: 448, column: 14, scope: !64, inlinedAt: !75)
!326 = !DILocation(line: 450, column: 22, scope: !64, inlinedAt: !75)
!327 = !DILocation(line: 450, column: 25, scope: !64, inlinedAt: !75)
!328 = !DILocation(line: 450, column: 30, scope: !64, inlinedAt: !75)
!329 = !DILocation(line: 450, column: 36, scope: !64, inlinedAt: !75)
!330 = !DILocation(line: 450, column: 8, scope: !64, inlinedAt: !75)
!331 = !DILocation(line: 450, column: 6, scope: !64, inlinedAt: !75)
!332 = !DILocation(line: 451, column: 9, scope: !64, inlinedAt: !75)
!333 = !DILocation(line: 552, column: 3, scope: !76, inlinedAt: !81)
!334 = !DILocation(line: 557, column: 19, scope: !78, inlinedAt: !81)
!335 = !DILocation(line: 557, column: 25, scope: !78, inlinedAt: !81)
!336 = !DILocation(line: 557, column: 9, scope: !78, inlinedAt: !81)
!337 = !DILocation(line: 557, column: 2, scope: !78, inlinedAt: !81)
!338 = !DILocation(line: 558, column: 1, scope: !78, inlinedAt: !81)
!339 = !DILocation(line: 40, column: 11, scope: !58)
!340 = !DILocation(line: 40, column: 9, scope: !58)
!341 = !DILocation(line: 41, column: 7, scope: !342)
!342 = distinct !DILexicalBlock(scope: !58, file: !3, line: 41, column: 6)
!343 = !DILocation(line: 41, column: 6, scope: !58)
!344 = !DILocation(line: 42, column: 3, scope: !342)
!345 = !DILocation(line: 43, column: 23, scope: !58)
!346 = !DILocation(line: 43, column: 2, scope: !58)
!347 = !DILocation(line: 43, column: 10, scope: !58)
!348 = !DILocation(line: 43, column: 21, scope: !58)
!349 = !DILocation(line: 44, column: 17, scope: !58)
!350 = !DILocation(line: 44, column: 2, scope: !58)
!351 = !DILocation(line: 44, column: 10, scope: !58)
!352 = !DILocation(line: 44, column: 15, scope: !58)
!353 = !DILocation(line: 45, column: 17, scope: !58)
!354 = !DILocation(line: 45, column: 25, scope: !58)
!355 = !DILocation(line: 45, column: 2, scope: !58)
!356 = !DILocation(line: 47, column: 30, scope: !58)
!357 = !DILocation(line: 47, column: 37, scope: !58)
!358 = !DILocation(line: 47, column: 9, scope: !58)
!359 = !DILocation(line: 47, column: 2, scope: !58)
!360 = !DILocation(line: 48, column: 1, scope: !58)
!361 = distinct !DISubprogram(name: "list_add_tail", scope: !362, file: !362, line: 98, type: !363, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!362 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!363 = !DISubroutineType(types: !364)
!364 = !{null, !34, !34}
!365 = !DILocalVariable(name: "new", arg: 1, scope: !361, file: !362, line: 98, type: !34)
!366 = !DILocation(line: 98, column: 52, scope: !361)
!367 = !DILocalVariable(name: "head", arg: 2, scope: !361, file: !362, line: 98, type: !34)
!368 = !DILocation(line: 98, column: 75, scope: !361)
!369 = !DILocation(line: 100, column: 13, scope: !361)
!370 = !DILocation(line: 100, column: 18, scope: !361)
!371 = !DILocation(line: 100, column: 24, scope: !361)
!372 = !DILocation(line: 100, column: 30, scope: !361)
!373 = !DILocation(line: 100, column: 2, scope: !361)
!374 = !DILocation(line: 101, column: 1, scope: !361)
!375 = distinct !DISubprogram(name: "suspend_nvs_register", scope: !3, file: !3, line: 93, type: !376, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!376 = !DISubroutineType(types: !377)
!377 = !{!61, !40, !40}
!378 = !DILocalVariable(name: "start", arg: 1, scope: !375, file: !3, line: 93, type: !40)
!379 = !DILocation(line: 93, column: 47, scope: !375)
!380 = !DILocalVariable(name: "size", arg: 2, scope: !375, file: !3, line: 93, type: !40)
!381 = !DILocation(line: 93, column: 68, scope: !375)
!382 = !DILocalVariable(name: "entry", scope: !375, file: !3, line: 95, type: !36)
!383 = !DILocation(line: 95, column: 19, scope: !375)
!384 = !DILocalVariable(name: "next", scope: !375, file: !3, line: 95, type: !36)
!385 = !DILocation(line: 95, column: 27, scope: !375)
!386 = !DILocation(line: 97, column: 2, scope: !375)
!387 = !DILocation(line: 100, column: 2, scope: !375)
!388 = !DILocation(line: 100, column: 9, scope: !375)
!389 = !DILocation(line: 100, column: 14, scope: !375)
!390 = !DILocalVariable(name: "nr_bytes", scope: !391, file: !3, line: 101, type: !7)
!391 = distinct !DILexicalBlock(scope: !375, file: !3, line: 100, column: 19)
!392 = !DILocation(line: 101, column: 16, scope: !391)
!393 = !DILocation(line: 103, column: 11, scope: !391)
!394 = !DILocation(line: 103, column: 9, scope: !391)
!395 = !DILocation(line: 104, column: 8, scope: !396)
!396 = distinct !DILexicalBlock(scope: !391, file: !3, line: 104, column: 7)
!397 = !DILocation(line: 104, column: 7, scope: !391)
!398 = !DILocation(line: 105, column: 4, scope: !396)
!399 = !DILocation(line: 107, column: 18, scope: !391)
!400 = !DILocation(line: 107, column: 25, scope: !391)
!401 = !DILocation(line: 107, column: 3, scope: !391)
!402 = !DILocation(line: 108, column: 23, scope: !391)
!403 = !DILocation(line: 108, column: 3, scope: !391)
!404 = !DILocation(line: 108, column: 10, scope: !391)
!405 = !DILocation(line: 108, column: 21, scope: !391)
!406 = !DILocation(line: 109, column: 27, scope: !391)
!407 = !DILocation(line: 109, column: 33, scope: !391)
!408 = !DILocation(line: 109, column: 24, scope: !391)
!409 = !DILocation(line: 109, column: 14, scope: !391)
!410 = !DILocation(line: 109, column: 12, scope: !391)
!411 = !DILocation(line: 110, column: 18, scope: !391)
!412 = !DILocation(line: 110, column: 25, scope: !391)
!413 = !DILocation(line: 110, column: 23, scope: !391)
!414 = !DILocation(line: 110, column: 17, scope: !391)
!415 = !DILocation(line: 110, column: 37, scope: !391)
!416 = !DILocation(line: 110, column: 44, scope: !391)
!417 = !DILocation(line: 110, column: 3, scope: !391)
!418 = !DILocation(line: 110, column: 10, scope: !391)
!419 = !DILocation(line: 110, column: 15, scope: !391)
!420 = !DILocation(line: 112, column: 12, scope: !391)
!421 = !DILocation(line: 112, column: 19, scope: !391)
!422 = !DILocation(line: 112, column: 9, scope: !391)
!423 = !DILocation(line: 113, column: 11, scope: !391)
!424 = !DILocation(line: 113, column: 18, scope: !391)
!425 = !DILocation(line: 113, column: 8, scope: !391)
!426 = distinct !{!426, !387, !427}
!427 = !DILocation(line: 114, column: 2, scope: !375)
!428 = !DILocation(line: 115, column: 2, scope: !375)
!429 = !DILabel(scope: !375, name: "Error", file: !3, line: 117)
!430 = !DILocation(line: 117, column: 2, scope: !375)
!431 = !DILocalVariable(name: "__mptr", scope: !432, file: !3, line: 118, type: !21)
!432 = distinct !DILexicalBlock(scope: !433, file: !3, line: 118, column: 2)
!433 = distinct !DILexicalBlock(scope: !375, file: !3, line: 118, column: 2)
!434 = !DILocation(line: 118, column: 2, scope: !432)
!435 = !DILocation(line: 118, column: 2, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !3, line: 118, column: 2)
!437 = !DILocation(line: 118, column: 2, scope: !433)
!438 = !DILocalVariable(name: "__mptr", scope: !439, file: !3, line: 118, type: !21)
!439 = distinct !DILexicalBlock(scope: !433, file: !3, line: 118, column: 2)
!440 = !DILocation(line: 118, column: 2, scope: !439)
!441 = !DILocation(line: 118, column: 2, scope: !442)
!442 = distinct !DILexicalBlock(scope: !439, file: !3, line: 118, column: 2)
!443 = !DILocation(line: 118, column: 2, scope: !444)
!444 = distinct !DILexicalBlock(scope: !433, file: !3, line: 118, column: 2)
!445 = !DILocation(line: 119, column: 13, scope: !446)
!446 = distinct !DILexicalBlock(scope: !444, file: !3, line: 118, column: 57)
!447 = !DILocation(line: 119, column: 20, scope: !446)
!448 = !DILocation(line: 119, column: 3, scope: !446)
!449 = !DILocation(line: 120, column: 9, scope: !446)
!450 = !DILocation(line: 120, column: 3, scope: !446)
!451 = !DILocation(line: 121, column: 2, scope: !446)
!452 = !DILocalVariable(name: "__mptr", scope: !453, file: !3, line: 118, type: !21)
!453 = distinct !DILexicalBlock(scope: !444, file: !3, line: 118, column: 2)
!454 = !DILocation(line: 118, column: 2, scope: !453)
!455 = !DILocation(line: 118, column: 2, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !3, line: 118, column: 2)
!457 = distinct !{!457, !437, !458}
!458 = !DILocation(line: 121, column: 2, scope: !433)
!459 = !DILocation(line: 122, column: 2, scope: !375)
!460 = !DILocation(line: 123, column: 1, scope: !375)
!461 = distinct !DISubprogram(name: "acpi_nvs_for_each_region", scope: !3, file: !3, line: 50, type: !462, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!462 = !DISubroutineType(types: !463)
!463 = !{!61, !464, !21}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!61, !26, !26, !21}
!467 = !DILocalVariable(name: "func", arg: 1, scope: !461, file: !3, line: 50, type: !464)
!468 = !DILocation(line: 50, column: 36, scope: !461)
!469 = !DILocalVariable(name: "data", arg: 2, scope: !461, file: !3, line: 51, type: !21)
!470 = !DILocation(line: 51, column: 15, scope: !461)
!471 = !DILocalVariable(name: "rc", scope: !461, file: !3, line: 53, type: !61)
!472 = !DILocation(line: 53, column: 6, scope: !461)
!473 = !DILocalVariable(name: "region", scope: !461, file: !3, line: 54, type: !22)
!474 = !DILocation(line: 54, column: 21, scope: !461)
!475 = !DILocalVariable(name: "__mptr", scope: !476, file: !3, line: 56, type: !21)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 56, column: 2)
!477 = distinct !DILexicalBlock(scope: !461, file: !3, line: 56, column: 2)
!478 = !DILocation(line: 56, column: 2, scope: !476)
!479 = !DILocation(line: 56, column: 2, scope: !480)
!480 = distinct !DILexicalBlock(scope: !476, file: !3, line: 56, column: 2)
!481 = !DILocation(line: 56, column: 2, scope: !477)
!482 = !DILocation(line: 56, column: 2, scope: !483)
!483 = distinct !DILexicalBlock(scope: !477, file: !3, line: 56, column: 2)
!484 = !DILocation(line: 57, column: 8, scope: !485)
!485 = distinct !DILexicalBlock(scope: !483, file: !3, line: 56, column: 54)
!486 = !DILocation(line: 57, column: 13, scope: !485)
!487 = !DILocation(line: 57, column: 21, scope: !485)
!488 = !DILocation(line: 57, column: 33, scope: !485)
!489 = !DILocation(line: 57, column: 41, scope: !485)
!490 = !DILocation(line: 57, column: 47, scope: !485)
!491 = !DILocation(line: 57, column: 6, scope: !485)
!492 = !DILocation(line: 58, column: 7, scope: !493)
!493 = distinct !DILexicalBlock(scope: !485, file: !3, line: 58, column: 7)
!494 = !DILocation(line: 58, column: 7, scope: !485)
!495 = !DILocation(line: 59, column: 11, scope: !493)
!496 = !DILocation(line: 59, column: 4, scope: !493)
!497 = !DILocation(line: 60, column: 2, scope: !485)
!498 = !DILocalVariable(name: "__mptr", scope: !499, file: !3, line: 56, type: !21)
!499 = distinct !DILexicalBlock(scope: !483, file: !3, line: 56, column: 2)
!500 = !DILocation(line: 56, column: 2, scope: !499)
!501 = !DILocation(line: 56, column: 2, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !3, line: 56, column: 2)
!503 = distinct !{!503, !481, !504}
!504 = !DILocation(line: 60, column: 2, scope: !477)
!505 = !DILocation(line: 62, column: 2, scope: !461)
!506 = !DILocation(line: 63, column: 1, scope: !461)
!507 = distinct !DISubprogram(name: "suspend_nvs_free", scope: !3, file: !3, line: 128, type: !508, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!508 = !DISubroutineType(types: !509)
!509 = !{null}
!510 = !DILocalVariable(name: "entry", scope: !507, file: !3, line: 130, type: !36)
!511 = !DILocation(line: 130, column: 19, scope: !507)
!512 = !DILocalVariable(name: "__mptr", scope: !513, file: !3, line: 132, type: !21)
!513 = distinct !DILexicalBlock(scope: !514, file: !3, line: 132, column: 2)
!514 = distinct !DILexicalBlock(scope: !507, file: !3, line: 132, column: 2)
!515 = !DILocation(line: 132, column: 2, scope: !513)
!516 = !DILocation(line: 132, column: 2, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !3, line: 132, column: 2)
!518 = !DILocation(line: 132, column: 2, scope: !514)
!519 = !DILocation(line: 132, column: 2, scope: !520)
!520 = distinct !DILexicalBlock(scope: !514, file: !3, line: 132, column: 2)
!521 = !DILocation(line: 133, column: 7, scope: !522)
!522 = distinct !DILexicalBlock(scope: !520, file: !3, line: 133, column: 7)
!523 = !DILocation(line: 133, column: 14, scope: !522)
!524 = !DILocation(line: 133, column: 7, scope: !520)
!525 = !DILocation(line: 134, column: 4, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !3, line: 133, column: 20)
!527 = !DILocation(line: 135, column: 4, scope: !526)
!528 = !DILocation(line: 135, column: 11, scope: !526)
!529 = !DILocation(line: 135, column: 16, scope: !526)
!530 = !DILocation(line: 136, column: 8, scope: !531)
!531 = distinct !DILexicalBlock(scope: !526, file: !3, line: 136, column: 8)
!532 = !DILocation(line: 136, column: 15, scope: !531)
!533 = !DILocation(line: 136, column: 8, scope: !526)
!534 = !DILocation(line: 137, column: 9, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 137, column: 9)
!536 = distinct !DILexicalBlock(scope: !531, file: !3, line: 136, column: 22)
!537 = !DILocation(line: 137, column: 16, scope: !535)
!538 = !DILocation(line: 137, column: 9, scope: !536)
!539 = !DILocation(line: 138, column: 14, scope: !540)
!540 = distinct !DILexicalBlock(scope: !535, file: !3, line: 137, column: 23)
!541 = !DILocation(line: 138, column: 21, scope: !540)
!542 = !DILocation(line: 138, column: 6, scope: !540)
!543 = !DILocation(line: 139, column: 6, scope: !540)
!544 = !DILocation(line: 139, column: 13, scope: !540)
!545 = !DILocation(line: 139, column: 19, scope: !540)
!546 = !DILocation(line: 140, column: 5, scope: !540)
!547 = !DILocation(line: 141, column: 26, scope: !548)
!548 = distinct !DILexicalBlock(scope: !535, file: !3, line: 140, column: 12)
!549 = !DILocation(line: 141, column: 33, scope: !548)
!550 = !DILocation(line: 142, column: 12, scope: !548)
!551 = !DILocation(line: 142, column: 19, scope: !548)
!552 = !DILocation(line: 141, column: 6, scope: !548)
!553 = !DILocation(line: 144, column: 5, scope: !536)
!554 = !DILocation(line: 144, column: 12, scope: !536)
!555 = !DILocation(line: 144, column: 18, scope: !536)
!556 = !DILocation(line: 145, column: 4, scope: !536)
!557 = !DILocation(line: 146, column: 3, scope: !526)
!558 = !DILocalVariable(name: "__mptr", scope: !559, file: !3, line: 132, type: !21)
!559 = distinct !DILexicalBlock(scope: !520, file: !3, line: 132, column: 2)
!560 = !DILocation(line: 132, column: 2, scope: !559)
!561 = !DILocation(line: 132, column: 2, scope: !562)
!562 = distinct !DILexicalBlock(scope: !559, file: !3, line: 132, column: 2)
!563 = distinct !{!563, !518, !564}
!564 = !DILocation(line: 146, column: 3, scope: !514)
!565 = !DILocation(line: 147, column: 1, scope: !507)
!566 = distinct !DISubprogram(name: "suspend_nvs_alloc", scope: !3, file: !3, line: 152, type: !567, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!567 = !DISubroutineType(types: !568)
!568 = !{!61}
!569 = !DILocalVariable(name: "entry", scope: !566, file: !3, line: 154, type: !36)
!570 = !DILocation(line: 154, column: 19, scope: !566)
!571 = !DILocalVariable(name: "__mptr", scope: !572, file: !3, line: 156, type: !21)
!572 = distinct !DILexicalBlock(scope: !573, file: !3, line: 156, column: 2)
!573 = distinct !DILexicalBlock(scope: !566, file: !3, line: 156, column: 2)
!574 = !DILocation(line: 156, column: 2, scope: !572)
!575 = !DILocation(line: 156, column: 2, scope: !576)
!576 = distinct !DILexicalBlock(scope: !572, file: !3, line: 156, column: 2)
!577 = !DILocation(line: 156, column: 2, scope: !573)
!578 = !DILocation(line: 156, column: 2, scope: !579)
!579 = distinct !DILexicalBlock(scope: !573, file: !3, line: 156, column: 2)
!580 = !DILocation(line: 157, column: 25, scope: !581)
!581 = distinct !DILexicalBlock(scope: !579, file: !3, line: 156, column: 46)
!582 = !DILocation(line: 157, column: 17, scope: !581)
!583 = !DILocation(line: 157, column: 3, scope: !581)
!584 = !DILocation(line: 157, column: 10, scope: !581)
!585 = !DILocation(line: 157, column: 15, scope: !581)
!586 = !DILocation(line: 158, column: 8, scope: !587)
!587 = distinct !DILexicalBlock(scope: !581, file: !3, line: 158, column: 7)
!588 = !DILocation(line: 158, column: 15, scope: !587)
!589 = !DILocation(line: 158, column: 7, scope: !581)
!590 = !DILocation(line: 159, column: 4, scope: !591)
!591 = distinct !DILexicalBlock(scope: !587, file: !3, line: 158, column: 21)
!592 = !DILocation(line: 160, column: 4, scope: !591)
!593 = !DILocation(line: 162, column: 2, scope: !581)
!594 = !DILocalVariable(name: "__mptr", scope: !595, file: !3, line: 156, type: !21)
!595 = distinct !DILexicalBlock(scope: !579, file: !3, line: 156, column: 2)
!596 = !DILocation(line: 156, column: 2, scope: !595)
!597 = !DILocation(line: 156, column: 2, scope: !598)
!598 = distinct !DILexicalBlock(scope: !595, file: !3, line: 156, column: 2)
!599 = distinct !{!599, !577, !600}
!600 = !DILocation(line: 162, column: 2, scope: !573)
!601 = !DILocation(line: 163, column: 2, scope: !566)
!602 = !DILocation(line: 164, column: 1, scope: !566)
!603 = distinct !DISubprogram(name: "suspend_nvs_save", scope: !3, file: !3, line: 169, type: !567, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!604 = !DILocalVariable(name: "entry", scope: !603, file: !3, line: 171, type: !36)
!605 = !DILocation(line: 171, column: 19, scope: !603)
!606 = !DILocation(line: 173, column: 2, scope: !603)
!607 = !DILocalVariable(name: "__mptr", scope: !608, file: !3, line: 175, type: !21)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 175, column: 2)
!609 = distinct !DILexicalBlock(scope: !603, file: !3, line: 175, column: 2)
!610 = !DILocation(line: 175, column: 2, scope: !608)
!611 = !DILocation(line: 175, column: 2, scope: !612)
!612 = distinct !DILexicalBlock(scope: !608, file: !3, line: 175, column: 2)
!613 = !DILocation(line: 175, column: 2, scope: !609)
!614 = !DILocation(line: 175, column: 2, scope: !615)
!615 = distinct !DILexicalBlock(scope: !609, file: !3, line: 175, column: 2)
!616 = !DILocation(line: 176, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !615, file: !3, line: 176, column: 7)
!618 = !DILocation(line: 176, column: 14, scope: !617)
!619 = !DILocation(line: 176, column: 7, scope: !615)
!620 = !DILocalVariable(name: "phys", scope: !621, file: !3, line: 177, type: !40)
!621 = distinct !DILexicalBlock(scope: !617, file: !3, line: 176, column: 20)
!622 = !DILocation(line: 177, column: 18, scope: !621)
!623 = !DILocation(line: 177, column: 25, scope: !621)
!624 = !DILocation(line: 177, column: 32, scope: !621)
!625 = !DILocalVariable(name: "size", scope: !621, file: !3, line: 178, type: !7)
!626 = !DILocation(line: 178, column: 17, scope: !621)
!627 = !DILocation(line: 178, column: 24, scope: !621)
!628 = !DILocation(line: 178, column: 31, scope: !621)
!629 = !DILocation(line: 180, column: 37, scope: !621)
!630 = !DILocation(line: 180, column: 43, scope: !621)
!631 = !DILocation(line: 180, column: 19, scope: !621)
!632 = !DILocation(line: 180, column: 4, scope: !621)
!633 = !DILocation(line: 180, column: 11, scope: !621)
!634 = !DILocation(line: 180, column: 17, scope: !621)
!635 = !DILocation(line: 181, column: 9, scope: !636)
!636 = distinct !DILexicalBlock(scope: !621, file: !3, line: 181, column: 8)
!637 = !DILocation(line: 181, column: 16, scope: !636)
!638 = !DILocation(line: 181, column: 8, scope: !621)
!639 = !DILocation(line: 182, column: 36, scope: !640)
!640 = distinct !DILexicalBlock(scope: !636, file: !3, line: 181, column: 23)
!641 = !DILocation(line: 182, column: 42, scope: !640)
!642 = !DILocation(line: 182, column: 20, scope: !640)
!643 = !DILocation(line: 182, column: 5, scope: !640)
!644 = !DILocation(line: 182, column: 12, scope: !640)
!645 = !DILocation(line: 182, column: 18, scope: !640)
!646 = !DILocation(line: 183, column: 22, scope: !640)
!647 = !DILocation(line: 183, column: 29, scope: !640)
!648 = !DILocation(line: 183, column: 21, scope: !640)
!649 = !DILocation(line: 183, column: 20, scope: !640)
!650 = !DILocation(line: 183, column: 5, scope: !640)
!651 = !DILocation(line: 183, column: 12, scope: !640)
!652 = !DILocation(line: 183, column: 18, scope: !640)
!653 = !DILocation(line: 184, column: 4, scope: !640)
!654 = !DILocation(line: 185, column: 9, scope: !655)
!655 = distinct !DILexicalBlock(scope: !621, file: !3, line: 185, column: 8)
!656 = !DILocation(line: 185, column: 16, scope: !655)
!657 = !DILocation(line: 185, column: 8, scope: !621)
!658 = !DILocation(line: 186, column: 5, scope: !659)
!659 = distinct !DILexicalBlock(scope: !655, file: !3, line: 185, column: 23)
!660 = !DILocation(line: 187, column: 5, scope: !659)
!661 = !DILocation(line: 189, column: 11, scope: !621)
!662 = !DILocation(line: 189, column: 18, scope: !621)
!663 = !DILocation(line: 189, column: 24, scope: !621)
!664 = !DILocation(line: 189, column: 31, scope: !621)
!665 = !DILocation(line: 189, column: 38, scope: !621)
!666 = !DILocation(line: 189, column: 45, scope: !621)
!667 = !DILocation(line: 189, column: 4, scope: !621)
!668 = !DILocation(line: 190, column: 3, scope: !621)
!669 = !DILocalVariable(name: "__mptr", scope: !670, file: !3, line: 175, type: !21)
!670 = distinct !DILexicalBlock(scope: !615, file: !3, line: 175, column: 2)
!671 = !DILocation(line: 175, column: 2, scope: !670)
!672 = !DILocation(line: 175, column: 2, scope: !673)
!673 = distinct !DILexicalBlock(scope: !670, file: !3, line: 175, column: 2)
!674 = distinct !{!674, !613, !675}
!675 = !DILocation(line: 190, column: 3, scope: !609)
!676 = !DILocation(line: 192, column: 2, scope: !603)
!677 = !DILocation(line: 193, column: 1, scope: !603)
!678 = distinct !DISubprogram(name: "acpi_os_ioremap", scope: !679, file: !679, line: 10, type: !680, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!679 = !DIFile(filename: "./include/acpi/acpi_io.h", directory: "/home/lizy2001/genbc/linux")
!680 = !DISubroutineType(types: !681)
!681 = !{!21, !682, !686}
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !683, line: 129, baseType: !684)
!683 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !685, line: 23, baseType: !26)
!685 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !683, line: 127, baseType: !684)
!687 = !DILocalVariable(name: "phys", arg: 1, scope: !678, file: !679, line: 10, type: !682)
!688 = !DILocation(line: 10, column: 67, scope: !678)
!689 = !DILocalVariable(name: "size", arg: 2, scope: !678, file: !679, line: 11, type: !686)
!690 = !DILocation(line: 11, column: 20, scope: !678)
!691 = !DILocation(line: 13, column: 29, scope: !678)
!692 = !DILocation(line: 13, column: 35, scope: !678)
!693 = !DILocation(line: 13, column: 15, scope: !678)
!694 = !DILocation(line: 13, column: 8, scope: !678)
!695 = distinct !DISubprogram(name: "suspend_nvs_restore", scope: !3, file: !3, line: 201, type: !508, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!696 = !DILocalVariable(name: "entry", scope: !695, file: !3, line: 203, type: !36)
!697 = !DILocation(line: 203, column: 19, scope: !695)
!698 = !DILocation(line: 205, column: 2, scope: !695)
!699 = !DILocalVariable(name: "__mptr", scope: !700, file: !3, line: 207, type: !21)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 207, column: 2)
!701 = distinct !DILexicalBlock(scope: !695, file: !3, line: 207, column: 2)
!702 = !DILocation(line: 207, column: 2, scope: !700)
!703 = !DILocation(line: 207, column: 2, scope: !704)
!704 = distinct !DILexicalBlock(scope: !700, file: !3, line: 207, column: 2)
!705 = !DILocation(line: 207, column: 2, scope: !701)
!706 = !DILocation(line: 207, column: 2, scope: !707)
!707 = distinct !DILexicalBlock(scope: !701, file: !3, line: 207, column: 2)
!708 = !DILocation(line: 208, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !707, file: !3, line: 208, column: 7)
!710 = !DILocation(line: 208, column: 14, scope: !709)
!711 = !DILocation(line: 208, column: 7, scope: !707)
!712 = !DILocation(line: 209, column: 11, scope: !709)
!713 = !DILocation(line: 209, column: 18, scope: !709)
!714 = !DILocation(line: 209, column: 25, scope: !709)
!715 = !DILocation(line: 209, column: 32, scope: !709)
!716 = !DILocation(line: 209, column: 38, scope: !709)
!717 = !DILocation(line: 209, column: 45, scope: !709)
!718 = !DILocation(line: 209, column: 4, scope: !709)
!719 = !DILocalVariable(name: "__mptr", scope: !720, file: !3, line: 207, type: !21)
!720 = distinct !DILexicalBlock(scope: !707, file: !3, line: 207, column: 2)
!721 = !DILocation(line: 207, column: 2, scope: !720)
!722 = !DILocation(line: 207, column: 2, scope: !723)
!723 = distinct !DILexicalBlock(scope: !720, file: !3, line: 207, column: 2)
!724 = distinct !{!724, !705, !725}
!725 = !DILocation(line: 209, column: 49, scope: !701)
!726 = !DILocation(line: 210, column: 1, scope: !695)
!727 = distinct !DISubprogram(name: "get_order", scope: !728, file: !728, line: 29, type: !729, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!728 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!729 = !DISubroutineType(types: !730)
!730 = !{!61, !40}
!731 = !DILocalVariable(name: "x", arg: 1, scope: !732, file: !733, line: 366, type: !26)
!732 = distinct !DISubprogram(name: "fls64", scope: !733, file: !733, line: 366, type: !734, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!733 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!734 = !DISubroutineType(types: !735)
!735 = !{!61, !26}
!736 = !DILocation(line: 366, column: 40, scope: !732, inlinedAt: !737)
!737 = distinct !DILocation(line: 46, column: 9, scope: !727)
!738 = !DILocalVariable(name: "bitpos", scope: !732, file: !733, line: 368, type: !61)
!739 = !DILocation(line: 368, column: 6, scope: !732, inlinedAt: !737)
!740 = !DILocalVariable(name: "size", arg: 1, scope: !727, file: !728, line: 29, type: !40)
!741 = !DILocation(line: 29, column: 63, scope: !727)
!742 = !DILocation(line: 31, column: 27, scope: !743)
!743 = distinct !DILexicalBlock(scope: !727, file: !728, line: 31, column: 6)
!744 = !DILocation(line: 31, column: 6, scope: !743)
!745 = !DILocation(line: 31, column: 6, scope: !727)
!746 = !DILocation(line: 32, column: 8, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !728, line: 32, column: 7)
!748 = distinct !DILexicalBlock(scope: !743, file: !728, line: 31, column: 34)
!749 = !DILocation(line: 32, column: 7, scope: !748)
!750 = !DILocation(line: 33, column: 4, scope: !747)
!751 = !DILocation(line: 35, column: 7, scope: !752)
!752 = distinct !DILexicalBlock(scope: !748, file: !728, line: 35, column: 7)
!753 = !DILocation(line: 35, column: 12, scope: !752)
!754 = !DILocation(line: 35, column: 7, scope: !748)
!755 = !DILocation(line: 36, column: 4, scope: !752)
!756 = !DILocation(line: 38, column: 10, scope: !748)
!757 = !DILocation(line: 38, column: 28, scope: !748)
!758 = !DILocation(line: 38, column: 41, scope: !748)
!759 = !DILocation(line: 38, column: 3, scope: !748)
!760 = !DILocation(line: 41, column: 6, scope: !727)
!761 = !DILocation(line: 42, column: 7, scope: !727)
!762 = !DILocation(line: 46, column: 15, scope: !727)
!763 = !DILocation(line: 374, column: 2, scope: !732, inlinedAt: !737)
!764 = !DILocation(line: 376, column: 14, scope: !732, inlinedAt: !737)
!765 = !{i32 272565}
!766 = !DILocation(line: 377, column: 9, scope: !732, inlinedAt: !737)
!767 = !DILocation(line: 377, column: 16, scope: !732, inlinedAt: !737)
!768 = !DILocation(line: 46, column: 2, scope: !727)
!769 = !DILocation(line: 48, column: 1, scope: !727)
!770 = distinct !DISubprogram(name: "__ilog2_u64", scope: !771, file: !771, line: 30, type: !772, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!771 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!772 = !DISubroutineType(types: !773)
!773 = !{!61, !684}
!774 = !DILocation(line: 366, column: 40, scope: !732, inlinedAt: !775)
!775 = distinct !DILocation(line: 32, column: 9, scope: !770)
!776 = !DILocation(line: 368, column: 6, scope: !732, inlinedAt: !775)
!777 = !DILocalVariable(name: "n", arg: 1, scope: !770, file: !771, line: 30, type: !684)
!778 = !DILocation(line: 30, column: 21, scope: !770)
!779 = !DILocation(line: 32, column: 15, scope: !770)
!780 = !DILocation(line: 374, column: 2, scope: !732, inlinedAt: !775)
!781 = !DILocation(line: 376, column: 14, scope: !732, inlinedAt: !775)
!782 = !DILocation(line: 377, column: 9, scope: !732, inlinedAt: !775)
!783 = !DILocation(line: 377, column: 16, scope: !732, inlinedAt: !775)
!784 = !DILocation(line: 32, column: 18, scope: !770)
!785 = !DILocation(line: 32, column: 2, scope: !770)
!786 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !787, file: !787, line: 137, type: !788, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!787 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!788 = !DISubroutineType(types: !789)
!789 = !{!21, !67, !790, !70, !19}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!792 = !DILocalVariable(name: "s", arg: 1, scope: !786, file: !787, line: 137, type: !67)
!793 = !DILocation(line: 137, column: 54, scope: !786)
!794 = !DILocalVariable(name: "object", arg: 2, scope: !786, file: !787, line: 137, type: !790)
!795 = !DILocation(line: 137, column: 69, scope: !786)
!796 = !DILocalVariable(name: "size", arg: 3, scope: !786, file: !787, line: 138, type: !70)
!797 = !DILocation(line: 138, column: 12, scope: !786)
!798 = !DILocalVariable(name: "flags", arg: 4, scope: !786, file: !787, line: 138, type: !19)
!799 = !DILocation(line: 138, column: 24, scope: !786)
!800 = !DILocation(line: 140, column: 17, scope: !786)
!801 = !DILocation(line: 140, column: 2, scope: !786)
!802 = distinct !DISubprogram(name: "__list_add", scope: !362, file: !362, line: 63, type: !803, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !34, !34, !34}
!805 = !DILocalVariable(name: "new", arg: 1, scope: !802, file: !362, line: 63, type: !34)
!806 = !DILocation(line: 63, column: 49, scope: !802)
!807 = !DILocalVariable(name: "prev", arg: 2, scope: !802, file: !362, line: 64, type: !34)
!808 = !DILocation(line: 64, column: 28, scope: !802)
!809 = !DILocalVariable(name: "next", arg: 3, scope: !802, file: !362, line: 65, type: !34)
!810 = !DILocation(line: 65, column: 28, scope: !802)
!811 = !DILocation(line: 67, column: 24, scope: !812)
!812 = distinct !DILexicalBlock(scope: !802, file: !362, line: 67, column: 6)
!813 = !DILocation(line: 67, column: 29, scope: !812)
!814 = !DILocation(line: 67, column: 35, scope: !812)
!815 = !DILocation(line: 67, column: 7, scope: !812)
!816 = !DILocation(line: 67, column: 6, scope: !802)
!817 = !DILocation(line: 68, column: 3, scope: !812)
!818 = !DILocation(line: 70, column: 15, scope: !802)
!819 = !DILocation(line: 70, column: 2, scope: !802)
!820 = !DILocation(line: 70, column: 8, scope: !802)
!821 = !DILocation(line: 70, column: 13, scope: !802)
!822 = !DILocation(line: 71, column: 14, scope: !802)
!823 = !DILocation(line: 71, column: 2, scope: !802)
!824 = !DILocation(line: 71, column: 7, scope: !802)
!825 = !DILocation(line: 71, column: 12, scope: !802)
!826 = !DILocation(line: 72, column: 14, scope: !802)
!827 = !DILocation(line: 72, column: 2, scope: !802)
!828 = !DILocation(line: 72, column: 7, scope: !802)
!829 = !DILocation(line: 72, column: 12, scope: !802)
!830 = !DILocation(line: 73, column: 2, scope: !802)
!831 = !DILocation(line: 73, column: 2, scope: !832)
!832 = distinct !DILexicalBlock(scope: !802, file: !362, line: 73, column: 2)
!833 = !DILocation(line: 73, column: 2, scope: !834)
!834 = distinct !DILexicalBlock(scope: !832, file: !362, line: 73, column: 2)
!835 = !DILocation(line: 73, column: 2, scope: !836)
!836 = distinct !DILexicalBlock(scope: !832, file: !362, line: 73, column: 2)
!837 = !DILocation(line: 74, column: 1, scope: !802)
!838 = distinct !DISubprogram(name: "__list_add_valid", scope: !362, file: !362, line: 45, type: !839, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!839 = !DISubroutineType(types: !840)
!840 = !{!45, !34, !34, !34}
!841 = !DILocalVariable(name: "new", arg: 1, scope: !838, file: !362, line: 45, type: !34)
!842 = !DILocation(line: 45, column: 55, scope: !838)
!843 = !DILocalVariable(name: "prev", arg: 2, scope: !838, file: !362, line: 46, type: !34)
!844 = !DILocation(line: 46, column: 23, scope: !838)
!845 = !DILocalVariable(name: "next", arg: 3, scope: !838, file: !362, line: 47, type: !34)
!846 = !DILocation(line: 47, column: 23, scope: !838)
!847 = !DILocation(line: 49, column: 2, scope: !838)
!848 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 662, type: !79, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!849 = !DILocation(line: 445, column: 72, scope: !64, inlinedAt: !850)
!850 = distinct !DILocation(line: 552, column: 10, scope: !76, inlinedAt: !851)
!851 = distinct !DILocation(line: 664, column: 9, scope: !848)
!852 = !DILocation(line: 446, column: 9, scope: !64, inlinedAt: !850)
!853 = !DILocation(line: 446, column: 23, scope: !64, inlinedAt: !850)
!854 = !DILocation(line: 448, column: 8, scope: !64, inlinedAt: !850)
!855 = !DILocation(line: 318, column: 67, scope: !89, inlinedAt: !856)
!856 = distinct !DILocation(line: 553, column: 20, scope: !76, inlinedAt: !851)
!857 = !DILocation(line: 346, column: 58, scope: !95, inlinedAt: !858)
!858 = distinct !DILocation(line: 547, column: 11, scope: !76, inlinedAt: !851)
!859 = !DILocation(line: 472, column: 28, scope: !101, inlinedAt: !860)
!860 = distinct !DILocation(line: 481, column: 9, scope: !106, inlinedAt: !861)
!861 = distinct !DILocation(line: 545, column: 11, scope: !108, inlinedAt: !851)
!862 = !DILocation(line: 472, column: 40, scope: !101, inlinedAt: !860)
!863 = !DILocation(line: 472, column: 60, scope: !101, inlinedAt: !860)
!864 = !DILocation(line: 478, column: 51, scope: !106, inlinedAt: !861)
!865 = !DILocation(line: 478, column: 63, scope: !106, inlinedAt: !861)
!866 = !DILocation(line: 480, column: 15, scope: !106, inlinedAt: !861)
!867 = !DILocation(line: 538, column: 45, scope: !78, inlinedAt: !851)
!868 = !DILocation(line: 538, column: 57, scope: !78, inlinedAt: !851)
!869 = !DILocation(line: 542, column: 16, scope: !76, inlinedAt: !851)
!870 = !DILocalVariable(name: "size", arg: 1, scope: !848, file: !12, line: 662, type: !70)
!871 = !DILocation(line: 662, column: 36, scope: !848)
!872 = !DILocalVariable(name: "flags", arg: 2, scope: !848, file: !12, line: 662, type: !19)
!873 = !DILocation(line: 662, column: 48, scope: !848)
!874 = !DILocation(line: 664, column: 17, scope: !848)
!875 = !DILocation(line: 664, column: 23, scope: !848)
!876 = !DILocation(line: 664, column: 29, scope: !848)
!877 = !DILocation(line: 540, column: 27, scope: !77, inlinedAt: !851)
!878 = !DILocation(line: 540, column: 6, scope: !77, inlinedAt: !851)
!879 = !DILocation(line: 540, column: 6, scope: !78, inlinedAt: !851)
!880 = !DILocation(line: 544, column: 7, scope: !108, inlinedAt: !851)
!881 = !DILocation(line: 544, column: 12, scope: !108, inlinedAt: !851)
!882 = !DILocation(line: 544, column: 7, scope: !76, inlinedAt: !851)
!883 = !DILocation(line: 545, column: 25, scope: !108, inlinedAt: !851)
!884 = !DILocation(line: 545, column: 31, scope: !108, inlinedAt: !851)
!885 = !DILocation(line: 480, column: 33, scope: !106, inlinedAt: !861)
!886 = !DILocation(line: 480, column: 23, scope: !106, inlinedAt: !861)
!887 = !DILocation(line: 481, column: 29, scope: !106, inlinedAt: !861)
!888 = !DILocation(line: 481, column: 35, scope: !106, inlinedAt: !861)
!889 = !DILocation(line: 481, column: 42, scope: !106, inlinedAt: !861)
!890 = !DILocation(line: 474, column: 23, scope: !101, inlinedAt: !860)
!891 = !DILocation(line: 474, column: 29, scope: !101, inlinedAt: !860)
!892 = !DILocation(line: 474, column: 36, scope: !101, inlinedAt: !860)
!893 = !DILocation(line: 474, column: 9, scope: !101, inlinedAt: !860)
!894 = !DILocation(line: 545, column: 4, scope: !108, inlinedAt: !851)
!895 = !DILocation(line: 547, column: 25, scope: !76, inlinedAt: !851)
!896 = !DILocation(line: 348, column: 7, scope: !151, inlinedAt: !858)
!897 = !DILocation(line: 348, column: 6, scope: !95, inlinedAt: !858)
!898 = !DILocation(line: 349, column: 3, scope: !151, inlinedAt: !858)
!899 = !DILocation(line: 351, column: 6, scope: !155, inlinedAt: !858)
!900 = !DILocation(line: 351, column: 11, scope: !155, inlinedAt: !858)
!901 = !DILocation(line: 351, column: 6, scope: !95, inlinedAt: !858)
!902 = !DILocation(line: 352, column: 3, scope: !155, inlinedAt: !858)
!903 = !DILocation(line: 354, column: 32, scope: !160, inlinedAt: !858)
!904 = !DILocation(line: 354, column: 37, scope: !160, inlinedAt: !858)
!905 = !DILocation(line: 354, column: 42, scope: !160, inlinedAt: !858)
!906 = !DILocation(line: 354, column: 45, scope: !160, inlinedAt: !858)
!907 = !DILocation(line: 354, column: 50, scope: !160, inlinedAt: !858)
!908 = !DILocation(line: 354, column: 6, scope: !95, inlinedAt: !858)
!909 = !DILocation(line: 355, column: 3, scope: !160, inlinedAt: !858)
!910 = !DILocation(line: 356, column: 32, scope: !168, inlinedAt: !858)
!911 = !DILocation(line: 356, column: 37, scope: !168, inlinedAt: !858)
!912 = !DILocation(line: 356, column: 43, scope: !168, inlinedAt: !858)
!913 = !DILocation(line: 356, column: 46, scope: !168, inlinedAt: !858)
!914 = !DILocation(line: 356, column: 51, scope: !168, inlinedAt: !858)
!915 = !DILocation(line: 356, column: 6, scope: !95, inlinedAt: !858)
!916 = !DILocation(line: 357, column: 3, scope: !168, inlinedAt: !858)
!917 = !DILocation(line: 358, column: 6, scope: !176, inlinedAt: !858)
!918 = !DILocation(line: 358, column: 11, scope: !176, inlinedAt: !858)
!919 = !DILocation(line: 358, column: 6, scope: !95, inlinedAt: !858)
!920 = !DILocation(line: 358, column: 26, scope: !176, inlinedAt: !858)
!921 = !DILocation(line: 359, column: 6, scope: !181, inlinedAt: !858)
!922 = !DILocation(line: 359, column: 11, scope: !181, inlinedAt: !858)
!923 = !DILocation(line: 359, column: 6, scope: !95, inlinedAt: !858)
!924 = !DILocation(line: 359, column: 26, scope: !181, inlinedAt: !858)
!925 = !DILocation(line: 360, column: 6, scope: !186, inlinedAt: !858)
!926 = !DILocation(line: 360, column: 11, scope: !186, inlinedAt: !858)
!927 = !DILocation(line: 360, column: 6, scope: !95, inlinedAt: !858)
!928 = !DILocation(line: 360, column: 26, scope: !186, inlinedAt: !858)
!929 = !DILocation(line: 361, column: 6, scope: !191, inlinedAt: !858)
!930 = !DILocation(line: 361, column: 11, scope: !191, inlinedAt: !858)
!931 = !DILocation(line: 361, column: 6, scope: !95, inlinedAt: !858)
!932 = !DILocation(line: 361, column: 26, scope: !191, inlinedAt: !858)
!933 = !DILocation(line: 362, column: 6, scope: !196, inlinedAt: !858)
!934 = !DILocation(line: 362, column: 11, scope: !196, inlinedAt: !858)
!935 = !DILocation(line: 362, column: 6, scope: !95, inlinedAt: !858)
!936 = !DILocation(line: 362, column: 26, scope: !196, inlinedAt: !858)
!937 = !DILocation(line: 363, column: 6, scope: !201, inlinedAt: !858)
!938 = !DILocation(line: 363, column: 11, scope: !201, inlinedAt: !858)
!939 = !DILocation(line: 363, column: 6, scope: !95, inlinedAt: !858)
!940 = !DILocation(line: 363, column: 26, scope: !201, inlinedAt: !858)
!941 = !DILocation(line: 364, column: 6, scope: !206, inlinedAt: !858)
!942 = !DILocation(line: 364, column: 11, scope: !206, inlinedAt: !858)
!943 = !DILocation(line: 364, column: 6, scope: !95, inlinedAt: !858)
!944 = !DILocation(line: 364, column: 26, scope: !206, inlinedAt: !858)
!945 = !DILocation(line: 365, column: 6, scope: !211, inlinedAt: !858)
!946 = !DILocation(line: 365, column: 11, scope: !211, inlinedAt: !858)
!947 = !DILocation(line: 365, column: 6, scope: !95, inlinedAt: !858)
!948 = !DILocation(line: 365, column: 26, scope: !211, inlinedAt: !858)
!949 = !DILocation(line: 366, column: 6, scope: !216, inlinedAt: !858)
!950 = !DILocation(line: 366, column: 11, scope: !216, inlinedAt: !858)
!951 = !DILocation(line: 366, column: 6, scope: !95, inlinedAt: !858)
!952 = !DILocation(line: 366, column: 26, scope: !216, inlinedAt: !858)
!953 = !DILocation(line: 367, column: 6, scope: !221, inlinedAt: !858)
!954 = !DILocation(line: 367, column: 11, scope: !221, inlinedAt: !858)
!955 = !DILocation(line: 367, column: 6, scope: !95, inlinedAt: !858)
!956 = !DILocation(line: 367, column: 26, scope: !221, inlinedAt: !858)
!957 = !DILocation(line: 368, column: 6, scope: !226, inlinedAt: !858)
!958 = !DILocation(line: 368, column: 11, scope: !226, inlinedAt: !858)
!959 = !DILocation(line: 368, column: 6, scope: !95, inlinedAt: !858)
!960 = !DILocation(line: 368, column: 26, scope: !226, inlinedAt: !858)
!961 = !DILocation(line: 369, column: 6, scope: !231, inlinedAt: !858)
!962 = !DILocation(line: 369, column: 11, scope: !231, inlinedAt: !858)
!963 = !DILocation(line: 369, column: 6, scope: !95, inlinedAt: !858)
!964 = !DILocation(line: 369, column: 26, scope: !231, inlinedAt: !858)
!965 = !DILocation(line: 370, column: 6, scope: !236, inlinedAt: !858)
!966 = !DILocation(line: 370, column: 11, scope: !236, inlinedAt: !858)
!967 = !DILocation(line: 370, column: 6, scope: !95, inlinedAt: !858)
!968 = !DILocation(line: 370, column: 26, scope: !236, inlinedAt: !858)
!969 = !DILocation(line: 371, column: 6, scope: !241, inlinedAt: !858)
!970 = !DILocation(line: 371, column: 11, scope: !241, inlinedAt: !858)
!971 = !DILocation(line: 371, column: 6, scope: !95, inlinedAt: !858)
!972 = !DILocation(line: 371, column: 26, scope: !241, inlinedAt: !858)
!973 = !DILocation(line: 372, column: 6, scope: !246, inlinedAt: !858)
!974 = !DILocation(line: 372, column: 11, scope: !246, inlinedAt: !858)
!975 = !DILocation(line: 372, column: 6, scope: !95, inlinedAt: !858)
!976 = !DILocation(line: 372, column: 26, scope: !246, inlinedAt: !858)
!977 = !DILocation(line: 373, column: 6, scope: !251, inlinedAt: !858)
!978 = !DILocation(line: 373, column: 11, scope: !251, inlinedAt: !858)
!979 = !DILocation(line: 373, column: 6, scope: !95, inlinedAt: !858)
!980 = !DILocation(line: 373, column: 26, scope: !251, inlinedAt: !858)
!981 = !DILocation(line: 374, column: 6, scope: !256, inlinedAt: !858)
!982 = !DILocation(line: 374, column: 11, scope: !256, inlinedAt: !858)
!983 = !DILocation(line: 374, column: 6, scope: !95, inlinedAt: !858)
!984 = !DILocation(line: 374, column: 26, scope: !256, inlinedAt: !858)
!985 = !DILocation(line: 375, column: 6, scope: !261, inlinedAt: !858)
!986 = !DILocation(line: 375, column: 11, scope: !261, inlinedAt: !858)
!987 = !DILocation(line: 375, column: 6, scope: !95, inlinedAt: !858)
!988 = !DILocation(line: 375, column: 27, scope: !261, inlinedAt: !858)
!989 = !DILocation(line: 376, column: 6, scope: !266, inlinedAt: !858)
!990 = !DILocation(line: 376, column: 11, scope: !266, inlinedAt: !858)
!991 = !DILocation(line: 376, column: 6, scope: !95, inlinedAt: !858)
!992 = !DILocation(line: 376, column: 32, scope: !266, inlinedAt: !858)
!993 = !DILocation(line: 377, column: 6, scope: !271, inlinedAt: !858)
!994 = !DILocation(line: 377, column: 11, scope: !271, inlinedAt: !858)
!995 = !DILocation(line: 377, column: 6, scope: !95, inlinedAt: !858)
!996 = !DILocation(line: 377, column: 32, scope: !271, inlinedAt: !858)
!997 = !DILocation(line: 378, column: 6, scope: !276, inlinedAt: !858)
!998 = !DILocation(line: 378, column: 11, scope: !276, inlinedAt: !858)
!999 = !DILocation(line: 378, column: 6, scope: !95, inlinedAt: !858)
!1000 = !DILocation(line: 378, column: 32, scope: !276, inlinedAt: !858)
!1001 = !DILocation(line: 379, column: 6, scope: !281, inlinedAt: !858)
!1002 = !DILocation(line: 379, column: 11, scope: !281, inlinedAt: !858)
!1003 = !DILocation(line: 379, column: 6, scope: !95, inlinedAt: !858)
!1004 = !DILocation(line: 379, column: 33, scope: !281, inlinedAt: !858)
!1005 = !DILocation(line: 380, column: 6, scope: !286, inlinedAt: !858)
!1006 = !DILocation(line: 380, column: 11, scope: !286, inlinedAt: !858)
!1007 = !DILocation(line: 380, column: 6, scope: !95, inlinedAt: !858)
!1008 = !DILocation(line: 380, column: 33, scope: !286, inlinedAt: !858)
!1009 = !DILocation(line: 381, column: 6, scope: !291, inlinedAt: !858)
!1010 = !DILocation(line: 381, column: 11, scope: !291, inlinedAt: !858)
!1011 = !DILocation(line: 381, column: 6, scope: !95, inlinedAt: !858)
!1012 = !DILocation(line: 381, column: 33, scope: !291, inlinedAt: !858)
!1013 = !DILocation(line: 382, column: 2, scope: !296, inlinedAt: !858)
!1014 = !DILocation(line: 382, column: 2, scope: !300, inlinedAt: !858)
!1015 = !DILocation(line: 382, column: 2, scope: !301, inlinedAt: !858)
!1016 = !DILocation(line: 386, column: 1, scope: !95, inlinedAt: !858)
!1017 = !DILocation(line: 547, column: 9, scope: !76, inlinedAt: !851)
!1018 = !DILocation(line: 549, column: 8, scope: !307, inlinedAt: !851)
!1019 = !DILocation(line: 549, column: 7, scope: !76, inlinedAt: !851)
!1020 = !DILocation(line: 550, column: 4, scope: !307, inlinedAt: !851)
!1021 = !DILocation(line: 553, column: 33, scope: !76, inlinedAt: !851)
!1022 = !DILocation(line: 325, column: 6, scope: !312, inlinedAt: !856)
!1023 = !DILocation(line: 325, column: 6, scope: !89, inlinedAt: !856)
!1024 = !DILocation(line: 326, column: 3, scope: !312, inlinedAt: !856)
!1025 = !DILocation(line: 332, column: 9, scope: !89, inlinedAt: !856)
!1026 = !DILocation(line: 332, column: 15, scope: !89, inlinedAt: !856)
!1027 = !DILocation(line: 332, column: 2, scope: !89, inlinedAt: !856)
!1028 = !DILocation(line: 336, column: 1, scope: !89, inlinedAt: !856)
!1029 = !DILocation(line: 553, column: 5, scope: !76, inlinedAt: !851)
!1030 = !DILocation(line: 553, column: 41, scope: !76, inlinedAt: !851)
!1031 = !DILocation(line: 554, column: 5, scope: !76, inlinedAt: !851)
!1032 = !DILocation(line: 554, column: 12, scope: !76, inlinedAt: !851)
!1033 = !DILocation(line: 448, column: 31, scope: !64, inlinedAt: !850)
!1034 = !DILocation(line: 448, column: 34, scope: !64, inlinedAt: !850)
!1035 = !DILocation(line: 448, column: 14, scope: !64, inlinedAt: !850)
!1036 = !DILocation(line: 450, column: 22, scope: !64, inlinedAt: !850)
!1037 = !DILocation(line: 450, column: 25, scope: !64, inlinedAt: !850)
!1038 = !DILocation(line: 450, column: 30, scope: !64, inlinedAt: !850)
!1039 = !DILocation(line: 450, column: 36, scope: !64, inlinedAt: !850)
!1040 = !DILocation(line: 450, column: 8, scope: !64, inlinedAt: !850)
!1041 = !DILocation(line: 450, column: 6, scope: !64, inlinedAt: !850)
!1042 = !DILocation(line: 451, column: 9, scope: !64, inlinedAt: !850)
!1043 = !DILocation(line: 552, column: 3, scope: !76, inlinedAt: !851)
!1044 = !DILocation(line: 557, column: 19, scope: !78, inlinedAt: !851)
!1045 = !DILocation(line: 557, column: 25, scope: !78, inlinedAt: !851)
!1046 = !DILocation(line: 557, column: 9, scope: !78, inlinedAt: !851)
!1047 = !DILocation(line: 557, column: 2, scope: !78, inlinedAt: !851)
!1048 = !DILocation(line: 558, column: 1, scope: !78, inlinedAt: !851)
!1049 = !DILocation(line: 664, column: 2, scope: !848)
!1050 = distinct !DISubprogram(name: "list_del", scope: !362, file: !362, line: 144, type: !1051, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !34}
!1053 = !DILocalVariable(name: "entry", arg: 1, scope: !1050, file: !362, line: 144, type: !34)
!1054 = !DILocation(line: 144, column: 47, scope: !1050)
!1055 = !DILocation(line: 146, column: 19, scope: !1050)
!1056 = !DILocation(line: 146, column: 2, scope: !1050)
!1057 = !DILocation(line: 147, column: 2, scope: !1050)
!1058 = !DILocation(line: 147, column: 9, scope: !1050)
!1059 = !DILocation(line: 147, column: 14, scope: !1050)
!1060 = !DILocation(line: 148, column: 2, scope: !1050)
!1061 = !DILocation(line: 148, column: 9, scope: !1050)
!1062 = !DILocation(line: 148, column: 14, scope: !1050)
!1063 = !DILocation(line: 149, column: 1, scope: !1050)
!1064 = distinct !DISubprogram(name: "__list_del_entry", scope: !362, file: !362, line: 130, type: !1051, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!1065 = !DILocalVariable(name: "entry", arg: 1, scope: !1064, file: !362, line: 130, type: !34)
!1066 = !DILocation(line: 130, column: 55, scope: !1064)
!1067 = !DILocation(line: 132, column: 30, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !362, line: 132, column: 6)
!1069 = !DILocation(line: 132, column: 7, scope: !1068)
!1070 = !DILocation(line: 132, column: 6, scope: !1064)
!1071 = !DILocation(line: 133, column: 3, scope: !1068)
!1072 = !DILocation(line: 135, column: 13, scope: !1064)
!1073 = !DILocation(line: 135, column: 20, scope: !1064)
!1074 = !DILocation(line: 135, column: 26, scope: !1064)
!1075 = !DILocation(line: 135, column: 33, scope: !1064)
!1076 = !DILocation(line: 135, column: 2, scope: !1064)
!1077 = !DILocation(line: 136, column: 1, scope: !1064)
!1078 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !362, file: !362, line: 51, type: !1079, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!45, !34}
!1081 = !DILocalVariable(name: "entry", arg: 1, scope: !1078, file: !362, line: 51, type: !34)
!1082 = !DILocation(line: 51, column: 61, scope: !1078)
!1083 = !DILocation(line: 53, column: 2, scope: !1078)
!1084 = distinct !DISubprogram(name: "__list_del", scope: !362, file: !362, line: 110, type: !363, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!1085 = !DILocalVariable(name: "prev", arg: 1, scope: !1084, file: !362, line: 110, type: !34)
!1086 = !DILocation(line: 110, column: 50, scope: !1084)
!1087 = !DILocalVariable(name: "next", arg: 2, scope: !1084, file: !362, line: 110, type: !34)
!1088 = !DILocation(line: 110, column: 75, scope: !1084)
!1089 = !DILocation(line: 112, column: 15, scope: !1084)
!1090 = !DILocation(line: 112, column: 2, scope: !1084)
!1091 = !DILocation(line: 112, column: 8, scope: !1084)
!1092 = !DILocation(line: 112, column: 13, scope: !1084)
!1093 = !DILocation(line: 113, column: 2, scope: !1084)
!1094 = !DILocation(line: 113, column: 2, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1084, file: !362, line: 113, column: 2)
!1096 = !DILocation(line: 113, column: 2, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1095, file: !362, line: 113, column: 2)
!1098 = !DILocation(line: 113, column: 2, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !362, line: 113, column: 2)
!1100 = !DILocation(line: 114, column: 1, scope: !1084)
