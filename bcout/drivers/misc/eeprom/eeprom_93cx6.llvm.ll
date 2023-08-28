; ModuleID = '../bcout/drivers/misc/eeprom/eeprom_93cx6.llvm.bc'
source_filename = "drivers/misc/eeprom/eeprom_93cx6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.module_version_attribute = type { %struct.module_attribute, i8*, i8* }
%struct.module_attribute = type { %struct.attribute, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)*, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)*, void (%struct.module*, i8*)*, i32 (%struct.module*)*, void (%struct.module*)* }
%struct.attribute = type { i8*, i16 }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
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
%struct.atomic64_t = type { i64 }
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
%struct.module = type opaque
%struct.module_param_attrs = type opaque
%struct.eeprom_93cx6 = type { i8*, void (%struct.eeprom_93cx6*)*, void (%struct.eeprom_93cx6*)*, i32, i8, i8, i8, i8, i8 }

@__UNIQUE_ID_author104 = internal constant [51 x i8] c"eeprom_93cx6.author=http://rt2x00.serialmonkey.com\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_version105 = internal constant [25 x i8] c"eeprom_93cx6.version=1.0\00", section ".modinfo", align 1, !dbg !24
@___modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i16 292 }, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)* @__modver_version_show, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)* null, void (%struct.module*, i8*)* null, i32 (%struct.module*)* null, void (%struct.module*)* null }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0) }, align 8, !dbg !727
@__modver_attr = internal constant %struct.module_version_attribute* @___modver_attr, section "__modver", align 8, !dbg !31
@__UNIQUE_ID_description106 = internal constant [50 x i8] c"eeprom_93cx6.description=EEPROM 93cx6 chip driver\00", section ".modinfo", align 1, !dbg !715
@__UNIQUE_ID_file107 = internal constant [51 x i8] c"eeprom_93cx6.file=drivers/misc/eeprom/eeprom_93cx6\00", section ".modinfo", align 1, !dbg !720
@__UNIQUE_ID_license108 = internal constant [25 x i8] c"eeprom_93cx6.license=GPL\00", section ".modinfo", align 1, !dbg !725
@.str = private unnamed_addr constant [15 x i8] c"\013%s: timeout\0A\00", align 1
@__func__.eeprom_93cx6_write = private unnamed_addr constant [19 x i8] c"eeprom_93cx6_write\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"eeprom_93cx6\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@llvm.used = appending global [6 x i8*] [i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_author104, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_version105, i32 0, i32 0), i8* bitcast (%struct.module_version_attribute** @__modver_attr to i8*), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_description106, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_file107, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license108, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @eeprom_93cx6_read(%struct.eeprom_93cx6* %eeprom, i8 zeroext %word, i16* %data) #0 !dbg !734 {
entry:
  %eeprom.addr = alloca %struct.eeprom_93cx6*, align 8
  %word.addr = alloca i8, align 1
  %data.addr = alloca i16*, align 8
  %command = alloca i16, align 2
  store %struct.eeprom_93cx6* %eeprom, %struct.eeprom_93cx6** %eeprom.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.eeprom_93cx6** %eeprom.addr, metadata !758, metadata !DIExpression()), !dbg !759
  store i8 %word, i8* %word.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %word.addr, metadata !760, metadata !DIExpression()), !dbg !761
  store i16* %data, i16** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %data.addr, metadata !762, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.declare(metadata i16* %command, metadata !764, metadata !DIExpression()), !dbg !765
  %0 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !766
  call void @eeprom_93cx6_startup(%struct.eeprom_93cx6* %0) #4, !dbg !767
  %1 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !768
  %width = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %1, i32 0, i32 3, !dbg !769
  %2 = load i32, i32* %width, align 8, !dbg !769
  %shl = shl i32 6, %2, !dbg !770
  %3 = load i8, i8* %word.addr, align 1, !dbg !771
  %conv = zext i8 %3 to i32, !dbg !771
  %or = or i32 %shl, %conv, !dbg !772
  %conv1 = trunc i32 %or to i16, !dbg !773
  store i16 %conv1, i16* %command, align 2, !dbg !774
  %4 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !775
  %5 = load i16, i16* %command, align 2, !dbg !776
  %6 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !777
  %width2 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %6, i32 0, i32 3, !dbg !778
  %7 = load i32, i32* %width2, align 8, !dbg !778
  %add = add i32 3, %7, !dbg !779
  %conv3 = trunc i32 %add to i16, !dbg !780
  call void @eeprom_93cx6_write_bits(%struct.eeprom_93cx6* %4, i16 zeroext %5, i16 zeroext %conv3) #4, !dbg !781
  %8 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !782
  %9 = load i16*, i16** %data.addr, align 8, !dbg !783
  call void @eeprom_93cx6_read_bits(%struct.eeprom_93cx6* %8, i16* %9, i16 zeroext 16) #4, !dbg !784
  %10 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !785
  call void @eeprom_93cx6_cleanup(%struct.eeprom_93cx6* %10) #4, !dbg !786
  ret void, !dbg !787
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @eeprom_93cx6_startup(%struct.eeprom_93cx6* %eeprom) #0 !dbg !788 {
entry:
  %eeprom.addr = alloca %struct.eeprom_93cx6*, align 8
  store %struct.eeprom_93cx6* %eeprom, %struct.eeprom_93cx6** %eeprom.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.eeprom_93cx6** %eeprom.addr, metadata !789, metadata !DIExpression()), !dbg !790
  %0 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !791
  %register_read = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %0, i32 0, i32 1, !dbg !792
  %1 = load void (%struct.eeprom_93cx6*)*, void (%struct.eeprom_93cx6*)** %register_read, align 8, !dbg !792
  %2 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !793
  call void %1(%struct.eeprom_93cx6* %2) #4, !dbg !791
  %3 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !794
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 5, !dbg !795
  store i8 0, i8* %reg_data_in, align 1, !dbg !796
  %4 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !797
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %4, i32 0, i32 6, !dbg !798
  store i8 0, i8* %reg_data_out, align 2, !dbg !799
  %5 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !800
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %5, i32 0, i32 7, !dbg !801
  store i8 0, i8* %reg_data_clock, align 1, !dbg !802
  %6 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !803
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %6, i32 0, i32 8, !dbg !804
  store i8 1, i8* %reg_chip_select, align 8, !dbg !805
  %7 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !806
  %drive_data = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %7, i32 0, i32 4, !dbg !807
  store i8 1, i8* %drive_data, align 4, !dbg !808
  %8 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !809
  %register_write = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %8, i32 0, i32 2, !dbg !810
  %9 = load void (%struct.eeprom_93cx6*)*, void (%struct.eeprom_93cx6*)** %register_write, align 8, !dbg !810
  %10 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !811
  call void %9(%struct.eeprom_93cx6* %10) #4, !dbg !809
  %11 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !812
  call void @eeprom_93cx6_pulse_high(%struct.eeprom_93cx6* %11) #4, !dbg !813
  %12 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !814
  call void @eeprom_93cx6_pulse_low(%struct.eeprom_93cx6* %12) #4, !dbg !815
  ret void, !dbg !816
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @eeprom_93cx6_write_bits(%struct.eeprom_93cx6* %eeprom, i16 zeroext %data, i16 zeroext %count) #0 !dbg !817 {
entry:
  %eeprom.addr = alloca %struct.eeprom_93cx6*, align 8
  %data.addr = alloca i16, align 2
  %count.addr = alloca i16, align 2
  %i = alloca i32, align 4
  store %struct.eeprom_93cx6* %eeprom, %struct.eeprom_93cx6** %eeprom.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.eeprom_93cx6** %eeprom.addr, metadata !821, metadata !DIExpression()), !dbg !822
  store i16 %data, i16* %data.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %data.addr, metadata !823, metadata !DIExpression()), !dbg !824
  store i16 %count, i16* %count.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %count.addr, metadata !825, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.declare(metadata i32* %i, metadata !827, metadata !DIExpression()), !dbg !828
  %0 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !829
  %register_read = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %0, i32 0, i32 1, !dbg !830
  %1 = load void (%struct.eeprom_93cx6*)*, void (%struct.eeprom_93cx6*)** %register_read, align 8, !dbg !830
  %2 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !831
  call void %1(%struct.eeprom_93cx6* %2) #4, !dbg !829
  %3 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !832
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 5, !dbg !833
  store i8 0, i8* %reg_data_in, align 1, !dbg !834
  %4 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !835
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %4, i32 0, i32 6, !dbg !836
  store i8 0, i8* %reg_data_out, align 2, !dbg !837
  %5 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !838
  %drive_data = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %5, i32 0, i32 4, !dbg !839
  store i8 1, i8* %drive_data, align 4, !dbg !840
  %6 = load i16, i16* %count.addr, align 2, !dbg !841
  %conv = zext i16 %6 to i32, !dbg !841
  store i32 %conv, i32* %i, align 4, !dbg !843
  br label %for.cond, !dbg !844

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !845
  %cmp = icmp ugt i32 %7, 0, !dbg !847
  br i1 %cmp, label %for.body, label %for.end, !dbg !848

for.body:                                         ; preds = %for.cond
  %8 = load i16, i16* %data.addr, align 2, !dbg !849
  %conv2 = zext i16 %8 to i32, !dbg !849
  %9 = load i32, i32* %i, align 4, !dbg !851
  %sub = sub i32 %9, 1, !dbg !852
  %shl = shl i32 1, %sub, !dbg !853
  %and = and i32 %conv2, %shl, !dbg !854
  %tobool = icmp ne i32 %and, 0, !dbg !855
  %lnot = xor i1 %tobool, true, !dbg !855
  %lnot3 = xor i1 %lnot, true, !dbg !856
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !856
  %conv4 = trunc i32 %lnot.ext to i8, !dbg !856
  %10 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !857
  %reg_data_in5 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %10, i32 0, i32 5, !dbg !858
  store i8 %conv4, i8* %reg_data_in5, align 1, !dbg !859
  %11 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !860
  %register_write = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %11, i32 0, i32 2, !dbg !861
  %12 = load void (%struct.eeprom_93cx6*)*, void (%struct.eeprom_93cx6*)** %register_write, align 8, !dbg !861
  %13 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !862
  call void %12(%struct.eeprom_93cx6* %13) #4, !dbg !860
  %14 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !863
  call void @eeprom_93cx6_pulse_high(%struct.eeprom_93cx6* %14) #4, !dbg !864
  %15 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !865
  call void @eeprom_93cx6_pulse_low(%struct.eeprom_93cx6* %15) #4, !dbg !866
  br label %for.inc, !dbg !867

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !868
  %dec = add i32 %16, -1, !dbg !868
  store i32 %dec, i32* %i, align 4, !dbg !868
  br label %for.cond, !dbg !869, !llvm.loop !870

for.end:                                          ; preds = %for.cond
  %17 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !872
  %reg_data_in6 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %17, i32 0, i32 5, !dbg !873
  store i8 0, i8* %reg_data_in6, align 1, !dbg !874
  %18 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !875
  %register_write7 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %18, i32 0, i32 2, !dbg !876
  %19 = load void (%struct.eeprom_93cx6*)*, void (%struct.eeprom_93cx6*)** %register_write7, align 8, !dbg !876
  %20 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !877
  call void %19(%struct.eeprom_93cx6* %20) #4, !dbg !875
  ret void, !dbg !878
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @eeprom_93cx6_read_bits(%struct.eeprom_93cx6* %eeprom, i16* %data, i16 zeroext %count) #0 !dbg !879 {
entry:
  %eeprom.addr = alloca %struct.eeprom_93cx6*, align 8
  %data.addr = alloca i16*, align 8
  %count.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %buf = alloca i16, align 2
  store %struct.eeprom_93cx6* %eeprom, %struct.eeprom_93cx6** %eeprom.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.eeprom_93cx6** %eeprom.addr, metadata !882, metadata !DIExpression()), !dbg !883
  store i16* %data, i16** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %data.addr, metadata !884, metadata !DIExpression()), !dbg !885
  store i16 %count, i16* %count.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %count.addr, metadata !886, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.declare(metadata i32* %i, metadata !888, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.declare(metadata i16* %buf, metadata !890, metadata !DIExpression()), !dbg !891
  store i16 0, i16* %buf, align 2, !dbg !891
  %0 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !892
  %register_read = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %0, i32 0, i32 1, !dbg !893
  %1 = load void (%struct.eeprom_93cx6*)*, void (%struct.eeprom_93cx6*)** %register_read, align 8, !dbg !893
  %2 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !894
  call void %1(%struct.eeprom_93cx6* %2) #4, !dbg !892
  %3 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !895
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 5, !dbg !896
  store i8 0, i8* %reg_data_in, align 1, !dbg !897
  %4 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !898
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %4, i32 0, i32 6, !dbg !899
  store i8 0, i8* %reg_data_out, align 2, !dbg !900
  %5 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !901
  %drive_data = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %5, i32 0, i32 4, !dbg !902
  store i8 0, i8* %drive_data, align 4, !dbg !903
  %6 = load i16, i16* %count.addr, align 2, !dbg !904
  %conv = zext i16 %6 to i32, !dbg !904
  store i32 %conv, i32* %i, align 4, !dbg !906
  br label %for.cond, !dbg !907

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !908
  %cmp = icmp ugt i32 %7, 0, !dbg !910
  br i1 %cmp, label %for.body, label %for.end, !dbg !911

for.body:                                         ; preds = %for.cond
  %8 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !912
  call void @eeprom_93cx6_pulse_high(%struct.eeprom_93cx6* %8) #4, !dbg !914
  %9 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !915
  %register_read2 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %9, i32 0, i32 1, !dbg !916
  %10 = load void (%struct.eeprom_93cx6*)*, void (%struct.eeprom_93cx6*)** %register_read2, align 8, !dbg !916
  %11 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !917
  call void %10(%struct.eeprom_93cx6* %11) #4, !dbg !915
  %12 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !918
  %reg_data_in3 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %12, i32 0, i32 5, !dbg !919
  store i8 0, i8* %reg_data_in3, align 1, !dbg !920
  %13 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !921
  %reg_data_out4 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %13, i32 0, i32 6, !dbg !923
  %14 = load i8, i8* %reg_data_out4, align 2, !dbg !923
  %tobool = icmp ne i8 %14, 0, !dbg !921
  br i1 %tobool, label %if.then, label %if.end, !dbg !924

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !925
  %sub = sub i32 %15, 1, !dbg !926
  %shl = shl i32 1, %sub, !dbg !927
  %16 = load i16, i16* %buf, align 2, !dbg !928
  %conv5 = zext i16 %16 to i32, !dbg !928
  %or = or i32 %conv5, %shl, !dbg !928
  %conv6 = trunc i32 %or to i16, !dbg !928
  store i16 %conv6, i16* %buf, align 2, !dbg !928
  br label %if.end, !dbg !929

if.end:                                           ; preds = %if.then, %for.body
  %17 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !930
  call void @eeprom_93cx6_pulse_low(%struct.eeprom_93cx6* %17) #4, !dbg !931
  br label %for.inc, !dbg !932

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4, !dbg !933
  %dec = add i32 %18, -1, !dbg !933
  store i32 %dec, i32* %i, align 4, !dbg !933
  br label %for.cond, !dbg !934, !llvm.loop !935

for.end:                                          ; preds = %for.cond
  %19 = load i16, i16* %buf, align 2, !dbg !937
  %20 = load i16*, i16** %data.addr, align 8, !dbg !938
  store i16 %19, i16* %20, align 2, !dbg !939
  ret void, !dbg !940
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @eeprom_93cx6_cleanup(%struct.eeprom_93cx6* %eeprom) #0 !dbg !941 {
entry:
  %eeprom.addr = alloca %struct.eeprom_93cx6*, align 8
  store %struct.eeprom_93cx6* %eeprom, %struct.eeprom_93cx6** %eeprom.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.eeprom_93cx6** %eeprom.addr, metadata !942, metadata !DIExpression()), !dbg !943
  %0 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !944
  %register_read = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %0, i32 0, i32 1, !dbg !945
  %1 = load void (%struct.eeprom_93cx6*)*, void (%struct.eeprom_93cx6*)** %register_read, align 8, !dbg !945
  %2 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !946
  call void %1(%struct.eeprom_93cx6* %2) #4, !dbg !944
  %3 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !947
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 5, !dbg !948
  store i8 0, i8* %reg_data_in, align 1, !dbg !949
  %4 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !950
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %4, i32 0, i32 8, !dbg !951
  store i8 0, i8* %reg_chip_select, align 8, !dbg !952
  %5 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !953
  %register_write = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %5, i32 0, i32 2, !dbg !954
  %6 = load void (%struct.eeprom_93cx6*)*, void (%struct.eeprom_93cx6*)** %register_write, align 8, !dbg !954
  %7 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !955
  call void %6(%struct.eeprom_93cx6* %7) #4, !dbg !953
  %8 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !956
  call void @eeprom_93cx6_pulse_high(%struct.eeprom_93cx6* %8) #4, !dbg !957
  %9 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !958
  call void @eeprom_93cx6_pulse_low(%struct.eeprom_93cx6* %9) #4, !dbg !959
  ret void, !dbg !960
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @eeprom_93cx6_multiread(%struct.eeprom_93cx6* %eeprom, i8 zeroext %word, i16* %data, i16 zeroext %words) #0 !dbg !961 {
entry:
  %eeprom.addr = alloca %struct.eeprom_93cx6*, align 8
  %word.addr = alloca i8, align 1
  %data.addr = alloca i16*, align 8
  %words.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %tmp = alloca i16, align 2
  store %struct.eeprom_93cx6* %eeprom, %struct.eeprom_93cx6** %eeprom.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.eeprom_93cx6** %eeprom.addr, metadata !965, metadata !DIExpression()), !dbg !966
  store i8 %word, i8* %word.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %word.addr, metadata !967, metadata !DIExpression()), !dbg !968
  store i16* %data, i16** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %data.addr, metadata !969, metadata !DIExpression()), !dbg !970
  store i16 %words, i16* %words.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %words.addr, metadata !971, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.declare(metadata i32* %i, metadata !973, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.declare(metadata i16* %tmp, metadata !975, metadata !DIExpression()), !dbg !976
  store i32 0, i32* %i, align 4, !dbg !977
  br label %for.cond, !dbg !979

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !980
  %1 = load i16, i16* %words.addr, align 2, !dbg !982
  %conv = zext i16 %1 to i32, !dbg !982
  %cmp = icmp ult i32 %0, %conv, !dbg !983
  br i1 %cmp, label %for.body, label %for.end, !dbg !984

for.body:                                         ; preds = %for.cond
  store i16 0, i16* %tmp, align 2, !dbg !985
  %2 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !987
  %3 = load i8, i8* %word.addr, align 1, !dbg !988
  %conv2 = zext i8 %3 to i32, !dbg !988
  %4 = load i32, i32* %i, align 4, !dbg !989
  %add = add i32 %conv2, %4, !dbg !990
  %conv3 = trunc i32 %add to i8, !dbg !988
  call void @eeprom_93cx6_read(%struct.eeprom_93cx6* %2, i8 zeroext %conv3, i16* %tmp) #4, !dbg !991
  %5 = load i16, i16* %tmp, align 2, !dbg !992
  %6 = load i16*, i16** %data.addr, align 8, !dbg !993
  %7 = load i32, i32* %i, align 4, !dbg !994
  %idxprom = zext i32 %7 to i64, !dbg !993
  %arrayidx = getelementptr i16, i16* %6, i64 %idxprom, !dbg !993
  store i16 %5, i16* %arrayidx, align 2, !dbg !995
  br label %for.inc, !dbg !996

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !997
  %inc = add i32 %8, 1, !dbg !997
  store i32 %inc, i32* %i, align 4, !dbg !997
  br label %for.cond, !dbg !998, !llvm.loop !999

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1001
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @eeprom_93cx6_readb(%struct.eeprom_93cx6* %eeprom, i8 zeroext %byte, i8* %data) #0 !dbg !1002 {
entry:
  %eeprom.addr = alloca %struct.eeprom_93cx6*, align 8
  %byte.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %command = alloca i16, align 2
  %tmp = alloca i16, align 2
  store %struct.eeprom_93cx6* %eeprom, %struct.eeprom_93cx6** %eeprom.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.eeprom_93cx6** %eeprom.addr, metadata !1006, metadata !DIExpression()), !dbg !1007
  store i8 %byte, i8* %byte.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %byte.addr, metadata !1008, metadata !DIExpression()), !dbg !1009
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !1010, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.declare(metadata i16* %command, metadata !1012, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.declare(metadata i16* %tmp, metadata !1014, metadata !DIExpression()), !dbg !1015
  %0 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1016
  call void @eeprom_93cx6_startup(%struct.eeprom_93cx6* %0) #4, !dbg !1017
  %1 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1018
  %width = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %1, i32 0, i32 3, !dbg !1019
  %2 = load i32, i32* %width, align 8, !dbg !1019
  %add = add i32 %2, 1, !dbg !1020
  %shl = shl i32 6, %add, !dbg !1021
  %3 = load i8, i8* %byte.addr, align 1, !dbg !1022
  %conv = zext i8 %3 to i32, !dbg !1022
  %or = or i32 %shl, %conv, !dbg !1023
  %conv1 = trunc i32 %or to i16, !dbg !1024
  store i16 %conv1, i16* %command, align 2, !dbg !1025
  %4 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1026
  %5 = load i16, i16* %command, align 2, !dbg !1027
  %6 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1028
  %width2 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %6, i32 0, i32 3, !dbg !1029
  %7 = load i32, i32* %width2, align 8, !dbg !1029
  %add3 = add i32 3, %7, !dbg !1030
  %add4 = add i32 %add3, 1, !dbg !1031
  %conv5 = trunc i32 %add4 to i16, !dbg !1032
  call void @eeprom_93cx6_write_bits(%struct.eeprom_93cx6* %4, i16 zeroext %5, i16 zeroext %conv5) #4, !dbg !1033
  %8 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1034
  call void @eeprom_93cx6_read_bits(%struct.eeprom_93cx6* %8, i16* %tmp, i16 zeroext 8) #4, !dbg !1035
  %9 = load i16, i16* %tmp, align 2, !dbg !1036
  %conv6 = zext i16 %9 to i32, !dbg !1036
  %and = and i32 %conv6, 255, !dbg !1037
  %conv7 = trunc i32 %and to i8, !dbg !1036
  %10 = load i8*, i8** %data.addr, align 8, !dbg !1038
  store i8 %conv7, i8* %10, align 1, !dbg !1039
  %11 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1040
  call void @eeprom_93cx6_cleanup(%struct.eeprom_93cx6* %11) #4, !dbg !1041
  ret void, !dbg !1042
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @eeprom_93cx6_multireadb(%struct.eeprom_93cx6* %eeprom, i8 zeroext %byte, i8* %data, i16 zeroext %bytes) #0 !dbg !1043 {
entry:
  %eeprom.addr = alloca %struct.eeprom_93cx6*, align 8
  %byte.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %bytes.addr = alloca i16, align 2
  %i = alloca i32, align 4
  store %struct.eeprom_93cx6* %eeprom, %struct.eeprom_93cx6** %eeprom.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.eeprom_93cx6** %eeprom.addr, metadata !1046, metadata !DIExpression()), !dbg !1047
  store i8 %byte, i8* %byte.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %byte.addr, metadata !1048, metadata !DIExpression()), !dbg !1049
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !1050, metadata !DIExpression()), !dbg !1051
  store i16 %bytes, i16* %bytes.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %bytes.addr, metadata !1052, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1054, metadata !DIExpression()), !dbg !1055
  store i32 0, i32* %i, align 4, !dbg !1056
  br label %for.cond, !dbg !1058

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1059
  %1 = load i16, i16* %bytes.addr, align 2, !dbg !1061
  %conv = zext i16 %1 to i32, !dbg !1061
  %cmp = icmp ult i32 %0, %conv, !dbg !1062
  br i1 %cmp, label %for.body, label %for.end, !dbg !1063

for.body:                                         ; preds = %for.cond
  %2 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1064
  %3 = load i8, i8* %byte.addr, align 1, !dbg !1065
  %conv2 = zext i8 %3 to i32, !dbg !1065
  %4 = load i32, i32* %i, align 4, !dbg !1066
  %add = add i32 %conv2, %4, !dbg !1067
  %conv3 = trunc i32 %add to i8, !dbg !1065
  %5 = load i8*, i8** %data.addr, align 8, !dbg !1068
  %6 = load i32, i32* %i, align 4, !dbg !1069
  %idxprom = zext i32 %6 to i64, !dbg !1068
  %arrayidx = getelementptr i8, i8* %5, i64 %idxprom, !dbg !1068
  call void @eeprom_93cx6_readb(%struct.eeprom_93cx6* %2, i8 zeroext %conv3, i8* %arrayidx) #4, !dbg !1070
  br label %for.inc, !dbg !1070

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !1071
  %inc = add i32 %7, 1, !dbg !1071
  store i32 %inc, i32* %i, align 4, !dbg !1071
  br label %for.cond, !dbg !1072, !llvm.loop !1073

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1075
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @eeprom_93cx6_wren(%struct.eeprom_93cx6* %eeprom, i1 zeroext %enable) #0 !dbg !1076 {
entry:
  %eeprom.addr = alloca %struct.eeprom_93cx6*, align 8
  %enable.addr = alloca i8, align 1
  %command = alloca i16, align 2
  store %struct.eeprom_93cx6* %eeprom, %struct.eeprom_93cx6** %eeprom.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.eeprom_93cx6** %eeprom.addr, metadata !1079, metadata !DIExpression()), !dbg !1080
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !1081, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.declare(metadata i16* %command, metadata !1083, metadata !DIExpression()), !dbg !1084
  %0 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1085
  call void @eeprom_93cx6_startup(%struct.eeprom_93cx6* %0) #4, !dbg !1086
  %1 = load i8, i8* %enable.addr, align 1, !dbg !1087
  %tobool = trunc i8 %1 to i1, !dbg !1087
  %2 = zext i1 %tobool to i64, !dbg !1087
  %cond = select i1 %tobool, i32 19, i32 16, !dbg !1087
  %conv = trunc i32 %cond to i16, !dbg !1087
  store i16 %conv, i16* %command, align 2, !dbg !1088
  %3 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1089
  %width = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 3, !dbg !1090
  %4 = load i32, i32* %width, align 8, !dbg !1090
  %sub = sub i32 %4, 2, !dbg !1091
  %5 = load i16, i16* %command, align 2, !dbg !1092
  %conv1 = zext i16 %5 to i32, !dbg !1092
  %shl = shl i32 %conv1, %sub, !dbg !1092
  %conv2 = trunc i32 %shl to i16, !dbg !1092
  store i16 %conv2, i16* %command, align 2, !dbg !1092
  %6 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1093
  %7 = load i16, i16* %command, align 2, !dbg !1094
  %8 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1095
  %width3 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %8, i32 0, i32 3, !dbg !1096
  %9 = load i32, i32* %width3, align 8, !dbg !1096
  %add = add i32 3, %9, !dbg !1097
  %conv4 = trunc i32 %add to i16, !dbg !1098
  call void @eeprom_93cx6_write_bits(%struct.eeprom_93cx6* %6, i16 zeroext %7, i16 zeroext %conv4) #4, !dbg !1099
  %10 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1100
  call void @eeprom_93cx6_cleanup(%struct.eeprom_93cx6* %10) #4, !dbg !1101
  ret void, !dbg !1102
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @eeprom_93cx6_write(%struct.eeprom_93cx6* %eeprom, i8 zeroext %addr, i16 zeroext %data) #0 !dbg !1103 {
entry:
  %eeprom.addr = alloca %struct.eeprom_93cx6*, align 8
  %addr.addr = alloca i8, align 1
  %data.addr = alloca i16, align 2
  %timeout = alloca i32, align 4
  %command = alloca i16, align 2
  store %struct.eeprom_93cx6* %eeprom, %struct.eeprom_93cx6** %eeprom.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.eeprom_93cx6** %eeprom.addr, metadata !1106, metadata !DIExpression()), !dbg !1107
  store i8 %addr, i8* %addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %addr.addr, metadata !1108, metadata !DIExpression()), !dbg !1109
  store i16 %data, i16* %data.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %data.addr, metadata !1110, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.declare(metadata i32* %timeout, metadata !1112, metadata !DIExpression()), !dbg !1113
  store i32 100, i32* %timeout, align 4, !dbg !1113
  call void @llvm.dbg.declare(metadata i16* %command, metadata !1114, metadata !DIExpression()), !dbg !1115
  %0 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1116
  call void @eeprom_93cx6_startup(%struct.eeprom_93cx6* %0) #4, !dbg !1117
  %1 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1118
  %width = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %1, i32 0, i32 3, !dbg !1119
  %2 = load i32, i32* %width, align 8, !dbg !1119
  %shl = shl i32 5, %2, !dbg !1120
  %conv = trunc i32 %shl to i16, !dbg !1121
  store i16 %conv, i16* %command, align 2, !dbg !1122
  %3 = load i8, i8* %addr.addr, align 1, !dbg !1123
  %conv1 = zext i8 %3 to i32, !dbg !1123
  %4 = load i16, i16* %command, align 2, !dbg !1124
  %conv2 = zext i16 %4 to i32, !dbg !1124
  %or = or i32 %conv2, %conv1, !dbg !1124
  %conv3 = trunc i32 %or to i16, !dbg !1124
  store i16 %conv3, i16* %command, align 2, !dbg !1124
  %5 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1125
  %6 = load i16, i16* %command, align 2, !dbg !1126
  %7 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1127
  %width4 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %7, i32 0, i32 3, !dbg !1128
  %8 = load i32, i32* %width4, align 8, !dbg !1128
  %add = add i32 3, %8, !dbg !1129
  %conv5 = trunc i32 %add to i16, !dbg !1130
  call void @eeprom_93cx6_write_bits(%struct.eeprom_93cx6* %5, i16 zeroext %6, i16 zeroext %conv5) #4, !dbg !1131
  %9 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1132
  %10 = load i16, i16* %data.addr, align 2, !dbg !1133
  call void @eeprom_93cx6_write_bits(%struct.eeprom_93cx6* %9, i16 zeroext %10, i16 zeroext 16) #4, !dbg !1134
  %11 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1135
  %drive_data = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %11, i32 0, i32 4, !dbg !1136
  store i8 0, i8* %drive_data, align 4, !dbg !1137
  %12 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1138
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %12, i32 0, i32 8, !dbg !1139
  store i8 1, i8* %reg_chip_select, align 8, !dbg !1140
  %13 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1141
  %register_write = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %13, i32 0, i32 2, !dbg !1142
  %14 = load void (%struct.eeprom_93cx6*)*, void (%struct.eeprom_93cx6*)** %register_write, align 8, !dbg !1142
  %15 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1143
  call void %14(%struct.eeprom_93cx6* %15) #4, !dbg !1141
  call void @usleep_range(i64 1000, i64 2000) #4, !dbg !1144
  br label %while.body, !dbg !1145

while.body:                                       ; preds = %entry, %if.end8
  %16 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1146
  %register_read = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %16, i32 0, i32 1, !dbg !1148
  %17 = load void (%struct.eeprom_93cx6*)*, void (%struct.eeprom_93cx6*)** %register_read, align 8, !dbg !1148
  %18 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1149
  call void %17(%struct.eeprom_93cx6* %18) #4, !dbg !1146
  %19 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1150
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %19, i32 0, i32 6, !dbg !1152
  %20 = load i8, i8* %reg_data_out, align 2, !dbg !1152
  %tobool = icmp ne i8 %20, 0, !dbg !1150
  br i1 %tobool, label %if.then, label %if.end, !dbg !1153

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !1154

if.end:                                           ; preds = %while.body
  call void @usleep_range(i64 1000, i64 2000) #4, !dbg !1155
  %21 = load i32, i32* %timeout, align 4, !dbg !1156
  %dec = add i32 %21, -1, !dbg !1156
  store i32 %dec, i32* %timeout, align 4, !dbg !1156
  %cmp = icmp sle i32 %dec, 0, !dbg !1158
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !1159

if.then7:                                         ; preds = %if.end
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.eeprom_93cx6_write, i64 0, i64 0)) #5, !dbg !1160
  br label %while.end, !dbg !1162

if.end8:                                          ; preds = %if.end
  br label %while.body, !dbg !1145, !llvm.loop !1163

while.end:                                        ; preds = %if.then7, %if.then
  %22 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1165
  call void @eeprom_93cx6_cleanup(%struct.eeprom_93cx6* %22) #4, !dbg !1166
  ret void, !dbg !1167
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i64 @__modver_version_show(%struct.module_attribute*, %struct.module_kobject*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @eeprom_93cx6_pulse_high(%struct.eeprom_93cx6* %eeprom) #0 !dbg !1168 {
entry:
  %eeprom.addr = alloca %struct.eeprom_93cx6*, align 8
  store %struct.eeprom_93cx6* %eeprom, %struct.eeprom_93cx6** %eeprom.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.eeprom_93cx6** %eeprom.addr, metadata !1169, metadata !DIExpression()), !dbg !1170
  %0 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1171
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %0, i32 0, i32 7, !dbg !1172
  store i8 1, i8* %reg_data_clock, align 1, !dbg !1173
  %1 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1174
  %register_write = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %1, i32 0, i32 2, !dbg !1175
  %2 = load void (%struct.eeprom_93cx6*)*, void (%struct.eeprom_93cx6*)** %register_write, align 8, !dbg !1175
  %3 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1176
  call void %2(%struct.eeprom_93cx6* %3) #4, !dbg !1174
  call void @__const_udelay(i64 2250) #4, !dbg !1177
  ret void, !dbg !1182
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @eeprom_93cx6_pulse_low(%struct.eeprom_93cx6* %eeprom) #0 !dbg !1183 {
entry:
  %eeprom.addr = alloca %struct.eeprom_93cx6*, align 8
  store %struct.eeprom_93cx6* %eeprom, %struct.eeprom_93cx6** %eeprom.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.eeprom_93cx6** %eeprom.addr, metadata !1184, metadata !DIExpression()), !dbg !1185
  %0 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1186
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %0, i32 0, i32 7, !dbg !1187
  store i8 0, i8* %reg_data_clock, align 1, !dbg !1188
  %1 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1189
  %register_write = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %1, i32 0, i32 2, !dbg !1190
  %2 = load void (%struct.eeprom_93cx6*)*, void (%struct.eeprom_93cx6*)** %register_write, align 8, !dbg !1190
  %3 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %eeprom.addr, align 8, !dbg !1191
  call void %2(%struct.eeprom_93cx6* %3) #4, !dbg !1189
  call void @__const_udelay(i64 2250) #4, !dbg !1192
  ret void, !dbg !1197
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }
attributes #5 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!729, !730, !731, !732}
!llvm.ident = !{!733}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author104", scope: !2, file: !3, line: 16, type: !722, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !23, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/misc/eeprom/eeprom_93cx6.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 10, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!17 = !{!18, !20}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !19, line: 29, baseType: !20)
!19 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 24, baseType: !22)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !{!0, !24, !31, !715, !720, !725, !727}
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_version105", scope: !2, file: !3, line: 17, type: !26, isLocal: true, isDefinition: true, align: 8)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 200, elements: !29)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{!30}
!30 = !DISubrange(count: 25)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "__modver_attr", scope: !2, file: !3, line: 17, type: !33, isLocal: true, isDefinition: true)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_version_attribute", file: !37, line: 65, size: 576, align: 64, elements: !38)
!37 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !713, !714}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "mattr", scope: !36, file: !37, line: 66, baseType: !40, size: 448)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !37, line: 54, size: 448, elements: !41)
!41 = !{!42, !51, !697, !701, !705, !709}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !40, file: !37, line: 55, baseType: !43, size: 128)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !44, line: 30, size: 128, elements: !45)
!44 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !48}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !43, file: !44, line: 31, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !43, file: !44, line: 32, baseType: !49, size: 16, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !50, line: 19, baseType: !22)
!50 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!51 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !40, file: !37, line: 56, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !60, !61, !125}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !50, line: 60, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !57, line: 73, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !57, line: 15, baseType: !59)
!59 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !37, line: 46, size: 768, elements: !63)
!63 = !{!64, !687, !691, !692, !695}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !62, file: !37, line: 47, baseType: !65, size: 512)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !66, line: 64, size: 512, elements: !67)
!66 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !69, !75, !77, !138, !513, !672, !682, !683, !684, !685, !686}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !65, file: !66, line: 65, baseType: !47, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !65, file: !66, line: 66, baseType: !70, size: 128, offset: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !50, line: 178, size: 128, elements: !71)
!71 = !{!72, !74}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !70, file: !50, line: 179, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !70, file: !50, line: 179, baseType: !73, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !65, file: !66, line: 67, baseType: !76, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !65, file: !66, line: 68, baseType: !78, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !66, line: 192, size: 704, elements: !80)
!80 = !{!81, !82, !98, !99}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !79, file: !66, line: 193, baseType: !70, size: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !79, file: !66, line: 194, baseType: !83, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !84, line: 83, baseType: !85)
!84 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !84, line: 71, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !84, line: 72, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !84, line: 72, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !88, file: !84, line: 73, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !84, line: 20, elements: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !91, file: !84, line: 21, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !95, line: 25, baseType: !96)
!95 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 25, elements: !97)
!97 = !{}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !79, file: !66, line: 195, baseType: !65, size: 512, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !79, file: !66, line: 196, baseType: !100, size: 64, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !66, line: 156, size: 192, elements: !103)
!103 = !{!104, !110, !115}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !102, file: !66, line: 157, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!109, !78, !76}
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !66, line: 158, baseType: !111, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!47, !78, !76}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !102, file: !66, line: 159, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!109, !78, !76, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !66, line: 148, size: 20736, elements: !122)
!122 = !{!123, !128, !132, !133, !137}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !121, file: !66, line: 149, baseType: !124, size: 192)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 192, elements: !126)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!126 = !{!127}
!127 = !DISubrange(count: 3)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !121, file: !66, line: 150, baseType: !129, size: 4096, offset: 192)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 4096, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !121, file: !66, line: 151, baseType: !109, size: 32, offset: 4288)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !121, file: !66, line: 152, baseType: !134, size: 16384, offset: 4320)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 16384, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 2048)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !121, file: !66, line: 153, baseType: !109, size: 32, offset: 20704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !65, file: !66, line: 69, baseType: !139, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !66, line: 138, size: 448, elements: !141)
!141 = !{!142, !146, !164, !166, !458, !491, !495}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !140, file: !66, line: 139, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !76}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !140, file: !66, line: 140, baseType: !147, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !44, line: 230, size: 128, elements: !150)
!150 = !{!151, !156}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !149, file: !44, line: 231, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!55, !76, !155, !125}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !149, file: !44, line: 232, baseType: !157, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!55, !76, !155, !47, !160}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 55, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !57, line: 72, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !57, line: 16, baseType: !163)
!163 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !140, file: !66, line: 141, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !140, file: !66, line: 142, baseType: !167, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !44, line: 84, size: 320, elements: !171)
!171 = !{!172, !173, !177, !455, !456}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !44, line: 85, baseType: !47, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !170, file: !44, line: 86, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!49, !76, !155, !109}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !170, file: !44, line: 88, baseType: !178, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!49, !76, !181, !109}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !44, line: 168, size: 448, elements: !183)
!183 = !{!184, !185, !186, !188, !198, !199}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !182, file: !44, line: 169, baseType: !43, size: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !182, file: !44, line: 170, baseType: !160, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !182, file: !44, line: 171, baseType: !187, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !182, file: !44, line: 172, baseType: !189, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!55, !192, !76, !181, !125, !195, !160}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !194, line: 526, flags: DIFlagFwdDecl)
!194 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !50, line: 46, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !57, line: 88, baseType: !197)
!197 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !182, file: !44, line: 174, baseType: !189, size: 64, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !182, file: !44, line: 176, baseType: !200, size: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!109, !192, !76, !181, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !205, line: 305, size: 1472, elements: !206)
!205 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!206 = !{!207, !208, !209, !210, !211, !219, !220, !429, !435, !436, !441, !442, !445, !449, !450, !451, !452, !453}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !204, file: !205, line: 308, baseType: !163, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !204, file: !205, line: 309, baseType: !163, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !204, file: !205, line: 313, baseType: !203, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !204, file: !205, line: 313, baseType: !203, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !204, file: !205, line: 315, baseType: !212, size: 192, align: 64, offset: 256)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !213, line: 24, size: 192, align: 64, elements: !214)
!213 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!214 = !{!215, !216, !218}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !212, file: !213, line: 25, baseType: !163, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !212, file: !213, line: 26, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !212, file: !213, line: 27, baseType: !217, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !204, file: !205, line: 323, baseType: !163, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !204, file: !205, line: 327, baseType: !221, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !205, line: 388, size: 7296, elements: !223)
!223 = !{!224, !425}
!224 = !DIDerivedType(tag: DW_TAG_member, scope: !222, file: !205, line: 389, baseType: !225, size: 7296)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !222, file: !205, line: 389, size: 7296, elements: !226)
!226 = !{!227, !228, !232, !237, !241, !242, !243, !244, !245, !253, !258, !259, !260, !261, !270, !271, !272, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !307, !315, !318, !365, !366, !391, !392, !395, !399, !400, !403, !404, !407, !410, !422}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !225, file: !205, line: 390, baseType: !203, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !225, file: !205, line: 391, baseType: !229, size: 64, offset: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !213, line: 31, size: 64, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !229, file: !213, line: 32, baseType: !217, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !225, file: !205, line: 392, baseType: !233, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !234, line: 23, baseType: !235)
!234 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !21, line: 31, baseType: !236)
!236 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !225, file: !205, line: 394, baseType: !238, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!163, !192, !163, !163, !163, !163}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !225, file: !205, line: 398, baseType: !163, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !225, file: !205, line: 399, baseType: !163, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !225, file: !205, line: 405, baseType: !163, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !225, file: !205, line: 406, baseType: !163, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !225, file: !205, line: 407, baseType: !246, size: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !194, line: 286, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !194, line: 286, size: 64, elements: !249)
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !248, file: !194, line: 286, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !252, line: 18, baseType: !163)
!252 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!253 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !225, file: !205, line: 416, baseType: !254, size: 32, offset: 576)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !50, line: 168, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 166, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !255, file: !50, line: 167, baseType: !109, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !225, file: !205, line: 428, baseType: !254, size: 32, offset: 608)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !225, file: !205, line: 437, baseType: !254, size: 32, offset: 640)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !225, file: !205, line: 447, baseType: !254, size: 32, offset: 672)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !225, file: !205, line: 450, baseType: !262, size: 64, offset: 704)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !263, line: 13, baseType: !264)
!263 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !50, line: 175, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 173, size: 64, elements: !266)
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !265, file: !50, line: 174, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !234, line: 22, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !21, line: 30, baseType: !197)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !225, file: !205, line: 452, baseType: !109, size: 32, offset: 768)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !225, file: !205, line: 454, baseType: !83, offset: 800)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !225, file: !205, line: 457, baseType: !273, size: 256, offset: 832)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !274, line: 35, size: 256, elements: !275)
!274 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!275 = !{!276, !277, !278, !280}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !273, file: !274, line: 36, baseType: !262, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !273, file: !274, line: 42, baseType: !262, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !273, file: !274, line: 46, baseType: !279, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !84, line: 29, baseType: !91)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !273, file: !274, line: 47, baseType: !70, size: 128, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !225, file: !205, line: 459, baseType: !70, size: 128, offset: 1088)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !225, file: !205, line: 466, baseType: !163, size: 64, offset: 1216)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !225, file: !205, line: 467, baseType: !163, size: 64, offset: 1280)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !225, file: !205, line: 469, baseType: !163, size: 64, offset: 1344)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !225, file: !205, line: 470, baseType: !163, size: 64, offset: 1408)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !225, file: !205, line: 471, baseType: !264, size: 64, offset: 1472)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !225, file: !205, line: 472, baseType: !163, size: 64, offset: 1536)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !225, file: !205, line: 473, baseType: !163, size: 64, offset: 1600)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !225, file: !205, line: 474, baseType: !163, size: 64, offset: 1664)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !225, file: !205, line: 475, baseType: !163, size: 64, offset: 1728)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !225, file: !205, line: 477, baseType: !83, offset: 1792)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !225, file: !205, line: 478, baseType: !163, size: 64, offset: 1792)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !225, file: !205, line: 478, baseType: !163, size: 64, offset: 1856)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !225, file: !205, line: 478, baseType: !163, size: 64, offset: 1920)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !225, file: !205, line: 478, baseType: !163, size: 64, offset: 1984)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !225, file: !205, line: 479, baseType: !163, size: 64, offset: 2048)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !225, file: !205, line: 479, baseType: !163, size: 64, offset: 2112)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !225, file: !205, line: 479, baseType: !163, size: 64, offset: 2176)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !225, file: !205, line: 480, baseType: !163, size: 64, offset: 2240)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !225, file: !205, line: 480, baseType: !163, size: 64, offset: 2304)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !225, file: !205, line: 480, baseType: !163, size: 64, offset: 2368)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !225, file: !205, line: 480, baseType: !163, size: 64, offset: 2432)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !225, file: !205, line: 482, baseType: !304, size: 2816, offset: 2496)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 2816, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 44)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !225, file: !205, line: 488, baseType: !308, size: 256, offset: 5312)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !309, line: 60, size: 256, elements: !310)
!309 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !308, file: !309, line: 61, baseType: !312, size: 256)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 4)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !225, file: !205, line: 490, baseType: !316, size: 64, offset: 5568)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !205, line: 490, flags: DIFlagFwdDecl)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !225, file: !205, line: 493, baseType: !319, size: 896, offset: 5632)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !320, line: 53, baseType: !321)
!320 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 13, size: 896, elements: !322)
!322 = !{!323, !324, !325, !326, !329, !330, !337, !338, !358, !359, !361}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !321, file: !320, line: 18, baseType: !233, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !321, file: !320, line: 28, baseType: !264, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !321, file: !320, line: 31, baseType: !273, size: 256, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !321, file: !320, line: 32, baseType: !327, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !320, line: 32, flags: DIFlagFwdDecl)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !321, file: !320, line: 37, baseType: !22, size: 16, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !321, file: !320, line: 40, baseType: !331, size: 192, offset: 512)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !332, line: 53, size: 192, elements: !333)
!332 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!333 = !{!334, !335, !336}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !331, file: !332, line: 54, baseType: !262, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !331, file: !332, line: 55, baseType: !83, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !331, file: !332, line: 59, baseType: !70, size: 128, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !321, file: !320, line: 41, baseType: !187, size: 64, offset: 704)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !321, file: !320, line: 42, baseType: !339, size: 64, offset: 768)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !342, line: 13, size: 896, elements: !343)
!342 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !341, file: !342, line: 14, baseType: !187, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !341, file: !342, line: 15, baseType: !163, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !341, file: !342, line: 17, baseType: !163, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !341, file: !342, line: 17, baseType: !163, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !341, file: !342, line: 19, baseType: !59, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !341, file: !342, line: 21, baseType: !59, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !341, file: !342, line: 22, baseType: !59, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !341, file: !342, line: 23, baseType: !59, size: 64, offset: 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !341, file: !342, line: 24, baseType: !59, size: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !341, file: !342, line: 25, baseType: !59, size: 64, offset: 576)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !341, file: !342, line: 26, baseType: !59, size: 64, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !341, file: !342, line: 27, baseType: !59, size: 64, offset: 704)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !341, file: !342, line: 28, baseType: !59, size: 64, offset: 768)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !341, file: !342, line: 29, baseType: !59, size: 64, offset: 832)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !321, file: !320, line: 44, baseType: !254, size: 32, offset: 832)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !321, file: !320, line: 50, baseType: !360, size: 16, offset: 864)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !234, line: 19, baseType: !20)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !321, file: !320, line: 51, baseType: !362, size: 16, offset: 880)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !234, line: 18, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !21, line: 23, baseType: !364)
!364 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !225, file: !205, line: 495, baseType: !163, size: 64, offset: 6528)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !225, file: !205, line: 497, baseType: !367, size: 64, offset: 6592)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !205, line: 381, size: 384, elements: !369)
!369 = !{!370, !371, !380}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !368, file: !205, line: 382, baseType: !254, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !368, file: !205, line: 383, baseType: !372, size: 128, offset: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !205, line: 376, size: 128, elements: !373)
!373 = !{!374, !378}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !372, file: !205, line: 377, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !377, line: 8, flags: DIFlagFwdDecl)
!377 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !205, line: 378, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !368, file: !205, line: 384, baseType: !381, size: 192, offset: 192)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !382, line: 26, size: 192, elements: !383)
!382 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !381, file: !382, line: 27, baseType: !7, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !381, file: !382, line: 28, baseType: !386, size: 128, offset: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !387, line: 43, size: 128, elements: !388)
!387 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !386, file: !387, line: 44, baseType: !279)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !386, file: !387, line: 45, baseType: !70, size: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !225, file: !205, line: 500, baseType: !83, offset: 6656)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !225, file: !205, line: 501, baseType: !393, size: 64, offset: 6656)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !205, line: 387, flags: DIFlagFwdDecl)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !225, file: !205, line: 516, baseType: !396, size: 64, offset: 6720)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !398, line: 18, flags: DIFlagFwdDecl)
!398 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!399 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !225, file: !205, line: 519, baseType: !192, size: 64, offset: 6784)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !225, file: !205, line: 521, baseType: !401, size: 64, offset: 6848)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !205, line: 521, flags: DIFlagFwdDecl)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !225, file: !205, line: 545, baseType: !254, size: 32, offset: 6912)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !225, file: !205, line: 548, baseType: !405, size: 8, offset: 6944)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !50, line: 30, baseType: !406)
!406 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !225, file: !205, line: 550, baseType: !408, offset: 6952)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !409, line: 142, elements: !97)
!409 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!410 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !225, file: !205, line: 554, baseType: !411, size: 256, offset: 6976)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !412, line: 102, size: 256, elements: !413)
!412 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!413 = !{!414, !415, !416}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !411, file: !412, line: 103, baseType: !262, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !411, file: !412, line: 104, baseType: !70, size: 128, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !411, file: !412, line: 105, baseType: !417, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !412, line: 21, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !225, file: !205, line: 557, baseType: !423, size: 32, offset: 7232)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !234, line: 21, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !7)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !222, file: !205, line: 565, baseType: !426, offset: 7296)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: -1)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !204, file: !205, line: 333, baseType: !430, size: 64, offset: 576)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !194, line: 284, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !194, line: 284, size: 64, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !431, file: !194, line: 284, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !252, line: 19, baseType: !163)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !204, file: !205, line: 334, baseType: !163, size: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !204, file: !205, line: 343, baseType: !437, size: 256, offset: 704)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !205, line: 340, size: 256, elements: !438)
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !437, file: !205, line: 341, baseType: !212, size: 192, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !437, file: !205, line: 342, baseType: !163, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !204, file: !205, line: 351, baseType: !70, size: 128, offset: 960)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !204, file: !205, line: 353, baseType: !443, size: 64, offset: 1088)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !205, line: 353, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !204, file: !205, line: 356, baseType: !446, size: 64, offset: 1152)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !205, line: 356, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !204, file: !205, line: 359, baseType: !163, size: 64, offset: 1216)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !204, file: !205, line: 361, baseType: !192, size: 64, offset: 1280)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !204, file: !205, line: 362, baseType: !187, size: 64, offset: 1344)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !204, file: !205, line: 365, baseType: !262, size: 64, offset: 1408)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !204, file: !205, line: 373, baseType: !454, offset: 1472)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !205, line: 296, elements: !97)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !170, file: !44, line: 90, baseType: !165, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !170, file: !44, line: 91, baseType: !457, size: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !140, file: !66, line: 143, baseType: !459, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!462, !76}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !465)
!465 = !{!466, !467, !471, !475, !483, !487}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !464, file: !6, line: 40, baseType: !5, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !464, file: !6, line: 41, baseType: !468, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!405}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !464, file: !6, line: 42, baseType: !472, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!187}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !464, file: !6, line: 43, baseType: !476, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!479, !481}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !464, file: !6, line: 44, baseType: !484, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!479}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !464, file: !6, line: 45, baseType: !488, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !187}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !140, file: !66, line: 144, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!479, !76}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !140, file: !66, line: 145, baseType: !496, size: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !76, !499, !506}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !398, line: 23, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 21, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !501, file: !398, line: 22, baseType: !504, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !50, line: 32, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !57, line: 49, baseType: !7)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !398, line: 28, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 26, size: 32, elements: !509)
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !508, file: !398, line: 27, baseType: !511, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !50, line: 33, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !57, line: 50, baseType: !7)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !65, file: !66, line: 70, baseType: !514, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !516, line: 123, size: 1024, elements: !517)
!516 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!517 = !{!518, !519, !520, !521, !522, !523, !524, !525, !665, !666, !667, !668, !669}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !515, file: !516, line: 124, baseType: !254, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !515, file: !516, line: 125, baseType: !254, size: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !515, file: !516, line: 135, baseType: !514, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !515, file: !516, line: 136, baseType: !47, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !515, file: !516, line: 138, baseType: !212, size: 192, align: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !515, file: !516, line: 140, baseType: !479, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !515, file: !516, line: 141, baseType: !7, size: 32, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, scope: !515, file: !516, line: 142, baseType: !526, size: 256, offset: 512)
!526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !516, line: 142, size: 256, elements: !527)
!527 = !{!528, !589, !593}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !526, file: !516, line: 143, baseType: !529, size: 192)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !516, line: 91, size: 192, elements: !530)
!530 = !{!531, !532, !533}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !529, file: !516, line: 92, baseType: !163, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !529, file: !516, line: 94, baseType: !229, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !529, file: !516, line: 100, baseType: !534, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !516, line: 180, size: 704, elements: !536)
!536 = !{!537, !538, !539, !553, !554, !555, !581, !582}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !535, file: !516, line: 182, baseType: !514, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !516, line: 183, baseType: !7, size: 32, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !535, file: !516, line: 186, baseType: !540, size: 192, offset: 128)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !541, line: 19, size: 192, elements: !542)
!541 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!542 = !{!543, !551, !552}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !540, file: !541, line: 20, baseType: !544, size: 128)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !545, line: 292, size: 128, elements: !546)
!545 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!546 = !{!547, !548, !550}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !544, file: !545, line: 293, baseType: !83)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !544, file: !545, line: 295, baseType: !549, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !50, line: 148, baseType: !7)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !544, file: !545, line: 296, baseType: !187, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !540, file: !541, line: 21, baseType: !7, size: 32, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !540, file: !541, line: 22, baseType: !7, size: 32, offset: 160)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !535, file: !516, line: 187, baseType: !423, size: 32, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !535, file: !516, line: 188, baseType: !423, size: 32, offset: 352)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !535, file: !516, line: 189, baseType: !556, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !516, line: 168, size: 320, elements: !558)
!558 = !{!559, !565, !569, !573, !577}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !557, file: !516, line: 169, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!109, !563, !534}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !194, line: 539, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !557, file: !516, line: 171, baseType: !566, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!109, !514, !47, !49}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !557, file: !516, line: 173, baseType: !570, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!109, !514}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !557, file: !516, line: 174, baseType: !574, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!109, !514, !514, !47}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !557, file: !516, line: 176, baseType: !578, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!109, !563, !514, !534}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !535, file: !516, line: 192, baseType: !70, size: 128, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !535, file: !516, line: 194, baseType: !583, size: 128, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !584, line: 40, baseType: !585)
!584 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !584, line: 36, size: 128, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !585, file: !584, line: 37, baseType: !83)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !585, file: !584, line: 38, baseType: !70, size: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !526, file: !516, line: 144, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !516, line: 103, size: 64, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !590, file: !516, line: 104, baseType: !514, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !526, file: !516, line: 145, baseType: !594, size: 256)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !516, line: 107, size: 256, elements: !595)
!595 = !{!596, !660, !663, !664}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !594, file: !516, line: 108, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !516, line: 217, size: 768, elements: !600)
!600 = !{!601, !621, !625, !629, !634, !638, !642, !646, !647, !648, !649, !656}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !599, file: !516, line: 222, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!109, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !516, line: 197, size: 1088, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !606, file: !516, line: 199, baseType: !514, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !606, file: !516, line: 200, baseType: !192, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !606, file: !516, line: 201, baseType: !563, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !606, file: !516, line: 202, baseType: !187, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !606, file: !516, line: 205, baseType: !331, size: 192, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !606, file: !516, line: 206, baseType: !331, size: 192, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !606, file: !516, line: 207, baseType: !109, size: 32, offset: 640)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !606, file: !516, line: 208, baseType: !70, size: 128, offset: 704)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !606, file: !516, line: 209, baseType: !125, size: 64, offset: 832)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !606, file: !516, line: 211, baseType: !160, size: 64, offset: 896)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !606, file: !516, line: 212, baseType: !405, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !606, file: !516, line: 213, baseType: !405, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !606, file: !516, line: 214, baseType: !446, size: 64, offset: 1024)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !599, file: !516, line: 223, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !605}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !599, file: !516, line: 236, baseType: !626, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!109, !563, !187}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !599, file: !516, line: 238, baseType: !630, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!187, !563, !633}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !599, file: !516, line: 239, baseType: !635, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!187, !563, !187, !633}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !599, file: !516, line: 240, baseType: !639, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !563, !187}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !599, file: !516, line: 242, baseType: !643, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!55, !605, !125, !160, !195}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !599, file: !516, line: 252, baseType: !160, size: 64, offset: 448)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !599, file: !516, line: 259, baseType: !405, size: 8, offset: 512)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !599, file: !516, line: 260, baseType: !643, size: 64, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !599, file: !516, line: 263, baseType: !650, size: 64, offset: 640)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!653, !605, !654}
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !19, line: 52, baseType: !7)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !516, line: 27, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !599, file: !516, line: 266, baseType: !657, size: 64, offset: 704)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!109, !605, !203}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !594, file: !516, line: 109, baseType: !661, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !516, line: 31, flags: DIFlagFwdDecl)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !594, file: !516, line: 110, baseType: !195, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !594, file: !516, line: 111, baseType: !514, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !515, file: !516, line: 148, baseType: !187, size: 64, offset: 768)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !515, file: !516, line: 154, baseType: !233, size: 64, offset: 832)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !515, file: !516, line: 156, baseType: !22, size: 16, offset: 896)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !515, file: !516, line: 157, baseType: !49, size: 16, offset: 912)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !515, file: !516, line: 158, baseType: !670, size: 64, offset: 960)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !516, line: 32, flags: DIFlagFwdDecl)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !65, file: !66, line: 71, baseType: !673, size: 32, offset: 448)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !674, line: 19, size: 32, elements: !675)
!674 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !673, file: !674, line: 20, baseType: !677, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !678, line: 113, baseType: !679)
!678 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !678, line: 111, size: 32, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !679, file: !678, line: 112, baseType: !254, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !65, file: !66, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !65, file: !66, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !65, file: !66, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !65, file: !66, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !65, file: !66, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !62, file: !37, line: 48, baseType: !688, size: 64, offset: 512)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !690, line: 76, flags: DIFlagFwdDecl)
!690 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!691 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !62, file: !37, line: 49, baseType: !76, size: 64, offset: 576)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !62, file: !37, line: 50, baseType: !693, size: 64, offset: 640)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !37, line: 50, flags: DIFlagFwdDecl)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !62, file: !37, line: 51, baseType: !696, size: 64, offset: 704)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !40, file: !37, line: 58, baseType: !698, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!55, !60, !61, !47, !160}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !40, file: !37, line: 60, baseType: !702, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !688, !47}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !40, file: !37, line: 61, baseType: !706, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!109, !688}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !40, file: !37, line: 62, baseType: !710, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !688}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "module_name", scope: !36, file: !37, line: 67, baseType: !47, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !36, file: !37, line: 68, baseType: !47, size: 64, offset: 512)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description106", scope: !2, file: !3, line: 18, type: !717, isLocal: true, isDefinition: true, align: 8)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 400, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 50)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file107", scope: !2, file: !3, line: 19, type: !722, isLocal: true, isDefinition: true, align: 8)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 408, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 51)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license108", scope: !2, file: !3, line: 19, type: !26, isLocal: true, isDefinition: true, align: 8)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(name: "___modver_attr", scope: !2, file: !3, line: 17, type: !36, isLocal: true, isDefinition: true)
!729 = !{i32 7, !"Dwarf Version", i32 4}
!730 = !{i32 2, !"Debug Info Version", i32 3}
!731 = !{i32 1, !"wchar_size", i32 2}
!732 = !{i32 1, !"Code Model", i32 2}
!733 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!734 = distinct !DISubprogram(name: "eeprom_93cx6_read", scope: !3, file: !3, line: 172, type: !735, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !737, !753, !757}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eeprom_93cx6", file: !739, line: 46, size: 320, elements: !740)
!739 = !DIFile(filename: "./include/linux/eeprom_93cx6.h", directory: "/home/lizy2001/genbc/linux")
!740 = !{!741, !742, !746, !747, !748, !749, !750, !751, !752}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !738, file: !739, line: 47, baseType: !187, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "register_read", scope: !738, file: !739, line: 49, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !737}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "register_write", scope: !738, file: !739, line: 50, baseType: !743, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !738, file: !739, line: 52, baseType: !109, size: 32, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "drive_data", scope: !738, file: !739, line: 54, baseType: !28, size: 8, offset: 224)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reg_data_in", scope: !738, file: !739, line: 55, baseType: !28, size: 8, offset: 232)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reg_data_out", scope: !738, file: !739, line: 56, baseType: !28, size: 8, offset: 240)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reg_data_clock", scope: !738, file: !739, line: 57, baseType: !28, size: 8, offset: 248)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reg_chip_select", scope: !738, file: !739, line: 58, baseType: !28, size: 8, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !234, line: 17, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !756)
!756 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!758 = !DILocalVariable(name: "eeprom", arg: 1, scope: !734, file: !3, line: 172, type: !737)
!759 = !DILocation(line: 172, column: 45, scope: !734)
!760 = !DILocalVariable(name: "word", arg: 2, scope: !734, file: !3, line: 172, type: !753)
!761 = !DILocation(line: 172, column: 62, scope: !734)
!762 = !DILocalVariable(name: "data", arg: 3, scope: !734, file: !3, line: 173, type: !757)
!763 = !DILocation(line: 173, column: 7, scope: !734)
!764 = !DILocalVariable(name: "command", scope: !734, file: !3, line: 175, type: !360)
!765 = !DILocation(line: 175, column: 6, scope: !734)
!766 = !DILocation(line: 180, column: 23, scope: !734)
!767 = !DILocation(line: 180, column: 2, scope: !734)
!768 = !DILocation(line: 185, column: 39, scope: !734)
!769 = !DILocation(line: 185, column: 47, scope: !734)
!770 = !DILocation(line: 185, column: 36, scope: !734)
!771 = !DILocation(line: 185, column: 56, scope: !734)
!772 = !DILocation(line: 185, column: 54, scope: !734)
!773 = !DILocation(line: 185, column: 12, scope: !734)
!774 = !DILocation(line: 185, column: 10, scope: !734)
!775 = !DILocation(line: 186, column: 26, scope: !734)
!776 = !DILocation(line: 186, column: 34, scope: !734)
!777 = !DILocation(line: 187, column: 29, scope: !734)
!778 = !DILocation(line: 187, column: 37, scope: !734)
!779 = !DILocation(line: 187, column: 27, scope: !734)
!780 = !DILocation(line: 187, column: 3, scope: !734)
!781 = !DILocation(line: 186, column: 2, scope: !734)
!782 = !DILocation(line: 192, column: 25, scope: !734)
!783 = !DILocation(line: 192, column: 33, scope: !734)
!784 = !DILocation(line: 192, column: 2, scope: !734)
!785 = !DILocation(line: 197, column: 23, scope: !734)
!786 = !DILocation(line: 197, column: 2, scope: !734)
!787 = !DILocation(line: 198, column: 1, scope: !734)
!788 = distinct !DISubprogram(name: "eeprom_93cx6_startup", scope: !3, file: !3, line: 47, type: !744, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !97)
!789 = !DILocalVariable(name: "eeprom", arg: 1, scope: !788, file: !3, line: 47, type: !737)
!790 = !DILocation(line: 47, column: 55, scope: !788)
!791 = !DILocation(line: 52, column: 2, scope: !788)
!792 = !DILocation(line: 52, column: 10, scope: !788)
!793 = !DILocation(line: 52, column: 24, scope: !788)
!794 = !DILocation(line: 53, column: 2, scope: !788)
!795 = !DILocation(line: 53, column: 10, scope: !788)
!796 = !DILocation(line: 53, column: 22, scope: !788)
!797 = !DILocation(line: 54, column: 2, scope: !788)
!798 = !DILocation(line: 54, column: 10, scope: !788)
!799 = !DILocation(line: 54, column: 23, scope: !788)
!800 = !DILocation(line: 55, column: 2, scope: !788)
!801 = !DILocation(line: 55, column: 10, scope: !788)
!802 = !DILocation(line: 55, column: 25, scope: !788)
!803 = !DILocation(line: 56, column: 2, scope: !788)
!804 = !DILocation(line: 56, column: 10, scope: !788)
!805 = !DILocation(line: 56, column: 26, scope: !788)
!806 = !DILocation(line: 57, column: 2, scope: !788)
!807 = !DILocation(line: 57, column: 10, scope: !788)
!808 = !DILocation(line: 57, column: 21, scope: !788)
!809 = !DILocation(line: 58, column: 2, scope: !788)
!810 = !DILocation(line: 58, column: 10, scope: !788)
!811 = !DILocation(line: 58, column: 25, scope: !788)
!812 = !DILocation(line: 63, column: 26, scope: !788)
!813 = !DILocation(line: 63, column: 2, scope: !788)
!814 = !DILocation(line: 64, column: 25, scope: !788)
!815 = !DILocation(line: 64, column: 2, scope: !788)
!816 = !DILocation(line: 65, column: 1, scope: !788)
!817 = distinct !DISubprogram(name: "eeprom_93cx6_write_bits", scope: !3, file: !3, line: 84, type: !818, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !97)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !737, !820, !820}
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!821 = !DILocalVariable(name: "eeprom", arg: 1, scope: !817, file: !3, line: 84, type: !737)
!822 = !DILocation(line: 84, column: 58, scope: !817)
!823 = !DILocalVariable(name: "data", arg: 2, scope: !817, file: !3, line: 85, type: !820)
!824 = !DILocation(line: 85, column: 12, scope: !817)
!825 = !DILocalVariable(name: "count", arg: 3, scope: !817, file: !3, line: 85, type: !820)
!826 = !DILocation(line: 85, column: 28, scope: !817)
!827 = !DILocalVariable(name: "i", scope: !817, file: !3, line: 87, type: !7)
!828 = !DILocation(line: 87, column: 15, scope: !817)
!829 = !DILocation(line: 89, column: 2, scope: !817)
!830 = !DILocation(line: 89, column: 10, scope: !817)
!831 = !DILocation(line: 89, column: 24, scope: !817)
!832 = !DILocation(line: 94, column: 2, scope: !817)
!833 = !DILocation(line: 94, column: 10, scope: !817)
!834 = !DILocation(line: 94, column: 22, scope: !817)
!835 = !DILocation(line: 95, column: 2, scope: !817)
!836 = !DILocation(line: 95, column: 10, scope: !817)
!837 = !DILocation(line: 95, column: 23, scope: !817)
!838 = !DILocation(line: 96, column: 2, scope: !817)
!839 = !DILocation(line: 96, column: 10, scope: !817)
!840 = !DILocation(line: 96, column: 21, scope: !817)
!841 = !DILocation(line: 101, column: 11, scope: !842)
!842 = distinct !DILexicalBlock(scope: !817, file: !3, line: 101, column: 2)
!843 = !DILocation(line: 101, column: 9, scope: !842)
!844 = !DILocation(line: 101, column: 7, scope: !842)
!845 = !DILocation(line: 101, column: 18, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !3, line: 101, column: 2)
!847 = !DILocation(line: 101, column: 20, scope: !846)
!848 = !DILocation(line: 101, column: 2, scope: !842)
!849 = !DILocation(line: 105, column: 28, scope: !850)
!850 = distinct !DILexicalBlock(scope: !846, file: !3, line: 101, column: 30)
!851 = !DILocation(line: 105, column: 42, scope: !850)
!852 = !DILocation(line: 105, column: 44, scope: !850)
!853 = !DILocation(line: 105, column: 38, scope: !850)
!854 = !DILocation(line: 105, column: 33, scope: !850)
!855 = !DILocation(line: 105, column: 26, scope: !850)
!856 = !DILocation(line: 105, column: 25, scope: !850)
!857 = !DILocation(line: 105, column: 3, scope: !850)
!858 = !DILocation(line: 105, column: 11, scope: !850)
!859 = !DILocation(line: 105, column: 23, scope: !850)
!860 = !DILocation(line: 110, column: 3, scope: !850)
!861 = !DILocation(line: 110, column: 11, scope: !850)
!862 = !DILocation(line: 110, column: 26, scope: !850)
!863 = !DILocation(line: 115, column: 27, scope: !850)
!864 = !DILocation(line: 115, column: 3, scope: !850)
!865 = !DILocation(line: 116, column: 26, scope: !850)
!866 = !DILocation(line: 116, column: 3, scope: !850)
!867 = !DILocation(line: 117, column: 2, scope: !850)
!868 = !DILocation(line: 101, column: 26, scope: !846)
!869 = !DILocation(line: 101, column: 2, scope: !846)
!870 = distinct !{!870, !848, !871}
!871 = !DILocation(line: 117, column: 2, scope: !842)
!872 = !DILocation(line: 119, column: 2, scope: !817)
!873 = !DILocation(line: 119, column: 10, scope: !817)
!874 = !DILocation(line: 119, column: 22, scope: !817)
!875 = !DILocation(line: 120, column: 2, scope: !817)
!876 = !DILocation(line: 120, column: 10, scope: !817)
!877 = !DILocation(line: 120, column: 25, scope: !817)
!878 = !DILocation(line: 121, column: 1, scope: !817)
!879 = distinct !DISubprogram(name: "eeprom_93cx6_read_bits", scope: !3, file: !3, line: 123, type: !880, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !97)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !737, !757, !820}
!882 = !DILocalVariable(name: "eeprom", arg: 1, scope: !879, file: !3, line: 123, type: !737)
!883 = !DILocation(line: 123, column: 57, scope: !879)
!884 = !DILocalVariable(name: "data", arg: 2, scope: !879, file: !3, line: 124, type: !757)
!885 = !DILocation(line: 124, column: 7, scope: !879)
!886 = !DILocalVariable(name: "count", arg: 3, scope: !879, file: !3, line: 124, type: !820)
!887 = !DILocation(line: 124, column: 23, scope: !879)
!888 = !DILocalVariable(name: "i", scope: !879, file: !3, line: 126, type: !7)
!889 = !DILocation(line: 126, column: 15, scope: !879)
!890 = !DILocalVariable(name: "buf", scope: !879, file: !3, line: 127, type: !360)
!891 = !DILocation(line: 127, column: 6, scope: !879)
!892 = !DILocation(line: 129, column: 2, scope: !879)
!893 = !DILocation(line: 129, column: 10, scope: !879)
!894 = !DILocation(line: 129, column: 24, scope: !879)
!895 = !DILocation(line: 134, column: 2, scope: !879)
!896 = !DILocation(line: 134, column: 10, scope: !879)
!897 = !DILocation(line: 134, column: 22, scope: !879)
!898 = !DILocation(line: 135, column: 2, scope: !879)
!899 = !DILocation(line: 135, column: 10, scope: !879)
!900 = !DILocation(line: 135, column: 23, scope: !879)
!901 = !DILocation(line: 136, column: 2, scope: !879)
!902 = !DILocation(line: 136, column: 10, scope: !879)
!903 = !DILocation(line: 136, column: 21, scope: !879)
!904 = !DILocation(line: 141, column: 11, scope: !905)
!905 = distinct !DILexicalBlock(scope: !879, file: !3, line: 141, column: 2)
!906 = !DILocation(line: 141, column: 9, scope: !905)
!907 = !DILocation(line: 141, column: 7, scope: !905)
!908 = !DILocation(line: 141, column: 18, scope: !909)
!909 = distinct !DILexicalBlock(scope: !905, file: !3, line: 141, column: 2)
!910 = !DILocation(line: 141, column: 20, scope: !909)
!911 = !DILocation(line: 141, column: 2, scope: !905)
!912 = !DILocation(line: 142, column: 27, scope: !913)
!913 = distinct !DILexicalBlock(scope: !909, file: !3, line: 141, column: 30)
!914 = !DILocation(line: 142, column: 3, scope: !913)
!915 = !DILocation(line: 144, column: 3, scope: !913)
!916 = !DILocation(line: 144, column: 11, scope: !913)
!917 = !DILocation(line: 144, column: 25, scope: !913)
!918 = !DILocation(line: 149, column: 3, scope: !913)
!919 = !DILocation(line: 149, column: 11, scope: !913)
!920 = !DILocation(line: 149, column: 23, scope: !913)
!921 = !DILocation(line: 154, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !913, file: !3, line: 154, column: 7)
!923 = !DILocation(line: 154, column: 15, scope: !922)
!924 = !DILocation(line: 154, column: 7, scope: !913)
!925 = !DILocation(line: 155, column: 18, scope: !922)
!926 = !DILocation(line: 155, column: 20, scope: !922)
!927 = !DILocation(line: 155, column: 14, scope: !922)
!928 = !DILocation(line: 155, column: 8, scope: !922)
!929 = !DILocation(line: 155, column: 4, scope: !922)
!930 = !DILocation(line: 157, column: 26, scope: !913)
!931 = !DILocation(line: 157, column: 3, scope: !913)
!932 = !DILocation(line: 158, column: 2, scope: !913)
!933 = !DILocation(line: 141, column: 26, scope: !909)
!934 = !DILocation(line: 141, column: 2, scope: !909)
!935 = distinct !{!935, !911, !936}
!936 = !DILocation(line: 158, column: 2, scope: !905)
!937 = !DILocation(line: 160, column: 10, scope: !879)
!938 = !DILocation(line: 160, column: 3, scope: !879)
!939 = !DILocation(line: 160, column: 8, scope: !879)
!940 = !DILocation(line: 161, column: 1, scope: !879)
!941 = distinct !DISubprogram(name: "eeprom_93cx6_cleanup", scope: !3, file: !3, line: 67, type: !744, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !97)
!942 = !DILocalVariable(name: "eeprom", arg: 1, scope: !941, file: !3, line: 67, type: !737)
!943 = !DILocation(line: 67, column: 55, scope: !941)
!944 = !DILocation(line: 72, column: 2, scope: !941)
!945 = !DILocation(line: 72, column: 10, scope: !941)
!946 = !DILocation(line: 72, column: 24, scope: !941)
!947 = !DILocation(line: 73, column: 2, scope: !941)
!948 = !DILocation(line: 73, column: 10, scope: !941)
!949 = !DILocation(line: 73, column: 22, scope: !941)
!950 = !DILocation(line: 74, column: 2, scope: !941)
!951 = !DILocation(line: 74, column: 10, scope: !941)
!952 = !DILocation(line: 74, column: 26, scope: !941)
!953 = !DILocation(line: 75, column: 2, scope: !941)
!954 = !DILocation(line: 75, column: 10, scope: !941)
!955 = !DILocation(line: 75, column: 25, scope: !941)
!956 = !DILocation(line: 80, column: 26, scope: !941)
!957 = !DILocation(line: 80, column: 2, scope: !941)
!958 = !DILocation(line: 81, column: 25, scope: !941)
!959 = !DILocation(line: 81, column: 2, scope: !941)
!960 = !DILocation(line: 82, column: 1, scope: !941)
!961 = distinct !DISubprogram(name: "eeprom_93cx6_multiread", scope: !3, file: !3, line: 214, type: !962, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !737, !753, !964, !820}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!965 = !DILocalVariable(name: "eeprom", arg: 1, scope: !961, file: !3, line: 214, type: !737)
!966 = !DILocation(line: 214, column: 50, scope: !961)
!967 = !DILocalVariable(name: "word", arg: 2, scope: !961, file: !3, line: 214, type: !753)
!968 = !DILocation(line: 214, column: 67, scope: !961)
!969 = !DILocalVariable(name: "data", arg: 3, scope: !961, file: !3, line: 215, type: !964)
!970 = !DILocation(line: 215, column: 10, scope: !961)
!971 = !DILocalVariable(name: "words", arg: 4, scope: !961, file: !3, line: 215, type: !820)
!972 = !DILocation(line: 215, column: 26, scope: !961)
!973 = !DILocalVariable(name: "i", scope: !961, file: !3, line: 217, type: !7)
!974 = !DILocation(line: 217, column: 15, scope: !961)
!975 = !DILocalVariable(name: "tmp", scope: !961, file: !3, line: 218, type: !360)
!976 = !DILocation(line: 218, column: 6, scope: !961)
!977 = !DILocation(line: 220, column: 9, scope: !978)
!978 = distinct !DILexicalBlock(scope: !961, file: !3, line: 220, column: 2)
!979 = !DILocation(line: 220, column: 7, scope: !978)
!980 = !DILocation(line: 220, column: 14, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !3, line: 220, column: 2)
!982 = !DILocation(line: 220, column: 18, scope: !981)
!983 = !DILocation(line: 220, column: 16, scope: !981)
!984 = !DILocation(line: 220, column: 2, scope: !978)
!985 = !DILocation(line: 221, column: 7, scope: !986)
!986 = distinct !DILexicalBlock(scope: !981, file: !3, line: 220, column: 30)
!987 = !DILocation(line: 222, column: 21, scope: !986)
!988 = !DILocation(line: 222, column: 29, scope: !986)
!989 = !DILocation(line: 222, column: 36, scope: !986)
!990 = !DILocation(line: 222, column: 34, scope: !986)
!991 = !DILocation(line: 222, column: 3, scope: !986)
!992 = !DILocation(line: 223, column: 13, scope: !986)
!993 = !DILocation(line: 223, column: 3, scope: !986)
!994 = !DILocation(line: 223, column: 8, scope: !986)
!995 = !DILocation(line: 223, column: 11, scope: !986)
!996 = !DILocation(line: 224, column: 2, scope: !986)
!997 = !DILocation(line: 220, column: 26, scope: !981)
!998 = !DILocation(line: 220, column: 2, scope: !981)
!999 = distinct !{!999, !984, !1000}
!1000 = !DILocation(line: 224, column: 2, scope: !978)
!1001 = !DILocation(line: 225, column: 1, scope: !961)
!1002 = distinct !DISubprogram(name: "eeprom_93cx6_readb", scope: !3, file: !3, line: 237, type: !1003, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !737, !753, !1005}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!1006 = !DILocalVariable(name: "eeprom", arg: 1, scope: !1002, file: !3, line: 237, type: !737)
!1007 = !DILocation(line: 237, column: 46, scope: !1002)
!1008 = !DILocalVariable(name: "byte", arg: 2, scope: !1002, file: !3, line: 237, type: !753)
!1009 = !DILocation(line: 237, column: 63, scope: !1002)
!1010 = !DILocalVariable(name: "data", arg: 3, scope: !1002, file: !3, line: 238, type: !1005)
!1011 = !DILocation(line: 238, column: 6, scope: !1002)
!1012 = !DILocalVariable(name: "command", scope: !1002, file: !3, line: 240, type: !360)
!1013 = !DILocation(line: 240, column: 6, scope: !1002)
!1014 = !DILocalVariable(name: "tmp", scope: !1002, file: !3, line: 241, type: !360)
!1015 = !DILocation(line: 241, column: 6, scope: !1002)
!1016 = !DILocation(line: 246, column: 23, scope: !1002)
!1017 = !DILocation(line: 246, column: 2, scope: !1002)
!1018 = !DILocation(line: 251, column: 40, scope: !1002)
!1019 = !DILocation(line: 251, column: 48, scope: !1002)
!1020 = !DILocation(line: 251, column: 54, scope: !1002)
!1021 = !DILocation(line: 251, column: 36, scope: !1002)
!1022 = !DILocation(line: 251, column: 62, scope: !1002)
!1023 = !DILocation(line: 251, column: 60, scope: !1002)
!1024 = !DILocation(line: 251, column: 12, scope: !1002)
!1025 = !DILocation(line: 251, column: 10, scope: !1002)
!1026 = !DILocation(line: 252, column: 26, scope: !1002)
!1027 = !DILocation(line: 252, column: 34, scope: !1002)
!1028 = !DILocation(line: 253, column: 29, scope: !1002)
!1029 = !DILocation(line: 253, column: 37, scope: !1002)
!1030 = !DILocation(line: 253, column: 27, scope: !1002)
!1031 = !DILocation(line: 253, column: 43, scope: !1002)
!1032 = !DILocation(line: 253, column: 3, scope: !1002)
!1033 = !DILocation(line: 252, column: 2, scope: !1002)
!1034 = !DILocation(line: 258, column: 25, scope: !1002)
!1035 = !DILocation(line: 258, column: 2, scope: !1002)
!1036 = !DILocation(line: 259, column: 10, scope: !1002)
!1037 = !DILocation(line: 259, column: 14, scope: !1002)
!1038 = !DILocation(line: 259, column: 3, scope: !1002)
!1039 = !DILocation(line: 259, column: 8, scope: !1002)
!1040 = !DILocation(line: 264, column: 23, scope: !1002)
!1041 = !DILocation(line: 264, column: 2, scope: !1002)
!1042 = !DILocation(line: 265, column: 1, scope: !1002)
!1043 = distinct !DISubprogram(name: "eeprom_93cx6_multireadb", scope: !3, file: !3, line: 278, type: !1044, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !737, !753, !1005, !820}
!1046 = !DILocalVariable(name: "eeprom", arg: 1, scope: !1043, file: !3, line: 278, type: !737)
!1047 = !DILocation(line: 278, column: 51, scope: !1043)
!1048 = !DILocalVariable(name: "byte", arg: 2, scope: !1043, file: !3, line: 278, type: !753)
!1049 = !DILocation(line: 278, column: 68, scope: !1043)
!1050 = !DILocalVariable(name: "data", arg: 3, scope: !1043, file: !3, line: 279, type: !1005)
!1051 = !DILocation(line: 279, column: 6, scope: !1043)
!1052 = !DILocalVariable(name: "bytes", arg: 4, scope: !1043, file: !3, line: 279, type: !820)
!1053 = !DILocation(line: 279, column: 22, scope: !1043)
!1054 = !DILocalVariable(name: "i", scope: !1043, file: !3, line: 281, type: !7)
!1055 = !DILocation(line: 281, column: 15, scope: !1043)
!1056 = !DILocation(line: 283, column: 9, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 283, column: 2)
!1058 = !DILocation(line: 283, column: 7, scope: !1057)
!1059 = !DILocation(line: 283, column: 14, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 283, column: 2)
!1061 = !DILocation(line: 283, column: 18, scope: !1060)
!1062 = !DILocation(line: 283, column: 16, scope: !1060)
!1063 = !DILocation(line: 283, column: 2, scope: !1057)
!1064 = !DILocation(line: 284, column: 22, scope: !1060)
!1065 = !DILocation(line: 284, column: 30, scope: !1060)
!1066 = !DILocation(line: 284, column: 37, scope: !1060)
!1067 = !DILocation(line: 284, column: 35, scope: !1060)
!1068 = !DILocation(line: 284, column: 41, scope: !1060)
!1069 = !DILocation(line: 284, column: 46, scope: !1060)
!1070 = !DILocation(line: 284, column: 3, scope: !1060)
!1071 = !DILocation(line: 283, column: 26, scope: !1060)
!1072 = !DILocation(line: 283, column: 2, scope: !1060)
!1073 = distinct !{!1073, !1063, !1074}
!1074 = !DILocation(line: 284, column: 48, scope: !1057)
!1075 = !DILocation(line: 285, column: 1, scope: !1043)
!1076 = distinct !DISubprogram(name: "eeprom_93cx6_wren", scope: !3, file: !3, line: 296, type: !1077, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null, !737, !405}
!1079 = !DILocalVariable(name: "eeprom", arg: 1, scope: !1076, file: !3, line: 296, type: !737)
!1080 = !DILocation(line: 296, column: 45, scope: !1076)
!1081 = !DILocalVariable(name: "enable", arg: 2, scope: !1076, file: !3, line: 296, type: !405)
!1082 = !DILocation(line: 296, column: 58, scope: !1076)
!1083 = !DILocalVariable(name: "command", scope: !1076, file: !3, line: 298, type: !360)
!1084 = !DILocation(line: 298, column: 6, scope: !1076)
!1085 = !DILocation(line: 301, column: 23, scope: !1076)
!1086 = !DILocation(line: 301, column: 2, scope: !1076)
!1087 = !DILocation(line: 305, column: 12, scope: !1076)
!1088 = !DILocation(line: 305, column: 10, scope: !1076)
!1089 = !DILocation(line: 306, column: 15, scope: !1076)
!1090 = !DILocation(line: 306, column: 23, scope: !1076)
!1091 = !DILocation(line: 306, column: 29, scope: !1076)
!1092 = !DILocation(line: 306, column: 10, scope: !1076)
!1093 = !DILocation(line: 308, column: 26, scope: !1076)
!1094 = !DILocation(line: 308, column: 34, scope: !1076)
!1095 = !DILocation(line: 309, column: 31, scope: !1076)
!1096 = !DILocation(line: 309, column: 39, scope: !1076)
!1097 = !DILocation(line: 309, column: 29, scope: !1076)
!1098 = !DILocation(line: 309, column: 5, scope: !1076)
!1099 = !DILocation(line: 308, column: 2, scope: !1076)
!1100 = !DILocation(line: 311, column: 23, scope: !1076)
!1101 = !DILocation(line: 311, column: 2, scope: !1076)
!1102 = !DILocation(line: 312, column: 1, scope: !1076)
!1103 = distinct !DISubprogram(name: "eeprom_93cx6_write", scope: !3, file: !3, line: 328, type: !1104, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !737, !754, !360}
!1106 = !DILocalVariable(name: "eeprom", arg: 1, scope: !1103, file: !3, line: 328, type: !737)
!1107 = !DILocation(line: 328, column: 46, scope: !1103)
!1108 = !DILocalVariable(name: "addr", arg: 2, scope: !1103, file: !3, line: 328, type: !754)
!1109 = !DILocation(line: 328, column: 57, scope: !1103)
!1110 = !DILocalVariable(name: "data", arg: 3, scope: !1103, file: !3, line: 328, type: !360)
!1111 = !DILocation(line: 328, column: 67, scope: !1103)
!1112 = !DILocalVariable(name: "timeout", scope: !1103, file: !3, line: 330, type: !109)
!1113 = !DILocation(line: 330, column: 6, scope: !1103)
!1114 = !DILocalVariable(name: "command", scope: !1103, file: !3, line: 331, type: !360)
!1115 = !DILocation(line: 331, column: 6, scope: !1103)
!1116 = !DILocation(line: 334, column: 23, scope: !1103)
!1117 = !DILocation(line: 334, column: 2, scope: !1103)
!1118 = !DILocation(line: 336, column: 39, scope: !1103)
!1119 = !DILocation(line: 336, column: 47, scope: !1103)
!1120 = !DILocation(line: 336, column: 36, scope: !1103)
!1121 = !DILocation(line: 336, column: 12, scope: !1103)
!1122 = !DILocation(line: 336, column: 10, scope: !1103)
!1123 = !DILocation(line: 337, column: 13, scope: !1103)
!1124 = !DILocation(line: 337, column: 10, scope: !1103)
!1125 = !DILocation(line: 340, column: 26, scope: !1103)
!1126 = !DILocation(line: 340, column: 34, scope: !1103)
!1127 = !DILocation(line: 341, column: 31, scope: !1103)
!1128 = !DILocation(line: 341, column: 39, scope: !1103)
!1129 = !DILocation(line: 341, column: 29, scope: !1103)
!1130 = !DILocation(line: 341, column: 5, scope: !1103)
!1131 = !DILocation(line: 340, column: 2, scope: !1103)
!1132 = !DILocation(line: 344, column: 26, scope: !1103)
!1133 = !DILocation(line: 344, column: 34, scope: !1103)
!1134 = !DILocation(line: 344, column: 2, scope: !1103)
!1135 = !DILocation(line: 347, column: 2, scope: !1103)
!1136 = !DILocation(line: 347, column: 10, scope: !1103)
!1137 = !DILocation(line: 347, column: 21, scope: !1103)
!1138 = !DILocation(line: 348, column: 2, scope: !1103)
!1139 = !DILocation(line: 348, column: 10, scope: !1103)
!1140 = !DILocation(line: 348, column: 26, scope: !1103)
!1141 = !DILocation(line: 349, column: 2, scope: !1103)
!1142 = !DILocation(line: 349, column: 10, scope: !1103)
!1143 = !DILocation(line: 349, column: 25, scope: !1103)
!1144 = !DILocation(line: 352, column: 2, scope: !1103)
!1145 = !DILocation(line: 356, column: 2, scope: !1103)
!1146 = !DILocation(line: 357, column: 3, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 356, column: 15)
!1148 = !DILocation(line: 357, column: 11, scope: !1147)
!1149 = !DILocation(line: 357, column: 25, scope: !1147)
!1150 = !DILocation(line: 359, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 359, column: 7)
!1152 = !DILocation(line: 359, column: 15, scope: !1151)
!1153 = !DILocation(line: 359, column: 7, scope: !1147)
!1154 = !DILocation(line: 360, column: 4, scope: !1151)
!1155 = !DILocation(line: 362, column: 3, scope: !1147)
!1156 = !DILocation(line: 364, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 364, column: 7)
!1158 = !DILocation(line: 364, column: 17, scope: !1157)
!1159 = !DILocation(line: 364, column: 7, scope: !1147)
!1160 = !DILocation(line: 365, column: 4, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 364, column: 23)
!1162 = !DILocation(line: 366, column: 4, scope: !1161)
!1163 = distinct !{!1163, !1145, !1164}
!1164 = !DILocation(line: 368, column: 2, scope: !1103)
!1165 = !DILocation(line: 370, column: 23, scope: !1103)
!1166 = !DILocation(line: 370, column: 2, scope: !1103)
!1167 = !DILocation(line: 371, column: 1, scope: !1103)
!1168 = distinct !DISubprogram(name: "eeprom_93cx6_pulse_high", scope: !3, file: !3, line: 21, type: !744, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !97)
!1169 = !DILocalVariable(name: "eeprom", arg: 1, scope: !1168, file: !3, line: 21, type: !737)
!1170 = !DILocation(line: 21, column: 65, scope: !1168)
!1171 = !DILocation(line: 23, column: 2, scope: !1168)
!1172 = !DILocation(line: 23, column: 10, scope: !1168)
!1173 = !DILocation(line: 23, column: 25, scope: !1168)
!1174 = !DILocation(line: 24, column: 2, scope: !1168)
!1175 = !DILocation(line: 24, column: 10, scope: !1168)
!1176 = !DILocation(line: 24, column: 25, scope: !1168)
!1177 = !DILocation(line: 31, column: 2, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 31, column: 2)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 31, column: 2)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 31, column: 2)
!1181 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 31, column: 2)
!1182 = !DILocation(line: 32, column: 1, scope: !1168)
!1183 = distinct !DISubprogram(name: "eeprom_93cx6_pulse_low", scope: !3, file: !3, line: 34, type: !744, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !97)
!1184 = !DILocalVariable(name: "eeprom", arg: 1, scope: !1183, file: !3, line: 34, type: !737)
!1185 = !DILocation(line: 34, column: 64, scope: !1183)
!1186 = !DILocation(line: 36, column: 2, scope: !1183)
!1187 = !DILocation(line: 36, column: 10, scope: !1183)
!1188 = !DILocation(line: 36, column: 25, scope: !1183)
!1189 = !DILocation(line: 37, column: 2, scope: !1183)
!1190 = !DILocation(line: 37, column: 10, scope: !1183)
!1191 = !DILocation(line: 37, column: 25, scope: !1183)
!1192 = !DILocation(line: 44, column: 2, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 44, column: 2)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 44, column: 2)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 44, column: 2)
!1196 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 44, column: 2)
!1197 = !DILocation(line: 45, column: 1, scope: !1183)
