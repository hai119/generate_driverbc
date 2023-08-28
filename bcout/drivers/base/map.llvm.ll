; ModuleID = '../bcout/drivers/base/map.llvm.bc'
source_filename = "drivers/base/map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.kobj_map = type { [255 x %struct.probe*], %struct.mutex* }
%struct.probe = type { %struct.probe*, i32, i64, %struct.module*, %struct.kobject* (i32, i32*, i8*)*, i32 (i32, i8*)*, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.1, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.1 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }

@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @kobj_map(%struct.kobj_map* %domain, i32 %dev, i64 %range, %struct.module* %module, %struct.kobject* (i32, i32*, i8*)* %probe, i32 (i32, i8*)* %lock, i8* %data) #0 !dbg !31 {
entry:
  %retval = alloca i32, align 4
  %domain.addr = alloca %struct.kobj_map*, align 8
  %dev.addr = alloca i32, align 4
  %range.addr = alloca i64, align 8
  %module.addr = alloca %struct.module*, align 8
  %probe.addr = alloca %struct.kobject* (i32, i32*, i8*)*, align 8
  %lock.addr = alloca i32 (i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca %struct.probe*, align 8
  %s = alloca %struct.probe**, align 8
  store %struct.kobj_map* %domain, %struct.kobj_map** %domain.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_map** %domain.addr, metadata !705, metadata !DIExpression()), !dbg !706
  store i32 %dev, i32* %dev.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dev.addr, metadata !707, metadata !DIExpression()), !dbg !708
  store i64 %range, i64* %range.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %range.addr, metadata !709, metadata !DIExpression()), !dbg !710
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !711, metadata !DIExpression()), !dbg !712
  store %struct.kobject* (i32, i32*, i8*)* %probe, %struct.kobject* (i32, i32*, i8*)** %probe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject* (i32, i32*, i8*)** %probe.addr, metadata !713, metadata !DIExpression()), !dbg !714
  store i32 (i32, i8*)* %lock, i32 (i32, i8*)** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %lock.addr, metadata !715, metadata !DIExpression()), !dbg !716
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.declare(metadata i32* %n, metadata !719, metadata !DIExpression()), !dbg !720
  %0 = load i32, i32* %dev.addr, align 4, !dbg !721
  %conv = zext i32 %0 to i64, !dbg !721
  %1 = load i64, i64* %range.addr, align 8, !dbg !721
  %add = add i64 %conv, %1, !dbg !721
  %sub = sub i64 %add, 1, !dbg !721
  %shr = lshr i64 %sub, 20, !dbg !721
  %conv1 = trunc i64 %shr to i32, !dbg !721
  %2 = load i32, i32* %dev.addr, align 4, !dbg !722
  %shr2 = lshr i32 %2, 20, !dbg !722
  %sub3 = sub i32 %conv1, %shr2, !dbg !723
  %add4 = add i32 %sub3, 1, !dbg !724
  store i32 %add4, i32* %n, align 4, !dbg !720
  call void @llvm.dbg.declare(metadata i32* %index, metadata !725, metadata !DIExpression()), !dbg !726
  %3 = load i32, i32* %dev.addr, align 4, !dbg !727
  %shr5 = lshr i32 %3, 20, !dbg !727
  store i32 %shr5, i32* %index, align 4, !dbg !726
  call void @llvm.dbg.declare(metadata i32* %i, metadata !728, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.declare(metadata %struct.probe** %p, metadata !730, metadata !DIExpression()), !dbg !731
  %4 = load i32, i32* %n, align 4, !dbg !732
  %cmp = icmp ugt i32 %4, 255, !dbg !734
  br i1 %cmp, label %if.then, label %if.end, !dbg !735

if.then:                                          ; preds = %entry
  store i32 255, i32* %n, align 4, !dbg !736
  br label %if.end, !dbg !737

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %n, align 4, !dbg !738
  %conv7 = zext i32 %5 to i64, !dbg !738
  %call = call i8* @kmalloc_array(i64 %conv7, i64 56, i32 3264) #6, !dbg !739
  %6 = bitcast i8* %call to %struct.probe*, !dbg !739
  store %struct.probe* %6, %struct.probe** %p, align 8, !dbg !740
  %7 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !741
  %cmp8 = icmp eq %struct.probe* %7, null, !dbg !743
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !744

if.then10:                                        ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !745
  br label %return, !dbg !745

if.end11:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !746
  br label %for.cond, !dbg !748

for.cond:                                         ; preds = %for.inc, %if.end11
  %8 = load i32, i32* %i, align 4, !dbg !749
  %9 = load i32, i32* %n, align 4, !dbg !751
  %cmp12 = icmp ult i32 %8, %9, !dbg !752
  br i1 %cmp12, label %for.body, label %for.end, !dbg !753

for.body:                                         ; preds = %for.cond
  %10 = load %struct.module*, %struct.module** %module.addr, align 8, !dbg !754
  %11 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !756
  %owner = getelementptr inbounds %struct.probe, %struct.probe* %11, i32 0, i32 3, !dbg !757
  store %struct.module* %10, %struct.module** %owner, align 8, !dbg !758
  %12 = load %struct.kobject* (i32, i32*, i8*)*, %struct.kobject* (i32, i32*, i8*)** %probe.addr, align 8, !dbg !759
  %13 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !760
  %get = getelementptr inbounds %struct.probe, %struct.probe* %13, i32 0, i32 4, !dbg !761
  store %struct.kobject* (i32, i32*, i8*)* %12, %struct.kobject* (i32, i32*, i8*)** %get, align 8, !dbg !762
  %14 = load i32 (i32, i8*)*, i32 (i32, i8*)** %lock.addr, align 8, !dbg !763
  %15 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !764
  %lock14 = getelementptr inbounds %struct.probe, %struct.probe* %15, i32 0, i32 5, !dbg !765
  store i32 (i32, i8*)* %14, i32 (i32, i8*)** %lock14, align 8, !dbg !766
  %16 = load i32, i32* %dev.addr, align 4, !dbg !767
  %17 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !768
  %dev15 = getelementptr inbounds %struct.probe, %struct.probe* %17, i32 0, i32 1, !dbg !769
  store i32 %16, i32* %dev15, align 8, !dbg !770
  %18 = load i64, i64* %range.addr, align 8, !dbg !771
  %19 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !772
  %range16 = getelementptr inbounds %struct.probe, %struct.probe* %19, i32 0, i32 2, !dbg !773
  store i64 %18, i64* %range16, align 8, !dbg !774
  %20 = load i8*, i8** %data.addr, align 8, !dbg !775
  %21 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !776
  %data17 = getelementptr inbounds %struct.probe, %struct.probe* %21, i32 0, i32 6, !dbg !777
  store i8* %20, i8** %data17, align 8, !dbg !778
  br label %for.inc, !dbg !779

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !780
  %inc = add i32 %22, 1, !dbg !780
  store i32 %inc, i32* %i, align 4, !dbg !780
  %23 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !781
  %incdec.ptr = getelementptr %struct.probe, %struct.probe* %23, i32 1, !dbg !781
  store %struct.probe* %incdec.ptr, %struct.probe** %p, align 8, !dbg !781
  br label %for.cond, !dbg !782, !llvm.loop !783

for.end:                                          ; preds = %for.cond
  %24 = load %struct.kobj_map*, %struct.kobj_map** %domain.addr, align 8, !dbg !785
  %lock18 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %24, i32 0, i32 1, !dbg !786
  %25 = load %struct.mutex*, %struct.mutex** %lock18, align 8, !dbg !786
  call void @mutex_lock(%struct.mutex* %25) #6, !dbg !787
  store i32 0, i32* %i, align 4, !dbg !788
  %26 = load i32, i32* %n, align 4, !dbg !790
  %27 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !791
  %idx.ext = zext i32 %26 to i64, !dbg !791
  %idx.neg = sub i64 0, %idx.ext, !dbg !791
  %add.ptr = getelementptr %struct.probe, %struct.probe* %27, i64 %idx.neg, !dbg !791
  store %struct.probe* %add.ptr, %struct.probe** %p, align 8, !dbg !791
  br label %for.cond19, !dbg !792

for.cond19:                                       ; preds = %for.inc27, %for.end
  %28 = load i32, i32* %i, align 4, !dbg !793
  %29 = load i32, i32* %n, align 4, !dbg !795
  %cmp20 = icmp ult i32 %28, %29, !dbg !796
  br i1 %cmp20, label %for.body22, label %for.end31, !dbg !797

for.body22:                                       ; preds = %for.cond19
  call void @llvm.dbg.declare(metadata %struct.probe*** %s, metadata !798, metadata !DIExpression()), !dbg !801
  %30 = load %struct.kobj_map*, %struct.kobj_map** %domain.addr, align 8, !dbg !802
  %probes = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %30, i32 0, i32 0, !dbg !803
  %31 = load i32, i32* %index, align 4, !dbg !804
  %rem = urem i32 %31, 255, !dbg !805
  %idxprom = zext i32 %rem to i64, !dbg !802
  %arrayidx = getelementptr [255 x %struct.probe*], [255 x %struct.probe*]* %probes, i64 0, i64 %idxprom, !dbg !802
  store %struct.probe** %arrayidx, %struct.probe*** %s, align 8, !dbg !801
  br label %while.cond, !dbg !806

while.cond:                                       ; preds = %while.body, %for.body22
  %32 = load %struct.probe**, %struct.probe*** %s, align 8, !dbg !807
  %33 = load %struct.probe*, %struct.probe** %32, align 8, !dbg !808
  %tobool = icmp ne %struct.probe* %33, null, !dbg !808
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !809

land.rhs:                                         ; preds = %while.cond
  %34 = load %struct.probe**, %struct.probe*** %s, align 8, !dbg !810
  %35 = load %struct.probe*, %struct.probe** %34, align 8, !dbg !811
  %range23 = getelementptr inbounds %struct.probe, %struct.probe* %35, i32 0, i32 2, !dbg !812
  %36 = load i64, i64* %range23, align 8, !dbg !812
  %37 = load i64, i64* %range.addr, align 8, !dbg !813
  %cmp24 = icmp ult i64 %36, %37, !dbg !814
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %38 = phi i1 [ false, %while.cond ], [ %cmp24, %land.rhs ], !dbg !815
  br i1 %38, label %while.body, label %while.end, !dbg !806

while.body:                                       ; preds = %land.end
  %39 = load %struct.probe**, %struct.probe*** %s, align 8, !dbg !816
  %40 = load %struct.probe*, %struct.probe** %39, align 8, !dbg !817
  %next = getelementptr inbounds %struct.probe, %struct.probe* %40, i32 0, i32 0, !dbg !818
  store %struct.probe** %next, %struct.probe*** %s, align 8, !dbg !819
  br label %while.cond, !dbg !806, !llvm.loop !820

while.end:                                        ; preds = %land.end
  %41 = load %struct.probe**, %struct.probe*** %s, align 8, !dbg !821
  %42 = load %struct.probe*, %struct.probe** %41, align 8, !dbg !822
  %43 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !823
  %next26 = getelementptr inbounds %struct.probe, %struct.probe* %43, i32 0, i32 0, !dbg !824
  store %struct.probe* %42, %struct.probe** %next26, align 8, !dbg !825
  %44 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !826
  %45 = load %struct.probe**, %struct.probe*** %s, align 8, !dbg !827
  store %struct.probe* %44, %struct.probe** %45, align 8, !dbg !828
  br label %for.inc27, !dbg !829

for.inc27:                                        ; preds = %while.end
  %46 = load i32, i32* %i, align 4, !dbg !830
  %inc28 = add i32 %46, 1, !dbg !830
  store i32 %inc28, i32* %i, align 4, !dbg !830
  %47 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !831
  %incdec.ptr29 = getelementptr %struct.probe, %struct.probe* %47, i32 1, !dbg !831
  store %struct.probe* %incdec.ptr29, %struct.probe** %p, align 8, !dbg !831
  %48 = load i32, i32* %index, align 4, !dbg !832
  %inc30 = add i32 %48, 1, !dbg !832
  store i32 %inc30, i32* %index, align 4, !dbg !832
  br label %for.cond19, !dbg !833, !llvm.loop !834

for.end31:                                        ; preds = %for.cond19
  %49 = load %struct.kobj_map*, %struct.kobj_map** %domain.addr, align 8, !dbg !836
  %lock32 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %49, i32 0, i32 1, !dbg !837
  %50 = load %struct.mutex*, %struct.mutex** %lock32, align 8, !dbg !837
  call void @mutex_unlock(%struct.mutex* %50) #6, !dbg !838
  store i32 0, i32* %retval, align 4, !dbg !839
  br label %return, !dbg !839

return:                                           ; preds = %for.end31, %if.then10
  %51 = load i32, i32* %retval, align 4, !dbg !840
  ret i32 %51, !dbg !840
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !841 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !844, metadata !DIExpression()), !dbg !850
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !859, metadata !DIExpression()), !dbg !860
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !861, metadata !DIExpression()), !dbg !862
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !863, metadata !DIExpression()), !dbg !864
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !865, metadata !DIExpression()), !dbg !869
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !871, metadata !DIExpression()), !dbg !875
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !877, metadata !DIExpression()), !dbg !881
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !886, metadata !DIExpression()), !dbg !887
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !888, metadata !DIExpression()), !dbg !889
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !890, metadata !DIExpression()), !dbg !891
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !892, metadata !DIExpression()), !dbg !893
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !894, metadata !DIExpression()), !dbg !895
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !896, metadata !DIExpression()), !dbg !897
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !898, metadata !DIExpression()), !dbg !899
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !900, metadata !DIExpression()), !dbg !901
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !902, metadata !DIExpression()), !dbg !903
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !904, metadata !DIExpression()), !dbg !905
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !906, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !908, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !910, metadata !DIExpression()), !dbg !913
  %0 = load i64, i64* %n.addr, align 8, !dbg !913
  store i64 %0, i64* %__a, align 8, !dbg !913
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !914, metadata !DIExpression()), !dbg !913
  %1 = load i64, i64* %size.addr, align 8, !dbg !913
  store i64 %1, i64* %__b, align 8, !dbg !913
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !915, metadata !DIExpression()), !dbg !913
  store i64* %bytes, i64** %__d, align 8, !dbg !913
  %cmp = icmp eq i64* %__a, %__b, !dbg !913
  %conv = zext i1 %cmp to i32, !dbg !913
  %2 = load i64*, i64** %__d, align 8, !dbg !913
  %cmp1 = icmp eq i64* %__a, %2, !dbg !913
  %conv2 = zext i1 %cmp1 to i32, !dbg !913
  %3 = load i64, i64* %__a, align 8, !dbg !913
  %4 = load i64, i64* %__b, align 8, !dbg !913
  %5 = load i64*, i64** %__d, align 8, !dbg !913
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !913
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !913
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !913
  store i64 %8, i64* %5, align 8, !dbg !913
  %frombool = zext i1 %7 to i8, !dbg !913
  store i8 %frombool, i8* %tmp, align 1, !dbg !913
  %9 = load i8, i8* %tmp, align 1, !dbg !913
  %tobool = trunc i8 %9 to i1, !dbg !913
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #6, !dbg !917
  %lnot = xor i1 %call, true, !dbg !917
  %lnot3 = xor i1 %lnot, true, !dbg !917
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !917
  %conv4 = sext i32 %lnot.ext to i64, !dbg !917
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !917
  br i1 %tobool5, label %if.then, label %if.end, !dbg !918

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !919
  br label %return, !dbg !919

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !920
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !921
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !922

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !923
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !924
  br i1 %13, label %if.then6, label %if.end8, !dbg !925

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !926
  %15 = load i32, i32* %flags.addr, align 4, !dbg !927
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !928
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #7, !dbg !929
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !930

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !931
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !932
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !933

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !934
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !935
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !936
  %call.i.i = call i32 @get_order(i64 %21) #8, !dbg !937
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !895
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !938
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !939
  %24 = load i32, i32* %order.i.i, align 4, !dbg !940
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !941
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !942
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !943
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #9, !dbg !944
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !944
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !944
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !944
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !944
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !945
  br label %kmalloc.exit, !dbg !945

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !946
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !947
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !947
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !949

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !950
  br label %kmalloc_index.exit.i, !dbg !950

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !951
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !953
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !954

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !955
  br label %kmalloc_index.exit.i, !dbg !955

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !956
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !958
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !959

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !960
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !961
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !962

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !963
  br label %kmalloc_index.exit.i, !dbg !963

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !964
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !966
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !967

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !968
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !969
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !970

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !971
  br label %kmalloc_index.exit.i, !dbg !971

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !972
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !974
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !975

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !976
  br label %kmalloc_index.exit.i, !dbg !976

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !977
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !979
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !980

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !981
  br label %kmalloc_index.exit.i, !dbg !981

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !982
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !984
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !985

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !986
  br label %kmalloc_index.exit.i, !dbg !986

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !987
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !989
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !990

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !991
  br label %kmalloc_index.exit.i, !dbg !991

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !992
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !994
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !995

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !996
  br label %kmalloc_index.exit.i, !dbg !996

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !997
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !999
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1000

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1001
  br label %kmalloc_index.exit.i, !dbg !1001

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1002
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !1004
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1005

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1006
  br label %kmalloc_index.exit.i, !dbg !1006

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1007
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !1009
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1010

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1011
  br label %kmalloc_index.exit.i, !dbg !1011

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1012
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !1014
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1015

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1016
  br label %kmalloc_index.exit.i, !dbg !1016

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1017
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !1019
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1020

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1021
  br label %kmalloc_index.exit.i, !dbg !1021

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1022
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !1024
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1025

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1026
  br label %kmalloc_index.exit.i, !dbg !1026

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1027
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !1029
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1030

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1031
  br label %kmalloc_index.exit.i, !dbg !1031

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1032
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !1034
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1035

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1036
  br label %kmalloc_index.exit.i, !dbg !1036

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1037
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !1039
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1040

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1041
  br label %kmalloc_index.exit.i, !dbg !1041

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1042
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !1044
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1045

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1046
  br label %kmalloc_index.exit.i, !dbg !1046

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1047
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !1049
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1050

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1051
  br label %kmalloc_index.exit.i, !dbg !1051

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1052
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !1054
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1055

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1056
  br label %kmalloc_index.exit.i, !dbg !1056

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1057
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !1059
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1060

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1061
  br label %kmalloc_index.exit.i, !dbg !1061

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1062
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !1064
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1065

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1066
  br label %kmalloc_index.exit.i, !dbg !1066

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1067
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !1069
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1070

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1071
  br label %kmalloc_index.exit.i, !dbg !1071

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1072
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !1074
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1075

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1076
  br label %kmalloc_index.exit.i, !dbg !1076

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1077
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !1079
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1080

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1081
  br label %kmalloc_index.exit.i, !dbg !1081

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1082
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !1084
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1085

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1086
  br label %kmalloc_index.exit.i, !dbg !1086

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1087
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !1089
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1090

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1091
  br label %kmalloc_index.exit.i, !dbg !1091

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1092, !srcloc !1095
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #7, !dbg !1096, !srcloc !1099
  unreachable, !dbg !1100

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !1101
  store i32 %59, i32* %index.i, align 4, !dbg !1102
  %60 = load i32, i32* %index.i, align 4, !dbg !1103
  %tobool.i = icmp ne i32 %60, 0, !dbg !1103
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1105

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1106
  br label %kmalloc.exit, !dbg !1106

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !1107
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1108
  %and.i.i = and i32 %62, 17, !dbg !1108
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1108
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1108
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1108
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1108
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1110

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1111
  br label %kmalloc_type.exit.i, !dbg !1111

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1112
  %and2.i.i = and i32 %63, 1, !dbg !1113
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1112
  %64 = zext i1 %tobool3.i.i to i64, !dbg !1112
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1112
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1114
  br label %kmalloc_type.exit.i, !dbg !1114

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !1115
  %idxprom.i = zext i32 %65 to i64, !dbg !1116
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1116
  %66 = load i32, i32* %index.i, align 4, !dbg !1117
  %idxprom6.i = zext i32 %66 to i64, !dbg !1116
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1116
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1116
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !1118
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !1119
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1120
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1121
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #9, !dbg !1122
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1122
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1122
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1122
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1122
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !864
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1123
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !1124
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1125
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1126
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #9, !dbg !1127
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1128
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !1129
  store i8* %76, i8** %retval.i, align 8, !dbg !1130
  br label %kmalloc.exit, !dbg !1130

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !1131
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !1132
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #9, !dbg !1133
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1133
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1133
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1133
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1133
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1134
  br label %kmalloc.exit, !dbg !1134

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !1135
  store i8* %79, i8** %retval, align 8, !dbg !1136
  br label %return, !dbg !1136

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !1137
  %81 = load i32, i32* %flags.addr, align 4, !dbg !1138
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #6, !dbg !1139
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !1139
  %maskedptr = and i64 %ptrint, 7, !dbg !1139
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !1139
  call void @llvm.assume(i1 %maskcond), !dbg !1139
  store i8* %call9, i8** %retval, align 8, !dbg !1140
  br label %return, !dbg !1140

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !1141
  ret i8* %82, !dbg !1141
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @kobj_unmap(%struct.kobj_map* %domain, i32 %dev, i64 %range) #0 !dbg !1142 {
entry:
  %domain.addr = alloca %struct.kobj_map*, align 8
  %dev.addr = alloca i32, align 4
  %range.addr = alloca i64, align 8
  %n = alloca i32, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %found = alloca %struct.probe*, align 8
  %s = alloca %struct.probe**, align 8
  %p = alloca %struct.probe*, align 8
  store %struct.kobj_map* %domain, %struct.kobj_map** %domain.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_map** %domain.addr, metadata !1145, metadata !DIExpression()), !dbg !1146
  store i32 %dev, i32* %dev.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dev.addr, metadata !1147, metadata !DIExpression()), !dbg !1148
  store i64 %range, i64* %range.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %range.addr, metadata !1149, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.declare(metadata i32* %n, metadata !1151, metadata !DIExpression()), !dbg !1152
  %0 = load i32, i32* %dev.addr, align 4, !dbg !1153
  %conv = zext i32 %0 to i64, !dbg !1153
  %1 = load i64, i64* %range.addr, align 8, !dbg !1153
  %add = add i64 %conv, %1, !dbg !1153
  %sub = sub i64 %add, 1, !dbg !1153
  %shr = lshr i64 %sub, 20, !dbg !1153
  %conv1 = trunc i64 %shr to i32, !dbg !1153
  %2 = load i32, i32* %dev.addr, align 4, !dbg !1154
  %shr2 = lshr i32 %2, 20, !dbg !1154
  %sub3 = sub i32 %conv1, %shr2, !dbg !1155
  %add4 = add i32 %sub3, 1, !dbg !1156
  store i32 %add4, i32* %n, align 4, !dbg !1152
  call void @llvm.dbg.declare(metadata i32* %index, metadata !1157, metadata !DIExpression()), !dbg !1158
  %3 = load i32, i32* %dev.addr, align 4, !dbg !1159
  %shr5 = lshr i32 %3, 20, !dbg !1159
  store i32 %shr5, i32* %index, align 4, !dbg !1158
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1160, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.declare(metadata %struct.probe** %found, metadata !1162, metadata !DIExpression()), !dbg !1163
  store %struct.probe* null, %struct.probe** %found, align 8, !dbg !1163
  %4 = load i32, i32* %n, align 4, !dbg !1164
  %cmp = icmp ugt i32 %4, 255, !dbg !1166
  br i1 %cmp, label %if.then, label %if.end, !dbg !1167

if.then:                                          ; preds = %entry
  store i32 255, i32* %n, align 4, !dbg !1168
  br label %if.end, !dbg !1169

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.kobj_map*, %struct.kobj_map** %domain.addr, align 8, !dbg !1170
  %lock = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %5, i32 0, i32 1, !dbg !1171
  %6 = load %struct.mutex*, %struct.mutex** %lock, align 8, !dbg !1171
  call void @mutex_lock(%struct.mutex* %6) #6, !dbg !1172
  store i32 0, i32* %i, align 4, !dbg !1173
  br label %for.cond, !dbg !1175

for.cond:                                         ; preds = %for.inc23, %if.end
  %7 = load i32, i32* %i, align 4, !dbg !1176
  %8 = load i32, i32* %n, align 4, !dbg !1178
  %cmp7 = icmp ult i32 %7, %8, !dbg !1179
  br i1 %cmp7, label %for.body, label %for.end25, !dbg !1180

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.probe*** %s, metadata !1181, metadata !DIExpression()), !dbg !1183
  %9 = load %struct.kobj_map*, %struct.kobj_map** %domain.addr, align 8, !dbg !1184
  %probes = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %9, i32 0, i32 0, !dbg !1186
  %10 = load i32, i32* %index, align 4, !dbg !1187
  %rem = urem i32 %10, 255, !dbg !1188
  %idxprom = zext i32 %rem to i64, !dbg !1184
  %arrayidx = getelementptr [255 x %struct.probe*], [255 x %struct.probe*]* %probes, i64 0, i64 %idxprom, !dbg !1184
  store %struct.probe** %arrayidx, %struct.probe*** %s, align 8, !dbg !1189
  br label %for.cond9, !dbg !1190

for.cond9:                                        ; preds = %for.inc, %for.body
  %11 = load %struct.probe**, %struct.probe*** %s, align 8, !dbg !1191
  %12 = load %struct.probe*, %struct.probe** %11, align 8, !dbg !1193
  %tobool = icmp ne %struct.probe* %12, null, !dbg !1194
  br i1 %tobool, label %for.body10, label %for.end, !dbg !1194

for.body10:                                       ; preds = %for.cond9
  call void @llvm.dbg.declare(metadata %struct.probe** %p, metadata !1195, metadata !DIExpression()), !dbg !1197
  %13 = load %struct.probe**, %struct.probe*** %s, align 8, !dbg !1198
  %14 = load %struct.probe*, %struct.probe** %13, align 8, !dbg !1199
  store %struct.probe* %14, %struct.probe** %p, align 8, !dbg !1197
  %15 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1200
  %dev11 = getelementptr inbounds %struct.probe, %struct.probe* %15, i32 0, i32 1, !dbg !1202
  %16 = load i32, i32* %dev11, align 8, !dbg !1202
  %17 = load i32, i32* %dev.addr, align 4, !dbg !1203
  %cmp12 = icmp eq i32 %16, %17, !dbg !1204
  br i1 %cmp12, label %land.lhs.true, label %if.end21, !dbg !1205

land.lhs.true:                                    ; preds = %for.body10
  %18 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1206
  %range14 = getelementptr inbounds %struct.probe, %struct.probe* %18, i32 0, i32 2, !dbg !1207
  %19 = load i64, i64* %range14, align 8, !dbg !1207
  %20 = load i64, i64* %range.addr, align 8, !dbg !1208
  %cmp15 = icmp eq i64 %19, %20, !dbg !1209
  br i1 %cmp15, label %if.then17, label %if.end21, !dbg !1210

if.then17:                                        ; preds = %land.lhs.true
  %21 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1211
  %next = getelementptr inbounds %struct.probe, %struct.probe* %21, i32 0, i32 0, !dbg !1213
  %22 = load %struct.probe*, %struct.probe** %next, align 8, !dbg !1213
  %23 = load %struct.probe**, %struct.probe*** %s, align 8, !dbg !1214
  store %struct.probe* %22, %struct.probe** %23, align 8, !dbg !1215
  %24 = load %struct.probe*, %struct.probe** %found, align 8, !dbg !1216
  %tobool18 = icmp ne %struct.probe* %24, null, !dbg !1216
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !1218

if.then19:                                        ; preds = %if.then17
  %25 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1219
  store %struct.probe* %25, %struct.probe** %found, align 8, !dbg !1220
  br label %if.end20, !dbg !1221

if.end20:                                         ; preds = %if.then19, %if.then17
  br label %for.end, !dbg !1222

if.end21:                                         ; preds = %land.lhs.true, %for.body10
  br label %for.inc, !dbg !1223

for.inc:                                          ; preds = %if.end21
  %26 = load %struct.probe**, %struct.probe*** %s, align 8, !dbg !1224
  %27 = load %struct.probe*, %struct.probe** %26, align 8, !dbg !1225
  %next22 = getelementptr inbounds %struct.probe, %struct.probe* %27, i32 0, i32 0, !dbg !1226
  store %struct.probe** %next22, %struct.probe*** %s, align 8, !dbg !1227
  br label %for.cond9, !dbg !1228, !llvm.loop !1229

for.end:                                          ; preds = %if.end20, %for.cond9
  br label %for.inc23, !dbg !1231

for.inc23:                                        ; preds = %for.end
  %28 = load i32, i32* %i, align 4, !dbg !1232
  %inc = add i32 %28, 1, !dbg !1232
  store i32 %inc, i32* %i, align 4, !dbg !1232
  %29 = load i32, i32* %index, align 4, !dbg !1233
  %inc24 = add i32 %29, 1, !dbg !1233
  store i32 %inc24, i32* %index, align 4, !dbg !1233
  br label %for.cond, !dbg !1234, !llvm.loop !1235

for.end25:                                        ; preds = %for.cond
  %30 = load %struct.kobj_map*, %struct.kobj_map** %domain.addr, align 8, !dbg !1237
  %lock26 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %30, i32 0, i32 1, !dbg !1238
  %31 = load %struct.mutex*, %struct.mutex** %lock26, align 8, !dbg !1238
  call void @mutex_unlock(%struct.mutex* %31) #6, !dbg !1239
  %32 = load %struct.probe*, %struct.probe** %found, align 8, !dbg !1240
  %33 = bitcast %struct.probe* %32 to i8*, !dbg !1240
  call void @kfree(i8* %33) #6, !dbg !1241
  ret void, !dbg !1242
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.kobject* @kobj_lookup(%struct.kobj_map* %domain, i32 %dev, i32* %index) #0 !dbg !1243 {
entry:
  %retval = alloca %struct.kobject*, align 8
  %domain.addr = alloca %struct.kobj_map*, align 8
  %dev.addr = alloca i32, align 4
  %index.addr = alloca i32*, align 8
  %kobj = alloca %struct.kobject*, align 8
  %p = alloca %struct.probe*, align 8
  %best = alloca i64, align 8
  %probe = alloca %struct.kobject* (i32, i32*, i8*)*, align 8
  %owner = alloca %struct.module*, align 8
  %data = alloca i8*, align 8
  store %struct.kobj_map* %domain, %struct.kobj_map** %domain.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_map** %domain.addr, metadata !1246, metadata !DIExpression()), !dbg !1247
  store i32 %dev, i32* %dev.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dev.addr, metadata !1248, metadata !DIExpression()), !dbg !1249
  store i32* %index, i32** %index.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %index.addr, metadata !1250, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj, metadata !1252, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.declare(metadata %struct.probe** %p, metadata !1254, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.declare(metadata i64* %best, metadata !1256, metadata !DIExpression()), !dbg !1257
  store i64 -1, i64* %best, align 8, !dbg !1257
  br label %retry, !dbg !1258

retry:                                            ; preds = %if.end33, %entry
  call void @llvm.dbg.label(metadata !1259), !dbg !1260
  %0 = load %struct.kobj_map*, %struct.kobj_map** %domain.addr, align 8, !dbg !1261
  %lock = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %0, i32 0, i32 1, !dbg !1262
  %1 = load %struct.mutex*, %struct.mutex** %lock, align 8, !dbg !1262
  call void @mutex_lock(%struct.mutex* %1) #6, !dbg !1263
  %2 = load %struct.kobj_map*, %struct.kobj_map** %domain.addr, align 8, !dbg !1264
  %probes = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %2, i32 0, i32 0, !dbg !1266
  %3 = load i32, i32* %dev.addr, align 4, !dbg !1267
  %shr = lshr i32 %3, 20, !dbg !1267
  %rem = urem i32 %shr, 255, !dbg !1268
  %idxprom = zext i32 %rem to i64, !dbg !1264
  %arrayidx = getelementptr [255 x %struct.probe*], [255 x %struct.probe*]* %probes, i64 0, i64 %idxprom, !dbg !1264
  %4 = load %struct.probe*, %struct.probe** %arrayidx, align 8, !dbg !1264
  store %struct.probe* %4, %struct.probe** %p, align 8, !dbg !1269
  br label %for.cond, !dbg !1270

for.cond:                                         ; preds = %for.inc, %retry
  %5 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1271
  %tobool = icmp ne %struct.probe* %5, null, !dbg !1273
  br i1 %tobool, label %for.body, label %for.end, !dbg !1273

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.kobject* (i32, i32*, i8*)** %probe, metadata !1274, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.declare(metadata %struct.module** %owner, metadata !1278, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.declare(metadata i8** %data, metadata !1280, metadata !DIExpression()), !dbg !1281
  %6 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1282
  %dev1 = getelementptr inbounds %struct.probe, %struct.probe* %6, i32 0, i32 1, !dbg !1284
  %7 = load i32, i32* %dev1, align 8, !dbg !1284
  %8 = load i32, i32* %dev.addr, align 4, !dbg !1285
  %cmp = icmp ugt i32 %7, %8, !dbg !1286
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1287

lor.lhs.false:                                    ; preds = %for.body
  %9 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1288
  %dev2 = getelementptr inbounds %struct.probe, %struct.probe* %9, i32 0, i32 1, !dbg !1289
  %10 = load i32, i32* %dev2, align 8, !dbg !1289
  %conv = zext i32 %10 to i64, !dbg !1288
  %11 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1290
  %range = getelementptr inbounds %struct.probe, %struct.probe* %11, i32 0, i32 2, !dbg !1291
  %12 = load i64, i64* %range, align 8, !dbg !1291
  %add = add i64 %conv, %12, !dbg !1292
  %sub = sub i64 %add, 1, !dbg !1293
  %13 = load i32, i32* %dev.addr, align 4, !dbg !1294
  %conv3 = zext i32 %13 to i64, !dbg !1294
  %cmp4 = icmp ult i64 %sub, %conv3, !dbg !1295
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1296

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !1297

if.end:                                           ; preds = %lor.lhs.false
  %14 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1298
  %range6 = getelementptr inbounds %struct.probe, %struct.probe* %14, i32 0, i32 2, !dbg !1300
  %15 = load i64, i64* %range6, align 8, !dbg !1300
  %sub7 = sub i64 %15, 1, !dbg !1301
  %16 = load i64, i64* %best, align 8, !dbg !1302
  %cmp8 = icmp uge i64 %sub7, %16, !dbg !1303
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !1304

if.then10:                                        ; preds = %if.end
  br label %for.end, !dbg !1305

if.end11:                                         ; preds = %if.end
  %17 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1306
  %owner12 = getelementptr inbounds %struct.probe, %struct.probe* %17, i32 0, i32 3, !dbg !1308
  %18 = load %struct.module*, %struct.module** %owner12, align 8, !dbg !1308
  %call = call zeroext i1 @try_module_get(%struct.module* %18) #6, !dbg !1309
  br i1 %call, label %if.end14, label %if.then13, !dbg !1310

if.then13:                                        ; preds = %if.end11
  br label %for.inc, !dbg !1311

if.end14:                                         ; preds = %if.end11
  %19 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1312
  %owner15 = getelementptr inbounds %struct.probe, %struct.probe* %19, i32 0, i32 3, !dbg !1313
  %20 = load %struct.module*, %struct.module** %owner15, align 8, !dbg !1313
  store %struct.module* %20, %struct.module** %owner, align 8, !dbg !1314
  %21 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1315
  %data16 = getelementptr inbounds %struct.probe, %struct.probe* %21, i32 0, i32 6, !dbg !1316
  %22 = load i8*, i8** %data16, align 8, !dbg !1316
  store i8* %22, i8** %data, align 8, !dbg !1317
  %23 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1318
  %get = getelementptr inbounds %struct.probe, %struct.probe* %23, i32 0, i32 4, !dbg !1319
  %24 = load %struct.kobject* (i32, i32*, i8*)*, %struct.kobject* (i32, i32*, i8*)** %get, align 8, !dbg !1319
  store %struct.kobject* (i32, i32*, i8*)* %24, %struct.kobject* (i32, i32*, i8*)** %probe, align 8, !dbg !1320
  %25 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1321
  %range17 = getelementptr inbounds %struct.probe, %struct.probe* %25, i32 0, i32 2, !dbg !1322
  %26 = load i64, i64* %range17, align 8, !dbg !1322
  %sub18 = sub i64 %26, 1, !dbg !1323
  store i64 %sub18, i64* %best, align 8, !dbg !1324
  %27 = load i32, i32* %dev.addr, align 4, !dbg !1325
  %28 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1326
  %dev19 = getelementptr inbounds %struct.probe, %struct.probe* %28, i32 0, i32 1, !dbg !1327
  %29 = load i32, i32* %dev19, align 8, !dbg !1327
  %sub20 = sub i32 %27, %29, !dbg !1328
  %30 = load i32*, i32** %index.addr, align 8, !dbg !1329
  store i32 %sub20, i32* %30, align 4, !dbg !1330
  %31 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1331
  %lock21 = getelementptr inbounds %struct.probe, %struct.probe* %31, i32 0, i32 5, !dbg !1333
  %32 = load i32 (i32, i8*)*, i32 (i32, i8*)** %lock21, align 8, !dbg !1333
  %tobool22 = icmp ne i32 (i32, i8*)* %32, null, !dbg !1331
  br i1 %tobool22, label %land.lhs.true, label %if.end28, !dbg !1334

land.lhs.true:                                    ; preds = %if.end14
  %33 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1335
  %lock23 = getelementptr inbounds %struct.probe, %struct.probe* %33, i32 0, i32 5, !dbg !1336
  %34 = load i32 (i32, i8*)*, i32 (i32, i8*)** %lock23, align 8, !dbg !1336
  %35 = load i32, i32* %dev.addr, align 4, !dbg !1337
  %36 = load i8*, i8** %data, align 8, !dbg !1338
  %call24 = call i32 %34(i32 %35, i8* %36) #6, !dbg !1335
  %cmp25 = icmp slt i32 %call24, 0, !dbg !1339
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1340

if.then27:                                        ; preds = %land.lhs.true
  %37 = load %struct.module*, %struct.module** %owner, align 8, !dbg !1341
  call void @module_put(%struct.module* %37) #6, !dbg !1343
  br label %for.inc, !dbg !1344

if.end28:                                         ; preds = %land.lhs.true, %if.end14
  %38 = load %struct.kobj_map*, %struct.kobj_map** %domain.addr, align 8, !dbg !1345
  %lock29 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %38, i32 0, i32 1, !dbg !1346
  %39 = load %struct.mutex*, %struct.mutex** %lock29, align 8, !dbg !1346
  call void @mutex_unlock(%struct.mutex* %39) #6, !dbg !1347
  %40 = load %struct.kobject* (i32, i32*, i8*)*, %struct.kobject* (i32, i32*, i8*)** %probe, align 8, !dbg !1348
  %41 = load i32, i32* %dev.addr, align 4, !dbg !1349
  %42 = load i32*, i32** %index.addr, align 8, !dbg !1350
  %43 = load i8*, i8** %data, align 8, !dbg !1351
  %call30 = call %struct.kobject* %40(i32 %41, i32* %42, i8* %43) #6, !dbg !1348
  store %struct.kobject* %call30, %struct.kobject** %kobj, align 8, !dbg !1352
  %44 = load %struct.module*, %struct.module** %owner, align 8, !dbg !1353
  call void @module_put(%struct.module* %44) #6, !dbg !1354
  %45 = load %struct.kobject*, %struct.kobject** %kobj, align 8, !dbg !1355
  %tobool31 = icmp ne %struct.kobject* %45, null, !dbg !1355
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !1357

if.then32:                                        ; preds = %if.end28
  %46 = load %struct.kobject*, %struct.kobject** %kobj, align 8, !dbg !1358
  store %struct.kobject* %46, %struct.kobject** %retval, align 8, !dbg !1359
  br label %return, !dbg !1359

if.end33:                                         ; preds = %if.end28
  br label %retry, !dbg !1360

for.inc:                                          ; preds = %if.then27, %if.then13, %if.then
  %47 = load %struct.probe*, %struct.probe** %p, align 8, !dbg !1361
  %next = getelementptr inbounds %struct.probe, %struct.probe* %47, i32 0, i32 0, !dbg !1362
  %48 = load %struct.probe*, %struct.probe** %next, align 8, !dbg !1362
  store %struct.probe* %48, %struct.probe** %p, align 8, !dbg !1363
  br label %for.cond, !dbg !1364, !llvm.loop !1365

for.end:                                          ; preds = %if.then10, %for.cond
  %49 = load %struct.kobj_map*, %struct.kobj_map** %domain.addr, align 8, !dbg !1367
  %lock34 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %49, i32 0, i32 1, !dbg !1368
  %50 = load %struct.mutex*, %struct.mutex** %lock34, align 8, !dbg !1368
  call void @mutex_unlock(%struct.mutex* %50) #6, !dbg !1369
  store %struct.kobject* null, %struct.kobject** %retval, align 8, !dbg !1370
  br label %return, !dbg !1370

return:                                           ; preds = %for.end, %if.then32
  %51 = load %struct.kobject*, %struct.kobject** %retval, align 8, !dbg !1371
  ret %struct.kobject* %51, !dbg !1371
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !1372 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !1376, metadata !DIExpression()), !dbg !1377
  ret i1 true, !dbg !1378
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !1379 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !1382, metadata !DIExpression()), !dbg !1383
  ret void, !dbg !1384
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.kobj_map* @kobj_map_init(%struct.kobject* (i32, i32*, i8*)* %base_probe, %struct.mutex* %lock) #0 !dbg !1385 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !844, metadata !DIExpression()), !dbg !1388
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !859, metadata !DIExpression()), !dbg !1391
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !861, metadata !DIExpression()), !dbg !1392
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !863, metadata !DIExpression()), !dbg !1393
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !865, metadata !DIExpression()), !dbg !1394
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !871, metadata !DIExpression()), !dbg !1396
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !877, metadata !DIExpression()), !dbg !1398
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !886, metadata !DIExpression()), !dbg !1401
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !888, metadata !DIExpression()), !dbg !1402
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !890, metadata !DIExpression()), !dbg !1403
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !892, metadata !DIExpression()), !dbg !1404
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !894, metadata !DIExpression()), !dbg !1405
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !896, metadata !DIExpression()), !dbg !1406
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !898, metadata !DIExpression()), !dbg !1407
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !900, metadata !DIExpression()), !dbg !1408
  %retval = alloca %struct.kobj_map*, align 8
  %base_probe.addr = alloca %struct.kobject* (i32, i32*, i8*)*, align 8
  %lock.addr = alloca %struct.mutex*, align 8
  %p = alloca %struct.kobj_map*, align 8
  %base = alloca %struct.probe*, align 8
  %i = alloca i32, align 4
  store %struct.kobject* (i32, i32*, i8*)* %base_probe, %struct.kobject* (i32, i32*, i8*)** %base_probe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject* (i32, i32*, i8*)** %base_probe.addr, metadata !1409, metadata !DIExpression()), !dbg !1410
  store %struct.mutex* %lock, %struct.mutex** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mutex** %lock.addr, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.declare(metadata %struct.kobj_map** %p, metadata !1413, metadata !DIExpression()), !dbg !1414
  store i64 2048, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !1415
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #7, !dbg !1416
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !1417

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1418
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !1419
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1420

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !1421
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !1422
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !1423
  %call.i.i = call i32 @get_order(i64 %5) #8, !dbg !1424
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1405
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !1425
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1426
  %8 = load i32, i32* %order.i.i, align 4, !dbg !1427
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1428
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1429
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1430
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #9, !dbg !1431
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1431
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1431
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1431
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1431
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1432
  br label %kmalloc.exit, !dbg !1432

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !1433
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1434
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !1434
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1435

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1436
  br label %kmalloc_index.exit.i, !dbg !1436

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1437
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !1438
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1439

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1440
  br label %kmalloc_index.exit.i, !dbg !1440

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1441
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !1442
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1443

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1444
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !1445
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1446

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1447
  br label %kmalloc_index.exit.i, !dbg !1447

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1448
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !1449
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1450

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1451
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !1452
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1453

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1454
  br label %kmalloc_index.exit.i, !dbg !1454

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1455
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !1456
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1457

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1458
  br label %kmalloc_index.exit.i, !dbg !1458

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1459
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !1460
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1461

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1462
  br label %kmalloc_index.exit.i, !dbg !1462

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1463
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !1464
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1465

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1466
  br label %kmalloc_index.exit.i, !dbg !1466

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1467
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !1468
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1469

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1470
  br label %kmalloc_index.exit.i, !dbg !1470

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1471
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !1472
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1473

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1474
  br label %kmalloc_index.exit.i, !dbg !1474

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1475
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !1476
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1477

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1478
  br label %kmalloc_index.exit.i, !dbg !1478

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1479
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !1480
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1481

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1482
  br label %kmalloc_index.exit.i, !dbg !1482

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1483
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !1484
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1485

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1486
  br label %kmalloc_index.exit.i, !dbg !1486

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1487
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !1488
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1489

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1490
  br label %kmalloc_index.exit.i, !dbg !1490

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1491
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !1492
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1493

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1494
  br label %kmalloc_index.exit.i, !dbg !1494

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1495
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !1496
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1497

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1498
  br label %kmalloc_index.exit.i, !dbg !1498

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1499
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !1500
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1501

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1502
  br label %kmalloc_index.exit.i, !dbg !1502

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1503
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !1504
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1505

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1506
  br label %kmalloc_index.exit.i, !dbg !1506

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1507
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !1508
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1509

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1510
  br label %kmalloc_index.exit.i, !dbg !1510

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1511
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !1512
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1513

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1514
  br label %kmalloc_index.exit.i, !dbg !1514

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1515
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !1516
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1517

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1518
  br label %kmalloc_index.exit.i, !dbg !1518

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1519
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !1520
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1521

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1522
  br label %kmalloc_index.exit.i, !dbg !1522

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1523
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !1524
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1525

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1526
  br label %kmalloc_index.exit.i, !dbg !1526

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1527
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !1528
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1529

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1530
  br label %kmalloc_index.exit.i, !dbg !1530

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1531
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !1532
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1533

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1534
  br label %kmalloc_index.exit.i, !dbg !1534

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1535
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !1536
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1537

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1538
  br label %kmalloc_index.exit.i, !dbg !1538

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1539
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !1540
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1541

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1542
  br label %kmalloc_index.exit.i, !dbg !1542

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1543
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !1544
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1545

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1546
  br label %kmalloc_index.exit.i, !dbg !1546

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1547
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !1548
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1549

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1550
  br label %kmalloc_index.exit.i, !dbg !1550

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1551, !srcloc !1095
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #7, !dbg !1552, !srcloc !1099
  unreachable, !dbg !1553

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !1554
  store i32 %43, i32* %index.i, align 4, !dbg !1555
  %44 = load i32, i32* %index.i, align 4, !dbg !1556
  %tobool.i = icmp ne i32 %44, 0, !dbg !1556
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1557

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1558
  br label %kmalloc.exit, !dbg !1558

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !1559
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1560
  %and.i.i = and i32 %46, 17, !dbg !1560
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1560
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1560
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1560
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1560
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1561

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1562
  br label %kmalloc_type.exit.i, !dbg !1562

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1563
  %and2.i.i = and i32 %47, 1, !dbg !1564
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1563
  %48 = zext i1 %tobool3.i.i to i64, !dbg !1563
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1563
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1565
  br label %kmalloc_type.exit.i, !dbg !1565

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !1566
  %idxprom.i = zext i32 %49 to i64, !dbg !1567
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1567
  %50 = load i32, i32* %index.i, align 4, !dbg !1568
  %idxprom6.i = zext i32 %50 to i64, !dbg !1567
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1567
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1567
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !1569
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !1570
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1571
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1572
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #9, !dbg !1573
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1573
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1573
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1573
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1573
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1393
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1574
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !1575
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1576
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1577
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #9, !dbg !1578
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1579
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !1580
  store i8* %60, i8** %retval.i, align 8, !dbg !1581
  br label %kmalloc.exit, !dbg !1581

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !1582
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !1583
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #9, !dbg !1584
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1584
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1584
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1584
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1584
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1585
  br label %kmalloc.exit, !dbg !1585

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !1586
  %64 = bitcast i8* %63 to %struct.kobj_map*, !dbg !1587
  store %struct.kobj_map* %64, %struct.kobj_map** %p, align 8, !dbg !1414
  call void @llvm.dbg.declare(metadata %struct.probe** %base, metadata !1588, metadata !DIExpression()), !dbg !1589
  %call1 = call i8* @kzalloc(i64 56, i32 3264) #6, !dbg !1590
  %65 = bitcast i8* %call1 to %struct.probe*, !dbg !1590
  store %struct.probe* %65, %struct.probe** %base, align 8, !dbg !1589
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1591, metadata !DIExpression()), !dbg !1592
  %66 = load %struct.kobj_map*, %struct.kobj_map** %p, align 8, !dbg !1593
  %cmp = icmp eq %struct.kobj_map* %66, null, !dbg !1595
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1596

lor.lhs.false:                                    ; preds = %kmalloc.exit
  %67 = load %struct.probe*, %struct.probe** %base, align 8, !dbg !1597
  %cmp2 = icmp eq %struct.probe* %67, null, !dbg !1598
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1599

if.then:                                          ; preds = %lor.lhs.false, %kmalloc.exit
  %68 = load %struct.kobj_map*, %struct.kobj_map** %p, align 8, !dbg !1600
  %69 = bitcast %struct.kobj_map* %68 to i8*, !dbg !1600
  call void @kfree(i8* %69) #6, !dbg !1602
  %70 = load %struct.probe*, %struct.probe** %base, align 8, !dbg !1603
  %71 = bitcast %struct.probe* %70 to i8*, !dbg !1603
  call void @kfree(i8* %71) #6, !dbg !1604
  store %struct.kobj_map* null, %struct.kobj_map** %retval, align 8, !dbg !1605
  br label %return, !dbg !1605

if.end:                                           ; preds = %lor.lhs.false
  %72 = load %struct.probe*, %struct.probe** %base, align 8, !dbg !1606
  %dev = getelementptr inbounds %struct.probe, %struct.probe* %72, i32 0, i32 1, !dbg !1607
  store i32 1, i32* %dev, align 8, !dbg !1608
  %73 = load %struct.probe*, %struct.probe** %base, align 8, !dbg !1609
  %range = getelementptr inbounds %struct.probe, %struct.probe* %73, i32 0, i32 2, !dbg !1610
  store i64 -1, i64* %range, align 8, !dbg !1611
  %74 = load %struct.kobject* (i32, i32*, i8*)*, %struct.kobject* (i32, i32*, i8*)** %base_probe.addr, align 8, !dbg !1612
  %75 = load %struct.probe*, %struct.probe** %base, align 8, !dbg !1613
  %get = getelementptr inbounds %struct.probe, %struct.probe* %75, i32 0, i32 4, !dbg !1614
  store %struct.kobject* (i32, i32*, i8*)* %74, %struct.kobject* (i32, i32*, i8*)** %get, align 8, !dbg !1615
  store i32 0, i32* %i, align 4, !dbg !1616
  br label %for.cond, !dbg !1618

for.cond:                                         ; preds = %for.inc, %if.end
  %76 = load i32, i32* %i, align 4, !dbg !1619
  %cmp3 = icmp slt i32 %76, 255, !dbg !1621
  br i1 %cmp3, label %for.body, label %for.end, !dbg !1622

for.body:                                         ; preds = %for.cond
  %77 = load %struct.probe*, %struct.probe** %base, align 8, !dbg !1623
  %78 = load %struct.kobj_map*, %struct.kobj_map** %p, align 8, !dbg !1624
  %probes = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %78, i32 0, i32 0, !dbg !1625
  %79 = load i32, i32* %i, align 4, !dbg !1626
  %idxprom = sext i32 %79 to i64, !dbg !1624
  %arrayidx = getelementptr [255 x %struct.probe*], [255 x %struct.probe*]* %probes, i64 0, i64 %idxprom, !dbg !1624
  store %struct.probe* %77, %struct.probe** %arrayidx, align 8, !dbg !1627
  br label %for.inc, !dbg !1624

for.inc:                                          ; preds = %for.body
  %80 = load i32, i32* %i, align 4, !dbg !1628
  %inc = add i32 %80, 1, !dbg !1628
  store i32 %inc, i32* %i, align 4, !dbg !1628
  br label %for.cond, !dbg !1629, !llvm.loop !1630

for.end:                                          ; preds = %for.cond
  %81 = load %struct.mutex*, %struct.mutex** %lock.addr, align 8, !dbg !1632
  %82 = load %struct.kobj_map*, %struct.kobj_map** %p, align 8, !dbg !1633
  %lock4 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %82, i32 0, i32 1, !dbg !1634
  store %struct.mutex* %81, %struct.mutex** %lock4, align 8, !dbg !1635
  %83 = load %struct.kobj_map*, %struct.kobj_map** %p, align 8, !dbg !1636
  store %struct.kobj_map* %83, %struct.kobj_map** %retval, align 8, !dbg !1637
  br label %return, !dbg !1637

return:                                           ; preds = %for.end, %if.then
  %84 = load %struct.kobj_map*, %struct.kobj_map** %retval, align 8, !dbg !1638
  ret %struct.kobj_map* %84, !dbg !1638
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1639 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !844, metadata !DIExpression()), !dbg !1640
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !859, metadata !DIExpression()), !dbg !1643
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !861, metadata !DIExpression()), !dbg !1644
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !863, metadata !DIExpression()), !dbg !1645
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !865, metadata !DIExpression()), !dbg !1646
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !871, metadata !DIExpression()), !dbg !1648
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !877, metadata !DIExpression()), !dbg !1650
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !886, metadata !DIExpression()), !dbg !1653
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !888, metadata !DIExpression()), !dbg !1654
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !890, metadata !DIExpression()), !dbg !1655
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !892, metadata !DIExpression()), !dbg !1656
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !894, metadata !DIExpression()), !dbg !1657
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !896, metadata !DIExpression()), !dbg !1658
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !898, metadata !DIExpression()), !dbg !1659
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !900, metadata !DIExpression()), !dbg !1660
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1661, metadata !DIExpression()), !dbg !1662
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1663, metadata !DIExpression()), !dbg !1664
  %0 = load i64, i64* %size.addr, align 8, !dbg !1665
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1666
  %or = or i32 %1, 256, !dbg !1667
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1668
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1669
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1670

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1671
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1672
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1673

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1674
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1675
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1676
  %call.i.i = call i32 @get_order(i64 %7) #8, !dbg !1677
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1657
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1678
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1679
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1680
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1681
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1682
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1683
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #9, !dbg !1684
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1684
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1684
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1684
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1684
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1685
  br label %kmalloc.exit, !dbg !1685

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1686
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1687
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1687
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1688

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1689
  br label %kmalloc_index.exit.i, !dbg !1689

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1690
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1691
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1692

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1693
  br label %kmalloc_index.exit.i, !dbg !1693

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1694
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1695
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1696

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1697
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1698
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1699

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1700
  br label %kmalloc_index.exit.i, !dbg !1700

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1701
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1702
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1703

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1704
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1705
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1706

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1707
  br label %kmalloc_index.exit.i, !dbg !1707

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1708
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1709
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1710

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1711
  br label %kmalloc_index.exit.i, !dbg !1711

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1712
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1713
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1714

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1715
  br label %kmalloc_index.exit.i, !dbg !1715

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1716
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1717
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1718

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1719
  br label %kmalloc_index.exit.i, !dbg !1719

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1720
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1721
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1722

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1723
  br label %kmalloc_index.exit.i, !dbg !1723

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1724
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1725
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1726

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1727
  br label %kmalloc_index.exit.i, !dbg !1727

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1728
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1729
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1730

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1731
  br label %kmalloc_index.exit.i, !dbg !1731

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1732
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1733
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1734

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1735
  br label %kmalloc_index.exit.i, !dbg !1735

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1736
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1737
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1738

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1739
  br label %kmalloc_index.exit.i, !dbg !1739

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1740
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1741
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1742

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1743
  br label %kmalloc_index.exit.i, !dbg !1743

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1744
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1745
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1746

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1747
  br label %kmalloc_index.exit.i, !dbg !1747

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1748
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1749
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1750

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1751
  br label %kmalloc_index.exit.i, !dbg !1751

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1752
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1753
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1754

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1755
  br label %kmalloc_index.exit.i, !dbg !1755

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1756
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1757
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1758

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1759
  br label %kmalloc_index.exit.i, !dbg !1759

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1760
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1761
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1762

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1763
  br label %kmalloc_index.exit.i, !dbg !1763

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1764
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1765
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1766

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1767
  br label %kmalloc_index.exit.i, !dbg !1767

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1768
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1769
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1770

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1771
  br label %kmalloc_index.exit.i, !dbg !1771

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1772
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1773
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1774

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1775
  br label %kmalloc_index.exit.i, !dbg !1775

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1776
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1777
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1778

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1779
  br label %kmalloc_index.exit.i, !dbg !1779

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1780
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1781
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1782

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1783
  br label %kmalloc_index.exit.i, !dbg !1783

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1784
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1785
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1786

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1787
  br label %kmalloc_index.exit.i, !dbg !1787

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1788
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1789
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1790

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1791
  br label %kmalloc_index.exit.i, !dbg !1791

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1792
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1793
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1794

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1795
  br label %kmalloc_index.exit.i, !dbg !1795

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1796
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1797
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1798

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1799
  br label %kmalloc_index.exit.i, !dbg !1799

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1800
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1801
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1802

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1803
  br label %kmalloc_index.exit.i, !dbg !1803

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1804, !srcloc !1095
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #7, !dbg !1805, !srcloc !1099
  unreachable, !dbg !1806

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1807
  store i32 %45, i32* %index.i, align 4, !dbg !1808
  %46 = load i32, i32* %index.i, align 4, !dbg !1809
  %tobool.i = icmp ne i32 %46, 0, !dbg !1809
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1810

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1811
  br label %kmalloc.exit, !dbg !1811

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1812
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1813
  %and.i.i = and i32 %48, 17, !dbg !1813
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1813
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1813
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1813
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1813
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1814

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1815
  br label %kmalloc_type.exit.i, !dbg !1815

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1816
  %and2.i.i = and i32 %49, 1, !dbg !1817
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1816
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1816
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1816
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1818
  br label %kmalloc_type.exit.i, !dbg !1818

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1819
  %idxprom.i = zext i32 %51 to i64, !dbg !1820
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1820
  %52 = load i32, i32* %index.i, align 4, !dbg !1821
  %idxprom6.i = zext i32 %52 to i64, !dbg !1820
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1820
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1820
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1822
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1823
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1824
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1825
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #9, !dbg !1826
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1826
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1826
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1826
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1826
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1645
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1827
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1828
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1829
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1830
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #9, !dbg !1831
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1832
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1833
  store i8* %62, i8** %retval.i, align 8, !dbg !1834
  br label %kmalloc.exit, !dbg !1834

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1835
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1836
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #9, !dbg !1837
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1837
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1837
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1837
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1837
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1838
  br label %kmalloc.exit, !dbg !1838

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1839
  ret i8* %65, !dbg !1840
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !1841 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !1845, metadata !DIExpression()), !dbg !1846
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !1847
  %tobool = trunc i8 %0 to i1, !dbg !1847
  %lnot = xor i1 %tobool, true, !dbg !1847
  %lnot1 = xor i1 %lnot, true, !dbg !1847
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1847
  %conv = sext i32 %lnot.ext to i64, !dbg !1847
  %tobool2 = icmp ne i64 %conv, 0, !dbg !1847
  ret i1 %tobool2, !dbg !1848
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1849 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1853, metadata !DIExpression()), !dbg !1858
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1860, metadata !DIExpression()), !dbg !1861
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1862, metadata !DIExpression()), !dbg !1863
  %0 = load i64, i64* %size.addr, align 8, !dbg !1864
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1866
  br i1 %1, label %if.then, label %if.end447, !dbg !1867

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1868
  %tobool = icmp ne i64 %2, 0, !dbg !1868
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1871

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1872
  br label %return, !dbg !1872

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1873
  %cmp = icmp ult i64 %3, 4096, !dbg !1875
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1876

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1877
  br label %return, !dbg !1877

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub = sub i64 %4, 1, !dbg !1878
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1878
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1878

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub4 = sub i64 %6, 1, !dbg !1878
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1878
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1878

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub6 = sub i64 %8, 1, !dbg !1878
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1878
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1878

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1878

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub9 = sub i64 %9, 1, !dbg !1878
  %and = and i64 %sub9, -9223372036854775808, !dbg !1878
  %tobool10 = icmp ne i64 %and, 0, !dbg !1878
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1878

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1878

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub13 = sub i64 %10, 1, !dbg !1878
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1878
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1878
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1878

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1878

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub18 = sub i64 %11, 1, !dbg !1878
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1878
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1878
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1878

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1878

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub23 = sub i64 %12, 1, !dbg !1878
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1878
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1878
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1878

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1878

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub28 = sub i64 %13, 1, !dbg !1878
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1878
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1878
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1878

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1878

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub33 = sub i64 %14, 1, !dbg !1878
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1878
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1878
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1878

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1878

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub38 = sub i64 %15, 1, !dbg !1878
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1878
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1878
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1878

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1878

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub43 = sub i64 %16, 1, !dbg !1878
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1878
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1878
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1878

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1878

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub48 = sub i64 %17, 1, !dbg !1878
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1878
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1878
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1878

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1878

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub53 = sub i64 %18, 1, !dbg !1878
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1878
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1878
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1878

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1878

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub58 = sub i64 %19, 1, !dbg !1878
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1878
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1878
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1878

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1878

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub63 = sub i64 %20, 1, !dbg !1878
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1878
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1878
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1878

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1878

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub68 = sub i64 %21, 1, !dbg !1878
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1878
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1878
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1878

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1878

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub73 = sub i64 %22, 1, !dbg !1878
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1878
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1878
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1878

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1878

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub78 = sub i64 %23, 1, !dbg !1878
  %and79 = and i64 %sub78, 562949953421312, !dbg !1878
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1878
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1878

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1878

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub83 = sub i64 %24, 1, !dbg !1878
  %and84 = and i64 %sub83, 281474976710656, !dbg !1878
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1878
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1878

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1878

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub88 = sub i64 %25, 1, !dbg !1878
  %and89 = and i64 %sub88, 140737488355328, !dbg !1878
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1878
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1878

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1878

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub93 = sub i64 %26, 1, !dbg !1878
  %and94 = and i64 %sub93, 70368744177664, !dbg !1878
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1878
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1878

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1878

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub98 = sub i64 %27, 1, !dbg !1878
  %and99 = and i64 %sub98, 35184372088832, !dbg !1878
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1878
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1878

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1878

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub103 = sub i64 %28, 1, !dbg !1878
  %and104 = and i64 %sub103, 17592186044416, !dbg !1878
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1878
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1878

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1878

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub108 = sub i64 %29, 1, !dbg !1878
  %and109 = and i64 %sub108, 8796093022208, !dbg !1878
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1878
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1878

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1878

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub113 = sub i64 %30, 1, !dbg !1878
  %and114 = and i64 %sub113, 4398046511104, !dbg !1878
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1878
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1878

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1878

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub118 = sub i64 %31, 1, !dbg !1878
  %and119 = and i64 %sub118, 2199023255552, !dbg !1878
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1878
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1878

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1878

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub123 = sub i64 %32, 1, !dbg !1878
  %and124 = and i64 %sub123, 1099511627776, !dbg !1878
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1878
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1878

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1878

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub128 = sub i64 %33, 1, !dbg !1878
  %and129 = and i64 %sub128, 549755813888, !dbg !1878
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1878
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1878

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1878

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub133 = sub i64 %34, 1, !dbg !1878
  %and134 = and i64 %sub133, 274877906944, !dbg !1878
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1878
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1878

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1878

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub138 = sub i64 %35, 1, !dbg !1878
  %and139 = and i64 %sub138, 137438953472, !dbg !1878
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1878
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1878

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1878

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub143 = sub i64 %36, 1, !dbg !1878
  %and144 = and i64 %sub143, 68719476736, !dbg !1878
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1878
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1878

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1878

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub148 = sub i64 %37, 1, !dbg !1878
  %and149 = and i64 %sub148, 34359738368, !dbg !1878
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1878
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1878

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1878

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub153 = sub i64 %38, 1, !dbg !1878
  %and154 = and i64 %sub153, 17179869184, !dbg !1878
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1878
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1878

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1878

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub158 = sub i64 %39, 1, !dbg !1878
  %and159 = and i64 %sub158, 8589934592, !dbg !1878
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1878
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1878

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1878

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub163 = sub i64 %40, 1, !dbg !1878
  %and164 = and i64 %sub163, 4294967296, !dbg !1878
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1878
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1878

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1878

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub168 = sub i64 %41, 1, !dbg !1878
  %and169 = and i64 %sub168, 2147483648, !dbg !1878
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1878
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1878

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1878

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub173 = sub i64 %42, 1, !dbg !1878
  %and174 = and i64 %sub173, 1073741824, !dbg !1878
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1878
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1878

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1878

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub178 = sub i64 %43, 1, !dbg !1878
  %and179 = and i64 %sub178, 536870912, !dbg !1878
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1878
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1878

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1878

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub183 = sub i64 %44, 1, !dbg !1878
  %and184 = and i64 %sub183, 268435456, !dbg !1878
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1878
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1878

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1878

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub188 = sub i64 %45, 1, !dbg !1878
  %and189 = and i64 %sub188, 134217728, !dbg !1878
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1878
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1878

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1878

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub193 = sub i64 %46, 1, !dbg !1878
  %and194 = and i64 %sub193, 67108864, !dbg !1878
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1878
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1878

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1878

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub198 = sub i64 %47, 1, !dbg !1878
  %and199 = and i64 %sub198, 33554432, !dbg !1878
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1878
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1878

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1878

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub203 = sub i64 %48, 1, !dbg !1878
  %and204 = and i64 %sub203, 16777216, !dbg !1878
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1878
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1878

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1878

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub208 = sub i64 %49, 1, !dbg !1878
  %and209 = and i64 %sub208, 8388608, !dbg !1878
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1878
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1878

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1878

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub213 = sub i64 %50, 1, !dbg !1878
  %and214 = and i64 %sub213, 4194304, !dbg !1878
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1878
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1878

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1878

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub218 = sub i64 %51, 1, !dbg !1878
  %and219 = and i64 %sub218, 2097152, !dbg !1878
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1878
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1878

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1878

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub223 = sub i64 %52, 1, !dbg !1878
  %and224 = and i64 %sub223, 1048576, !dbg !1878
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1878
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1878

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1878

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub228 = sub i64 %53, 1, !dbg !1878
  %and229 = and i64 %sub228, 524288, !dbg !1878
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1878
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1878

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1878

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub233 = sub i64 %54, 1, !dbg !1878
  %and234 = and i64 %sub233, 262144, !dbg !1878
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1878
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1878

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1878

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub238 = sub i64 %55, 1, !dbg !1878
  %and239 = and i64 %sub238, 131072, !dbg !1878
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1878
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1878

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1878

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub243 = sub i64 %56, 1, !dbg !1878
  %and244 = and i64 %sub243, 65536, !dbg !1878
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1878
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1878

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1878

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub248 = sub i64 %57, 1, !dbg !1878
  %and249 = and i64 %sub248, 32768, !dbg !1878
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1878
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1878

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1878

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub253 = sub i64 %58, 1, !dbg !1878
  %and254 = and i64 %sub253, 16384, !dbg !1878
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1878
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1878

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1878

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub258 = sub i64 %59, 1, !dbg !1878
  %and259 = and i64 %sub258, 8192, !dbg !1878
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1878
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1878

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1878

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub263 = sub i64 %60, 1, !dbg !1878
  %and264 = and i64 %sub263, 4096, !dbg !1878
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1878
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1878

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1878

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub268 = sub i64 %61, 1, !dbg !1878
  %and269 = and i64 %sub268, 2048, !dbg !1878
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1878
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1878

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1878

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub273 = sub i64 %62, 1, !dbg !1878
  %and274 = and i64 %sub273, 1024, !dbg !1878
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1878
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1878

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1878

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub278 = sub i64 %63, 1, !dbg !1878
  %and279 = and i64 %sub278, 512, !dbg !1878
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1878
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1878

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1878

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub283 = sub i64 %64, 1, !dbg !1878
  %and284 = and i64 %sub283, 256, !dbg !1878
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1878
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1878

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1878

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub288 = sub i64 %65, 1, !dbg !1878
  %and289 = and i64 %sub288, 128, !dbg !1878
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1878
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1878

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1878

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub293 = sub i64 %66, 1, !dbg !1878
  %and294 = and i64 %sub293, 64, !dbg !1878
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1878
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1878

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1878

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub298 = sub i64 %67, 1, !dbg !1878
  %and299 = and i64 %sub298, 32, !dbg !1878
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1878
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1878

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1878

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub303 = sub i64 %68, 1, !dbg !1878
  %and304 = and i64 %sub303, 16, !dbg !1878
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1878
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1878

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1878

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub308 = sub i64 %69, 1, !dbg !1878
  %and309 = and i64 %sub308, 8, !dbg !1878
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1878
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1878

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1878

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub313 = sub i64 %70, 1, !dbg !1878
  %and314 = and i64 %sub313, 4, !dbg !1878
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1878
  %71 = zext i1 %tobool315 to i64, !dbg !1878
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1878
  br label %cond.end, !dbg !1878

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1878
  br label %cond.end317, !dbg !1878

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1878
  br label %cond.end319, !dbg !1878

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1878
  br label %cond.end321, !dbg !1878

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1878
  br label %cond.end323, !dbg !1878

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1878
  br label %cond.end325, !dbg !1878

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1878
  br label %cond.end327, !dbg !1878

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1878
  br label %cond.end329, !dbg !1878

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1878
  br label %cond.end331, !dbg !1878

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1878
  br label %cond.end333, !dbg !1878

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1878
  br label %cond.end335, !dbg !1878

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1878
  br label %cond.end337, !dbg !1878

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1878
  br label %cond.end339, !dbg !1878

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1878
  br label %cond.end341, !dbg !1878

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1878
  br label %cond.end343, !dbg !1878

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1878
  br label %cond.end345, !dbg !1878

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1878
  br label %cond.end347, !dbg !1878

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1878
  br label %cond.end349, !dbg !1878

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1878
  br label %cond.end351, !dbg !1878

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1878
  br label %cond.end353, !dbg !1878

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1878
  br label %cond.end355, !dbg !1878

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1878
  br label %cond.end357, !dbg !1878

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1878
  br label %cond.end359, !dbg !1878

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1878
  br label %cond.end361, !dbg !1878

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1878
  br label %cond.end363, !dbg !1878

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1878
  br label %cond.end365, !dbg !1878

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1878
  br label %cond.end367, !dbg !1878

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1878
  br label %cond.end369, !dbg !1878

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1878
  br label %cond.end371, !dbg !1878

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1878
  br label %cond.end373, !dbg !1878

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1878
  br label %cond.end375, !dbg !1878

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1878
  br label %cond.end377, !dbg !1878

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1878
  br label %cond.end379, !dbg !1878

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1878
  br label %cond.end381, !dbg !1878

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1878
  br label %cond.end383, !dbg !1878

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1878
  br label %cond.end385, !dbg !1878

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1878
  br label %cond.end387, !dbg !1878

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1878
  br label %cond.end389, !dbg !1878

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1878
  br label %cond.end391, !dbg !1878

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1878
  br label %cond.end393, !dbg !1878

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1878
  br label %cond.end395, !dbg !1878

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1878
  br label %cond.end397, !dbg !1878

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1878
  br label %cond.end399, !dbg !1878

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1878
  br label %cond.end401, !dbg !1878

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1878
  br label %cond.end403, !dbg !1878

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1878
  br label %cond.end405, !dbg !1878

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1878
  br label %cond.end407, !dbg !1878

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1878
  br label %cond.end409, !dbg !1878

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1878
  br label %cond.end411, !dbg !1878

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1878
  br label %cond.end413, !dbg !1878

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1878
  br label %cond.end415, !dbg !1878

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1878
  br label %cond.end417, !dbg !1878

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1878
  br label %cond.end419, !dbg !1878

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1878
  br label %cond.end421, !dbg !1878

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1878
  br label %cond.end423, !dbg !1878

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1878
  br label %cond.end425, !dbg !1878

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1878
  br label %cond.end427, !dbg !1878

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1878
  br label %cond.end429, !dbg !1878

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1878
  br label %cond.end431, !dbg !1878

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1878
  br label %cond.end433, !dbg !1878

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1878
  br label %cond.end435, !dbg !1878

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1878
  br label %cond.end437, !dbg !1878

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1878
  br label %cond.end440, !dbg !1878

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1878

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1878
  br label %cond.end444, !dbg !1878

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1878
  %sub443 = sub i64 %72, 1, !dbg !1878
  %call = call i32 @__ilog2_u64(i64 %sub443) #8, !dbg !1878
  br label %cond.end444, !dbg !1878

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1878
  %sub446 = sub i32 %cond445, 12, !dbg !1879
  %add = add i32 %sub446, 1, !dbg !1880
  store i32 %add, i32* %retval, align 4, !dbg !1881
  br label %return, !dbg !1881

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1882
  %dec = add i64 %73, -1, !dbg !1882
  store i64 %dec, i64* %size.addr, align 8, !dbg !1882
  %74 = load i64, i64* %size.addr, align 8, !dbg !1883
  %shr = lshr i64 %74, 12, !dbg !1883
  store i64 %shr, i64* %size.addr, align 8, !dbg !1883
  %75 = load i64, i64* %size.addr, align 8, !dbg !1884
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1861
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1885
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1886
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !1885, !srcloc !1887
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1885
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1888
  %add.i = add i32 %79, 1, !dbg !1889
  store i32 %add.i, i32* %retval, align 4, !dbg !1890
  br label %return, !dbg !1890

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1891
  ret i32 %80, !dbg !1891
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1892 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1853, metadata !DIExpression()), !dbg !1896
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1860, metadata !DIExpression()), !dbg !1898
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1899, metadata !DIExpression()), !dbg !1900
  %0 = load i64, i64* %n.addr, align 8, !dbg !1901
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1898
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1902
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1903
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !1902, !srcloc !1887
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1902
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1904
  %add.i = add i32 %4, 1, !dbg !1905
  %sub = sub i32 %add.i, 1, !dbg !1906
  ret i32 %sub, !dbg !1907
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1908 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1912, metadata !DIExpression()), !dbg !1913
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1914, metadata !DIExpression()), !dbg !1915
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1916, metadata !DIExpression()), !dbg !1917
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1918, metadata !DIExpression()), !dbg !1919
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1920
  ret i8* %0, !dbg !1921
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind readnone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/base/map.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !10, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !4, line: 26, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 10, baseType: !5, size: 32, elements: !12)
!11 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!14 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !16, line: 305, baseType: !5, size: 32, elements: !17)
!16 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!17 = !{!18, !19, !20, !21}
!18 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!21 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!22 = !{!5, !23, !25}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !24, line: 148, baseType: !5)
!24 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !{i32 7, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"Code Model", i32 2}
!30 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!31 = distinct !DISubprogram(name: "kobj_map", scope: !1, file: !1, line: 32, type: !32, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !98)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !35, !45, !52, !54, !58, !697, !25}
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_map", file: !1, line: 19, size: 16384, elements: !37)
!37 = !{!38, !703}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "probes", scope: !36, file: !1, line: 28, baseType: !39, size: 16320)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 16320, elements: !701)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "probe", file: !1, line: 20, size: 448, elements: !42)
!42 = !{!43, !44, !51, !53, !57, !696, !700}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !41, file: !1, line: 21, baseType: !40, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !41, file: !1, line: 22, baseType: !45, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !24, line: 16, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !24, line: 13, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !48, line: 21, baseType: !49)
!48 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !50, line: 27, baseType: !5)
!50 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!51 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !41, file: !1, line: 23, baseType: !52, size: 64, offset: 128)
!52 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !41, file: !1, line: 24, baseType: !54, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !56, line: 76, flags: DIFlagFwdDecl)
!56 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!57 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !41, file: !1, line: 25, baseType: !58, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "kobj_probe_t", file: !60, line: 11, baseType: !61)
!60 = !DIFile(filename: "./include/linux/kobj_map.h", directory: "/home/lizy2001/genbc/linux")
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !45, !695, !25}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !65, line: 64, size: 512, elements: !66)
!65 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !71, !77, !78, !138, !521, !680, !690, !691, !692, !693, !694}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !65, line: 65, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !64, file: !65, line: 66, baseType: !72, size: 128, offset: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !24, line: 178, size: 128, elements: !73)
!73 = !{!74, !76}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !72, file: !24, line: 179, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !72, file: !24, line: 179, baseType: !75, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !64, file: !65, line: 67, baseType: !63, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !64, file: !65, line: 68, baseType: !79, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !65, line: 192, size: 704, elements: !81)
!81 = !{!82, !83, !99, !100}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !80, file: !65, line: 193, baseType: !72, size: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !80, file: !65, line: 194, baseType: !84, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !85, line: 83, baseType: !86)
!85 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !85, line: 71, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !85, line: 72, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !86, file: !85, line: 72, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !89, file: !85, line: 73, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !85, line: 20, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !92, file: !85, line: 21, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !96, line: 25, baseType: !97)
!96 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 25, elements: !98)
!98 = !{}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !80, file: !65, line: 195, baseType: !64, size: 512, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !80, file: !65, line: 196, baseType: !101, size: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !65, line: 156, size: 192, elements: !104)
!104 = !{!105, !110, !115}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !103, file: !65, line: 157, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!34, !79, !63}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !65, line: 158, baseType: !111, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!68, !79, !63}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !103, file: !65, line: 159, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!34, !79, !63, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !65, line: 148, size: 20736, elements: !122)
!122 = !{!123, !128, !132, !133, !137}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !121, file: !65, line: 149, baseType: !124, size: 192)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 192, elements: !126)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!126 = !{!127}
!127 = !DISubrange(count: 3)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !121, file: !65, line: 150, baseType: !129, size: 4096, offset: 192)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 4096, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !121, file: !65, line: 151, baseType: !34, size: 32, offset: 4288)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !121, file: !65, line: 152, baseType: !134, size: 16384, offset: 4320)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 16384, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 2048)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !121, file: !65, line: 153, baseType: !34, size: 32, offset: 20704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !64, file: !65, line: 69, baseType: !139, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !65, line: 138, size: 448, elements: !141)
!141 = !{!142, !146, !175, !177, !466, !499, !503}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !140, file: !65, line: 139, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !63}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !140, file: !65, line: 140, baseType: !147, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !150, line: 230, size: 128, elements: !151)
!150 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !168}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !149, file: !150, line: 231, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !63, !161, !125}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !24, line: 60, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !158, line: 73, baseType: !159)
!158 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !158, line: 15, baseType: !160)
!160 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !150, line: 30, size: 128, elements: !163)
!163 = !{!164, !165}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !150, line: 31, baseType: !68, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !162, file: !150, line: 32, baseType: !166, size: 16, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !24, line: 19, baseType: !167)
!167 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !149, file: !150, line: 232, baseType: !169, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!156, !63, !161, !68, !172}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 55, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !158, line: 72, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !158, line: 16, baseType: !52)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !140, file: !65, line: 141, baseType: !176, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !140, file: !65, line: 142, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !150, line: 84, size: 320, elements: !182)
!182 = !{!183, !184, !188, !463, !464}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !150, line: 85, baseType: !68, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !181, file: !150, line: 86, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!166, !63, !161, !34}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !181, file: !150, line: 88, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!166, !63, !192, !34}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !150, line: 168, size: 448, elements: !194)
!194 = !{!195, !196, !197, !198, !208, !209}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !193, file: !150, line: 169, baseType: !162, size: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !193, file: !150, line: 170, baseType: !172, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !193, file: !150, line: 171, baseType: !25, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !193, file: !150, line: 172, baseType: !199, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!156, !202, !63, !192, !125, !205, !172}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !204, line: 526, flags: DIFlagFwdDecl)
!204 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !24, line: 46, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !158, line: 88, baseType: !207)
!207 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !193, file: !150, line: 174, baseType: !199, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !193, file: !150, line: 176, baseType: !210, size: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!34, !202, !63, !192, !213}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !215, line: 305, size: 1472, elements: !216)
!215 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!216 = !{!217, !218, !219, !220, !221, !229, !230, !437, !443, !444, !449, !450, !453, !457, !458, !459, !460, !461}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !214, file: !215, line: 308, baseType: !52, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !214, file: !215, line: 309, baseType: !52, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !214, file: !215, line: 313, baseType: !213, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !214, file: !215, line: 313, baseType: !213, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !214, file: !215, line: 315, baseType: !222, size: 192, align: 64, offset: 256)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !223, line: 24, size: 192, align: 64, elements: !224)
!223 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!224 = !{!225, !226, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !222, file: !223, line: 25, baseType: !52, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !222, file: !223, line: 26, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !222, file: !223, line: 27, baseType: !227, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !214, file: !215, line: 323, baseType: !52, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !214, file: !215, line: 327, baseType: !231, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !215, line: 388, size: 7296, elements: !233)
!233 = !{!234, !433}
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !215, line: 389, baseType: !235, size: 7296)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !215, line: 389, size: 7296, elements: !236)
!236 = !{!237, !238, !242, !246, !250, !251, !252, !253, !254, !262, !267, !268, !269, !270, !279, !280, !281, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !316, !324, !327, !375, !376, !401, !402, !405, !409, !410, !413, !414, !417, !420, !432}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !235, file: !215, line: 390, baseType: !213, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !235, file: !215, line: 391, baseType: !239, size: 64, offset: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !223, line: 31, size: 64, elements: !240)
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !239, file: !223, line: 32, baseType: !227, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !235, file: !215, line: 392, baseType: !243, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !48, line: 23, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !50, line: 31, baseType: !245)
!245 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !235, file: !215, line: 394, baseType: !247, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!52, !202, !52, !52, !52, !52}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !235, file: !215, line: 398, baseType: !52, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !235, file: !215, line: 399, baseType: !52, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !235, file: !215, line: 405, baseType: !52, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !235, file: !215, line: 406, baseType: !52, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !235, file: !215, line: 407, baseType: !255, size: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !204, line: 286, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 286, size: 64, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !257, file: !204, line: 286, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !261, line: 18, baseType: !52)
!261 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!262 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !235, file: !215, line: 416, baseType: !263, size: 32, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !24, line: 168, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 166, size: 32, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !264, file: !24, line: 167, baseType: !34, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !235, file: !215, line: 428, baseType: !263, size: 32, offset: 608)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !235, file: !215, line: 437, baseType: !263, size: 32, offset: 640)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !235, file: !215, line: 447, baseType: !263, size: 32, offset: 672)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !235, file: !215, line: 450, baseType: !271, size: 64, offset: 704)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !272, line: 13, baseType: !273)
!272 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !24, line: 175, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 173, size: 64, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !274, file: !24, line: 174, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !48, line: 22, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !50, line: 30, baseType: !207)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !235, file: !215, line: 452, baseType: !34, size: 32, offset: 768)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !235, file: !215, line: 454, baseType: !84, offset: 800)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !235, file: !215, line: 457, baseType: !282, size: 256, offset: 832)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !283, line: 35, size: 256, elements: !284)
!283 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!284 = !{!285, !286, !287, !289}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !282, file: !283, line: 36, baseType: !271, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !282, file: !283, line: 42, baseType: !271, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !282, file: !283, line: 46, baseType: !288, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !85, line: 29, baseType: !92)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !282, file: !283, line: 47, baseType: !72, size: 128, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !235, file: !215, line: 459, baseType: !72, size: 128, offset: 1088)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !235, file: !215, line: 466, baseType: !52, size: 64, offset: 1216)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !235, file: !215, line: 467, baseType: !52, size: 64, offset: 1280)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !235, file: !215, line: 469, baseType: !52, size: 64, offset: 1344)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !235, file: !215, line: 470, baseType: !52, size: 64, offset: 1408)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !235, file: !215, line: 471, baseType: !273, size: 64, offset: 1472)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !235, file: !215, line: 472, baseType: !52, size: 64, offset: 1536)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !235, file: !215, line: 473, baseType: !52, size: 64, offset: 1600)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !235, file: !215, line: 474, baseType: !52, size: 64, offset: 1664)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !235, file: !215, line: 475, baseType: !52, size: 64, offset: 1728)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !235, file: !215, line: 477, baseType: !84, offset: 1792)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !235, file: !215, line: 478, baseType: !52, size: 64, offset: 1792)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !235, file: !215, line: 478, baseType: !52, size: 64, offset: 1856)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !235, file: !215, line: 478, baseType: !52, size: 64, offset: 1920)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !235, file: !215, line: 478, baseType: !52, size: 64, offset: 1984)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !235, file: !215, line: 479, baseType: !52, size: 64, offset: 2048)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !235, file: !215, line: 479, baseType: !52, size: 64, offset: 2112)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !235, file: !215, line: 479, baseType: !52, size: 64, offset: 2176)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !235, file: !215, line: 480, baseType: !52, size: 64, offset: 2240)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !235, file: !215, line: 480, baseType: !52, size: 64, offset: 2304)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !235, file: !215, line: 480, baseType: !52, size: 64, offset: 2368)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !235, file: !215, line: 480, baseType: !52, size: 64, offset: 2432)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !235, file: !215, line: 482, baseType: !313, size: 2816, offset: 2496)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2816, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 44)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !235, file: !215, line: 488, baseType: !317, size: 256, offset: 5312)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !318, line: 60, size: 256, elements: !319)
!318 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !317, file: !318, line: 61, baseType: !321, size: 256)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 256, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 4)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !235, file: !215, line: 490, baseType: !325, size: 64, offset: 5568)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !215, line: 490, flags: DIFlagFwdDecl)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !235, file: !215, line: 493, baseType: !328, size: 896, offset: 5632)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !329, line: 53, baseType: !330)
!329 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !329, line: 13, size: 896, elements: !331)
!331 = !{!332, !333, !334, !335, !338, !339, !346, !347, !367, !368, !371}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !330, file: !329, line: 18, baseType: !243, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !330, file: !329, line: 28, baseType: !273, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !330, file: !329, line: 31, baseType: !282, size: 256, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !330, file: !329, line: 32, baseType: !336, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !329, line: 32, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !330, file: !329, line: 37, baseType: !167, size: 16, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !330, file: !329, line: 40, baseType: !340, size: 192, offset: 512)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !341, line: 53, size: 192, elements: !342)
!341 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!342 = !{!343, !344, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !340, file: !341, line: 54, baseType: !271, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !340, file: !341, line: 55, baseType: !84, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !340, file: !341, line: 59, baseType: !72, size: 128, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !330, file: !329, line: 41, baseType: !25, size: 64, offset: 704)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !330, file: !329, line: 42, baseType: !348, size: 64, offset: 768)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !351, line: 13, size: 896, elements: !352)
!351 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!352 = !{!353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !350, file: !351, line: 14, baseType: !25, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !350, file: !351, line: 15, baseType: !52, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !350, file: !351, line: 17, baseType: !52, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !350, file: !351, line: 17, baseType: !52, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !350, file: !351, line: 19, baseType: !160, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !350, file: !351, line: 21, baseType: !160, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !350, file: !351, line: 22, baseType: !160, size: 64, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !350, file: !351, line: 23, baseType: !160, size: 64, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !350, file: !351, line: 24, baseType: !160, size: 64, offset: 512)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !350, file: !351, line: 25, baseType: !160, size: 64, offset: 576)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !350, file: !351, line: 26, baseType: !160, size: 64, offset: 640)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !350, file: !351, line: 27, baseType: !160, size: 64, offset: 704)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !350, file: !351, line: 28, baseType: !160, size: 64, offset: 768)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !350, file: !351, line: 29, baseType: !160, size: 64, offset: 832)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !330, file: !329, line: 44, baseType: !263, size: 32, offset: 832)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !330, file: !329, line: 50, baseType: !369, size: 16, offset: 864)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !48, line: 19, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !50, line: 24, baseType: !167)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !330, file: !329, line: 51, baseType: !372, size: 16, offset: 880)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !48, line: 18, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !50, line: 23, baseType: !374)
!374 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !235, file: !215, line: 495, baseType: !52, size: 64, offset: 6528)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !235, file: !215, line: 497, baseType: !377, size: 64, offset: 6592)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !215, line: 381, size: 384, elements: !379)
!379 = !{!380, !381, !390}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !378, file: !215, line: 382, baseType: !263, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !378, file: !215, line: 383, baseType: !382, size: 128, offset: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !215, line: 376, size: 128, elements: !383)
!383 = !{!384, !388}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !382, file: !215, line: 377, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !387, line: 8, flags: DIFlagFwdDecl)
!387 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !215, line: 378, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !378, file: !215, line: 384, baseType: !391, size: 192, offset: 192)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !392, line: 26, size: 192, elements: !393)
!392 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !391, file: !392, line: 27, baseType: !5, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !391, file: !392, line: 28, baseType: !396, size: 128, offset: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !397, line: 43, size: 128, elements: !398)
!397 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !396, file: !397, line: 44, baseType: !288)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !396, file: !397, line: 45, baseType: !72, size: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !235, file: !215, line: 500, baseType: !84, offset: 6656)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !235, file: !215, line: 501, baseType: !403, size: 64, offset: 6656)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !215, line: 387, flags: DIFlagFwdDecl)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !235, file: !215, line: 516, baseType: !406, size: 64, offset: 6720)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !408, line: 18, flags: DIFlagFwdDecl)
!408 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!409 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !235, file: !215, line: 519, baseType: !202, size: 64, offset: 6784)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !235, file: !215, line: 521, baseType: !411, size: 64, offset: 6848)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !215, line: 521, flags: DIFlagFwdDecl)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !235, file: !215, line: 545, baseType: !263, size: 32, offset: 6912)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !235, file: !215, line: 548, baseType: !415, size: 8, offset: 6944)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !24, line: 30, baseType: !416)
!416 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !235, file: !215, line: 550, baseType: !418, offset: 6952)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !419, line: 142, elements: !98)
!419 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!420 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !235, file: !215, line: 554, baseType: !421, size: 256, offset: 6976)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !422, line: 102, size: 256, elements: !423)
!422 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!423 = !{!424, !425, !426}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !421, file: !422, line: 103, baseType: !271, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !421, file: !422, line: 104, baseType: !72, size: 128, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !421, file: !422, line: 105, baseType: !427, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !422, line: 21, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !235, file: !215, line: 557, baseType: !47, size: 32, offset: 7232)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !232, file: !215, line: 565, baseType: !434, offset: 7296)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: -1)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !214, file: !215, line: 333, baseType: !438, size: 64, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !204, line: 284, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !204, line: 284, size: 64, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !439, file: !204, line: 284, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !261, line: 19, baseType: !52)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !214, file: !215, line: 334, baseType: !52, size: 64, offset: 640)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !214, file: !215, line: 343, baseType: !445, size: 256, offset: 704)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !214, file: !215, line: 340, size: 256, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !445, file: !215, line: 341, baseType: !222, size: 192, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !445, file: !215, line: 342, baseType: !52, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !214, file: !215, line: 351, baseType: !72, size: 128, offset: 960)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !214, file: !215, line: 353, baseType: !451, size: 64, offset: 1088)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !215, line: 353, flags: DIFlagFwdDecl)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !214, file: !215, line: 356, baseType: !454, size: 64, offset: 1152)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !215, line: 356, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !214, file: !215, line: 359, baseType: !52, size: 64, offset: 1216)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !214, file: !215, line: 361, baseType: !202, size: 64, offset: 1280)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !214, file: !215, line: 362, baseType: !25, size: 64, offset: 1344)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !214, file: !215, line: 365, baseType: !271, size: 64, offset: 1408)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !214, file: !215, line: 373, baseType: !462, offset: 1472)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !215, line: 296, elements: !98)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !181, file: !150, line: 90, baseType: !176, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !181, file: !150, line: 91, baseType: !465, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !140, file: !65, line: 143, baseType: !467, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!470, !63}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !4, line: 39, size: 384, elements: !473)
!473 = !{!474, !475, !479, !483, !491, !495}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !4, line: 40, baseType: !3, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !472, file: !4, line: 41, baseType: !476, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!415}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !472, file: !4, line: 42, baseType: !480, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!25}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !472, file: !4, line: 43, baseType: !484, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!487, !489}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !4, line: 19, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !472, file: !4, line: 44, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!487}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !472, file: !4, line: 45, baseType: !496, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !25}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !140, file: !65, line: 144, baseType: !500, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!487, !63}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !140, file: !65, line: 145, baseType: !504, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !63, !507, !514}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !408, line: 23, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !408, line: 21, size: 32, elements: !510)
!510 = !{!511}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !509, file: !408, line: 22, baseType: !512, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !24, line: 32, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !158, line: 49, baseType: !5)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !408, line: 28, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !408, line: 26, size: 32, elements: !517)
!517 = !{!518}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !516, file: !408, line: 27, baseType: !519, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !24, line: 33, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !158, line: 50, baseType: !5)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !64, file: !65, line: 70, baseType: !522, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !524, line: 123, size: 1024, elements: !525)
!524 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533, !673, !674, !675, !676, !677}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !523, file: !524, line: 124, baseType: !263, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !523, file: !524, line: 125, baseType: !263, size: 32, offset: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !523, file: !524, line: 135, baseType: !522, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !523, file: !524, line: 136, baseType: !68, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !523, file: !524, line: 138, baseType: !222, size: 192, align: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !523, file: !524, line: 140, baseType: !487, size: 64, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !523, file: !524, line: 141, baseType: !5, size: 32, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !524, line: 142, baseType: !534, size: 256, offset: 512)
!534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !523, file: !524, line: 142, size: 256, elements: !535)
!535 = !{!536, !596, !600}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !534, file: !524, line: 143, baseType: !537, size: 192)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !524, line: 91, size: 192, elements: !538)
!538 = !{!539, !540, !541}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !537, file: !524, line: 92, baseType: !52, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !537, file: !524, line: 94, baseType: !239, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !537, file: !524, line: 100, baseType: !542, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !524, line: 180, size: 704, elements: !544)
!544 = !{!545, !546, !547, !560, !561, !562, !588, !589}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !543, file: !524, line: 182, baseType: !522, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !524, line: 183, baseType: !5, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !543, file: !524, line: 186, baseType: !548, size: 192, offset: 128)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !549, line: 19, size: 192, elements: !550)
!549 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!550 = !{!551, !558, !559}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !548, file: !549, line: 20, baseType: !552, size: 128)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !553, line: 292, size: 128, elements: !554)
!553 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!554 = !{!555, !556, !557}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !552, file: !553, line: 293, baseType: !84)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !552, file: !553, line: 295, baseType: !23, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !552, file: !553, line: 296, baseType: !25, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !548, file: !549, line: 21, baseType: !5, size: 32, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !548, file: !549, line: 22, baseType: !5, size: 32, offset: 160)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !543, file: !524, line: 187, baseType: !47, size: 32, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !543, file: !524, line: 188, baseType: !47, size: 32, offset: 352)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !543, file: !524, line: 189, baseType: !563, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !524, line: 168, size: 320, elements: !565)
!565 = !{!566, !572, !576, !580, !584}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !564, file: !524, line: 169, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!34, !570, !542}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !204, line: 539, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !564, file: !524, line: 171, baseType: !573, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!34, !522, !68, !166}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !564, file: !524, line: 173, baseType: !577, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!34, !522}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !564, file: !524, line: 174, baseType: !581, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!34, !522, !522, !68}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !564, file: !524, line: 176, baseType: !585, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!34, !570, !522, !542}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !543, file: !524, line: 192, baseType: !72, size: 128, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !543, file: !524, line: 194, baseType: !590, size: 128, offset: 576)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !591, line: 40, baseType: !592)
!591 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !591, line: 36, size: 128, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !592, file: !591, line: 37, baseType: !84)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !592, file: !591, line: 38, baseType: !72, size: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !534, file: !524, line: 144, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !524, line: 103, size: 64, elements: !598)
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !597, file: !524, line: 104, baseType: !522, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !534, file: !524, line: 145, baseType: !601, size: 256)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !524, line: 107, size: 256, elements: !602)
!602 = !{!603, !668, !671, !672}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !601, file: !524, line: 108, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !524, line: 217, size: 768, elements: !607)
!607 = !{!608, !628, !632, !636, !641, !645, !649, !653, !654, !655, !656, !664}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !606, file: !524, line: 222, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!34, !612}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !524, line: 197, size: 1088, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !613, file: !524, line: 199, baseType: !522, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !613, file: !524, line: 200, baseType: !202, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !613, file: !524, line: 201, baseType: !570, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !613, file: !524, line: 202, baseType: !25, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !613, file: !524, line: 205, baseType: !340, size: 192, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !613, file: !524, line: 206, baseType: !340, size: 192, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !613, file: !524, line: 207, baseType: !34, size: 32, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !613, file: !524, line: 208, baseType: !72, size: 128, offset: 704)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !613, file: !524, line: 209, baseType: !125, size: 64, offset: 832)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !613, file: !524, line: 211, baseType: !172, size: 64, offset: 896)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !613, file: !524, line: 212, baseType: !415, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !613, file: !524, line: 213, baseType: !415, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !613, file: !524, line: 214, baseType: !454, size: 64, offset: 1024)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !606, file: !524, line: 223, baseType: !629, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !612}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !606, file: !524, line: 236, baseType: !633, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!34, !570, !25}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !606, file: !524, line: 238, baseType: !637, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!25, !570, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !606, file: !524, line: 239, baseType: !642, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!25, !570, !25, !640}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !606, file: !524, line: 240, baseType: !646, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !570, !25}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !606, file: !524, line: 242, baseType: !650, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!156, !612, !125, !172, !205}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !606, file: !524, line: 252, baseType: !172, size: 64, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !606, file: !524, line: 259, baseType: !415, size: 8, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !606, file: !524, line: 260, baseType: !650, size: 64, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !606, file: !524, line: 263, baseType: !657, size: 64, offset: 640)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!660, !612, !662}
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !661, line: 52, baseType: !5)
!661 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !524, line: 27, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !606, file: !524, line: 266, baseType: !665, size: 64, offset: 704)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!34, !612, !213}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !601, file: !524, line: 109, baseType: !669, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !524, line: 31, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !601, file: !524, line: 110, baseType: !205, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !601, file: !524, line: 111, baseType: !522, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !523, file: !524, line: 148, baseType: !25, size: 64, offset: 768)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !523, file: !524, line: 154, baseType: !243, size: 64, offset: 832)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !523, file: !524, line: 156, baseType: !167, size: 16, offset: 896)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !523, file: !524, line: 157, baseType: !166, size: 16, offset: 912)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !523, file: !524, line: 158, baseType: !678, size: 64, offset: 960)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !524, line: 32, flags: DIFlagFwdDecl)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !64, file: !65, line: 71, baseType: !681, size: 32, offset: 448)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !682, line: 19, size: 32, elements: !683)
!682 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !681, file: !682, line: 20, baseType: !685, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !686, line: 113, baseType: !687)
!686 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !686, line: 111, size: 32, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !687, file: !686, line: 112, baseType: !263, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !64, file: !65, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !64, file: !65, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !64, file: !65, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !64, file: !65, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !64, file: !65, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !41, file: !1, line: 26, baseType: !697, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!34, !45, !25}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !41, file: !1, line: 27, baseType: !25, size: 64, offset: 384)
!701 = !{!702}
!702 = !DISubrange(count: 255)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !36, file: !1, line: 29, baseType: !704, size: 64, offset: 16320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!705 = !DILocalVariable(name: "domain", arg: 1, scope: !31, file: !1, line: 32, type: !35)
!706 = !DILocation(line: 32, column: 31, scope: !31)
!707 = !DILocalVariable(name: "dev", arg: 2, scope: !31, file: !1, line: 32, type: !45)
!708 = !DILocation(line: 32, column: 45, scope: !31)
!709 = !DILocalVariable(name: "range", arg: 3, scope: !31, file: !1, line: 32, type: !52)
!710 = !DILocation(line: 32, column: 64, scope: !31)
!711 = !DILocalVariable(name: "module", arg: 4, scope: !31, file: !1, line: 33, type: !54)
!712 = !DILocation(line: 33, column: 22, scope: !31)
!713 = !DILocalVariable(name: "probe", arg: 5, scope: !31, file: !1, line: 33, type: !58)
!714 = !DILocation(line: 33, column: 44, scope: !31)
!715 = !DILocalVariable(name: "lock", arg: 6, scope: !31, file: !1, line: 34, type: !697)
!716 = !DILocation(line: 34, column: 13, scope: !31)
!717 = !DILocalVariable(name: "data", arg: 7, scope: !31, file: !1, line: 34, type: !25)
!718 = !DILocation(line: 34, column: 41, scope: !31)
!719 = !DILocalVariable(name: "n", scope: !31, file: !1, line: 36, type: !5)
!720 = !DILocation(line: 36, column: 11, scope: !31)
!721 = !DILocation(line: 36, column: 15, scope: !31)
!722 = !DILocation(line: 36, column: 40, scope: !31)
!723 = !DILocation(line: 36, column: 38, scope: !31)
!724 = !DILocation(line: 36, column: 51, scope: !31)
!725 = !DILocalVariable(name: "index", scope: !31, file: !1, line: 37, type: !5)
!726 = !DILocation(line: 37, column: 11, scope: !31)
!727 = !DILocation(line: 37, column: 19, scope: !31)
!728 = !DILocalVariable(name: "i", scope: !31, file: !1, line: 38, type: !5)
!729 = !DILocation(line: 38, column: 11, scope: !31)
!730 = !DILocalVariable(name: "p", scope: !31, file: !1, line: 39, type: !40)
!731 = !DILocation(line: 39, column: 16, scope: !31)
!732 = !DILocation(line: 41, column: 6, scope: !733)
!733 = distinct !DILexicalBlock(scope: !31, file: !1, line: 41, column: 6)
!734 = !DILocation(line: 41, column: 8, scope: !733)
!735 = !DILocation(line: 41, column: 6, scope: !31)
!736 = !DILocation(line: 42, column: 5, scope: !733)
!737 = !DILocation(line: 42, column: 3, scope: !733)
!738 = !DILocation(line: 44, column: 20, scope: !31)
!739 = !DILocation(line: 44, column: 6, scope: !31)
!740 = !DILocation(line: 44, column: 4, scope: !31)
!741 = !DILocation(line: 45, column: 6, scope: !742)
!742 = distinct !DILexicalBlock(scope: !31, file: !1, line: 45, column: 6)
!743 = !DILocation(line: 45, column: 8, scope: !742)
!744 = !DILocation(line: 45, column: 6, scope: !31)
!745 = !DILocation(line: 46, column: 3, scope: !742)
!746 = !DILocation(line: 48, column: 9, scope: !747)
!747 = distinct !DILexicalBlock(scope: !31, file: !1, line: 48, column: 2)
!748 = !DILocation(line: 48, column: 7, scope: !747)
!749 = !DILocation(line: 48, column: 14, scope: !750)
!750 = distinct !DILexicalBlock(scope: !747, file: !1, line: 48, column: 2)
!751 = !DILocation(line: 48, column: 18, scope: !750)
!752 = !DILocation(line: 48, column: 16, scope: !750)
!753 = !DILocation(line: 48, column: 2, scope: !747)
!754 = !DILocation(line: 49, column: 14, scope: !755)
!755 = distinct !DILexicalBlock(scope: !750, file: !1, line: 48, column: 31)
!756 = !DILocation(line: 49, column: 3, scope: !755)
!757 = !DILocation(line: 49, column: 6, scope: !755)
!758 = !DILocation(line: 49, column: 12, scope: !755)
!759 = !DILocation(line: 50, column: 12, scope: !755)
!760 = !DILocation(line: 50, column: 3, scope: !755)
!761 = !DILocation(line: 50, column: 6, scope: !755)
!762 = !DILocation(line: 50, column: 10, scope: !755)
!763 = !DILocation(line: 51, column: 13, scope: !755)
!764 = !DILocation(line: 51, column: 3, scope: !755)
!765 = !DILocation(line: 51, column: 6, scope: !755)
!766 = !DILocation(line: 51, column: 11, scope: !755)
!767 = !DILocation(line: 52, column: 12, scope: !755)
!768 = !DILocation(line: 52, column: 3, scope: !755)
!769 = !DILocation(line: 52, column: 6, scope: !755)
!770 = !DILocation(line: 52, column: 10, scope: !755)
!771 = !DILocation(line: 53, column: 14, scope: !755)
!772 = !DILocation(line: 53, column: 3, scope: !755)
!773 = !DILocation(line: 53, column: 6, scope: !755)
!774 = !DILocation(line: 53, column: 12, scope: !755)
!775 = !DILocation(line: 54, column: 13, scope: !755)
!776 = !DILocation(line: 54, column: 3, scope: !755)
!777 = !DILocation(line: 54, column: 6, scope: !755)
!778 = !DILocation(line: 54, column: 11, scope: !755)
!779 = !DILocation(line: 55, column: 2, scope: !755)
!780 = !DILocation(line: 48, column: 22, scope: !750)
!781 = !DILocation(line: 48, column: 27, scope: !750)
!782 = !DILocation(line: 48, column: 2, scope: !750)
!783 = distinct !{!783, !753, !784}
!784 = !DILocation(line: 55, column: 2, scope: !747)
!785 = !DILocation(line: 56, column: 13, scope: !31)
!786 = !DILocation(line: 56, column: 21, scope: !31)
!787 = !DILocation(line: 56, column: 2, scope: !31)
!788 = !DILocation(line: 57, column: 9, scope: !789)
!789 = distinct !DILexicalBlock(scope: !31, file: !1, line: 57, column: 2)
!790 = !DILocation(line: 57, column: 19, scope: !789)
!791 = !DILocation(line: 57, column: 16, scope: !789)
!792 = !DILocation(line: 57, column: 7, scope: !789)
!793 = !DILocation(line: 57, column: 22, scope: !794)
!794 = distinct !DILexicalBlock(scope: !789, file: !1, line: 57, column: 2)
!795 = !DILocation(line: 57, column: 26, scope: !794)
!796 = !DILocation(line: 57, column: 24, scope: !794)
!797 = !DILocation(line: 57, column: 2, scope: !789)
!798 = !DILocalVariable(name: "s", scope: !799, file: !1, line: 58, type: !800)
!799 = distinct !DILexicalBlock(scope: !794, file: !1, line: 57, column: 48)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!801 = !DILocation(line: 58, column: 18, scope: !799)
!802 = !DILocation(line: 58, column: 23, scope: !799)
!803 = !DILocation(line: 58, column: 31, scope: !799)
!804 = !DILocation(line: 58, column: 38, scope: !799)
!805 = !DILocation(line: 58, column: 44, scope: !799)
!806 = !DILocation(line: 59, column: 3, scope: !799)
!807 = !DILocation(line: 59, column: 11, scope: !799)
!808 = !DILocation(line: 59, column: 10, scope: !799)
!809 = !DILocation(line: 59, column: 13, scope: !799)
!810 = !DILocation(line: 59, column: 18, scope: !799)
!811 = !DILocation(line: 59, column: 17, scope: !799)
!812 = !DILocation(line: 59, column: 22, scope: !799)
!813 = !DILocation(line: 59, column: 30, scope: !799)
!814 = !DILocation(line: 59, column: 28, scope: !799)
!815 = !DILocation(line: 0, scope: !799)
!816 = !DILocation(line: 60, column: 11, scope: !799)
!817 = !DILocation(line: 60, column: 10, scope: !799)
!818 = !DILocation(line: 60, column: 15, scope: !799)
!819 = !DILocation(line: 60, column: 6, scope: !799)
!820 = distinct !{!820, !806, !818}
!821 = !DILocation(line: 61, column: 14, scope: !799)
!822 = !DILocation(line: 61, column: 13, scope: !799)
!823 = !DILocation(line: 61, column: 3, scope: !799)
!824 = !DILocation(line: 61, column: 6, scope: !799)
!825 = !DILocation(line: 61, column: 11, scope: !799)
!826 = !DILocation(line: 62, column: 8, scope: !799)
!827 = !DILocation(line: 62, column: 4, scope: !799)
!828 = !DILocation(line: 62, column: 6, scope: !799)
!829 = !DILocation(line: 63, column: 2, scope: !799)
!830 = !DILocation(line: 57, column: 30, scope: !794)
!831 = !DILocation(line: 57, column: 35, scope: !794)
!832 = !DILocation(line: 57, column: 44, scope: !794)
!833 = !DILocation(line: 57, column: 2, scope: !794)
!834 = distinct !{!834, !797, !835}
!835 = !DILocation(line: 63, column: 2, scope: !789)
!836 = !DILocation(line: 64, column: 15, scope: !31)
!837 = !DILocation(line: 64, column: 23, scope: !31)
!838 = !DILocation(line: 64, column: 2, scope: !31)
!839 = !DILocation(line: 65, column: 2, scope: !31)
!840 = !DILocation(line: 66, column: 1, scope: !31)
!841 = distinct !DISubprogram(name: "kmalloc_array", scope: !16, file: !16, line: 584, type: !842, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !98)
!842 = !DISubroutineType(types: !843)
!843 = !{!25, !172, !172, !23}
!844 = !DILocalVariable(name: "s", arg: 1, scope: !845, file: !16, line: 445, type: !848)
!845 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !16, file: !16, line: 445, type: !846, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !98)
!846 = !DISubroutineType(types: !847)
!847 = !{!25, !848, !23, !172}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !215, line: 117, flags: DIFlagFwdDecl)
!850 = !DILocation(line: 445, column: 72, scope: !845, inlinedAt: !851)
!851 = distinct !DILocation(line: 552, column: 10, scope: !852, inlinedAt: !857)
!852 = distinct !DILexicalBlock(scope: !853, file: !16, line: 540, column: 34)
!853 = distinct !DILexicalBlock(scope: !854, file: !16, line: 540, column: 6)
!854 = distinct !DISubprogram(name: "kmalloc", scope: !16, file: !16, line: 538, type: !855, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !98)
!855 = !DISubroutineType(types: !856)
!856 = !{!25, !172, !23}
!857 = distinct !DILocation(line: 591, column: 10, scope: !858)
!858 = distinct !DILexicalBlock(scope: !841, file: !16, line: 590, column: 6)
!859 = !DILocalVariable(name: "flags", arg: 2, scope: !845, file: !16, line: 446, type: !23)
!860 = !DILocation(line: 446, column: 9, scope: !845, inlinedAt: !851)
!861 = !DILocalVariable(name: "size", arg: 3, scope: !845, file: !16, line: 446, type: !172)
!862 = !DILocation(line: 446, column: 23, scope: !845, inlinedAt: !851)
!863 = !DILocalVariable(name: "ret", scope: !845, file: !16, line: 448, type: !25)
!864 = !DILocation(line: 448, column: 8, scope: !845, inlinedAt: !851)
!865 = !DILocalVariable(name: "flags", arg: 1, scope: !866, file: !16, line: 318, type: !23)
!866 = distinct !DISubprogram(name: "kmalloc_type", scope: !16, file: !16, line: 318, type: !867, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !98)
!867 = !DISubroutineType(types: !868)
!868 = !{!15, !23}
!869 = !DILocation(line: 318, column: 67, scope: !866, inlinedAt: !870)
!870 = distinct !DILocation(line: 553, column: 20, scope: !852, inlinedAt: !857)
!871 = !DILocalVariable(name: "size", arg: 1, scope: !872, file: !16, line: 346, type: !172)
!872 = distinct !DISubprogram(name: "kmalloc_index", scope: !16, file: !16, line: 346, type: !873, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !98)
!873 = !DISubroutineType(types: !874)
!874 = !{!5, !172}
!875 = !DILocation(line: 346, column: 58, scope: !872, inlinedAt: !876)
!876 = distinct !DILocation(line: 547, column: 11, scope: !852, inlinedAt: !857)
!877 = !DILocalVariable(name: "size", arg: 1, scope: !878, file: !16, line: 472, type: !172)
!878 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !16, file: !16, line: 472, type: !879, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !98)
!879 = !DISubroutineType(types: !880)
!880 = !{!25, !172, !23, !5}
!881 = !DILocation(line: 472, column: 28, scope: !878, inlinedAt: !882)
!882 = distinct !DILocation(line: 481, column: 9, scope: !883, inlinedAt: !884)
!883 = distinct !DISubprogram(name: "kmalloc_large", scope: !16, file: !16, line: 478, type: !855, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !98)
!884 = distinct !DILocation(line: 545, column: 11, scope: !885, inlinedAt: !857)
!885 = distinct !DILexicalBlock(scope: !852, file: !16, line: 544, column: 7)
!886 = !DILocalVariable(name: "flags", arg: 2, scope: !878, file: !16, line: 472, type: !23)
!887 = !DILocation(line: 472, column: 40, scope: !878, inlinedAt: !882)
!888 = !DILocalVariable(name: "order", arg: 3, scope: !878, file: !16, line: 472, type: !5)
!889 = !DILocation(line: 472, column: 60, scope: !878, inlinedAt: !882)
!890 = !DILocalVariable(name: "size", arg: 1, scope: !883, file: !16, line: 478, type: !172)
!891 = !DILocation(line: 478, column: 51, scope: !883, inlinedAt: !884)
!892 = !DILocalVariable(name: "flags", arg: 2, scope: !883, file: !16, line: 478, type: !23)
!893 = !DILocation(line: 478, column: 63, scope: !883, inlinedAt: !884)
!894 = !DILocalVariable(name: "order", scope: !883, file: !16, line: 480, type: !5)
!895 = !DILocation(line: 480, column: 15, scope: !883, inlinedAt: !884)
!896 = !DILocalVariable(name: "size", arg: 1, scope: !854, file: !16, line: 538, type: !172)
!897 = !DILocation(line: 538, column: 45, scope: !854, inlinedAt: !857)
!898 = !DILocalVariable(name: "flags", arg: 2, scope: !854, file: !16, line: 538, type: !23)
!899 = !DILocation(line: 538, column: 57, scope: !854, inlinedAt: !857)
!900 = !DILocalVariable(name: "index", scope: !852, file: !16, line: 542, type: !5)
!901 = !DILocation(line: 542, column: 16, scope: !852, inlinedAt: !857)
!902 = !DILocalVariable(name: "n", arg: 1, scope: !841, file: !16, line: 584, type: !172)
!903 = !DILocation(line: 584, column: 42, scope: !841)
!904 = !DILocalVariable(name: "size", arg: 2, scope: !841, file: !16, line: 584, type: !172)
!905 = !DILocation(line: 584, column: 52, scope: !841)
!906 = !DILocalVariable(name: "flags", arg: 3, scope: !841, file: !16, line: 584, type: !23)
!907 = !DILocation(line: 584, column: 64, scope: !841)
!908 = !DILocalVariable(name: "bytes", scope: !841, file: !16, line: 586, type: !172)
!909 = !DILocation(line: 586, column: 9, scope: !841)
!910 = !DILocalVariable(name: "__a", scope: !911, file: !16, line: 588, type: !172)
!911 = distinct !DILexicalBlock(scope: !912, file: !16, line: 588, column: 6)
!912 = distinct !DILexicalBlock(scope: !841, file: !16, line: 588, column: 6)
!913 = !DILocation(line: 588, column: 6, scope: !911)
!914 = !DILocalVariable(name: "__b", scope: !911, file: !16, line: 588, type: !172)
!915 = !DILocalVariable(name: "__d", scope: !911, file: !16, line: 588, type: !916)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!917 = !DILocation(line: 588, column: 6, scope: !912)
!918 = !DILocation(line: 588, column: 6, scope: !841)
!919 = !DILocation(line: 589, column: 3, scope: !912)
!920 = !DILocation(line: 590, column: 27, scope: !858)
!921 = !DILocation(line: 590, column: 6, scope: !858)
!922 = !DILocation(line: 590, column: 30, scope: !858)
!923 = !DILocation(line: 590, column: 54, scope: !858)
!924 = !DILocation(line: 590, column: 33, scope: !858)
!925 = !DILocation(line: 590, column: 6, scope: !841)
!926 = !DILocation(line: 591, column: 18, scope: !858)
!927 = !DILocation(line: 591, column: 25, scope: !858)
!928 = !DILocation(line: 540, column: 27, scope: !853, inlinedAt: !857)
!929 = !DILocation(line: 540, column: 6, scope: !853, inlinedAt: !857)
!930 = !DILocation(line: 540, column: 6, scope: !854, inlinedAt: !857)
!931 = !DILocation(line: 544, column: 7, scope: !885, inlinedAt: !857)
!932 = !DILocation(line: 544, column: 12, scope: !885, inlinedAt: !857)
!933 = !DILocation(line: 544, column: 7, scope: !852, inlinedAt: !857)
!934 = !DILocation(line: 545, column: 25, scope: !885, inlinedAt: !857)
!935 = !DILocation(line: 545, column: 31, scope: !885, inlinedAt: !857)
!936 = !DILocation(line: 480, column: 33, scope: !883, inlinedAt: !884)
!937 = !DILocation(line: 480, column: 23, scope: !883, inlinedAt: !884)
!938 = !DILocation(line: 481, column: 29, scope: !883, inlinedAt: !884)
!939 = !DILocation(line: 481, column: 35, scope: !883, inlinedAt: !884)
!940 = !DILocation(line: 481, column: 42, scope: !883, inlinedAt: !884)
!941 = !DILocation(line: 474, column: 23, scope: !878, inlinedAt: !882)
!942 = !DILocation(line: 474, column: 29, scope: !878, inlinedAt: !882)
!943 = !DILocation(line: 474, column: 36, scope: !878, inlinedAt: !882)
!944 = !DILocation(line: 474, column: 9, scope: !878, inlinedAt: !882)
!945 = !DILocation(line: 545, column: 4, scope: !885, inlinedAt: !857)
!946 = !DILocation(line: 547, column: 25, scope: !852, inlinedAt: !857)
!947 = !DILocation(line: 348, column: 7, scope: !948, inlinedAt: !876)
!948 = distinct !DILexicalBlock(scope: !872, file: !16, line: 348, column: 6)
!949 = !DILocation(line: 348, column: 6, scope: !872, inlinedAt: !876)
!950 = !DILocation(line: 349, column: 3, scope: !948, inlinedAt: !876)
!951 = !DILocation(line: 351, column: 6, scope: !952, inlinedAt: !876)
!952 = distinct !DILexicalBlock(scope: !872, file: !16, line: 351, column: 6)
!953 = !DILocation(line: 351, column: 11, scope: !952, inlinedAt: !876)
!954 = !DILocation(line: 351, column: 6, scope: !872, inlinedAt: !876)
!955 = !DILocation(line: 352, column: 3, scope: !952, inlinedAt: !876)
!956 = !DILocation(line: 354, column: 32, scope: !957, inlinedAt: !876)
!957 = distinct !DILexicalBlock(scope: !872, file: !16, line: 354, column: 6)
!958 = !DILocation(line: 354, column: 37, scope: !957, inlinedAt: !876)
!959 = !DILocation(line: 354, column: 42, scope: !957, inlinedAt: !876)
!960 = !DILocation(line: 354, column: 45, scope: !957, inlinedAt: !876)
!961 = !DILocation(line: 354, column: 50, scope: !957, inlinedAt: !876)
!962 = !DILocation(line: 354, column: 6, scope: !872, inlinedAt: !876)
!963 = !DILocation(line: 355, column: 3, scope: !957, inlinedAt: !876)
!964 = !DILocation(line: 356, column: 32, scope: !965, inlinedAt: !876)
!965 = distinct !DILexicalBlock(scope: !872, file: !16, line: 356, column: 6)
!966 = !DILocation(line: 356, column: 37, scope: !965, inlinedAt: !876)
!967 = !DILocation(line: 356, column: 43, scope: !965, inlinedAt: !876)
!968 = !DILocation(line: 356, column: 46, scope: !965, inlinedAt: !876)
!969 = !DILocation(line: 356, column: 51, scope: !965, inlinedAt: !876)
!970 = !DILocation(line: 356, column: 6, scope: !872, inlinedAt: !876)
!971 = !DILocation(line: 357, column: 3, scope: !965, inlinedAt: !876)
!972 = !DILocation(line: 358, column: 6, scope: !973, inlinedAt: !876)
!973 = distinct !DILexicalBlock(scope: !872, file: !16, line: 358, column: 6)
!974 = !DILocation(line: 358, column: 11, scope: !973, inlinedAt: !876)
!975 = !DILocation(line: 358, column: 6, scope: !872, inlinedAt: !876)
!976 = !DILocation(line: 358, column: 26, scope: !973, inlinedAt: !876)
!977 = !DILocation(line: 359, column: 6, scope: !978, inlinedAt: !876)
!978 = distinct !DILexicalBlock(scope: !872, file: !16, line: 359, column: 6)
!979 = !DILocation(line: 359, column: 11, scope: !978, inlinedAt: !876)
!980 = !DILocation(line: 359, column: 6, scope: !872, inlinedAt: !876)
!981 = !DILocation(line: 359, column: 26, scope: !978, inlinedAt: !876)
!982 = !DILocation(line: 360, column: 6, scope: !983, inlinedAt: !876)
!983 = distinct !DILexicalBlock(scope: !872, file: !16, line: 360, column: 6)
!984 = !DILocation(line: 360, column: 11, scope: !983, inlinedAt: !876)
!985 = !DILocation(line: 360, column: 6, scope: !872, inlinedAt: !876)
!986 = !DILocation(line: 360, column: 26, scope: !983, inlinedAt: !876)
!987 = !DILocation(line: 361, column: 6, scope: !988, inlinedAt: !876)
!988 = distinct !DILexicalBlock(scope: !872, file: !16, line: 361, column: 6)
!989 = !DILocation(line: 361, column: 11, scope: !988, inlinedAt: !876)
!990 = !DILocation(line: 361, column: 6, scope: !872, inlinedAt: !876)
!991 = !DILocation(line: 361, column: 26, scope: !988, inlinedAt: !876)
!992 = !DILocation(line: 362, column: 6, scope: !993, inlinedAt: !876)
!993 = distinct !DILexicalBlock(scope: !872, file: !16, line: 362, column: 6)
!994 = !DILocation(line: 362, column: 11, scope: !993, inlinedAt: !876)
!995 = !DILocation(line: 362, column: 6, scope: !872, inlinedAt: !876)
!996 = !DILocation(line: 362, column: 26, scope: !993, inlinedAt: !876)
!997 = !DILocation(line: 363, column: 6, scope: !998, inlinedAt: !876)
!998 = distinct !DILexicalBlock(scope: !872, file: !16, line: 363, column: 6)
!999 = !DILocation(line: 363, column: 11, scope: !998, inlinedAt: !876)
!1000 = !DILocation(line: 363, column: 6, scope: !872, inlinedAt: !876)
!1001 = !DILocation(line: 363, column: 26, scope: !998, inlinedAt: !876)
!1002 = !DILocation(line: 364, column: 6, scope: !1003, inlinedAt: !876)
!1003 = distinct !DILexicalBlock(scope: !872, file: !16, line: 364, column: 6)
!1004 = !DILocation(line: 364, column: 11, scope: !1003, inlinedAt: !876)
!1005 = !DILocation(line: 364, column: 6, scope: !872, inlinedAt: !876)
!1006 = !DILocation(line: 364, column: 26, scope: !1003, inlinedAt: !876)
!1007 = !DILocation(line: 365, column: 6, scope: !1008, inlinedAt: !876)
!1008 = distinct !DILexicalBlock(scope: !872, file: !16, line: 365, column: 6)
!1009 = !DILocation(line: 365, column: 11, scope: !1008, inlinedAt: !876)
!1010 = !DILocation(line: 365, column: 6, scope: !872, inlinedAt: !876)
!1011 = !DILocation(line: 365, column: 26, scope: !1008, inlinedAt: !876)
!1012 = !DILocation(line: 366, column: 6, scope: !1013, inlinedAt: !876)
!1013 = distinct !DILexicalBlock(scope: !872, file: !16, line: 366, column: 6)
!1014 = !DILocation(line: 366, column: 11, scope: !1013, inlinedAt: !876)
!1015 = !DILocation(line: 366, column: 6, scope: !872, inlinedAt: !876)
!1016 = !DILocation(line: 366, column: 26, scope: !1013, inlinedAt: !876)
!1017 = !DILocation(line: 367, column: 6, scope: !1018, inlinedAt: !876)
!1018 = distinct !DILexicalBlock(scope: !872, file: !16, line: 367, column: 6)
!1019 = !DILocation(line: 367, column: 11, scope: !1018, inlinedAt: !876)
!1020 = !DILocation(line: 367, column: 6, scope: !872, inlinedAt: !876)
!1021 = !DILocation(line: 367, column: 26, scope: !1018, inlinedAt: !876)
!1022 = !DILocation(line: 368, column: 6, scope: !1023, inlinedAt: !876)
!1023 = distinct !DILexicalBlock(scope: !872, file: !16, line: 368, column: 6)
!1024 = !DILocation(line: 368, column: 11, scope: !1023, inlinedAt: !876)
!1025 = !DILocation(line: 368, column: 6, scope: !872, inlinedAt: !876)
!1026 = !DILocation(line: 368, column: 26, scope: !1023, inlinedAt: !876)
!1027 = !DILocation(line: 369, column: 6, scope: !1028, inlinedAt: !876)
!1028 = distinct !DILexicalBlock(scope: !872, file: !16, line: 369, column: 6)
!1029 = !DILocation(line: 369, column: 11, scope: !1028, inlinedAt: !876)
!1030 = !DILocation(line: 369, column: 6, scope: !872, inlinedAt: !876)
!1031 = !DILocation(line: 369, column: 26, scope: !1028, inlinedAt: !876)
!1032 = !DILocation(line: 370, column: 6, scope: !1033, inlinedAt: !876)
!1033 = distinct !DILexicalBlock(scope: !872, file: !16, line: 370, column: 6)
!1034 = !DILocation(line: 370, column: 11, scope: !1033, inlinedAt: !876)
!1035 = !DILocation(line: 370, column: 6, scope: !872, inlinedAt: !876)
!1036 = !DILocation(line: 370, column: 26, scope: !1033, inlinedAt: !876)
!1037 = !DILocation(line: 371, column: 6, scope: !1038, inlinedAt: !876)
!1038 = distinct !DILexicalBlock(scope: !872, file: !16, line: 371, column: 6)
!1039 = !DILocation(line: 371, column: 11, scope: !1038, inlinedAt: !876)
!1040 = !DILocation(line: 371, column: 6, scope: !872, inlinedAt: !876)
!1041 = !DILocation(line: 371, column: 26, scope: !1038, inlinedAt: !876)
!1042 = !DILocation(line: 372, column: 6, scope: !1043, inlinedAt: !876)
!1043 = distinct !DILexicalBlock(scope: !872, file: !16, line: 372, column: 6)
!1044 = !DILocation(line: 372, column: 11, scope: !1043, inlinedAt: !876)
!1045 = !DILocation(line: 372, column: 6, scope: !872, inlinedAt: !876)
!1046 = !DILocation(line: 372, column: 26, scope: !1043, inlinedAt: !876)
!1047 = !DILocation(line: 373, column: 6, scope: !1048, inlinedAt: !876)
!1048 = distinct !DILexicalBlock(scope: !872, file: !16, line: 373, column: 6)
!1049 = !DILocation(line: 373, column: 11, scope: !1048, inlinedAt: !876)
!1050 = !DILocation(line: 373, column: 6, scope: !872, inlinedAt: !876)
!1051 = !DILocation(line: 373, column: 26, scope: !1048, inlinedAt: !876)
!1052 = !DILocation(line: 374, column: 6, scope: !1053, inlinedAt: !876)
!1053 = distinct !DILexicalBlock(scope: !872, file: !16, line: 374, column: 6)
!1054 = !DILocation(line: 374, column: 11, scope: !1053, inlinedAt: !876)
!1055 = !DILocation(line: 374, column: 6, scope: !872, inlinedAt: !876)
!1056 = !DILocation(line: 374, column: 26, scope: !1053, inlinedAt: !876)
!1057 = !DILocation(line: 375, column: 6, scope: !1058, inlinedAt: !876)
!1058 = distinct !DILexicalBlock(scope: !872, file: !16, line: 375, column: 6)
!1059 = !DILocation(line: 375, column: 11, scope: !1058, inlinedAt: !876)
!1060 = !DILocation(line: 375, column: 6, scope: !872, inlinedAt: !876)
!1061 = !DILocation(line: 375, column: 27, scope: !1058, inlinedAt: !876)
!1062 = !DILocation(line: 376, column: 6, scope: !1063, inlinedAt: !876)
!1063 = distinct !DILexicalBlock(scope: !872, file: !16, line: 376, column: 6)
!1064 = !DILocation(line: 376, column: 11, scope: !1063, inlinedAt: !876)
!1065 = !DILocation(line: 376, column: 6, scope: !872, inlinedAt: !876)
!1066 = !DILocation(line: 376, column: 32, scope: !1063, inlinedAt: !876)
!1067 = !DILocation(line: 377, column: 6, scope: !1068, inlinedAt: !876)
!1068 = distinct !DILexicalBlock(scope: !872, file: !16, line: 377, column: 6)
!1069 = !DILocation(line: 377, column: 11, scope: !1068, inlinedAt: !876)
!1070 = !DILocation(line: 377, column: 6, scope: !872, inlinedAt: !876)
!1071 = !DILocation(line: 377, column: 32, scope: !1068, inlinedAt: !876)
!1072 = !DILocation(line: 378, column: 6, scope: !1073, inlinedAt: !876)
!1073 = distinct !DILexicalBlock(scope: !872, file: !16, line: 378, column: 6)
!1074 = !DILocation(line: 378, column: 11, scope: !1073, inlinedAt: !876)
!1075 = !DILocation(line: 378, column: 6, scope: !872, inlinedAt: !876)
!1076 = !DILocation(line: 378, column: 32, scope: !1073, inlinedAt: !876)
!1077 = !DILocation(line: 379, column: 6, scope: !1078, inlinedAt: !876)
!1078 = distinct !DILexicalBlock(scope: !872, file: !16, line: 379, column: 6)
!1079 = !DILocation(line: 379, column: 11, scope: !1078, inlinedAt: !876)
!1080 = !DILocation(line: 379, column: 6, scope: !872, inlinedAt: !876)
!1081 = !DILocation(line: 379, column: 33, scope: !1078, inlinedAt: !876)
!1082 = !DILocation(line: 380, column: 6, scope: !1083, inlinedAt: !876)
!1083 = distinct !DILexicalBlock(scope: !872, file: !16, line: 380, column: 6)
!1084 = !DILocation(line: 380, column: 11, scope: !1083, inlinedAt: !876)
!1085 = !DILocation(line: 380, column: 6, scope: !872, inlinedAt: !876)
!1086 = !DILocation(line: 380, column: 33, scope: !1083, inlinedAt: !876)
!1087 = !DILocation(line: 381, column: 6, scope: !1088, inlinedAt: !876)
!1088 = distinct !DILexicalBlock(scope: !872, file: !16, line: 381, column: 6)
!1089 = !DILocation(line: 381, column: 11, scope: !1088, inlinedAt: !876)
!1090 = !DILocation(line: 381, column: 6, scope: !872, inlinedAt: !876)
!1091 = !DILocation(line: 381, column: 33, scope: !1088, inlinedAt: !876)
!1092 = !DILocation(line: 382, column: 2, scope: !1093, inlinedAt: !876)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !16, line: 382, column: 2)
!1094 = distinct !DILexicalBlock(scope: !872, file: !16, line: 382, column: 2)
!1095 = !{i32 -2144244392, i32 -2144244363, i32 -2144244317, i32 -2144244259, i32 -2144244205, i32 -2144244151, i32 -2144244096, i32 -2144244065}
!1096 = !DILocation(line: 382, column: 2, scope: !1097, inlinedAt: !876)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !16, line: 382, column: 2)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !16, line: 382, column: 2)
!1099 = !{i32 -2144243622, i32 -2144243615, i32 -2144243561, i32 -2144243530, i32 -2144243500}
!1100 = !DILocation(line: 382, column: 2, scope: !1098, inlinedAt: !876)
!1101 = !DILocation(line: 386, column: 1, scope: !872, inlinedAt: !876)
!1102 = !DILocation(line: 547, column: 9, scope: !852, inlinedAt: !857)
!1103 = !DILocation(line: 549, column: 8, scope: !1104, inlinedAt: !857)
!1104 = distinct !DILexicalBlock(scope: !852, file: !16, line: 549, column: 7)
!1105 = !DILocation(line: 549, column: 7, scope: !852, inlinedAt: !857)
!1106 = !DILocation(line: 550, column: 4, scope: !1104, inlinedAt: !857)
!1107 = !DILocation(line: 553, column: 33, scope: !852, inlinedAt: !857)
!1108 = !DILocation(line: 325, column: 6, scope: !1109, inlinedAt: !870)
!1109 = distinct !DILexicalBlock(scope: !866, file: !16, line: 325, column: 6)
!1110 = !DILocation(line: 325, column: 6, scope: !866, inlinedAt: !870)
!1111 = !DILocation(line: 326, column: 3, scope: !1109, inlinedAt: !870)
!1112 = !DILocation(line: 332, column: 9, scope: !866, inlinedAt: !870)
!1113 = !DILocation(line: 332, column: 15, scope: !866, inlinedAt: !870)
!1114 = !DILocation(line: 332, column: 2, scope: !866, inlinedAt: !870)
!1115 = !DILocation(line: 336, column: 1, scope: !866, inlinedAt: !870)
!1116 = !DILocation(line: 553, column: 5, scope: !852, inlinedAt: !857)
!1117 = !DILocation(line: 553, column: 41, scope: !852, inlinedAt: !857)
!1118 = !DILocation(line: 554, column: 5, scope: !852, inlinedAt: !857)
!1119 = !DILocation(line: 554, column: 12, scope: !852, inlinedAt: !857)
!1120 = !DILocation(line: 448, column: 31, scope: !845, inlinedAt: !851)
!1121 = !DILocation(line: 448, column: 34, scope: !845, inlinedAt: !851)
!1122 = !DILocation(line: 448, column: 14, scope: !845, inlinedAt: !851)
!1123 = !DILocation(line: 450, column: 22, scope: !845, inlinedAt: !851)
!1124 = !DILocation(line: 450, column: 25, scope: !845, inlinedAt: !851)
!1125 = !DILocation(line: 450, column: 30, scope: !845, inlinedAt: !851)
!1126 = !DILocation(line: 450, column: 36, scope: !845, inlinedAt: !851)
!1127 = !DILocation(line: 450, column: 8, scope: !845, inlinedAt: !851)
!1128 = !DILocation(line: 450, column: 6, scope: !845, inlinedAt: !851)
!1129 = !DILocation(line: 451, column: 9, scope: !845, inlinedAt: !851)
!1130 = !DILocation(line: 552, column: 3, scope: !852, inlinedAt: !857)
!1131 = !DILocation(line: 557, column: 19, scope: !854, inlinedAt: !857)
!1132 = !DILocation(line: 557, column: 25, scope: !854, inlinedAt: !857)
!1133 = !DILocation(line: 557, column: 9, scope: !854, inlinedAt: !857)
!1134 = !DILocation(line: 557, column: 2, scope: !854, inlinedAt: !857)
!1135 = !DILocation(line: 558, column: 1, scope: !854, inlinedAt: !857)
!1136 = !DILocation(line: 591, column: 3, scope: !858)
!1137 = !DILocation(line: 592, column: 19, scope: !841)
!1138 = !DILocation(line: 592, column: 26, scope: !841)
!1139 = !DILocation(line: 592, column: 9, scope: !841)
!1140 = !DILocation(line: 592, column: 2, scope: !841)
!1141 = !DILocation(line: 593, column: 1, scope: !841)
!1142 = distinct !DISubprogram(name: "kobj_unmap", scope: !1, file: !1, line: 68, type: !1143, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !98)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{null, !35, !45, !52}
!1145 = !DILocalVariable(name: "domain", arg: 1, scope: !1142, file: !1, line: 68, type: !35)
!1146 = !DILocation(line: 68, column: 34, scope: !1142)
!1147 = !DILocalVariable(name: "dev", arg: 2, scope: !1142, file: !1, line: 68, type: !45)
!1148 = !DILocation(line: 68, column: 48, scope: !1142)
!1149 = !DILocalVariable(name: "range", arg: 3, scope: !1142, file: !1, line: 68, type: !52)
!1150 = !DILocation(line: 68, column: 67, scope: !1142)
!1151 = !DILocalVariable(name: "n", scope: !1142, file: !1, line: 70, type: !5)
!1152 = !DILocation(line: 70, column: 11, scope: !1142)
!1153 = !DILocation(line: 70, column: 15, scope: !1142)
!1154 = !DILocation(line: 70, column: 40, scope: !1142)
!1155 = !DILocation(line: 70, column: 38, scope: !1142)
!1156 = !DILocation(line: 70, column: 51, scope: !1142)
!1157 = !DILocalVariable(name: "index", scope: !1142, file: !1, line: 71, type: !5)
!1158 = !DILocation(line: 71, column: 11, scope: !1142)
!1159 = !DILocation(line: 71, column: 19, scope: !1142)
!1160 = !DILocalVariable(name: "i", scope: !1142, file: !1, line: 72, type: !5)
!1161 = !DILocation(line: 72, column: 11, scope: !1142)
!1162 = !DILocalVariable(name: "found", scope: !1142, file: !1, line: 73, type: !40)
!1163 = !DILocation(line: 73, column: 16, scope: !1142)
!1164 = !DILocation(line: 75, column: 6, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 75, column: 6)
!1166 = !DILocation(line: 75, column: 8, scope: !1165)
!1167 = !DILocation(line: 75, column: 6, scope: !1142)
!1168 = !DILocation(line: 76, column: 5, scope: !1165)
!1169 = !DILocation(line: 76, column: 3, scope: !1165)
!1170 = !DILocation(line: 78, column: 13, scope: !1142)
!1171 = !DILocation(line: 78, column: 21, scope: !1142)
!1172 = !DILocation(line: 78, column: 2, scope: !1142)
!1173 = !DILocation(line: 79, column: 9, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 79, column: 2)
!1175 = !DILocation(line: 79, column: 7, scope: !1174)
!1176 = !DILocation(line: 79, column: 14, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 79, column: 2)
!1178 = !DILocation(line: 79, column: 18, scope: !1177)
!1179 = !DILocation(line: 79, column: 16, scope: !1177)
!1180 = !DILocation(line: 79, column: 2, scope: !1174)
!1181 = !DILocalVariable(name: "s", scope: !1182, file: !1, line: 80, type: !800)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 79, column: 35)
!1183 = !DILocation(line: 80, column: 18, scope: !1182)
!1184 = !DILocation(line: 81, column: 13, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 81, column: 3)
!1186 = !DILocation(line: 81, column: 21, scope: !1185)
!1187 = !DILocation(line: 81, column: 28, scope: !1185)
!1188 = !DILocation(line: 81, column: 34, scope: !1185)
!1189 = !DILocation(line: 81, column: 10, scope: !1185)
!1190 = !DILocation(line: 81, column: 8, scope: !1185)
!1191 = !DILocation(line: 81, column: 43, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 81, column: 3)
!1193 = !DILocation(line: 81, column: 42, scope: !1192)
!1194 = !DILocation(line: 81, column: 3, scope: !1185)
!1195 = !DILocalVariable(name: "p", scope: !1196, file: !1, line: 82, type: !40)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 81, column: 63)
!1197 = !DILocation(line: 82, column: 18, scope: !1196)
!1198 = !DILocation(line: 82, column: 23, scope: !1196)
!1199 = !DILocation(line: 82, column: 22, scope: !1196)
!1200 = !DILocation(line: 83, column: 8, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !1, line: 83, column: 8)
!1202 = !DILocation(line: 83, column: 11, scope: !1201)
!1203 = !DILocation(line: 83, column: 18, scope: !1201)
!1204 = !DILocation(line: 83, column: 15, scope: !1201)
!1205 = !DILocation(line: 83, column: 22, scope: !1201)
!1206 = !DILocation(line: 83, column: 25, scope: !1201)
!1207 = !DILocation(line: 83, column: 28, scope: !1201)
!1208 = !DILocation(line: 83, column: 37, scope: !1201)
!1209 = !DILocation(line: 83, column: 34, scope: !1201)
!1210 = !DILocation(line: 83, column: 8, scope: !1196)
!1211 = !DILocation(line: 84, column: 10, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 83, column: 44)
!1213 = !DILocation(line: 84, column: 13, scope: !1212)
!1214 = !DILocation(line: 84, column: 6, scope: !1212)
!1215 = !DILocation(line: 84, column: 8, scope: !1212)
!1216 = !DILocation(line: 85, column: 10, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 85, column: 9)
!1218 = !DILocation(line: 85, column: 9, scope: !1212)
!1219 = !DILocation(line: 86, column: 14, scope: !1217)
!1220 = !DILocation(line: 86, column: 12, scope: !1217)
!1221 = !DILocation(line: 86, column: 6, scope: !1217)
!1222 = !DILocation(line: 87, column: 5, scope: !1212)
!1223 = !DILocation(line: 89, column: 3, scope: !1196)
!1224 = !DILocation(line: 81, column: 53, scope: !1192)
!1225 = !DILocation(line: 81, column: 52, scope: !1192)
!1226 = !DILocation(line: 81, column: 57, scope: !1192)
!1227 = !DILocation(line: 81, column: 48, scope: !1192)
!1228 = !DILocation(line: 81, column: 3, scope: !1192)
!1229 = distinct !{!1229, !1194, !1230}
!1230 = !DILocation(line: 89, column: 3, scope: !1185)
!1231 = !DILocation(line: 90, column: 2, scope: !1182)
!1232 = !DILocation(line: 79, column: 22, scope: !1177)
!1233 = !DILocation(line: 79, column: 31, scope: !1177)
!1234 = !DILocation(line: 79, column: 2, scope: !1177)
!1235 = distinct !{!1235, !1180, !1236}
!1236 = !DILocation(line: 90, column: 2, scope: !1174)
!1237 = !DILocation(line: 91, column: 15, scope: !1142)
!1238 = !DILocation(line: 91, column: 23, scope: !1142)
!1239 = !DILocation(line: 91, column: 2, scope: !1142)
!1240 = !DILocation(line: 92, column: 8, scope: !1142)
!1241 = !DILocation(line: 92, column: 2, scope: !1142)
!1242 = !DILocation(line: 93, column: 1, scope: !1142)
!1243 = distinct !DISubprogram(name: "kobj_lookup", scope: !1, file: !1, line: 95, type: !1244, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !98)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!63, !35, !45, !695}
!1246 = !DILocalVariable(name: "domain", arg: 1, scope: !1243, file: !1, line: 95, type: !35)
!1247 = !DILocation(line: 95, column: 46, scope: !1243)
!1248 = !DILocalVariable(name: "dev", arg: 2, scope: !1243, file: !1, line: 95, type: !45)
!1249 = !DILocation(line: 95, column: 60, scope: !1243)
!1250 = !DILocalVariable(name: "index", arg: 3, scope: !1243, file: !1, line: 95, type: !695)
!1251 = !DILocation(line: 95, column: 70, scope: !1243)
!1252 = !DILocalVariable(name: "kobj", scope: !1243, file: !1, line: 97, type: !63)
!1253 = !DILocation(line: 97, column: 18, scope: !1243)
!1254 = !DILocalVariable(name: "p", scope: !1243, file: !1, line: 98, type: !40)
!1255 = !DILocation(line: 98, column: 16, scope: !1243)
!1256 = !DILocalVariable(name: "best", scope: !1243, file: !1, line: 99, type: !52)
!1257 = !DILocation(line: 99, column: 16, scope: !1243)
!1258 = !DILocation(line: 99, column: 2, scope: !1243)
!1259 = !DILabel(scope: !1243, name: "retry", file: !1, line: 101)
!1260 = !DILocation(line: 101, column: 1, scope: !1243)
!1261 = !DILocation(line: 102, column: 13, scope: !1243)
!1262 = !DILocation(line: 102, column: 21, scope: !1243)
!1263 = !DILocation(line: 102, column: 2, scope: !1243)
!1264 = !DILocation(line: 103, column: 11, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1243, file: !1, line: 103, column: 2)
!1266 = !DILocation(line: 103, column: 19, scope: !1265)
!1267 = !DILocation(line: 103, column: 26, scope: !1265)
!1268 = !DILocation(line: 103, column: 37, scope: !1265)
!1269 = !DILocation(line: 103, column: 9, scope: !1265)
!1270 = !DILocation(line: 103, column: 7, scope: !1265)
!1271 = !DILocation(line: 103, column: 45, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 103, column: 2)
!1273 = !DILocation(line: 103, column: 2, scope: !1265)
!1274 = !DILocalVariable(name: "probe", scope: !1275, file: !1, line: 104, type: !1276)
!1275 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 103, column: 61)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!1277 = !DILocation(line: 104, column: 21, scope: !1275)
!1278 = !DILocalVariable(name: "owner", scope: !1275, file: !1, line: 105, type: !54)
!1279 = !DILocation(line: 105, column: 18, scope: !1275)
!1280 = !DILocalVariable(name: "data", scope: !1275, file: !1, line: 106, type: !25)
!1281 = !DILocation(line: 106, column: 9, scope: !1275)
!1282 = !DILocation(line: 108, column: 7, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 108, column: 7)
!1284 = !DILocation(line: 108, column: 10, scope: !1283)
!1285 = !DILocation(line: 108, column: 16, scope: !1283)
!1286 = !DILocation(line: 108, column: 14, scope: !1283)
!1287 = !DILocation(line: 108, column: 20, scope: !1283)
!1288 = !DILocation(line: 108, column: 23, scope: !1283)
!1289 = !DILocation(line: 108, column: 26, scope: !1283)
!1290 = !DILocation(line: 108, column: 32, scope: !1283)
!1291 = !DILocation(line: 108, column: 35, scope: !1283)
!1292 = !DILocation(line: 108, column: 30, scope: !1283)
!1293 = !DILocation(line: 108, column: 41, scope: !1283)
!1294 = !DILocation(line: 108, column: 47, scope: !1283)
!1295 = !DILocation(line: 108, column: 45, scope: !1283)
!1296 = !DILocation(line: 108, column: 7, scope: !1275)
!1297 = !DILocation(line: 109, column: 4, scope: !1283)
!1298 = !DILocation(line: 110, column: 7, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 110, column: 7)
!1300 = !DILocation(line: 110, column: 10, scope: !1299)
!1301 = !DILocation(line: 110, column: 16, scope: !1299)
!1302 = !DILocation(line: 110, column: 23, scope: !1299)
!1303 = !DILocation(line: 110, column: 20, scope: !1299)
!1304 = !DILocation(line: 110, column: 7, scope: !1275)
!1305 = !DILocation(line: 111, column: 4, scope: !1299)
!1306 = !DILocation(line: 112, column: 23, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 112, column: 7)
!1308 = !DILocation(line: 112, column: 26, scope: !1307)
!1309 = !DILocation(line: 112, column: 8, scope: !1307)
!1310 = !DILocation(line: 112, column: 7, scope: !1275)
!1311 = !DILocation(line: 113, column: 4, scope: !1307)
!1312 = !DILocation(line: 114, column: 11, scope: !1275)
!1313 = !DILocation(line: 114, column: 14, scope: !1275)
!1314 = !DILocation(line: 114, column: 9, scope: !1275)
!1315 = !DILocation(line: 115, column: 10, scope: !1275)
!1316 = !DILocation(line: 115, column: 13, scope: !1275)
!1317 = !DILocation(line: 115, column: 8, scope: !1275)
!1318 = !DILocation(line: 116, column: 11, scope: !1275)
!1319 = !DILocation(line: 116, column: 14, scope: !1275)
!1320 = !DILocation(line: 116, column: 9, scope: !1275)
!1321 = !DILocation(line: 117, column: 10, scope: !1275)
!1322 = !DILocation(line: 117, column: 13, scope: !1275)
!1323 = !DILocation(line: 117, column: 19, scope: !1275)
!1324 = !DILocation(line: 117, column: 8, scope: !1275)
!1325 = !DILocation(line: 118, column: 12, scope: !1275)
!1326 = !DILocation(line: 118, column: 18, scope: !1275)
!1327 = !DILocation(line: 118, column: 21, scope: !1275)
!1328 = !DILocation(line: 118, column: 16, scope: !1275)
!1329 = !DILocation(line: 118, column: 4, scope: !1275)
!1330 = !DILocation(line: 118, column: 10, scope: !1275)
!1331 = !DILocation(line: 119, column: 7, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 119, column: 7)
!1333 = !DILocation(line: 119, column: 10, scope: !1332)
!1334 = !DILocation(line: 119, column: 15, scope: !1332)
!1335 = !DILocation(line: 119, column: 18, scope: !1332)
!1336 = !DILocation(line: 119, column: 21, scope: !1332)
!1337 = !DILocation(line: 119, column: 26, scope: !1332)
!1338 = !DILocation(line: 119, column: 31, scope: !1332)
!1339 = !DILocation(line: 119, column: 37, scope: !1332)
!1340 = !DILocation(line: 119, column: 7, scope: !1275)
!1341 = !DILocation(line: 120, column: 15, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1332, file: !1, line: 119, column: 42)
!1343 = !DILocation(line: 120, column: 4, scope: !1342)
!1344 = !DILocation(line: 121, column: 4, scope: !1342)
!1345 = !DILocation(line: 123, column: 16, scope: !1275)
!1346 = !DILocation(line: 123, column: 24, scope: !1275)
!1347 = !DILocation(line: 123, column: 3, scope: !1275)
!1348 = !DILocation(line: 124, column: 10, scope: !1275)
!1349 = !DILocation(line: 124, column: 16, scope: !1275)
!1350 = !DILocation(line: 124, column: 21, scope: !1275)
!1351 = !DILocation(line: 124, column: 28, scope: !1275)
!1352 = !DILocation(line: 124, column: 8, scope: !1275)
!1353 = !DILocation(line: 126, column: 14, scope: !1275)
!1354 = !DILocation(line: 126, column: 3, scope: !1275)
!1355 = !DILocation(line: 127, column: 7, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 127, column: 7)
!1357 = !DILocation(line: 127, column: 7, scope: !1275)
!1358 = !DILocation(line: 128, column: 11, scope: !1356)
!1359 = !DILocation(line: 128, column: 4, scope: !1356)
!1360 = !DILocation(line: 129, column: 3, scope: !1275)
!1361 = !DILocation(line: 103, column: 52, scope: !1272)
!1362 = !DILocation(line: 103, column: 55, scope: !1272)
!1363 = !DILocation(line: 103, column: 50, scope: !1272)
!1364 = !DILocation(line: 103, column: 2, scope: !1272)
!1365 = distinct !{!1365, !1273, !1366}
!1366 = !DILocation(line: 130, column: 2, scope: !1265)
!1367 = !DILocation(line: 131, column: 15, scope: !1243)
!1368 = !DILocation(line: 131, column: 23, scope: !1243)
!1369 = !DILocation(line: 131, column: 2, scope: !1243)
!1370 = !DILocation(line: 132, column: 2, scope: !1243)
!1371 = !DILocation(line: 133, column: 1, scope: !1243)
!1372 = distinct !DISubprogram(name: "try_module_get", scope: !1373, file: !1373, line: 751, type: !1374, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !98)
!1373 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!415, !54}
!1376 = !DILocalVariable(name: "module", arg: 1, scope: !1372, file: !1373, line: 751, type: !54)
!1377 = !DILocation(line: 751, column: 50, scope: !1372)
!1378 = !DILocation(line: 753, column: 2, scope: !1372)
!1379 = distinct !DISubprogram(name: "module_put", scope: !1373, file: !1373, line: 756, type: !1380, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !98)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !54}
!1382 = !DILocalVariable(name: "module", arg: 1, scope: !1379, file: !1373, line: 756, type: !54)
!1383 = !DILocation(line: 756, column: 46, scope: !1379)
!1384 = !DILocation(line: 758, column: 1, scope: !1379)
!1385 = distinct !DISubprogram(name: "kobj_map_init", scope: !1, file: !1, line: 135, type: !1386, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !98)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!35, !58, !704}
!1388 = !DILocation(line: 445, column: 72, scope: !845, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 552, column: 10, scope: !852, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 137, column: 23, scope: !1385)
!1391 = !DILocation(line: 446, column: 9, scope: !845, inlinedAt: !1389)
!1392 = !DILocation(line: 446, column: 23, scope: !845, inlinedAt: !1389)
!1393 = !DILocation(line: 448, column: 8, scope: !845, inlinedAt: !1389)
!1394 = !DILocation(line: 318, column: 67, scope: !866, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 553, column: 20, scope: !852, inlinedAt: !1390)
!1396 = !DILocation(line: 346, column: 58, scope: !872, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 547, column: 11, scope: !852, inlinedAt: !1390)
!1398 = !DILocation(line: 472, column: 28, scope: !878, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 481, column: 9, scope: !883, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 545, column: 11, scope: !885, inlinedAt: !1390)
!1401 = !DILocation(line: 472, column: 40, scope: !878, inlinedAt: !1399)
!1402 = !DILocation(line: 472, column: 60, scope: !878, inlinedAt: !1399)
!1403 = !DILocation(line: 478, column: 51, scope: !883, inlinedAt: !1400)
!1404 = !DILocation(line: 478, column: 63, scope: !883, inlinedAt: !1400)
!1405 = !DILocation(line: 480, column: 15, scope: !883, inlinedAt: !1400)
!1406 = !DILocation(line: 538, column: 45, scope: !854, inlinedAt: !1390)
!1407 = !DILocation(line: 538, column: 57, scope: !854, inlinedAt: !1390)
!1408 = !DILocation(line: 542, column: 16, scope: !852, inlinedAt: !1390)
!1409 = !DILocalVariable(name: "base_probe", arg: 1, scope: !1385, file: !1, line: 135, type: !58)
!1410 = !DILocation(line: 135, column: 46, scope: !1385)
!1411 = !DILocalVariable(name: "lock", arg: 2, scope: !1385, file: !1, line: 135, type: !704)
!1412 = !DILocation(line: 135, column: 72, scope: !1385)
!1413 = !DILocalVariable(name: "p", scope: !1385, file: !1, line: 137, type: !35)
!1414 = !DILocation(line: 137, column: 19, scope: !1385)
!1415 = !DILocation(line: 540, column: 27, scope: !853, inlinedAt: !1390)
!1416 = !DILocation(line: 540, column: 6, scope: !853, inlinedAt: !1390)
!1417 = !DILocation(line: 540, column: 6, scope: !854, inlinedAt: !1390)
!1418 = !DILocation(line: 544, column: 7, scope: !885, inlinedAt: !1390)
!1419 = !DILocation(line: 544, column: 12, scope: !885, inlinedAt: !1390)
!1420 = !DILocation(line: 544, column: 7, scope: !852, inlinedAt: !1390)
!1421 = !DILocation(line: 545, column: 25, scope: !885, inlinedAt: !1390)
!1422 = !DILocation(line: 545, column: 31, scope: !885, inlinedAt: !1390)
!1423 = !DILocation(line: 480, column: 33, scope: !883, inlinedAt: !1400)
!1424 = !DILocation(line: 480, column: 23, scope: !883, inlinedAt: !1400)
!1425 = !DILocation(line: 481, column: 29, scope: !883, inlinedAt: !1400)
!1426 = !DILocation(line: 481, column: 35, scope: !883, inlinedAt: !1400)
!1427 = !DILocation(line: 481, column: 42, scope: !883, inlinedAt: !1400)
!1428 = !DILocation(line: 474, column: 23, scope: !878, inlinedAt: !1399)
!1429 = !DILocation(line: 474, column: 29, scope: !878, inlinedAt: !1399)
!1430 = !DILocation(line: 474, column: 36, scope: !878, inlinedAt: !1399)
!1431 = !DILocation(line: 474, column: 9, scope: !878, inlinedAt: !1399)
!1432 = !DILocation(line: 545, column: 4, scope: !885, inlinedAt: !1390)
!1433 = !DILocation(line: 547, column: 25, scope: !852, inlinedAt: !1390)
!1434 = !DILocation(line: 348, column: 7, scope: !948, inlinedAt: !1397)
!1435 = !DILocation(line: 348, column: 6, scope: !872, inlinedAt: !1397)
!1436 = !DILocation(line: 349, column: 3, scope: !948, inlinedAt: !1397)
!1437 = !DILocation(line: 351, column: 6, scope: !952, inlinedAt: !1397)
!1438 = !DILocation(line: 351, column: 11, scope: !952, inlinedAt: !1397)
!1439 = !DILocation(line: 351, column: 6, scope: !872, inlinedAt: !1397)
!1440 = !DILocation(line: 352, column: 3, scope: !952, inlinedAt: !1397)
!1441 = !DILocation(line: 354, column: 32, scope: !957, inlinedAt: !1397)
!1442 = !DILocation(line: 354, column: 37, scope: !957, inlinedAt: !1397)
!1443 = !DILocation(line: 354, column: 42, scope: !957, inlinedAt: !1397)
!1444 = !DILocation(line: 354, column: 45, scope: !957, inlinedAt: !1397)
!1445 = !DILocation(line: 354, column: 50, scope: !957, inlinedAt: !1397)
!1446 = !DILocation(line: 354, column: 6, scope: !872, inlinedAt: !1397)
!1447 = !DILocation(line: 355, column: 3, scope: !957, inlinedAt: !1397)
!1448 = !DILocation(line: 356, column: 32, scope: !965, inlinedAt: !1397)
!1449 = !DILocation(line: 356, column: 37, scope: !965, inlinedAt: !1397)
!1450 = !DILocation(line: 356, column: 43, scope: !965, inlinedAt: !1397)
!1451 = !DILocation(line: 356, column: 46, scope: !965, inlinedAt: !1397)
!1452 = !DILocation(line: 356, column: 51, scope: !965, inlinedAt: !1397)
!1453 = !DILocation(line: 356, column: 6, scope: !872, inlinedAt: !1397)
!1454 = !DILocation(line: 357, column: 3, scope: !965, inlinedAt: !1397)
!1455 = !DILocation(line: 358, column: 6, scope: !973, inlinedAt: !1397)
!1456 = !DILocation(line: 358, column: 11, scope: !973, inlinedAt: !1397)
!1457 = !DILocation(line: 358, column: 6, scope: !872, inlinedAt: !1397)
!1458 = !DILocation(line: 358, column: 26, scope: !973, inlinedAt: !1397)
!1459 = !DILocation(line: 359, column: 6, scope: !978, inlinedAt: !1397)
!1460 = !DILocation(line: 359, column: 11, scope: !978, inlinedAt: !1397)
!1461 = !DILocation(line: 359, column: 6, scope: !872, inlinedAt: !1397)
!1462 = !DILocation(line: 359, column: 26, scope: !978, inlinedAt: !1397)
!1463 = !DILocation(line: 360, column: 6, scope: !983, inlinedAt: !1397)
!1464 = !DILocation(line: 360, column: 11, scope: !983, inlinedAt: !1397)
!1465 = !DILocation(line: 360, column: 6, scope: !872, inlinedAt: !1397)
!1466 = !DILocation(line: 360, column: 26, scope: !983, inlinedAt: !1397)
!1467 = !DILocation(line: 361, column: 6, scope: !988, inlinedAt: !1397)
!1468 = !DILocation(line: 361, column: 11, scope: !988, inlinedAt: !1397)
!1469 = !DILocation(line: 361, column: 6, scope: !872, inlinedAt: !1397)
!1470 = !DILocation(line: 361, column: 26, scope: !988, inlinedAt: !1397)
!1471 = !DILocation(line: 362, column: 6, scope: !993, inlinedAt: !1397)
!1472 = !DILocation(line: 362, column: 11, scope: !993, inlinedAt: !1397)
!1473 = !DILocation(line: 362, column: 6, scope: !872, inlinedAt: !1397)
!1474 = !DILocation(line: 362, column: 26, scope: !993, inlinedAt: !1397)
!1475 = !DILocation(line: 363, column: 6, scope: !998, inlinedAt: !1397)
!1476 = !DILocation(line: 363, column: 11, scope: !998, inlinedAt: !1397)
!1477 = !DILocation(line: 363, column: 6, scope: !872, inlinedAt: !1397)
!1478 = !DILocation(line: 363, column: 26, scope: !998, inlinedAt: !1397)
!1479 = !DILocation(line: 364, column: 6, scope: !1003, inlinedAt: !1397)
!1480 = !DILocation(line: 364, column: 11, scope: !1003, inlinedAt: !1397)
!1481 = !DILocation(line: 364, column: 6, scope: !872, inlinedAt: !1397)
!1482 = !DILocation(line: 364, column: 26, scope: !1003, inlinedAt: !1397)
!1483 = !DILocation(line: 365, column: 6, scope: !1008, inlinedAt: !1397)
!1484 = !DILocation(line: 365, column: 11, scope: !1008, inlinedAt: !1397)
!1485 = !DILocation(line: 365, column: 6, scope: !872, inlinedAt: !1397)
!1486 = !DILocation(line: 365, column: 26, scope: !1008, inlinedAt: !1397)
!1487 = !DILocation(line: 366, column: 6, scope: !1013, inlinedAt: !1397)
!1488 = !DILocation(line: 366, column: 11, scope: !1013, inlinedAt: !1397)
!1489 = !DILocation(line: 366, column: 6, scope: !872, inlinedAt: !1397)
!1490 = !DILocation(line: 366, column: 26, scope: !1013, inlinedAt: !1397)
!1491 = !DILocation(line: 367, column: 6, scope: !1018, inlinedAt: !1397)
!1492 = !DILocation(line: 367, column: 11, scope: !1018, inlinedAt: !1397)
!1493 = !DILocation(line: 367, column: 6, scope: !872, inlinedAt: !1397)
!1494 = !DILocation(line: 367, column: 26, scope: !1018, inlinedAt: !1397)
!1495 = !DILocation(line: 368, column: 6, scope: !1023, inlinedAt: !1397)
!1496 = !DILocation(line: 368, column: 11, scope: !1023, inlinedAt: !1397)
!1497 = !DILocation(line: 368, column: 6, scope: !872, inlinedAt: !1397)
!1498 = !DILocation(line: 368, column: 26, scope: !1023, inlinedAt: !1397)
!1499 = !DILocation(line: 369, column: 6, scope: !1028, inlinedAt: !1397)
!1500 = !DILocation(line: 369, column: 11, scope: !1028, inlinedAt: !1397)
!1501 = !DILocation(line: 369, column: 6, scope: !872, inlinedAt: !1397)
!1502 = !DILocation(line: 369, column: 26, scope: !1028, inlinedAt: !1397)
!1503 = !DILocation(line: 370, column: 6, scope: !1033, inlinedAt: !1397)
!1504 = !DILocation(line: 370, column: 11, scope: !1033, inlinedAt: !1397)
!1505 = !DILocation(line: 370, column: 6, scope: !872, inlinedAt: !1397)
!1506 = !DILocation(line: 370, column: 26, scope: !1033, inlinedAt: !1397)
!1507 = !DILocation(line: 371, column: 6, scope: !1038, inlinedAt: !1397)
!1508 = !DILocation(line: 371, column: 11, scope: !1038, inlinedAt: !1397)
!1509 = !DILocation(line: 371, column: 6, scope: !872, inlinedAt: !1397)
!1510 = !DILocation(line: 371, column: 26, scope: !1038, inlinedAt: !1397)
!1511 = !DILocation(line: 372, column: 6, scope: !1043, inlinedAt: !1397)
!1512 = !DILocation(line: 372, column: 11, scope: !1043, inlinedAt: !1397)
!1513 = !DILocation(line: 372, column: 6, scope: !872, inlinedAt: !1397)
!1514 = !DILocation(line: 372, column: 26, scope: !1043, inlinedAt: !1397)
!1515 = !DILocation(line: 373, column: 6, scope: !1048, inlinedAt: !1397)
!1516 = !DILocation(line: 373, column: 11, scope: !1048, inlinedAt: !1397)
!1517 = !DILocation(line: 373, column: 6, scope: !872, inlinedAt: !1397)
!1518 = !DILocation(line: 373, column: 26, scope: !1048, inlinedAt: !1397)
!1519 = !DILocation(line: 374, column: 6, scope: !1053, inlinedAt: !1397)
!1520 = !DILocation(line: 374, column: 11, scope: !1053, inlinedAt: !1397)
!1521 = !DILocation(line: 374, column: 6, scope: !872, inlinedAt: !1397)
!1522 = !DILocation(line: 374, column: 26, scope: !1053, inlinedAt: !1397)
!1523 = !DILocation(line: 375, column: 6, scope: !1058, inlinedAt: !1397)
!1524 = !DILocation(line: 375, column: 11, scope: !1058, inlinedAt: !1397)
!1525 = !DILocation(line: 375, column: 6, scope: !872, inlinedAt: !1397)
!1526 = !DILocation(line: 375, column: 27, scope: !1058, inlinedAt: !1397)
!1527 = !DILocation(line: 376, column: 6, scope: !1063, inlinedAt: !1397)
!1528 = !DILocation(line: 376, column: 11, scope: !1063, inlinedAt: !1397)
!1529 = !DILocation(line: 376, column: 6, scope: !872, inlinedAt: !1397)
!1530 = !DILocation(line: 376, column: 32, scope: !1063, inlinedAt: !1397)
!1531 = !DILocation(line: 377, column: 6, scope: !1068, inlinedAt: !1397)
!1532 = !DILocation(line: 377, column: 11, scope: !1068, inlinedAt: !1397)
!1533 = !DILocation(line: 377, column: 6, scope: !872, inlinedAt: !1397)
!1534 = !DILocation(line: 377, column: 32, scope: !1068, inlinedAt: !1397)
!1535 = !DILocation(line: 378, column: 6, scope: !1073, inlinedAt: !1397)
!1536 = !DILocation(line: 378, column: 11, scope: !1073, inlinedAt: !1397)
!1537 = !DILocation(line: 378, column: 6, scope: !872, inlinedAt: !1397)
!1538 = !DILocation(line: 378, column: 32, scope: !1073, inlinedAt: !1397)
!1539 = !DILocation(line: 379, column: 6, scope: !1078, inlinedAt: !1397)
!1540 = !DILocation(line: 379, column: 11, scope: !1078, inlinedAt: !1397)
!1541 = !DILocation(line: 379, column: 6, scope: !872, inlinedAt: !1397)
!1542 = !DILocation(line: 379, column: 33, scope: !1078, inlinedAt: !1397)
!1543 = !DILocation(line: 380, column: 6, scope: !1083, inlinedAt: !1397)
!1544 = !DILocation(line: 380, column: 11, scope: !1083, inlinedAt: !1397)
!1545 = !DILocation(line: 380, column: 6, scope: !872, inlinedAt: !1397)
!1546 = !DILocation(line: 380, column: 33, scope: !1083, inlinedAt: !1397)
!1547 = !DILocation(line: 381, column: 6, scope: !1088, inlinedAt: !1397)
!1548 = !DILocation(line: 381, column: 11, scope: !1088, inlinedAt: !1397)
!1549 = !DILocation(line: 381, column: 6, scope: !872, inlinedAt: !1397)
!1550 = !DILocation(line: 381, column: 33, scope: !1088, inlinedAt: !1397)
!1551 = !DILocation(line: 382, column: 2, scope: !1093, inlinedAt: !1397)
!1552 = !DILocation(line: 382, column: 2, scope: !1097, inlinedAt: !1397)
!1553 = !DILocation(line: 382, column: 2, scope: !1098, inlinedAt: !1397)
!1554 = !DILocation(line: 386, column: 1, scope: !872, inlinedAt: !1397)
!1555 = !DILocation(line: 547, column: 9, scope: !852, inlinedAt: !1390)
!1556 = !DILocation(line: 549, column: 8, scope: !1104, inlinedAt: !1390)
!1557 = !DILocation(line: 549, column: 7, scope: !852, inlinedAt: !1390)
!1558 = !DILocation(line: 550, column: 4, scope: !1104, inlinedAt: !1390)
!1559 = !DILocation(line: 553, column: 33, scope: !852, inlinedAt: !1390)
!1560 = !DILocation(line: 325, column: 6, scope: !1109, inlinedAt: !1395)
!1561 = !DILocation(line: 325, column: 6, scope: !866, inlinedAt: !1395)
!1562 = !DILocation(line: 326, column: 3, scope: !1109, inlinedAt: !1395)
!1563 = !DILocation(line: 332, column: 9, scope: !866, inlinedAt: !1395)
!1564 = !DILocation(line: 332, column: 15, scope: !866, inlinedAt: !1395)
!1565 = !DILocation(line: 332, column: 2, scope: !866, inlinedAt: !1395)
!1566 = !DILocation(line: 336, column: 1, scope: !866, inlinedAt: !1395)
!1567 = !DILocation(line: 553, column: 5, scope: !852, inlinedAt: !1390)
!1568 = !DILocation(line: 553, column: 41, scope: !852, inlinedAt: !1390)
!1569 = !DILocation(line: 554, column: 5, scope: !852, inlinedAt: !1390)
!1570 = !DILocation(line: 554, column: 12, scope: !852, inlinedAt: !1390)
!1571 = !DILocation(line: 448, column: 31, scope: !845, inlinedAt: !1389)
!1572 = !DILocation(line: 448, column: 34, scope: !845, inlinedAt: !1389)
!1573 = !DILocation(line: 448, column: 14, scope: !845, inlinedAt: !1389)
!1574 = !DILocation(line: 450, column: 22, scope: !845, inlinedAt: !1389)
!1575 = !DILocation(line: 450, column: 25, scope: !845, inlinedAt: !1389)
!1576 = !DILocation(line: 450, column: 30, scope: !845, inlinedAt: !1389)
!1577 = !DILocation(line: 450, column: 36, scope: !845, inlinedAt: !1389)
!1578 = !DILocation(line: 450, column: 8, scope: !845, inlinedAt: !1389)
!1579 = !DILocation(line: 450, column: 6, scope: !845, inlinedAt: !1389)
!1580 = !DILocation(line: 451, column: 9, scope: !845, inlinedAt: !1389)
!1581 = !DILocation(line: 552, column: 3, scope: !852, inlinedAt: !1390)
!1582 = !DILocation(line: 557, column: 19, scope: !854, inlinedAt: !1390)
!1583 = !DILocation(line: 557, column: 25, scope: !854, inlinedAt: !1390)
!1584 = !DILocation(line: 557, column: 9, scope: !854, inlinedAt: !1390)
!1585 = !DILocation(line: 557, column: 2, scope: !854, inlinedAt: !1390)
!1586 = !DILocation(line: 558, column: 1, scope: !854, inlinedAt: !1390)
!1587 = !DILocation(line: 137, column: 23, scope: !1385)
!1588 = !DILocalVariable(name: "base", scope: !1385, file: !1, line: 138, type: !40)
!1589 = !DILocation(line: 138, column: 16, scope: !1385)
!1590 = !DILocation(line: 138, column: 23, scope: !1385)
!1591 = !DILocalVariable(name: "i", scope: !1385, file: !1, line: 139, type: !34)
!1592 = !DILocation(line: 139, column: 6, scope: !1385)
!1593 = !DILocation(line: 141, column: 7, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1385, file: !1, line: 141, column: 6)
!1595 = !DILocation(line: 141, column: 9, scope: !1594)
!1596 = !DILocation(line: 141, column: 18, scope: !1594)
!1597 = !DILocation(line: 141, column: 22, scope: !1594)
!1598 = !DILocation(line: 141, column: 27, scope: !1594)
!1599 = !DILocation(line: 141, column: 6, scope: !1385)
!1600 = !DILocation(line: 142, column: 9, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1594, file: !1, line: 141, column: 37)
!1602 = !DILocation(line: 142, column: 3, scope: !1601)
!1603 = !DILocation(line: 143, column: 9, scope: !1601)
!1604 = !DILocation(line: 143, column: 3, scope: !1601)
!1605 = !DILocation(line: 144, column: 3, scope: !1601)
!1606 = !DILocation(line: 147, column: 2, scope: !1385)
!1607 = !DILocation(line: 147, column: 8, scope: !1385)
!1608 = !DILocation(line: 147, column: 12, scope: !1385)
!1609 = !DILocation(line: 148, column: 2, scope: !1385)
!1610 = !DILocation(line: 148, column: 8, scope: !1385)
!1611 = !DILocation(line: 148, column: 14, scope: !1385)
!1612 = !DILocation(line: 149, column: 14, scope: !1385)
!1613 = !DILocation(line: 149, column: 2, scope: !1385)
!1614 = !DILocation(line: 149, column: 8, scope: !1385)
!1615 = !DILocation(line: 149, column: 12, scope: !1385)
!1616 = !DILocation(line: 150, column: 9, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1385, file: !1, line: 150, column: 2)
!1618 = !DILocation(line: 150, column: 7, scope: !1617)
!1619 = !DILocation(line: 150, column: 14, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 150, column: 2)
!1621 = !DILocation(line: 150, column: 16, scope: !1620)
!1622 = !DILocation(line: 150, column: 2, scope: !1617)
!1623 = !DILocation(line: 151, column: 18, scope: !1620)
!1624 = !DILocation(line: 151, column: 3, scope: !1620)
!1625 = !DILocation(line: 151, column: 6, scope: !1620)
!1626 = !DILocation(line: 151, column: 13, scope: !1620)
!1627 = !DILocation(line: 151, column: 16, scope: !1620)
!1628 = !DILocation(line: 150, column: 24, scope: !1620)
!1629 = !DILocation(line: 150, column: 2, scope: !1620)
!1630 = distinct !{!1630, !1622, !1631}
!1631 = !DILocation(line: 151, column: 18, scope: !1617)
!1632 = !DILocation(line: 152, column: 12, scope: !1385)
!1633 = !DILocation(line: 152, column: 2, scope: !1385)
!1634 = !DILocation(line: 152, column: 5, scope: !1385)
!1635 = !DILocation(line: 152, column: 10, scope: !1385)
!1636 = !DILocation(line: 153, column: 9, scope: !1385)
!1637 = !DILocation(line: 153, column: 2, scope: !1385)
!1638 = !DILocation(line: 154, column: 1, scope: !1385)
!1639 = distinct !DISubprogram(name: "kzalloc", scope: !16, file: !16, line: 662, type: !855, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !98)
!1640 = !DILocation(line: 445, column: 72, scope: !845, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 552, column: 10, scope: !852, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 664, column: 9, scope: !1639)
!1643 = !DILocation(line: 446, column: 9, scope: !845, inlinedAt: !1641)
!1644 = !DILocation(line: 446, column: 23, scope: !845, inlinedAt: !1641)
!1645 = !DILocation(line: 448, column: 8, scope: !845, inlinedAt: !1641)
!1646 = !DILocation(line: 318, column: 67, scope: !866, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 553, column: 20, scope: !852, inlinedAt: !1642)
!1648 = !DILocation(line: 346, column: 58, scope: !872, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 547, column: 11, scope: !852, inlinedAt: !1642)
!1650 = !DILocation(line: 472, column: 28, scope: !878, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 481, column: 9, scope: !883, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 545, column: 11, scope: !885, inlinedAt: !1642)
!1653 = !DILocation(line: 472, column: 40, scope: !878, inlinedAt: !1651)
!1654 = !DILocation(line: 472, column: 60, scope: !878, inlinedAt: !1651)
!1655 = !DILocation(line: 478, column: 51, scope: !883, inlinedAt: !1652)
!1656 = !DILocation(line: 478, column: 63, scope: !883, inlinedAt: !1652)
!1657 = !DILocation(line: 480, column: 15, scope: !883, inlinedAt: !1652)
!1658 = !DILocation(line: 538, column: 45, scope: !854, inlinedAt: !1642)
!1659 = !DILocation(line: 538, column: 57, scope: !854, inlinedAt: !1642)
!1660 = !DILocation(line: 542, column: 16, scope: !852, inlinedAt: !1642)
!1661 = !DILocalVariable(name: "size", arg: 1, scope: !1639, file: !16, line: 662, type: !172)
!1662 = !DILocation(line: 662, column: 36, scope: !1639)
!1663 = !DILocalVariable(name: "flags", arg: 2, scope: !1639, file: !16, line: 662, type: !23)
!1664 = !DILocation(line: 662, column: 48, scope: !1639)
!1665 = !DILocation(line: 664, column: 17, scope: !1639)
!1666 = !DILocation(line: 664, column: 23, scope: !1639)
!1667 = !DILocation(line: 664, column: 29, scope: !1639)
!1668 = !DILocation(line: 540, column: 27, scope: !853, inlinedAt: !1642)
!1669 = !DILocation(line: 540, column: 6, scope: !853, inlinedAt: !1642)
!1670 = !DILocation(line: 540, column: 6, scope: !854, inlinedAt: !1642)
!1671 = !DILocation(line: 544, column: 7, scope: !885, inlinedAt: !1642)
!1672 = !DILocation(line: 544, column: 12, scope: !885, inlinedAt: !1642)
!1673 = !DILocation(line: 544, column: 7, scope: !852, inlinedAt: !1642)
!1674 = !DILocation(line: 545, column: 25, scope: !885, inlinedAt: !1642)
!1675 = !DILocation(line: 545, column: 31, scope: !885, inlinedAt: !1642)
!1676 = !DILocation(line: 480, column: 33, scope: !883, inlinedAt: !1652)
!1677 = !DILocation(line: 480, column: 23, scope: !883, inlinedAt: !1652)
!1678 = !DILocation(line: 481, column: 29, scope: !883, inlinedAt: !1652)
!1679 = !DILocation(line: 481, column: 35, scope: !883, inlinedAt: !1652)
!1680 = !DILocation(line: 481, column: 42, scope: !883, inlinedAt: !1652)
!1681 = !DILocation(line: 474, column: 23, scope: !878, inlinedAt: !1651)
!1682 = !DILocation(line: 474, column: 29, scope: !878, inlinedAt: !1651)
!1683 = !DILocation(line: 474, column: 36, scope: !878, inlinedAt: !1651)
!1684 = !DILocation(line: 474, column: 9, scope: !878, inlinedAt: !1651)
!1685 = !DILocation(line: 545, column: 4, scope: !885, inlinedAt: !1642)
!1686 = !DILocation(line: 547, column: 25, scope: !852, inlinedAt: !1642)
!1687 = !DILocation(line: 348, column: 7, scope: !948, inlinedAt: !1649)
!1688 = !DILocation(line: 348, column: 6, scope: !872, inlinedAt: !1649)
!1689 = !DILocation(line: 349, column: 3, scope: !948, inlinedAt: !1649)
!1690 = !DILocation(line: 351, column: 6, scope: !952, inlinedAt: !1649)
!1691 = !DILocation(line: 351, column: 11, scope: !952, inlinedAt: !1649)
!1692 = !DILocation(line: 351, column: 6, scope: !872, inlinedAt: !1649)
!1693 = !DILocation(line: 352, column: 3, scope: !952, inlinedAt: !1649)
!1694 = !DILocation(line: 354, column: 32, scope: !957, inlinedAt: !1649)
!1695 = !DILocation(line: 354, column: 37, scope: !957, inlinedAt: !1649)
!1696 = !DILocation(line: 354, column: 42, scope: !957, inlinedAt: !1649)
!1697 = !DILocation(line: 354, column: 45, scope: !957, inlinedAt: !1649)
!1698 = !DILocation(line: 354, column: 50, scope: !957, inlinedAt: !1649)
!1699 = !DILocation(line: 354, column: 6, scope: !872, inlinedAt: !1649)
!1700 = !DILocation(line: 355, column: 3, scope: !957, inlinedAt: !1649)
!1701 = !DILocation(line: 356, column: 32, scope: !965, inlinedAt: !1649)
!1702 = !DILocation(line: 356, column: 37, scope: !965, inlinedAt: !1649)
!1703 = !DILocation(line: 356, column: 43, scope: !965, inlinedAt: !1649)
!1704 = !DILocation(line: 356, column: 46, scope: !965, inlinedAt: !1649)
!1705 = !DILocation(line: 356, column: 51, scope: !965, inlinedAt: !1649)
!1706 = !DILocation(line: 356, column: 6, scope: !872, inlinedAt: !1649)
!1707 = !DILocation(line: 357, column: 3, scope: !965, inlinedAt: !1649)
!1708 = !DILocation(line: 358, column: 6, scope: !973, inlinedAt: !1649)
!1709 = !DILocation(line: 358, column: 11, scope: !973, inlinedAt: !1649)
!1710 = !DILocation(line: 358, column: 6, scope: !872, inlinedAt: !1649)
!1711 = !DILocation(line: 358, column: 26, scope: !973, inlinedAt: !1649)
!1712 = !DILocation(line: 359, column: 6, scope: !978, inlinedAt: !1649)
!1713 = !DILocation(line: 359, column: 11, scope: !978, inlinedAt: !1649)
!1714 = !DILocation(line: 359, column: 6, scope: !872, inlinedAt: !1649)
!1715 = !DILocation(line: 359, column: 26, scope: !978, inlinedAt: !1649)
!1716 = !DILocation(line: 360, column: 6, scope: !983, inlinedAt: !1649)
!1717 = !DILocation(line: 360, column: 11, scope: !983, inlinedAt: !1649)
!1718 = !DILocation(line: 360, column: 6, scope: !872, inlinedAt: !1649)
!1719 = !DILocation(line: 360, column: 26, scope: !983, inlinedAt: !1649)
!1720 = !DILocation(line: 361, column: 6, scope: !988, inlinedAt: !1649)
!1721 = !DILocation(line: 361, column: 11, scope: !988, inlinedAt: !1649)
!1722 = !DILocation(line: 361, column: 6, scope: !872, inlinedAt: !1649)
!1723 = !DILocation(line: 361, column: 26, scope: !988, inlinedAt: !1649)
!1724 = !DILocation(line: 362, column: 6, scope: !993, inlinedAt: !1649)
!1725 = !DILocation(line: 362, column: 11, scope: !993, inlinedAt: !1649)
!1726 = !DILocation(line: 362, column: 6, scope: !872, inlinedAt: !1649)
!1727 = !DILocation(line: 362, column: 26, scope: !993, inlinedAt: !1649)
!1728 = !DILocation(line: 363, column: 6, scope: !998, inlinedAt: !1649)
!1729 = !DILocation(line: 363, column: 11, scope: !998, inlinedAt: !1649)
!1730 = !DILocation(line: 363, column: 6, scope: !872, inlinedAt: !1649)
!1731 = !DILocation(line: 363, column: 26, scope: !998, inlinedAt: !1649)
!1732 = !DILocation(line: 364, column: 6, scope: !1003, inlinedAt: !1649)
!1733 = !DILocation(line: 364, column: 11, scope: !1003, inlinedAt: !1649)
!1734 = !DILocation(line: 364, column: 6, scope: !872, inlinedAt: !1649)
!1735 = !DILocation(line: 364, column: 26, scope: !1003, inlinedAt: !1649)
!1736 = !DILocation(line: 365, column: 6, scope: !1008, inlinedAt: !1649)
!1737 = !DILocation(line: 365, column: 11, scope: !1008, inlinedAt: !1649)
!1738 = !DILocation(line: 365, column: 6, scope: !872, inlinedAt: !1649)
!1739 = !DILocation(line: 365, column: 26, scope: !1008, inlinedAt: !1649)
!1740 = !DILocation(line: 366, column: 6, scope: !1013, inlinedAt: !1649)
!1741 = !DILocation(line: 366, column: 11, scope: !1013, inlinedAt: !1649)
!1742 = !DILocation(line: 366, column: 6, scope: !872, inlinedAt: !1649)
!1743 = !DILocation(line: 366, column: 26, scope: !1013, inlinedAt: !1649)
!1744 = !DILocation(line: 367, column: 6, scope: !1018, inlinedAt: !1649)
!1745 = !DILocation(line: 367, column: 11, scope: !1018, inlinedAt: !1649)
!1746 = !DILocation(line: 367, column: 6, scope: !872, inlinedAt: !1649)
!1747 = !DILocation(line: 367, column: 26, scope: !1018, inlinedAt: !1649)
!1748 = !DILocation(line: 368, column: 6, scope: !1023, inlinedAt: !1649)
!1749 = !DILocation(line: 368, column: 11, scope: !1023, inlinedAt: !1649)
!1750 = !DILocation(line: 368, column: 6, scope: !872, inlinedAt: !1649)
!1751 = !DILocation(line: 368, column: 26, scope: !1023, inlinedAt: !1649)
!1752 = !DILocation(line: 369, column: 6, scope: !1028, inlinedAt: !1649)
!1753 = !DILocation(line: 369, column: 11, scope: !1028, inlinedAt: !1649)
!1754 = !DILocation(line: 369, column: 6, scope: !872, inlinedAt: !1649)
!1755 = !DILocation(line: 369, column: 26, scope: !1028, inlinedAt: !1649)
!1756 = !DILocation(line: 370, column: 6, scope: !1033, inlinedAt: !1649)
!1757 = !DILocation(line: 370, column: 11, scope: !1033, inlinedAt: !1649)
!1758 = !DILocation(line: 370, column: 6, scope: !872, inlinedAt: !1649)
!1759 = !DILocation(line: 370, column: 26, scope: !1033, inlinedAt: !1649)
!1760 = !DILocation(line: 371, column: 6, scope: !1038, inlinedAt: !1649)
!1761 = !DILocation(line: 371, column: 11, scope: !1038, inlinedAt: !1649)
!1762 = !DILocation(line: 371, column: 6, scope: !872, inlinedAt: !1649)
!1763 = !DILocation(line: 371, column: 26, scope: !1038, inlinedAt: !1649)
!1764 = !DILocation(line: 372, column: 6, scope: !1043, inlinedAt: !1649)
!1765 = !DILocation(line: 372, column: 11, scope: !1043, inlinedAt: !1649)
!1766 = !DILocation(line: 372, column: 6, scope: !872, inlinedAt: !1649)
!1767 = !DILocation(line: 372, column: 26, scope: !1043, inlinedAt: !1649)
!1768 = !DILocation(line: 373, column: 6, scope: !1048, inlinedAt: !1649)
!1769 = !DILocation(line: 373, column: 11, scope: !1048, inlinedAt: !1649)
!1770 = !DILocation(line: 373, column: 6, scope: !872, inlinedAt: !1649)
!1771 = !DILocation(line: 373, column: 26, scope: !1048, inlinedAt: !1649)
!1772 = !DILocation(line: 374, column: 6, scope: !1053, inlinedAt: !1649)
!1773 = !DILocation(line: 374, column: 11, scope: !1053, inlinedAt: !1649)
!1774 = !DILocation(line: 374, column: 6, scope: !872, inlinedAt: !1649)
!1775 = !DILocation(line: 374, column: 26, scope: !1053, inlinedAt: !1649)
!1776 = !DILocation(line: 375, column: 6, scope: !1058, inlinedAt: !1649)
!1777 = !DILocation(line: 375, column: 11, scope: !1058, inlinedAt: !1649)
!1778 = !DILocation(line: 375, column: 6, scope: !872, inlinedAt: !1649)
!1779 = !DILocation(line: 375, column: 27, scope: !1058, inlinedAt: !1649)
!1780 = !DILocation(line: 376, column: 6, scope: !1063, inlinedAt: !1649)
!1781 = !DILocation(line: 376, column: 11, scope: !1063, inlinedAt: !1649)
!1782 = !DILocation(line: 376, column: 6, scope: !872, inlinedAt: !1649)
!1783 = !DILocation(line: 376, column: 32, scope: !1063, inlinedAt: !1649)
!1784 = !DILocation(line: 377, column: 6, scope: !1068, inlinedAt: !1649)
!1785 = !DILocation(line: 377, column: 11, scope: !1068, inlinedAt: !1649)
!1786 = !DILocation(line: 377, column: 6, scope: !872, inlinedAt: !1649)
!1787 = !DILocation(line: 377, column: 32, scope: !1068, inlinedAt: !1649)
!1788 = !DILocation(line: 378, column: 6, scope: !1073, inlinedAt: !1649)
!1789 = !DILocation(line: 378, column: 11, scope: !1073, inlinedAt: !1649)
!1790 = !DILocation(line: 378, column: 6, scope: !872, inlinedAt: !1649)
!1791 = !DILocation(line: 378, column: 32, scope: !1073, inlinedAt: !1649)
!1792 = !DILocation(line: 379, column: 6, scope: !1078, inlinedAt: !1649)
!1793 = !DILocation(line: 379, column: 11, scope: !1078, inlinedAt: !1649)
!1794 = !DILocation(line: 379, column: 6, scope: !872, inlinedAt: !1649)
!1795 = !DILocation(line: 379, column: 33, scope: !1078, inlinedAt: !1649)
!1796 = !DILocation(line: 380, column: 6, scope: !1083, inlinedAt: !1649)
!1797 = !DILocation(line: 380, column: 11, scope: !1083, inlinedAt: !1649)
!1798 = !DILocation(line: 380, column: 6, scope: !872, inlinedAt: !1649)
!1799 = !DILocation(line: 380, column: 33, scope: !1083, inlinedAt: !1649)
!1800 = !DILocation(line: 381, column: 6, scope: !1088, inlinedAt: !1649)
!1801 = !DILocation(line: 381, column: 11, scope: !1088, inlinedAt: !1649)
!1802 = !DILocation(line: 381, column: 6, scope: !872, inlinedAt: !1649)
!1803 = !DILocation(line: 381, column: 33, scope: !1088, inlinedAt: !1649)
!1804 = !DILocation(line: 382, column: 2, scope: !1093, inlinedAt: !1649)
!1805 = !DILocation(line: 382, column: 2, scope: !1097, inlinedAt: !1649)
!1806 = !DILocation(line: 382, column: 2, scope: !1098, inlinedAt: !1649)
!1807 = !DILocation(line: 386, column: 1, scope: !872, inlinedAt: !1649)
!1808 = !DILocation(line: 547, column: 9, scope: !852, inlinedAt: !1642)
!1809 = !DILocation(line: 549, column: 8, scope: !1104, inlinedAt: !1642)
!1810 = !DILocation(line: 549, column: 7, scope: !852, inlinedAt: !1642)
!1811 = !DILocation(line: 550, column: 4, scope: !1104, inlinedAt: !1642)
!1812 = !DILocation(line: 553, column: 33, scope: !852, inlinedAt: !1642)
!1813 = !DILocation(line: 325, column: 6, scope: !1109, inlinedAt: !1647)
!1814 = !DILocation(line: 325, column: 6, scope: !866, inlinedAt: !1647)
!1815 = !DILocation(line: 326, column: 3, scope: !1109, inlinedAt: !1647)
!1816 = !DILocation(line: 332, column: 9, scope: !866, inlinedAt: !1647)
!1817 = !DILocation(line: 332, column: 15, scope: !866, inlinedAt: !1647)
!1818 = !DILocation(line: 332, column: 2, scope: !866, inlinedAt: !1647)
!1819 = !DILocation(line: 336, column: 1, scope: !866, inlinedAt: !1647)
!1820 = !DILocation(line: 553, column: 5, scope: !852, inlinedAt: !1642)
!1821 = !DILocation(line: 553, column: 41, scope: !852, inlinedAt: !1642)
!1822 = !DILocation(line: 554, column: 5, scope: !852, inlinedAt: !1642)
!1823 = !DILocation(line: 554, column: 12, scope: !852, inlinedAt: !1642)
!1824 = !DILocation(line: 448, column: 31, scope: !845, inlinedAt: !1641)
!1825 = !DILocation(line: 448, column: 34, scope: !845, inlinedAt: !1641)
!1826 = !DILocation(line: 448, column: 14, scope: !845, inlinedAt: !1641)
!1827 = !DILocation(line: 450, column: 22, scope: !845, inlinedAt: !1641)
!1828 = !DILocation(line: 450, column: 25, scope: !845, inlinedAt: !1641)
!1829 = !DILocation(line: 450, column: 30, scope: !845, inlinedAt: !1641)
!1830 = !DILocation(line: 450, column: 36, scope: !845, inlinedAt: !1641)
!1831 = !DILocation(line: 450, column: 8, scope: !845, inlinedAt: !1641)
!1832 = !DILocation(line: 450, column: 6, scope: !845, inlinedAt: !1641)
!1833 = !DILocation(line: 451, column: 9, scope: !845, inlinedAt: !1641)
!1834 = !DILocation(line: 552, column: 3, scope: !852, inlinedAt: !1642)
!1835 = !DILocation(line: 557, column: 19, scope: !854, inlinedAt: !1642)
!1836 = !DILocation(line: 557, column: 25, scope: !854, inlinedAt: !1642)
!1837 = !DILocation(line: 557, column: 9, scope: !854, inlinedAt: !1642)
!1838 = !DILocation(line: 557, column: 2, scope: !854, inlinedAt: !1642)
!1839 = !DILocation(line: 558, column: 1, scope: !854, inlinedAt: !1642)
!1840 = !DILocation(line: 664, column: 2, scope: !1639)
!1841 = distinct !DISubprogram(name: "__must_check_overflow", scope: !1842, file: !1842, line: 52, type: !1843, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !98)
!1842 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!415, !415}
!1845 = !DILocalVariable(name: "overflow", arg: 1, scope: !1841, file: !1842, line: 52, type: !415)
!1846 = !DILocation(line: 52, column: 60, scope: !1841)
!1847 = !DILocation(line: 54, column: 9, scope: !1841)
!1848 = !DILocation(line: 54, column: 2, scope: !1841)
!1849 = distinct !DISubprogram(name: "get_order", scope: !1850, file: !1850, line: 29, type: !1851, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !98)
!1850 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!34, !52}
!1853 = !DILocalVariable(name: "x", arg: 1, scope: !1854, file: !1855, line: 366, type: !244)
!1854 = distinct !DISubprogram(name: "fls64", scope: !1855, file: !1855, line: 366, type: !1856, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !98)
!1855 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!34, !244}
!1858 = !DILocation(line: 366, column: 40, scope: !1854, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 46, column: 9, scope: !1849)
!1860 = !DILocalVariable(name: "bitpos", scope: !1854, file: !1855, line: 368, type: !34)
!1861 = !DILocation(line: 368, column: 6, scope: !1854, inlinedAt: !1859)
!1862 = !DILocalVariable(name: "size", arg: 1, scope: !1849, file: !1850, line: 29, type: !52)
!1863 = !DILocation(line: 29, column: 63, scope: !1849)
!1864 = !DILocation(line: 31, column: 27, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1849, file: !1850, line: 31, column: 6)
!1866 = !DILocation(line: 31, column: 6, scope: !1865)
!1867 = !DILocation(line: 31, column: 6, scope: !1849)
!1868 = !DILocation(line: 32, column: 8, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !1850, line: 32, column: 7)
!1870 = distinct !DILexicalBlock(scope: !1865, file: !1850, line: 31, column: 34)
!1871 = !DILocation(line: 32, column: 7, scope: !1870)
!1872 = !DILocation(line: 33, column: 4, scope: !1869)
!1873 = !DILocation(line: 35, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1870, file: !1850, line: 35, column: 7)
!1875 = !DILocation(line: 35, column: 12, scope: !1874)
!1876 = !DILocation(line: 35, column: 7, scope: !1870)
!1877 = !DILocation(line: 36, column: 4, scope: !1874)
!1878 = !DILocation(line: 38, column: 10, scope: !1870)
!1879 = !DILocation(line: 38, column: 28, scope: !1870)
!1880 = !DILocation(line: 38, column: 41, scope: !1870)
!1881 = !DILocation(line: 38, column: 3, scope: !1870)
!1882 = !DILocation(line: 41, column: 6, scope: !1849)
!1883 = !DILocation(line: 42, column: 7, scope: !1849)
!1884 = !DILocation(line: 46, column: 15, scope: !1849)
!1885 = !DILocation(line: 374, column: 2, scope: !1854, inlinedAt: !1859)
!1886 = !DILocation(line: 376, column: 14, scope: !1854, inlinedAt: !1859)
!1887 = !{i32 299933}
!1888 = !DILocation(line: 377, column: 9, scope: !1854, inlinedAt: !1859)
!1889 = !DILocation(line: 377, column: 16, scope: !1854, inlinedAt: !1859)
!1890 = !DILocation(line: 46, column: 2, scope: !1849)
!1891 = !DILocation(line: 48, column: 1, scope: !1849)
!1892 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1893, file: !1893, line: 30, type: !1894, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !98)
!1893 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!34, !243}
!1896 = !DILocation(line: 366, column: 40, scope: !1854, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 32, column: 9, scope: !1892)
!1898 = !DILocation(line: 368, column: 6, scope: !1854, inlinedAt: !1897)
!1899 = !DILocalVariable(name: "n", arg: 1, scope: !1892, file: !1893, line: 30, type: !243)
!1900 = !DILocation(line: 30, column: 21, scope: !1892)
!1901 = !DILocation(line: 32, column: 15, scope: !1892)
!1902 = !DILocation(line: 374, column: 2, scope: !1854, inlinedAt: !1897)
!1903 = !DILocation(line: 376, column: 14, scope: !1854, inlinedAt: !1897)
!1904 = !DILocation(line: 377, column: 9, scope: !1854, inlinedAt: !1897)
!1905 = !DILocation(line: 377, column: 16, scope: !1854, inlinedAt: !1897)
!1906 = !DILocation(line: 32, column: 18, scope: !1892)
!1907 = !DILocation(line: 32, column: 2, scope: !1892)
!1908 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1909, file: !1909, line: 137, type: !1910, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !98)
!1909 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!25, !848, !487, !172, !23}
!1912 = !DILocalVariable(name: "s", arg: 1, scope: !1908, file: !1909, line: 137, type: !848)
!1913 = !DILocation(line: 137, column: 54, scope: !1908)
!1914 = !DILocalVariable(name: "object", arg: 2, scope: !1908, file: !1909, line: 137, type: !487)
!1915 = !DILocation(line: 137, column: 69, scope: !1908)
!1916 = !DILocalVariable(name: "size", arg: 3, scope: !1908, file: !1909, line: 138, type: !172)
!1917 = !DILocation(line: 138, column: 12, scope: !1908)
!1918 = !DILocalVariable(name: "flags", arg: 4, scope: !1908, file: !1909, line: 138, type: !23)
!1919 = !DILocation(line: 138, column: 24, scope: !1908)
!1920 = !DILocation(line: 140, column: 17, scope: !1908)
!1921 = !DILocation(line: 140, column: 2, scope: !1908)
