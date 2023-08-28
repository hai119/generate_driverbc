; ModuleID = '../bcout/drivers/of/kobj.llvm.bc'
source_filename = "drivers/of/kobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type opaque
%struct.seq_file = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.vm_operations_struct = type opaque
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.1, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type opaque
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.1 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.device = type opaque
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }

@of_node_ktype = dso_local global %struct.kobj_type { void (%struct.kobject*)* @of_node_release, %struct.sysfs_ops* null, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"security-\00", align 1
@of_kset = external dso_local global %struct.kset*, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"error adding attribute %s to node %pOF\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"drivers/of/kobj.c\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s#%i\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"\014Duplicate name in %s, renamed to \22%s\22\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_node_is_attached(%struct.device_node* %node) #0 !dbg !653 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !765, metadata !DIExpression()), !dbg !766
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !767
  %tobool = icmp ne %struct.device_node* %0, null, !dbg !767
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !768

land.rhs:                                         ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !769
  %kobj = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i32 0, i32 9, !dbg !770
  %state_in_sysfs = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i32 0, i32 7, !dbg !771
  %bf.load = load i8, i8* %state_in_sysfs, align 4, !dbg !771
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !771
  %bf.clear = and i8 %bf.lshr, 1, !dbg !771
  %bf.cast = zext i8 %bf.clear to i32, !dbg !771
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !768
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !772
  %land.ext = zext i1 %2 to i32, !dbg !768
  ret i32 %land.ext, !dbg !773
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_release(%struct.kobject* %kobj) #0 !dbg !774 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !775, metadata !DIExpression()), !dbg !776
  ret void, !dbg !777
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__of_add_property_sysfs(%struct.device_node* %np, %struct.property* %pp) #0 !dbg !778 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %pp.addr = alloca %struct.property*, align 8
  %rc = alloca i32, align 4
  %secure = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !781, metadata !DIExpression()), !dbg !782
  store %struct.property* %pp, %struct.property** %pp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property** %pp.addr, metadata !783, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !785, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.declare(metadata i8* %secure, metadata !787, metadata !DIExpression()), !dbg !788
  %0 = load %struct.property*, %struct.property** %pp.addr, align 8, !dbg !789
  %name = getelementptr inbounds %struct.property, %struct.property* %0, i32 0, i32 0, !dbg !790
  %1 = load i8*, i8** %name, align 8, !dbg !790
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 9) #4, !dbg !791
  %cmp = icmp eq i32 %call, 0, !dbg !792
  %frombool = zext i1 %cmp to i8, !dbg !788
  store i8 %frombool, i8* %secure, align 1, !dbg !788
  %2 = load %struct.kset*, %struct.kset** @of_kset, align 8, !dbg !793
  %tobool = icmp ne %struct.kset* %2, null, !dbg !793
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !795

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !796
  %call1 = call i32 @of_node_is_attached(%struct.device_node* %3) #4, !dbg !797
  %tobool2 = icmp ne i32 %call1, 0, !dbg !797
  br i1 %tobool2, label %if.end, label %if.then, !dbg !798

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !799
  br label %return, !dbg !799

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !800

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !801

do.end:                                           ; preds = %do.body
  %4 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !803
  %kobj = getelementptr inbounds %struct.device_node, %struct.device_node* %4, i32 0, i32 9, !dbg !804
  %5 = load %struct.property*, %struct.property** %pp.addr, align 8, !dbg !805
  %name3 = getelementptr inbounds %struct.property, %struct.property* %5, i32 0, i32 0, !dbg !806
  %6 = load i8*, i8** %name3, align 8, !dbg !806
  %call4 = call i8* @safe_name(%struct.kobject* %kobj, i8* %6) #4, !dbg !807
  %7 = load %struct.property*, %struct.property** %pp.addr, align 8, !dbg !808
  %attr = getelementptr inbounds %struct.property, %struct.property* %7, i32 0, i32 4, !dbg !809
  %attr5 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr, i32 0, i32 0, !dbg !810
  %name6 = getelementptr inbounds %struct.attribute, %struct.attribute* %attr5, i32 0, i32 0, !dbg !811
  store i8* %call4, i8** %name6, align 8, !dbg !812
  %8 = load i8, i8* %secure, align 1, !dbg !813
  %tobool7 = trunc i8 %8 to i1, !dbg !813
  %9 = zext i1 %tobool7 to i64, !dbg !813
  %cond = select i1 %tobool7, i32 256, i32 292, !dbg !813
  %conv = trunc i32 %cond to i16, !dbg !813
  %10 = load %struct.property*, %struct.property** %pp.addr, align 8, !dbg !814
  %attr8 = getelementptr inbounds %struct.property, %struct.property* %10, i32 0, i32 4, !dbg !815
  %attr9 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr8, i32 0, i32 0, !dbg !816
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %attr9, i32 0, i32 1, !dbg !817
  store i16 %conv, i16* %mode, align 8, !dbg !818
  %11 = load i8, i8* %secure, align 1, !dbg !819
  %tobool10 = trunc i8 %11 to i1, !dbg !819
  br i1 %tobool10, label %cond.true, label %cond.false, !dbg !819

cond.true:                                        ; preds = %do.end
  br label %cond.end, !dbg !819

cond.false:                                       ; preds = %do.end
  %12 = load %struct.property*, %struct.property** %pp.addr, align 8, !dbg !820
  %length = getelementptr inbounds %struct.property, %struct.property* %12, i32 0, i32 1, !dbg !821
  %13 = load i32, i32* %length, align 8, !dbg !821
  br label %cond.end, !dbg !819

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond12 = phi i32 [ 0, %cond.true ], [ %13, %cond.false ], !dbg !819
  %conv13 = sext i32 %cond12 to i64, !dbg !819
  %14 = load %struct.property*, %struct.property** %pp.addr, align 8, !dbg !822
  %attr14 = getelementptr inbounds %struct.property, %struct.property* %14, i32 0, i32 4, !dbg !823
  %size = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr14, i32 0, i32 1, !dbg !824
  store i64 %conv13, i64* %size, align 8, !dbg !825
  %15 = load %struct.property*, %struct.property** %pp.addr, align 8, !dbg !826
  %attr15 = getelementptr inbounds %struct.property, %struct.property* %15, i32 0, i32 4, !dbg !827
  %read = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr15, i32 0, i32 3, !dbg !828
  store i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @of_node_property_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)** %read, align 8, !dbg !829
  %16 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !830
  %kobj16 = getelementptr inbounds %struct.device_node, %struct.device_node* %16, i32 0, i32 9, !dbg !831
  %17 = load %struct.property*, %struct.property** %pp.addr, align 8, !dbg !832
  %attr17 = getelementptr inbounds %struct.property, %struct.property* %17, i32 0, i32 4, !dbg !833
  %call18 = call i32 @sysfs_create_bin_file(%struct.kobject* %kobj16, %struct.bin_attribute* %attr17) #4, !dbg !834
  store i32 %call18, i32* %rc, align 4, !dbg !835
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !836, metadata !DIExpression()), !dbg !838
  %18 = load i32, i32* %rc, align 4, !dbg !838
  %tobool19 = icmp ne i32 %18, 0, !dbg !838
  %lnot = xor i1 %tobool19, true, !dbg !838
  %lnot20 = xor i1 %lnot, true, !dbg !838
  %lnot.ext = zext i1 %lnot20 to i32, !dbg !838
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !838
  %19 = load i32, i32* %__ret_warn_on, align 4, !dbg !839
  %tobool21 = icmp ne i32 %19, 0, !dbg !839
  %lnot22 = xor i1 %tobool21, true, !dbg !839
  %lnot24 = xor i1 %lnot22, true, !dbg !839
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !839
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !839
  %tobool27 = icmp ne i64 %conv26, 0, !dbg !839
  br i1 %tobool27, label %if.then28, label %if.end44, !dbg !838

if.then28:                                        ; preds = %cond.end
  br label %do.body29, !dbg !839

do.body29:                                        ; preds = %if.then28
  br label %do.body30, !dbg !841

do.body30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !843

do.end31:                                         ; preds = %do.body30
  %20 = load %struct.property*, %struct.property** %pp.addr, align 8, !dbg !841
  %name32 = getelementptr inbounds %struct.property, %struct.property* %20, i32 0, i32 0, !dbg !841
  %21 = load i8*, i8** %name32, align 8, !dbg !841
  %22 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !841
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %21, %struct.device_node* %22) #4, !dbg !841
  br label %do.body33, !dbg !841

do.body33:                                        ; preds = %do.end31
  br label %do.body34, !dbg !845

do.body34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !847

do.end35:                                         ; preds = %do.body34
  br label %do.body36, !dbg !845

do.body36:                                        ; preds = %do.end35
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 83, i32 2313, i64 12) #5, !dbg !849, !srcloc !851
  br label %do.end37, !dbg !849

do.end37:                                         ; preds = %do.body36
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 103) #5, !dbg !852, !srcloc !854
  br label %do.body38, !dbg !845

do.body38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !855

do.end39:                                         ; preds = %do.body38
  br label %do.end40, !dbg !845

do.end40:                                         ; preds = %do.end39
  br label %do.body41, !dbg !841

do.body41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !857

do.end42:                                         ; preds = %do.body41
  br label %do.end43, !dbg !841

do.end43:                                         ; preds = %do.end42
  br label %if.end44, !dbg !841

if.end44:                                         ; preds = %do.end43, %cond.end
  %23 = load i32, i32* %__ret_warn_on, align 4, !dbg !838
  %tobool45 = icmp ne i32 %23, 0, !dbg !838
  %lnot46 = xor i1 %tobool45, true, !dbg !838
  %lnot48 = xor i1 %lnot46, true, !dbg !838
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !838
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !838
  store i64 %conv50, i64* %tmp, align 8, !dbg !839
  %24 = load i64, i64* %tmp, align 8, !dbg !838
  %25 = load i32, i32* %rc, align 4, !dbg !859
  store i32 %25, i32* %retval, align 4, !dbg !860
  br label %return, !dbg !860

return:                                           ; preds = %if.end44, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !861
  ret i32 %26, !dbg !861
}

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @safe_name(%struct.kobject* %kobj, i8* %orig_name) #0 !dbg !862 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %orig_name.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  %kn = alloca %struct.kernfs_node*, align 8
  %i = alloca i32, align 4
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !865, metadata !DIExpression()), !dbg !866
  store i8* %orig_name, i8** %orig_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %orig_name.addr, metadata !867, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.declare(metadata i8** %name, metadata !869, metadata !DIExpression()), !dbg !870
  %0 = load i8*, i8** %orig_name.addr, align 8, !dbg !871
  store i8* %0, i8** %name, align 8, !dbg !870
  call void @llvm.dbg.declare(metadata %struct.kernfs_node** %kn, metadata !872, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.declare(metadata i32* %i, metadata !874, metadata !DIExpression()), !dbg !875
  store i32 0, i32* %i, align 4, !dbg !875
  br label %while.cond, !dbg !876

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %i, align 4, !dbg !877
  %cmp = icmp slt i32 %1, 16, !dbg !878
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !879

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !880
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %2, i32 0, i32 5, !dbg !881
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8, !dbg !881
  %4 = load i8*, i8** %name, align 8, !dbg !882
  %call = call %struct.kernfs_node* @sysfs_get_dirent(%struct.kernfs_node* %3, i8* %4) #4, !dbg !883
  store %struct.kernfs_node* %call, %struct.kernfs_node** %kn, align 8, !dbg !884
  %tobool = icmp ne %struct.kernfs_node* %call, null, !dbg !879
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ], !dbg !885
  br i1 %5, label %while.body, label %while.end, !dbg !876

while.body:                                       ; preds = %land.end
  %6 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8, !dbg !886
  call void @sysfs_put(%struct.kernfs_node* %6) #4, !dbg !888
  %7 = load i8*, i8** %name, align 8, !dbg !889
  %8 = load i8*, i8** %orig_name.addr, align 8, !dbg !891
  %cmp1 = icmp ne i8* %7, %8, !dbg !892
  br i1 %cmp1, label %if.then, label %if.end, !dbg !893

if.then:                                          ; preds = %while.body
  %9 = load i8*, i8** %name, align 8, !dbg !894
  call void @kfree(i8* %9) #4, !dbg !895
  br label %if.end, !dbg !895

if.end:                                           ; preds = %if.then, %while.body
  %10 = load i8*, i8** %orig_name.addr, align 8, !dbg !896
  %11 = load i32, i32* %i, align 4, !dbg !897
  %inc = add i32 %11, 1, !dbg !897
  store i32 %inc, i32* %i, align 4, !dbg !897
  %call2 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %10, i32 %inc) #4, !dbg !898
  store i8* %call2, i8** %name, align 8, !dbg !899
  br label %while.cond, !dbg !876, !llvm.loop !900

while.end:                                        ; preds = %land.end
  %12 = load i8*, i8** %name, align 8, !dbg !902
  %13 = load i8*, i8** %orig_name.addr, align 8, !dbg !904
  %cmp3 = icmp eq i8* %12, %13, !dbg !905
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !906

if.then4:                                         ; preds = %while.end
  %14 = load i8*, i8** %orig_name.addr, align 8, !dbg !907
  %call5 = call noalias i8* @kstrdup(i8* %14, i32 3264) #4, !dbg !909
  store i8* %call5, i8** %name, align 8, !dbg !910
  br label %if.end8, !dbg !911

if.else:                                          ; preds = %while.end
  %15 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !912
  %call6 = call i8* @kobject_name(%struct.kobject* %15) #4, !dbg !912
  %16 = load i8*, i8** %name, align 8, !dbg !912
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %call6, i8* %16) #6, !dbg !912
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %17 = load i8*, i8** %name, align 8, !dbg !914
  ret i8* %17, !dbg !915
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @of_node_property_read(%struct.file* %filp, %struct.kobject* %kobj, %struct.bin_attribute* %bin_attr, i8* %buf, i64 %offset, i64 %count) #0 !dbg !916 {
entry:
  %filp.addr = alloca %struct.file*, align 8
  %kobj.addr = alloca %struct.kobject*, align 8
  %bin_attr.addr = alloca %struct.bin_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %pp = alloca %struct.property*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.property*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !917, metadata !DIExpression()), !dbg !918
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !919, metadata !DIExpression()), !dbg !920
  store %struct.bin_attribute* %bin_attr, %struct.bin_attribute** %bin_attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bin_attribute** %bin_attr.addr, metadata !921, metadata !DIExpression()), !dbg !922
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !923, metadata !DIExpression()), !dbg !924
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !925, metadata !DIExpression()), !dbg !926
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !927, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata %struct.property** %pp, metadata !929, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !931, metadata !DIExpression()), !dbg !933
  %0 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.addr, align 8, !dbg !933
  %1 = bitcast %struct.bin_attribute* %0 to i8*, !dbg !933
  store i8* %1, i8** %__mptr, align 8, !dbg !933
  br label %do.body, !dbg !933

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !934

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !933
  %add.ptr = getelementptr i8, i8* %2, i64 -32, !dbg !933
  %3 = bitcast i8* %add.ptr to %struct.property*, !dbg !933
  store %struct.property* %3, %struct.property** %tmp, align 8, !dbg !934
  %4 = load %struct.property*, %struct.property** %tmp, align 8, !dbg !933
  store %struct.property* %4, %struct.property** %pp, align 8, !dbg !930
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !936
  %6 = load i64, i64* %count.addr, align 8, !dbg !937
  %7 = load %struct.property*, %struct.property** %pp, align 8, !dbg !938
  %value = getelementptr inbounds %struct.property, %struct.property* %7, i32 0, i32 2, !dbg !939
  %8 = load i8*, i8** %value, align 8, !dbg !939
  %9 = load %struct.property*, %struct.property** %pp, align 8, !dbg !940
  %length = getelementptr inbounds %struct.property, %struct.property* %9, i32 0, i32 1, !dbg !941
  %10 = load i32, i32* %length, align 8, !dbg !941
  %conv = sext i32 %10 to i64, !dbg !940
  %call = call i64 @memory_read_from_buffer(i8* %5, i64 %6, i64* %offset.addr, i8* %8, i64 %conv) #4, !dbg !942
  ret i64 %call, !dbg !943
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_bin_file(%struct.kobject*, %struct.bin_attribute*) #2

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @__of_sysfs_remove_bin_file(%struct.device_node* %np, %struct.property* %prop) #0 !dbg !944 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop.addr = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !947, metadata !DIExpression()), !dbg !948
  store %struct.property* %prop, %struct.property** %prop.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property** %prop.addr, metadata !949, metadata !DIExpression()), !dbg !950
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !951
  %kobj = getelementptr inbounds %struct.device_node, %struct.device_node* %0, i32 0, i32 9, !dbg !952
  %1 = load %struct.property*, %struct.property** %prop.addr, align 8, !dbg !953
  %attr = getelementptr inbounds %struct.property, %struct.property* %1, i32 0, i32 4, !dbg !954
  call void @sysfs_remove_bin_file(%struct.kobject* %kobj, %struct.bin_attribute* %attr) #4, !dbg !955
  %2 = load %struct.property*, %struct.property** %prop.addr, align 8, !dbg !956
  %attr1 = getelementptr inbounds %struct.property, %struct.property* %2, i32 0, i32 4, !dbg !957
  %attr2 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr1, i32 0, i32 0, !dbg !958
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr2, i32 0, i32 0, !dbg !959
  %3 = load i8*, i8** %name, align 8, !dbg !959
  call void @kfree(i8* %3) #4, !dbg !960
  ret void, !dbg !961
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_bin_file(%struct.kobject*, %struct.bin_attribute*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @__of_remove_property_sysfs(%struct.device_node* %np, %struct.property* %prop) #0 !dbg !962 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop.addr = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !963, metadata !DIExpression()), !dbg !964
  store %struct.property* %prop, %struct.property** %prop.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property** %prop.addr, metadata !965, metadata !DIExpression()), !dbg !966
  %0 = load %struct.kset*, %struct.kset** @of_kset, align 8, !dbg !967
  %tobool = icmp ne %struct.kset* %0, null, !dbg !967
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !969

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !970
  %call = call i32 @of_node_is_attached(%struct.device_node* %1) #4, !dbg !971
  %tobool1 = icmp ne i32 %call, 0, !dbg !971
  br i1 %tobool1, label %if.then, label %if.end, !dbg !972

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !973
  %3 = load %struct.property*, %struct.property** %prop.addr, align 8, !dbg !974
  call void @__of_sysfs_remove_bin_file(%struct.device_node* %2, %struct.property* %3) #4, !dbg !975
  br label %if.end, !dbg !975

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !976
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @__of_update_property_sysfs(%struct.device_node* %np, %struct.property* %newprop, %struct.property* %oldprop) #0 !dbg !977 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %newprop.addr = alloca %struct.property*, align 8
  %oldprop.addr = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !980, metadata !DIExpression()), !dbg !981
  store %struct.property* %newprop, %struct.property** %newprop.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property** %newprop.addr, metadata !982, metadata !DIExpression()), !dbg !983
  store %struct.property* %oldprop, %struct.property** %oldprop.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property** %oldprop.addr, metadata !984, metadata !DIExpression()), !dbg !985
  %0 = load %struct.kset*, %struct.kset** @of_kset, align 8, !dbg !986
  %tobool = icmp ne %struct.kset* %0, null, !dbg !986
  br i1 %tobool, label %if.end, label %if.then, !dbg !988

if.then:                                          ; preds = %entry
  br label %return, !dbg !989

if.end:                                           ; preds = %entry
  %1 = load %struct.property*, %struct.property** %oldprop.addr, align 8, !dbg !990
  %tobool1 = icmp ne %struct.property* %1, null, !dbg !990
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !992

if.then2:                                         ; preds = %if.end
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !993
  %3 = load %struct.property*, %struct.property** %oldprop.addr, align 8, !dbg !994
  call void @__of_sysfs_remove_bin_file(%struct.device_node* %2, %struct.property* %3) #4, !dbg !995
  br label %if.end3, !dbg !995

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !996
  %5 = load %struct.property*, %struct.property** %newprop.addr, align 8, !dbg !997
  %call = call i32 @__of_add_property_sysfs(%struct.device_node* %4, %struct.property* %5) #4, !dbg !998
  br label %return, !dbg !999

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !999
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__of_attach_node_sysfs(%struct.device_node* %np) #0 !dbg !1000 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %name = alloca i8*, align 8
  %parent = alloca %struct.kobject*, align 8
  %pp = alloca %struct.property*, align 8
  %rc = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !1001, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.declare(metadata i8** %name, metadata !1003, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.declare(metadata %struct.kobject** %parent, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.declare(metadata %struct.property** %pp, metadata !1007, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !1009, metadata !DIExpression()), !dbg !1010
  %0 = load %struct.kset*, %struct.kset** @of_kset, align 8, !dbg !1011
  %tobool = icmp ne %struct.kset* %0, null, !dbg !1011
  br i1 %tobool, label %if.end, label %if.then, !dbg !1013

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1014
  br label %return, !dbg !1014

if.end:                                           ; preds = %entry
  %1 = load %struct.kset*, %struct.kset** @of_kset, align 8, !dbg !1015
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1016
  %kobj = getelementptr inbounds %struct.device_node, %struct.device_node* %2, i32 0, i32 9, !dbg !1017
  %kset = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i32 0, i32 3, !dbg !1018
  store %struct.kset* %1, %struct.kset** %kset, align 8, !dbg !1019
  %3 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1020
  %parent1 = getelementptr inbounds %struct.device_node, %struct.device_node* %3, i32 0, i32 6, !dbg !1022
  %4 = load %struct.device_node*, %struct.device_node** %parent1, align 8, !dbg !1022
  %tobool2 = icmp ne %struct.device_node* %4, null, !dbg !1020
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !1023

if.then3:                                         ; preds = %if.end
  %5 = load %struct.kset*, %struct.kset** @of_kset, align 8, !dbg !1024
  %kobj4 = getelementptr inbounds %struct.kset, %struct.kset* %5, i32 0, i32 2, !dbg !1026
  %call = call i8* @safe_name(%struct.kobject* %kobj4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !1027
  store i8* %call, i8** %name, align 8, !dbg !1028
  store %struct.kobject* null, %struct.kobject** %parent, align 8, !dbg !1029
  br label %if.end11, !dbg !1030

if.else:                                          ; preds = %if.end
  %6 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1031
  %parent5 = getelementptr inbounds %struct.device_node, %struct.device_node* %6, i32 0, i32 6, !dbg !1033
  %7 = load %struct.device_node*, %struct.device_node** %parent5, align 8, !dbg !1033
  %kobj6 = getelementptr inbounds %struct.device_node, %struct.device_node* %7, i32 0, i32 9, !dbg !1034
  %8 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1035
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %8, i32 0, i32 2, !dbg !1036
  %9 = load i8*, i8** %full_name, align 8, !dbg !1036
  %call7 = call i8* @kbasename(i8* %9) #4, !dbg !1037
  %call8 = call i8* @safe_name(%struct.kobject* %kobj6, i8* %call7) #4, !dbg !1038
  store i8* %call8, i8** %name, align 8, !dbg !1039
  %10 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1040
  %parent9 = getelementptr inbounds %struct.device_node, %struct.device_node* %10, i32 0, i32 6, !dbg !1041
  %11 = load %struct.device_node*, %struct.device_node** %parent9, align 8, !dbg !1041
  %kobj10 = getelementptr inbounds %struct.device_node, %struct.device_node* %11, i32 0, i32 9, !dbg !1042
  store %struct.kobject* %kobj10, %struct.kobject** %parent, align 8, !dbg !1043
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then3
  %12 = load i8*, i8** %name, align 8, !dbg !1044
  %tobool12 = icmp ne i8* %12, null, !dbg !1044
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1046

if.then13:                                        ; preds = %if.end11
  store i32 -12, i32* %retval, align 4, !dbg !1047
  br label %return, !dbg !1047

if.end14:                                         ; preds = %if.end11
  %13 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1048
  %kobj15 = getelementptr inbounds %struct.device_node, %struct.device_node* %13, i32 0, i32 9, !dbg !1049
  %14 = load %struct.kobject*, %struct.kobject** %parent, align 8, !dbg !1050
  %15 = load i8*, i8** %name, align 8, !dbg !1051
  %call16 = call i32 (%struct.kobject*, %struct.kobject*, i8*, ...) @kobject_add(%struct.kobject* %kobj15, %struct.kobject* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %15) #4, !dbg !1052
  store i32 %call16, i32* %rc, align 4, !dbg !1053
  %16 = load i8*, i8** %name, align 8, !dbg !1054
  call void @kfree(i8* %16) #4, !dbg !1055
  %17 = load i32, i32* %rc, align 4, !dbg !1056
  %tobool17 = icmp ne i32 %17, 0, !dbg !1056
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !1058

if.then18:                                        ; preds = %if.end14
  %18 = load i32, i32* %rc, align 4, !dbg !1059
  store i32 %18, i32* %retval, align 4, !dbg !1060
  br label %return, !dbg !1060

if.end19:                                         ; preds = %if.end14
  %19 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1061
  %properties = getelementptr inbounds %struct.device_node, %struct.device_node* %19, i32 0, i32 4, !dbg !1061
  %20 = load %struct.property*, %struct.property** %properties, align 8, !dbg !1061
  store %struct.property* %20, %struct.property** %pp, align 8, !dbg !1061
  br label %for.cond, !dbg !1061

for.cond:                                         ; preds = %for.inc, %if.end19
  %21 = load %struct.property*, %struct.property** %pp, align 8, !dbg !1063
  %cmp = icmp ne %struct.property* %21, null, !dbg !1063
  br i1 %cmp, label %for.body, label %for.end, !dbg !1061

for.body:                                         ; preds = %for.cond
  %22 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1065
  %23 = load %struct.property*, %struct.property** %pp, align 8, !dbg !1066
  %call20 = call i32 @__of_add_property_sysfs(%struct.device_node* %22, %struct.property* %23) #4, !dbg !1067
  br label %for.inc, !dbg !1067

for.inc:                                          ; preds = %for.body
  %24 = load %struct.property*, %struct.property** %pp, align 8, !dbg !1063
  %next = getelementptr inbounds %struct.property, %struct.property* %24, i32 0, i32 3, !dbg !1063
  %25 = load %struct.property*, %struct.property** %next, align 8, !dbg !1063
  store %struct.property* %25, %struct.property** %pp, align 8, !dbg !1063
  br label %for.cond, !dbg !1063, !llvm.loop !1068

for.end:                                          ; preds = %for.cond
  %26 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1070
  %call21 = call %struct.device_node* @of_node_get(%struct.device_node* %26) #4, !dbg !1071
  store i32 0, i32* %retval, align 4, !dbg !1072
  br label %return, !dbg !1072

return:                                           ; preds = %for.end, %if.then18, %if.then13, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !1073
  ret i32 %27, !dbg !1073
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kbasename(i8* %path) #0 !dbg !1074 {
entry:
  %path.addr = alloca i8*, align 8
  %tail = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !1078, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.declare(metadata i8** %tail, metadata !1080, metadata !DIExpression()), !dbg !1081
  %0 = load i8*, i8** %path.addr, align 8, !dbg !1082
  %call = call i8* @strrchr(i8* %0, i32 47) #4, !dbg !1083
  store i8* %call, i8** %tail, align 8, !dbg !1081
  %1 = load i8*, i8** %tail, align 8, !dbg !1084
  %tobool = icmp ne i8* %1, null, !dbg !1084
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1084

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %tail, align 8, !dbg !1085
  %add.ptr = getelementptr i8, i8* %2, i64 1, !dbg !1086
  br label %cond.end, !dbg !1084

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %path.addr, align 8, !dbg !1087
  br label %cond.end, !dbg !1084

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ], !dbg !1084
  ret i8* %cond, !dbg !1088
}

; Function Attrs: noredzone
declare dso_local i32 @kobject_add(%struct.kobject*, %struct.kobject*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @of_node_get(%struct.device_node* %node) #0 !dbg !1089 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !1092, metadata !DIExpression()), !dbg !1093
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !1094
  ret %struct.device_node* %0, !dbg !1095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @__of_detach_node_sysfs(%struct.device_node* %np) #0 !dbg !1096 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %pp = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !1099, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.declare(metadata %struct.property** %pp, metadata !1101, metadata !DIExpression()), !dbg !1102
  br label %do.body, !dbg !1103

do.body:                                          ; preds = %entry
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1104
  %call = call i32 @of_node_is_initialized(%struct.device_node* %0) #4, !dbg !1104
  %tobool = icmp ne i32 %call, 0, !dbg !1104
  %lnot = xor i1 %tobool, true, !dbg !1104
  %lnot1 = xor i1 %lnot, true, !dbg !1104
  %lnot2 = xor i1 %lnot1, true, !dbg !1104
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1104
  %conv = sext i32 %lnot.ext to i64, !dbg !1104
  %tobool3 = icmp ne i64 %conv, 0, !dbg !1104
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1107

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !1104

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !1108

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !1110

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !1108

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 153, i32 0, i64 12) #5, !dbg !1112, !srcloc !1114
  br label %do.end7, !dbg !1112

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1108

do.body8:                                         ; preds = %do.end7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 104) #5, !dbg !1115, !srcloc !1118
  unreachable, !dbg !1119

do.end9:                                          ; No predecessors!
  br label %do.end10, !dbg !1108

do.end10:                                         ; preds = %do.end9
  br label %if.end, !dbg !1108

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.end11, !dbg !1107

do.end11:                                         ; preds = %if.end
  %1 = load %struct.kset*, %struct.kset** @of_kset, align 8, !dbg !1120
  %tobool12 = icmp ne %struct.kset* %1, null, !dbg !1120
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1122

if.then13:                                        ; preds = %do.end11
  br label %return, !dbg !1123

if.end14:                                         ; preds = %do.end11
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1124
  %call15 = call i32 @of_node_is_attached(%struct.device_node* %2) #4, !dbg !1126
  %tobool16 = icmp ne i32 %call15, 0, !dbg !1126
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !1127

if.then17:                                        ; preds = %if.end14
  %3 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1128
  %properties = getelementptr inbounds %struct.device_node, %struct.device_node* %3, i32 0, i32 4, !dbg !1128
  %4 = load %struct.property*, %struct.property** %properties, align 8, !dbg !1128
  store %struct.property* %4, %struct.property** %pp, align 8, !dbg !1128
  br label %for.cond, !dbg !1128

for.cond:                                         ; preds = %for.inc, %if.then17
  %5 = load %struct.property*, %struct.property** %pp, align 8, !dbg !1131
  %cmp = icmp ne %struct.property* %5, null, !dbg !1131
  br i1 %cmp, label %for.body, label %for.end, !dbg !1128

for.body:                                         ; preds = %for.cond
  %6 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1133
  %7 = load %struct.property*, %struct.property** %pp, align 8, !dbg !1134
  call void @__of_sysfs_remove_bin_file(%struct.device_node* %6, %struct.property* %7) #4, !dbg !1135
  br label %for.inc, !dbg !1135

for.inc:                                          ; preds = %for.body
  %8 = load %struct.property*, %struct.property** %pp, align 8, !dbg !1131
  %next = getelementptr inbounds %struct.property, %struct.property* %8, i32 0, i32 3, !dbg !1131
  %9 = load %struct.property*, %struct.property** %next, align 8, !dbg !1131
  store %struct.property* %9, %struct.property** %pp, align 8, !dbg !1131
  br label %for.cond, !dbg !1131, !llvm.loop !1136

for.end:                                          ; preds = %for.cond
  %10 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1138
  %kobj = getelementptr inbounds %struct.device_node, %struct.device_node* %10, i32 0, i32 9, !dbg !1139
  call void @kobject_del(%struct.kobject* %kobj) #4, !dbg !1140
  br label %if.end19, !dbg !1141

if.end19:                                         ; preds = %for.end, %if.end14
  %11 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1142
  call void @of_node_put(%struct.device_node* %11) #4, !dbg !1143
  br label %return, !dbg !1144

return:                                           ; preds = %if.end19, %if.then13
  ret void, !dbg !1144
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_node_is_initialized(%struct.device_node* %node) #0 !dbg !1145 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !1146, metadata !DIExpression()), !dbg !1147
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !1148
  %tobool = icmp ne %struct.device_node* %0, null, !dbg !1148
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1149

land.rhs:                                         ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !1150
  %kobj = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i32 0, i32 9, !dbg !1151
  %state_initialized = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i32 0, i32 7, !dbg !1152
  %bf.load = load i8, i8* %state_initialized, align 4, !dbg !1152
  %bf.clear = and i8 %bf.load, 1, !dbg !1152
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1152
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !1149
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !1153
  %land.ext = zext i1 %2 to i32, !dbg !1149
  ret i32 %land.ext, !dbg !1154
}

; Function Attrs: noredzone
declare dso_local void @kobject_del(%struct.kobject*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !1155 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !1156, metadata !DIExpression()), !dbg !1157
  ret void, !dbg !1158
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.kernfs_node* @sysfs_get_dirent(%struct.kernfs_node* %parent, i8* %name) #0 !dbg !1159 {
entry:
  %parent.addr = alloca %struct.kernfs_node*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.kernfs_node* %parent, %struct.kernfs_node** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kernfs_node** %parent.addr, metadata !1162, metadata !DIExpression()), !dbg !1163
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !1164, metadata !DIExpression()), !dbg !1165
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent.addr, align 8, !dbg !1166
  %1 = load i8*, i8** %name.addr, align 8, !dbg !1167
  %call = call %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* %0, i8* %1) #4, !dbg !1168
  ret %struct.kernfs_node* %call, !dbg !1169
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sysfs_put(%struct.kernfs_node* %kn) #0 !dbg !1170 {
entry:
  %kn.addr = alloca %struct.kernfs_node*, align 8
  store %struct.kernfs_node* %kn, %struct.kernfs_node** %kn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kernfs_node** %kn.addr, metadata !1173, metadata !DIExpression()), !dbg !1174
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %kn.addr, align 8, !dbg !1175
  call void @kernfs_put(%struct.kernfs_node* %0) #4, !dbg !1176
  ret void, !dbg !1177
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kstrdup(i8*, i32) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !1178 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !1183, metadata !DIExpression()), !dbg !1184
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !1185
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !1186
  %1 = load i8*, i8** %name, align 8, !dbg !1186
  ret i8* %1, !dbg !1187
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* %kn, i8* %name) #0 !dbg !1188 {
entry:
  %kn.addr = alloca %struct.kernfs_node*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.kernfs_node* %kn, %struct.kernfs_node** %kn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kernfs_node** %kn.addr, metadata !1189, metadata !DIExpression()), !dbg !1190
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !1191, metadata !DIExpression()), !dbg !1192
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %kn.addr, align 8, !dbg !1193
  %1 = load i8*, i8** %name.addr, align 8, !dbg !1194
  %call = call %struct.kernfs_node* @kernfs_find_and_get_ns(%struct.kernfs_node* %0, i8* %1, i8* null) #4, !dbg !1195
  ret %struct.kernfs_node* %call, !dbg !1196
}

; Function Attrs: noredzone
declare dso_local %struct.kernfs_node* @kernfs_find_and_get_ns(%struct.kernfs_node*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @kernfs_put(%struct.kernfs_node*) #2

; Function Attrs: noredzone
declare dso_local i64 @memory_read_from_buffer(i8*, i64, i64*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i8* @strrchr(i8*, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }
attributes #5 = { nounwind }
attributes #6 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!648, !649, !650, !651}
!llvm.ident = !{!652}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "of_node_ktype", scope: !2, file: !3, line: 27, type: !131, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !647, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/of/kobj.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!12 = !{!13, !14, !16}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !15, line: 148, baseType: !7)
!15 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !18, line: 31, size: 704, elements: !19)
!18 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !23, !25, !26, !27}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !17, file: !18, line: 32, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !17, file: !18, line: 33, baseType: !24, size: 32, offset: 64)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !17, file: !18, line: 34, baseType: !13, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !17, file: !18, line: 35, baseType: !16, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !17, file: !18, line: 43, baseType: !28, size: 448, offset: 256)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !29, line: 168, size: 448, elements: !30)
!29 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !40, !46, !47, !642, !643}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !28, file: !29, line: 169, baseType: !32, size: 128)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !29, line: 30, size: 128, elements: !33)
!33 = !{!34, !37}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !32, file: !29, line: 31, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !32, file: !29, line: 32, baseType: !38, size: 16, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !15, line: 19, baseType: !39)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !28, file: !29, line: 170, baseType: !41, size: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 55, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !43, line: 72, baseType: !44)
!43 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !43, line: 16, baseType: !45)
!45 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !28, file: !29, line: 171, baseType: !13, size: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !28, file: !29, line: 172, baseType: !48, size: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !55, !58, !168, !21, !387, !41}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !15, line: 60, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !43, line: 73, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !43, line: 15, baseType: !54)
!54 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !57, line: 526, flags: DIFlagFwdDecl)
!57 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !60, line: 64, size: 512, elements: !61)
!60 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !69, !70, !129, !230, !627, !637, !638, !639, !640, !641}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !59, file: !60, line: 65, baseType: !35, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !59, file: !60, line: 66, baseType: !64, size: 128, offset: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !15, line: 178, size: 128, elements: !65)
!65 = !{!66, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !64, file: !15, line: 179, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !64, file: !15, line: 179, baseType: !67, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !59, file: !60, line: 67, baseType: !58, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !59, file: !60, line: 68, baseType: !71, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !60, line: 192, size: 704, elements: !73)
!73 = !{!74, !75, !91, !92}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !72, file: !60, line: 193, baseType: !64, size: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !72, file: !60, line: 194, baseType: !76, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !77, line: 83, baseType: !78)
!77 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !77, line: 71, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, scope: !78, file: !77, line: 72, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !78, file: !77, line: 72, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !81, file: !77, line: 73, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !77, line: 20, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !84, file: !77, line: 21, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !88, line: 25, baseType: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 25, elements: !90)
!90 = !{}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !72, file: !60, line: 195, baseType: !59, size: 512, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !72, file: !60, line: 196, baseType: !93, size: 64, offset: 640)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !60, line: 156, size: 192, elements: !96)
!96 = !{!97, !102, !107}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !95, file: !60, line: 157, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!24, !71, !58}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !95, file: !60, line: 158, baseType: !103, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!35, !71, !58}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !95, file: !60, line: 159, baseType: !108, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!24, !71, !58, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !60, line: 148, size: 20736, elements: !114)
!114 = !{!115, !119, !123, !124, !128}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !113, file: !60, line: 149, baseType: !116, size: 192)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 3)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !113, file: !60, line: 150, baseType: !120, size: 4096, offset: 192)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 4096, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !113, file: !60, line: 151, baseType: !24, size: 32, offset: 4288)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !113, file: !60, line: 152, baseType: !125, size: 16384, offset: 4320)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 16384, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 2048)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !113, file: !60, line: 153, baseType: !24, size: 32, offset: 20704)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !59, file: !60, line: 69, baseType: !130, size: 64, offset: 320)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !60, line: 138, size: 448, elements: !132)
!132 = !{!133, !137, !151, !153, !172, !207, !211}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !131, file: !60, line: 139, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !58}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !131, file: !60, line: 140, baseType: !138, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !29, line: 230, size: 128, elements: !141)
!141 = !{!142, !147}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !140, file: !29, line: 231, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!51, !58, !146, !21}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !140, file: !29, line: 232, baseType: !148, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!51, !58, !146, !35, !41}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !131, file: !60, line: 141, baseType: !152, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !131, file: !60, line: 142, baseType: !154, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !29, line: 84, size: 320, elements: !158)
!158 = !{!159, !160, !164, !169, !170}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !157, file: !29, line: 85, baseType: !35, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !157, file: !29, line: 86, baseType: !161, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!38, !58, !146, !24}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !157, file: !29, line: 88, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!38, !58, !168, !24}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !157, file: !29, line: 90, baseType: !152, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !157, file: !29, line: 91, baseType: !171, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !131, file: !60, line: 143, baseType: !173, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !58}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !179)
!179 = !{!180, !181, !187, !191, !199, !203}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !178, file: !6, line: 40, baseType: !5, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !178, file: !6, line: 41, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !15, line: 30, baseType: !186)
!186 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !178, file: !6, line: 42, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!13}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !178, file: !6, line: 43, baseType: !192, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!195, !197}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !178, file: !6, line: 44, baseType: !200, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!195}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !178, file: !6, line: 45, baseType: !204, size: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !13}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !131, file: !60, line: 144, baseType: !208, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!195, !58}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !131, file: !60, line: 145, baseType: !212, size: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !58, !215, !223}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !217, line: 23, baseType: !218)
!217 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 21, size: 32, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !218, file: !217, line: 22, baseType: !221, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !15, line: 32, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !43, line: 49, baseType: !7)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !217, line: 28, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 26, size: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !225, file: !217, line: 27, baseType: !228, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !15, line: 33, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !43, line: 50, baseType: !7)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !59, file: !60, line: 70, baseType: !231, size: 64, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !233, line: 123, size: 1024, elements: !234)
!233 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!234 = !{!235, !240, !241, !242, !243, !251, !252, !253, !620, !621, !622, !623, !624}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !232, file: !233, line: 124, baseType: !236, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !15, line: 168, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 166, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !237, file: !15, line: 167, baseType: !24, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !232, file: !233, line: 125, baseType: !236, size: 32, offset: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !232, file: !233, line: 135, baseType: !231, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !232, file: !233, line: 136, baseType: !35, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !232, file: !233, line: 138, baseType: !244, size: 192, align: 64, offset: 192)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !245, line: 24, size: 192, align: 64, elements: !246)
!245 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!246 = !{!247, !248, !250}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !244, file: !245, line: 25, baseType: !45, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !244, file: !245, line: 26, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !244, file: !245, line: 27, baseType: !249, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !232, file: !233, line: 140, baseType: !195, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !232, file: !233, line: 141, baseType: !7, size: 32, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !233, line: 142, baseType: !254, size: 256, offset: 512)
!254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !233, line: 142, size: 256, elements: !255)
!255 = !{!256, !323, !327}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !254, file: !233, line: 143, baseType: !257, size: 192)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !233, line: 91, size: 192, elements: !258)
!258 = !{!259, !260, !264}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !257, file: !233, line: 92, baseType: !45, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !257, file: !233, line: 94, baseType: !261, size: 64, offset: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !245, line: 31, size: 64, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !261, file: !245, line: 32, baseType: !249, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !257, file: !233, line: 100, baseType: !265, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !233, line: 180, size: 704, elements: !267)
!267 = !{!268, !269, !270, !283, !288, !289, !315, !316}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !266, file: !233, line: 182, baseType: !231, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !233, line: 183, baseType: !7, size: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !266, file: !233, line: 186, baseType: !271, size: 192, offset: 128)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !272, line: 19, size: 192, elements: !273)
!272 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!273 = !{!274, !281, !282}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !271, file: !272, line: 20, baseType: !275, size: 128)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !276, line: 292, size: 128, elements: !277)
!276 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!277 = !{!278, !279, !280}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !275, file: !276, line: 293, baseType: !76)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !275, file: !276, line: 295, baseType: !14, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !275, file: !276, line: 296, baseType: !13, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !271, file: !272, line: 21, baseType: !7, size: 32, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !271, file: !272, line: 22, baseType: !7, size: 32, offset: 160)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !266, file: !233, line: 187, baseType: !284, size: 32, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !285, line: 21, baseType: !286)
!285 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !287, line: 27, baseType: !7)
!287 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!288 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !266, file: !233, line: 188, baseType: !284, size: 32, offset: 352)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !266, file: !233, line: 189, baseType: !290, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !233, line: 168, size: 320, elements: !292)
!292 = !{!293, !299, !303, !307, !311}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !291, file: !233, line: 169, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!24, !297, !265}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !57, line: 539, flags: DIFlagFwdDecl)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !291, file: !233, line: 171, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!24, !231, !35, !38}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !291, file: !233, line: 173, baseType: !304, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!24, !231}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !291, file: !233, line: 174, baseType: !308, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!24, !231, !231, !35}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !291, file: !233, line: 176, baseType: !312, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!24, !297, !231, !265}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !266, file: !233, line: 192, baseType: !64, size: 128, offset: 448)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !266, file: !233, line: 194, baseType: !317, size: 128, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !318, line: 40, baseType: !319)
!318 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !318, line: 36, size: 128, elements: !320)
!320 = !{!321, !322}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !319, file: !318, line: 37, baseType: !76)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !319, file: !318, line: 38, baseType: !64, size: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !254, file: !233, line: 144, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !233, line: 103, size: 64, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !324, file: !233, line: 104, baseType: !231, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !254, file: !233, line: 145, baseType: !328, size: 256)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !233, line: 107, size: 256, elements: !329)
!329 = !{!330, !615, !618, !619}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !328, file: !233, line: 108, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !233, line: 217, size: 768, elements: !334)
!334 = !{!335, !374, !378, !382, !389, !393, !397, !401, !402, !403, !404, !412}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !333, file: !233, line: 222, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!24, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !233, line: 197, size: 1088, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !362, !363, !364, !365, !366, !367, !368, !369}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !340, file: !233, line: 199, baseType: !231, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !340, file: !233, line: 200, baseType: !55, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !340, file: !233, line: 201, baseType: !297, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !340, file: !233, line: 202, baseType: !13, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !340, file: !233, line: 205, baseType: !347, size: 192, offset: 256)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !348, line: 53, size: 192, elements: !349)
!348 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!349 = !{!350, !360, !361}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !347, file: !348, line: 54, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !352, line: 13, baseType: !353)
!352 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !15, line: 175, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 173, size: 64, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !354, file: !15, line: 174, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !285, line: 22, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !287, line: 30, baseType: !359)
!359 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !347, file: !348, line: 55, baseType: !76, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !347, file: !348, line: 59, baseType: !64, size: 128, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !340, file: !233, line: 206, baseType: !347, size: 192, offset: 448)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !340, file: !233, line: 207, baseType: !24, size: 32, offset: 640)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !340, file: !233, line: 208, baseType: !64, size: 128, offset: 704)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !340, file: !233, line: 209, baseType: !21, size: 64, offset: 832)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !340, file: !233, line: 211, baseType: !41, size: 64, offset: 896)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !340, file: !233, line: 212, baseType: !185, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !340, file: !233, line: 213, baseType: !185, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !340, file: !233, line: 214, baseType: !370, size: 64, offset: 1024)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !373, line: 356, flags: DIFlagFwdDecl)
!373 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!374 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !333, file: !233, line: 223, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !339}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !333, file: !233, line: 236, baseType: !379, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!24, !297, !13}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !333, file: !233, line: 238, baseType: !383, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!13, !297, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !15, line: 46, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !43, line: 88, baseType: !359)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !333, file: !233, line: 239, baseType: !390, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!13, !297, !13, !386}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !333, file: !233, line: 240, baseType: !394, size: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !297, !13}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !333, file: !233, line: 242, baseType: !398, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!51, !339, !21, !41, !387}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !333, file: !233, line: 252, baseType: !41, size: 64, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !333, file: !233, line: 259, baseType: !185, size: 8, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !333, file: !233, line: 260, baseType: !398, size: 64, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !333, file: !233, line: 263, baseType: !405, size: 64, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!408, !339, !410}
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !409, line: 52, baseType: !7)
!409 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !233, line: 27, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !333, file: !233, line: 266, baseType: !413, size: 64, offset: 704)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!24, !339, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !373, line: 305, size: 1472, elements: !418)
!418 = !{!419, !420, !421, !422, !423, !424, !425, !592, !598, !599, !604, !605, !608, !609, !610, !611, !612, !613}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !417, file: !373, line: 308, baseType: !45, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !417, file: !373, line: 309, baseType: !45, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !417, file: !373, line: 313, baseType: !416, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !417, file: !373, line: 313, baseType: !416, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !417, file: !373, line: 315, baseType: !244, size: 192, align: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !417, file: !373, line: 323, baseType: !45, size: 64, offset: 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !417, file: !373, line: 327, baseType: !426, size: 64, offset: 512)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !373, line: 388, size: 7296, elements: !428)
!428 = !{!429, !588}
!429 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !373, line: 389, baseType: !430, size: 7296)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !373, line: 389, size: 7296, elements: !431)
!431 = !{!432, !433, !434, !438, !442, !443, !444, !445, !446, !454, !455, !456, !457, !458, !459, !460, !461, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !496, !504, !507, !533, !534, !559, !560, !563, !566, !567, !570, !571, !572, !575, !587}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !430, file: !373, line: 390, baseType: !416, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !430, file: !373, line: 391, baseType: !261, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !430, file: !373, line: 392, baseType: !435, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !285, line: 23, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !287, line: 31, baseType: !437)
!437 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !430, file: !373, line: 394, baseType: !439, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!45, !55, !45, !45, !45, !45}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !430, file: !373, line: 398, baseType: !45, size: 64, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !430, file: !373, line: 399, baseType: !45, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !430, file: !373, line: 405, baseType: !45, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !430, file: !373, line: 406, baseType: !45, size: 64, offset: 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !430, file: !373, line: 407, baseType: !447, size: 64, offset: 512)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !57, line: 286, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 286, size: 64, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !449, file: !57, line: 286, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !453, line: 18, baseType: !45)
!453 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!454 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !430, file: !373, line: 416, baseType: !236, size: 32, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !430, file: !373, line: 428, baseType: !236, size: 32, offset: 608)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !430, file: !373, line: 437, baseType: !236, size: 32, offset: 640)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !430, file: !373, line: 447, baseType: !236, size: 32, offset: 672)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !430, file: !373, line: 450, baseType: !351, size: 64, offset: 704)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !430, file: !373, line: 452, baseType: !24, size: 32, offset: 768)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !430, file: !373, line: 454, baseType: !76, offset: 800)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !430, file: !373, line: 457, baseType: !462, size: 256, offset: 832)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !463, line: 35, size: 256, elements: !464)
!463 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!464 = !{!465, !466, !467, !469}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !462, file: !463, line: 36, baseType: !351, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !462, file: !463, line: 42, baseType: !351, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !462, file: !463, line: 46, baseType: !468, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !77, line: 29, baseType: !84)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !462, file: !463, line: 47, baseType: !64, size: 128, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !430, file: !373, line: 459, baseType: !64, size: 128, offset: 1088)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !430, file: !373, line: 466, baseType: !45, size: 64, offset: 1216)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !430, file: !373, line: 467, baseType: !45, size: 64, offset: 1280)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !430, file: !373, line: 469, baseType: !45, size: 64, offset: 1344)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !430, file: !373, line: 470, baseType: !45, size: 64, offset: 1408)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !430, file: !373, line: 471, baseType: !353, size: 64, offset: 1472)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !430, file: !373, line: 472, baseType: !45, size: 64, offset: 1536)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !430, file: !373, line: 473, baseType: !45, size: 64, offset: 1600)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !430, file: !373, line: 474, baseType: !45, size: 64, offset: 1664)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !430, file: !373, line: 475, baseType: !45, size: 64, offset: 1728)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !430, file: !373, line: 477, baseType: !76, offset: 1792)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !430, file: !373, line: 478, baseType: !45, size: 64, offset: 1792)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !430, file: !373, line: 478, baseType: !45, size: 64, offset: 1856)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !430, file: !373, line: 478, baseType: !45, size: 64, offset: 1920)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !430, file: !373, line: 478, baseType: !45, size: 64, offset: 1984)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !430, file: !373, line: 479, baseType: !45, size: 64, offset: 2048)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !430, file: !373, line: 479, baseType: !45, size: 64, offset: 2112)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !430, file: !373, line: 479, baseType: !45, size: 64, offset: 2176)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !430, file: !373, line: 480, baseType: !45, size: 64, offset: 2240)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !430, file: !373, line: 480, baseType: !45, size: 64, offset: 2304)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !430, file: !373, line: 480, baseType: !45, size: 64, offset: 2368)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !430, file: !373, line: 480, baseType: !45, size: 64, offset: 2432)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !430, file: !373, line: 482, baseType: !493, size: 2816, offset: 2496)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2816, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 44)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !430, file: !373, line: 488, baseType: !497, size: 256, offset: 5312)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !498, line: 60, size: 256, elements: !499)
!498 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !497, file: !498, line: 61, baseType: !501, size: 256)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 256, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 4)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !430, file: !373, line: 490, baseType: !505, size: 64, offset: 5568)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !373, line: 490, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !430, file: !373, line: 493, baseType: !508, size: 896, offset: 5632)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !509, line: 53, baseType: !510)
!509 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 13, size: 896, elements: !511)
!511 = !{!512, !513, !514, !515, !518, !519, !520, !521, !525, !526, !529}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !510, file: !509, line: 18, baseType: !435, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !510, file: !509, line: 28, baseType: !353, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !510, file: !509, line: 31, baseType: !462, size: 256, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !510, file: !509, line: 32, baseType: !516, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !509, line: 32, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !510, file: !509, line: 37, baseType: !39, size: 16, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !510, file: !509, line: 40, baseType: !347, size: 192, offset: 512)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !510, file: !509, line: 41, baseType: !13, size: 64, offset: 704)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !510, file: !509, line: 42, baseType: !522, size: 64, offset: 768)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !509, line: 42, flags: DIFlagFwdDecl)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !510, file: !509, line: 44, baseType: !236, size: 32, offset: 832)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !510, file: !509, line: 50, baseType: !527, size: 16, offset: 864)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !285, line: 19, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !287, line: 24, baseType: !39)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !510, file: !509, line: 51, baseType: !530, size: 16, offset: 880)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !285, line: 18, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !287, line: 23, baseType: !532)
!532 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !430, file: !373, line: 495, baseType: !45, size: 64, offset: 6528)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !430, file: !373, line: 497, baseType: !535, size: 64, offset: 6592)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !373, line: 381, size: 384, elements: !537)
!537 = !{!538, !539, !548}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !536, file: !373, line: 382, baseType: !236, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !536, file: !373, line: 383, baseType: !540, size: 128, offset: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !373, line: 376, size: 128, elements: !541)
!541 = !{!542, !546}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !540, file: !373, line: 377, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !545, line: 9, flags: DIFlagFwdDecl)
!545 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !540, file: !373, line: 378, baseType: !547, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !536, file: !373, line: 384, baseType: !549, size: 192, offset: 192)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !550, line: 26, size: 192, elements: !551)
!550 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !549, file: !550, line: 27, baseType: !7, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !549, file: !550, line: 28, baseType: !554, size: 128, offset: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !555, line: 43, size: 128, elements: !556)
!555 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !554, file: !555, line: 44, baseType: !468)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !554, file: !555, line: 45, baseType: !64, size: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !430, file: !373, line: 500, baseType: !76, offset: 6656)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !430, file: !373, line: 501, baseType: !561, size: 64, offset: 6656)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !373, line: 387, flags: DIFlagFwdDecl)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !430, file: !373, line: 516, baseType: !564, size: 64, offset: 6720)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !373, line: 516, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !430, file: !373, line: 519, baseType: !55, size: 64, offset: 6784)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !430, file: !373, line: 521, baseType: !568, size: 64, offset: 6848)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !373, line: 521, flags: DIFlagFwdDecl)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !430, file: !373, line: 545, baseType: !236, size: 32, offset: 6912)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !430, file: !373, line: 548, baseType: !185, size: 8, offset: 6944)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !430, file: !373, line: 550, baseType: !573, offset: 6952)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !574, line: 142, elements: !90)
!574 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!575 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !430, file: !373, line: 554, baseType: !576, size: 256, offset: 6976)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !577, line: 102, size: 256, elements: !578)
!577 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!578 = !{!579, !580, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !576, file: !577, line: 103, baseType: !351, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !576, file: !577, line: 104, baseType: !64, size: 128, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !576, file: !577, line: 105, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !577, line: 21, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !430, file: !373, line: 557, baseType: !284, size: 32, offset: 7232)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !427, file: !373, line: 565, baseType: !589, offset: 7296)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: -1)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !417, file: !373, line: 333, baseType: !593, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !57, line: 284, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !57, line: 284, size: 64, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !594, file: !57, line: 284, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !453, line: 19, baseType: !45)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !417, file: !373, line: 334, baseType: !45, size: 64, offset: 640)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !417, file: !373, line: 343, baseType: !600, size: 256, offset: 704)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !373, line: 340, size: 256, elements: !601)
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !600, file: !373, line: 341, baseType: !244, size: 192, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !600, file: !373, line: 342, baseType: !45, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !417, file: !373, line: 351, baseType: !64, size: 128, offset: 960)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !417, file: !373, line: 353, baseType: !606, size: 64, offset: 1088)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !373, line: 353, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !417, file: !373, line: 356, baseType: !370, size: 64, offset: 1152)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !417, file: !373, line: 359, baseType: !45, size: 64, offset: 1216)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !417, file: !373, line: 361, baseType: !55, size: 64, offset: 1280)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !417, file: !373, line: 362, baseType: !13, size: 64, offset: 1344)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !417, file: !373, line: 365, baseType: !351, size: 64, offset: 1408)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !417, file: !373, line: 373, baseType: !614, offset: 1472)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !373, line: 296, elements: !90)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !328, file: !233, line: 109, baseType: !616, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !233, line: 31, flags: DIFlagFwdDecl)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !328, file: !233, line: 110, baseType: !387, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !328, file: !233, line: 111, baseType: !231, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !232, file: !233, line: 148, baseType: !13, size: 64, offset: 768)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !232, file: !233, line: 154, baseType: !435, size: 64, offset: 832)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !233, line: 156, baseType: !39, size: 16, offset: 896)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !232, file: !233, line: 157, baseType: !38, size: 16, offset: 912)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !232, file: !233, line: 158, baseType: !625, size: 64, offset: 960)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !233, line: 32, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !59, file: !60, line: 71, baseType: !628, size: 32, offset: 448)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !629, line: 19, size: 32, elements: !630)
!629 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !628, file: !629, line: 20, baseType: !632, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !633, line: 113, baseType: !634)
!633 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !633, line: 111, size: 32, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !634, file: !633, line: 112, baseType: !236, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !59, file: !60, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !59, file: !60, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !59, file: !60, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !59, file: !60, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !59, file: !60, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !28, file: !29, line: 174, baseType: !48, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !28, file: !29, line: 176, baseType: !644, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!24, !55, !58, !168, !416}
!647 = !{!0}
!648 = !{i32 7, !"Dwarf Version", i32 4}
!649 = !{i32 2, !"Debug Info Version", i32 3}
!650 = !{i32 1, !"wchar_size", i32 2}
!651 = !{i32 1, !"Code Model", i32 2}
!652 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!653 = distinct !DISubprogram(name: "of_node_is_attached", scope: !3, file: !3, line: 14, type: !654, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !90)
!654 = !DISubroutineType(types: !655)
!655 = !{!24, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !18, line: 51, size: 1344, elements: !658)
!658 = !{!659, !660, !662, !663, !757, !758, !759, !760, !761, !762, !763, !764}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !657, file: !18, line: 52, baseType: !35, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !657, file: !18, line: 53, baseType: !661, size: 32, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !18, line: 28, baseType: !284)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !657, file: !18, line: 54, baseType: !35, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !657, file: !18, line: 55, baseType: !664, size: 192, offset: 192)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !665, line: 17, size: 192, elements: !666)
!665 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!666 = !{!667, !669, !756}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !664, file: !665, line: 18, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !664, file: !665, line: 19, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !665, line: 110, size: 1152, elements: !673)
!673 = !{!674, !678, !682, !688, !695, !699, !703, !708, !712, !713, !717, !721, !725, !738, !739, !740, !741, !751}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !672, file: !665, line: 111, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!668, !668}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !672, file: !665, line: 112, baseType: !679, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !668}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !672, file: !665, line: 113, baseType: !683, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!185, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !672, file: !665, line: 114, baseType: !689, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!195, !686, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !665, line: 15, flags: DIFlagFwdDecl)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !672, file: !665, line: 116, baseType: !696, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!185, !686, !35}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !672, file: !665, line: 118, baseType: !700, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!24, !686, !35, !7, !13, !41}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !672, file: !665, line: 123, baseType: !704, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!24, !686, !35, !707, !41}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !672, file: !665, line: 126, baseType: !709, size: 64, offset: 448)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!35, !686}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !672, file: !665, line: 127, baseType: !709, size: 64, offset: 512)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !672, file: !665, line: 128, baseType: !714, size: 64, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!668, !686}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !672, file: !665, line: 130, baseType: !718, size: 64, offset: 640)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!668, !686, !668}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !672, file: !665, line: 133, baseType: !722, size: 64, offset: 704)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!668, !686, !35}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !672, file: !665, line: 135, baseType: !726, size: 64, offset: 768)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!24, !686, !35, !35, !7, !7, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !665, line: 43, size: 640, elements: !731)
!731 = !{!732, !733, !734}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !730, file: !665, line: 44, baseType: !668, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !730, file: !665, line: 45, baseType: !7, size: 32, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !730, file: !665, line: 46, baseType: !735, size: 512, offset: 128)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 512, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 8)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !672, file: !665, line: 140, baseType: !718, size: 64, offset: 832)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !672, file: !665, line: 143, baseType: !714, size: 64, offset: 896)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !672, file: !665, line: 145, baseType: !675, size: 64, offset: 960)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !672, file: !665, line: 146, baseType: !742, size: 64, offset: 1024)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!24, !686, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !665, line: 29, size: 128, elements: !747)
!747 = !{!748, !749, !750}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !746, file: !665, line: 30, baseType: !7, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !746, file: !665, line: 31, baseType: !7, size: 32, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !746, file: !665, line: 32, baseType: !686, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !672, file: !665, line: 148, baseType: !752, size: 64, offset: 1088)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!24, !686, !755}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !664, file: !665, line: 20, baseType: !755, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !657, file: !18, line: 57, baseType: !16, size: 64, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !657, file: !18, line: 58, baseType: !16, size: 64, offset: 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !657, file: !18, line: 59, baseType: !656, size: 64, offset: 512)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !657, file: !18, line: 60, baseType: !656, size: 64, offset: 576)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !657, file: !18, line: 61, baseType: !656, size: 64, offset: 640)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !657, file: !18, line: 63, baseType: !59, size: 512, offset: 704)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !657, file: !18, line: 65, baseType: !45, size: 64, offset: 1216)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !657, file: !18, line: 66, baseType: !13, size: 64, offset: 1280)
!765 = !DILocalVariable(name: "node", arg: 1, scope: !653, file: !3, line: 14, type: !656)
!766 = !DILocation(line: 14, column: 45, scope: !653)
!767 = !DILocation(line: 16, column: 9, scope: !653)
!768 = !DILocation(line: 16, column: 14, scope: !653)
!769 = !DILocation(line: 16, column: 17, scope: !653)
!770 = !DILocation(line: 16, column: 23, scope: !653)
!771 = !DILocation(line: 16, column: 28, scope: !653)
!772 = !DILocation(line: 0, scope: !653)
!773 = !DILocation(line: 16, column: 2, scope: !653)
!774 = distinct !DISubprogram(name: "of_node_release", scope: !3, file: !3, line: 21, type: !135, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!775 = !DILocalVariable(name: "kobj", arg: 1, scope: !774, file: !3, line: 21, type: !58)
!776 = !DILocation(line: 21, column: 45, scope: !774)
!777 = !DILocation(line: 24, column: 1, scope: !774)
!778 = distinct !DISubprogram(name: "__of_add_property_sysfs", scope: !3, file: !3, line: 63, type: !779, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !90)
!779 = !DISubroutineType(types: !780)
!780 = !{!24, !656, !16}
!781 = !DILocalVariable(name: "np", arg: 1, scope: !778, file: !3, line: 63, type: !656)
!782 = !DILocation(line: 63, column: 49, scope: !778)
!783 = !DILocalVariable(name: "pp", arg: 2, scope: !778, file: !3, line: 63, type: !16)
!784 = !DILocation(line: 63, column: 70, scope: !778)
!785 = !DILocalVariable(name: "rc", scope: !778, file: !3, line: 65, type: !24)
!786 = !DILocation(line: 65, column: 6, scope: !778)
!787 = !DILocalVariable(name: "secure", scope: !778, file: !3, line: 68, type: !185)
!788 = !DILocation(line: 68, column: 7, scope: !778)
!789 = !DILocation(line: 68, column: 24, scope: !778)
!790 = !DILocation(line: 68, column: 28, scope: !778)
!791 = !DILocation(line: 68, column: 16, scope: !778)
!792 = !DILocation(line: 68, column: 50, scope: !778)
!793 = !DILocation(line: 73, column: 7, scope: !794)
!794 = distinct !DILexicalBlock(scope: !778, file: !3, line: 73, column: 6)
!795 = !DILocation(line: 73, column: 15, scope: !794)
!796 = !DILocation(line: 73, column: 39, scope: !794)
!797 = !DILocation(line: 73, column: 19, scope: !794)
!798 = !DILocation(line: 73, column: 6, scope: !778)
!799 = !DILocation(line: 74, column: 3, scope: !794)
!800 = !DILocation(line: 76, column: 2, scope: !778)
!801 = !DILocation(line: 76, column: 2, scope: !802)
!802 = distinct !DILexicalBlock(scope: !778, file: !3, line: 76, column: 2)
!803 = !DILocation(line: 77, column: 34, scope: !778)
!804 = !DILocation(line: 77, column: 38, scope: !778)
!805 = !DILocation(line: 77, column: 44, scope: !778)
!806 = !DILocation(line: 77, column: 48, scope: !778)
!807 = !DILocation(line: 77, column: 23, scope: !778)
!808 = !DILocation(line: 77, column: 2, scope: !778)
!809 = !DILocation(line: 77, column: 6, scope: !778)
!810 = !DILocation(line: 77, column: 11, scope: !778)
!811 = !DILocation(line: 77, column: 16, scope: !778)
!812 = !DILocation(line: 77, column: 21, scope: !778)
!813 = !DILocation(line: 78, column: 23, scope: !778)
!814 = !DILocation(line: 78, column: 2, scope: !778)
!815 = !DILocation(line: 78, column: 6, scope: !778)
!816 = !DILocation(line: 78, column: 11, scope: !778)
!817 = !DILocation(line: 78, column: 16, scope: !778)
!818 = !DILocation(line: 78, column: 21, scope: !778)
!819 = !DILocation(line: 79, column: 18, scope: !778)
!820 = !DILocation(line: 79, column: 31, scope: !778)
!821 = !DILocation(line: 79, column: 35, scope: !778)
!822 = !DILocation(line: 79, column: 2, scope: !778)
!823 = !DILocation(line: 79, column: 6, scope: !778)
!824 = !DILocation(line: 79, column: 11, scope: !778)
!825 = !DILocation(line: 79, column: 16, scope: !778)
!826 = !DILocation(line: 80, column: 2, scope: !778)
!827 = !DILocation(line: 80, column: 6, scope: !778)
!828 = !DILocation(line: 80, column: 11, scope: !778)
!829 = !DILocation(line: 80, column: 16, scope: !778)
!830 = !DILocation(line: 82, column: 30, scope: !778)
!831 = !DILocation(line: 82, column: 34, scope: !778)
!832 = !DILocation(line: 82, column: 41, scope: !778)
!833 = !DILocation(line: 82, column: 45, scope: !778)
!834 = !DILocation(line: 82, column: 7, scope: !778)
!835 = !DILocation(line: 82, column: 5, scope: !778)
!836 = !DILocalVariable(name: "__ret_warn_on", scope: !837, file: !3, line: 83, type: !24)
!837 = distinct !DILexicalBlock(scope: !778, file: !3, line: 83, column: 2)
!838 = !DILocation(line: 83, column: 2, scope: !837)
!839 = !DILocation(line: 83, column: 2, scope: !840)
!840 = distinct !DILexicalBlock(scope: !837, file: !3, line: 83, column: 2)
!841 = !DILocation(line: 83, column: 2, scope: !842)
!842 = distinct !DILexicalBlock(scope: !840, file: !3, line: 83, column: 2)
!843 = !DILocation(line: 83, column: 2, scope: !844)
!844 = distinct !DILexicalBlock(scope: !842, file: !3, line: 83, column: 2)
!845 = !DILocation(line: 83, column: 2, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !3, line: 83, column: 2)
!847 = !DILocation(line: 83, column: 2, scope: !848)
!848 = distinct !DILexicalBlock(scope: !846, file: !3, line: 83, column: 2)
!849 = !DILocation(line: 83, column: 2, scope: !850)
!850 = distinct !DILexicalBlock(scope: !846, file: !3, line: 83, column: 2)
!851 = !{i32 -2144285884, i32 -2144285855, i32 -2144285809, i32 -2144285751, i32 -2144285697, i32 -2144285643, i32 -2144285588, i32 -2144285557}
!852 = !DILocation(line: 83, column: 2, scope: !853)
!853 = distinct !DILexicalBlock(scope: !846, file: !3, line: 83, column: 2)
!854 = !{i32 -2144285148, i32 -2144285141, i32 -2144285089, i32 -2144285058, i32 -2144285028}
!855 = !DILocation(line: 83, column: 2, scope: !856)
!856 = distinct !DILexicalBlock(scope: !846, file: !3, line: 83, column: 2)
!857 = !DILocation(line: 83, column: 2, scope: !858)
!858 = distinct !DILexicalBlock(scope: !842, file: !3, line: 83, column: 2)
!859 = !DILocation(line: 84, column: 9, scope: !778)
!860 = !DILocation(line: 84, column: 2, scope: !778)
!861 = !DILocation(line: 85, column: 1, scope: !778)
!862 = distinct !DISubprogram(name: "safe_name", scope: !3, file: !3, line: 40, type: !863, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!863 = !DISubroutineType(types: !864)
!864 = !{!35, !58, !35}
!865 = !DILocalVariable(name: "kobj", arg: 1, scope: !862, file: !3, line: 40, type: !58)
!866 = !DILocation(line: 40, column: 46, scope: !862)
!867 = !DILocalVariable(name: "orig_name", arg: 2, scope: !862, file: !3, line: 40, type: !35)
!868 = !DILocation(line: 40, column: 64, scope: !862)
!869 = !DILocalVariable(name: "name", scope: !862, file: !3, line: 42, type: !35)
!870 = !DILocation(line: 42, column: 14, scope: !862)
!871 = !DILocation(line: 42, column: 21, scope: !862)
!872 = !DILocalVariable(name: "kn", scope: !862, file: !3, line: 43, type: !231)
!873 = !DILocation(line: 43, column: 22, scope: !862)
!874 = !DILocalVariable(name: "i", scope: !862, file: !3, line: 44, type: !24)
!875 = !DILocation(line: 44, column: 6, scope: !862)
!876 = !DILocation(line: 47, column: 2, scope: !862)
!877 = !DILocation(line: 47, column: 9, scope: !862)
!878 = !DILocation(line: 47, column: 11, scope: !862)
!879 = !DILocation(line: 47, column: 16, scope: !862)
!880 = !DILocation(line: 47, column: 42, scope: !862)
!881 = !DILocation(line: 47, column: 48, scope: !862)
!882 = !DILocation(line: 47, column: 52, scope: !862)
!883 = !DILocation(line: 47, column: 25, scope: !862)
!884 = !DILocation(line: 47, column: 23, scope: !862)
!885 = !DILocation(line: 0, scope: !862)
!886 = !DILocation(line: 48, column: 13, scope: !887)
!887 = distinct !DILexicalBlock(scope: !862, file: !3, line: 47, column: 60)
!888 = !DILocation(line: 48, column: 3, scope: !887)
!889 = !DILocation(line: 49, column: 7, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !3, line: 49, column: 7)
!891 = !DILocation(line: 49, column: 15, scope: !890)
!892 = !DILocation(line: 49, column: 12, scope: !890)
!893 = !DILocation(line: 49, column: 7, scope: !887)
!894 = !DILocation(line: 50, column: 10, scope: !890)
!895 = !DILocation(line: 50, column: 4, scope: !890)
!896 = !DILocation(line: 51, column: 41, scope: !887)
!897 = !DILocation(line: 51, column: 52, scope: !887)
!898 = !DILocation(line: 51, column: 10, scope: !887)
!899 = !DILocation(line: 51, column: 8, scope: !887)
!900 = distinct !{!900, !876, !901}
!901 = !DILocation(line: 52, column: 2, scope: !862)
!902 = !DILocation(line: 54, column: 6, scope: !903)
!903 = distinct !DILexicalBlock(scope: !862, file: !3, line: 54, column: 6)
!904 = !DILocation(line: 54, column: 14, scope: !903)
!905 = !DILocation(line: 54, column: 11, scope: !903)
!906 = !DILocation(line: 54, column: 6, scope: !862)
!907 = !DILocation(line: 55, column: 18, scope: !908)
!908 = distinct !DILexicalBlock(scope: !903, file: !3, line: 54, column: 25)
!909 = !DILocation(line: 55, column: 10, scope: !908)
!910 = !DILocation(line: 55, column: 8, scope: !908)
!911 = !DILocation(line: 56, column: 2, scope: !908)
!912 = !DILocation(line: 57, column: 3, scope: !913)
!913 = distinct !DILexicalBlock(scope: !903, file: !3, line: 56, column: 9)
!914 = !DILocation(line: 60, column: 9, scope: !862)
!915 = !DILocation(line: 60, column: 2, scope: !862)
!916 = distinct !DISubprogram(name: "of_node_property_read", scope: !3, file: !3, line: 31, type: !49, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!917 = !DILocalVariable(name: "filp", arg: 1, scope: !916, file: !3, line: 31, type: !55)
!918 = !DILocation(line: 31, column: 51, scope: !916)
!919 = !DILocalVariable(name: "kobj", arg: 2, scope: !916, file: !3, line: 31, type: !58)
!920 = !DILocation(line: 31, column: 73, scope: !916)
!921 = !DILocalVariable(name: "bin_attr", arg: 3, scope: !916, file: !3, line: 32, type: !168)
!922 = !DILocation(line: 32, column: 27, scope: !916)
!923 = !DILocalVariable(name: "buf", arg: 4, scope: !916, file: !3, line: 32, type: !21)
!924 = !DILocation(line: 32, column: 43, scope: !916)
!925 = !DILocalVariable(name: "offset", arg: 5, scope: !916, file: !3, line: 33, type: !387)
!926 = !DILocation(line: 33, column: 12, scope: !916)
!927 = !DILocalVariable(name: "count", arg: 6, scope: !916, file: !3, line: 33, type: !41)
!928 = !DILocation(line: 33, column: 27, scope: !916)
!929 = !DILocalVariable(name: "pp", scope: !916, file: !3, line: 35, type: !16)
!930 = !DILocation(line: 35, column: 19, scope: !916)
!931 = !DILocalVariable(name: "__mptr", scope: !932, file: !3, line: 35, type: !13)
!932 = distinct !DILexicalBlock(scope: !916, file: !3, line: 35, column: 24)
!933 = !DILocation(line: 35, column: 24, scope: !932)
!934 = !DILocation(line: 35, column: 24, scope: !935)
!935 = distinct !DILexicalBlock(scope: !932, file: !3, line: 35, column: 24)
!936 = !DILocation(line: 36, column: 33, scope: !916)
!937 = !DILocation(line: 36, column: 38, scope: !916)
!938 = !DILocation(line: 36, column: 54, scope: !916)
!939 = !DILocation(line: 36, column: 58, scope: !916)
!940 = !DILocation(line: 36, column: 65, scope: !916)
!941 = !DILocation(line: 36, column: 69, scope: !916)
!942 = !DILocation(line: 36, column: 9, scope: !916)
!943 = !DILocation(line: 36, column: 2, scope: !916)
!944 = distinct !DISubprogram(name: "__of_sysfs_remove_bin_file", scope: !3, file: !3, line: 87, type: !945, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !90)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !656, !16}
!947 = !DILocalVariable(name: "np", arg: 1, scope: !944, file: !3, line: 87, type: !656)
!948 = !DILocation(line: 87, column: 53, scope: !944)
!949 = !DILocalVariable(name: "prop", arg: 2, scope: !944, file: !3, line: 87, type: !16)
!950 = !DILocation(line: 87, column: 74, scope: !944)
!951 = !DILocation(line: 92, column: 25, scope: !944)
!952 = !DILocation(line: 92, column: 29, scope: !944)
!953 = !DILocation(line: 92, column: 36, scope: !944)
!954 = !DILocation(line: 92, column: 42, scope: !944)
!955 = !DILocation(line: 92, column: 2, scope: !944)
!956 = !DILocation(line: 93, column: 8, scope: !944)
!957 = !DILocation(line: 93, column: 14, scope: !944)
!958 = !DILocation(line: 93, column: 19, scope: !944)
!959 = !DILocation(line: 93, column: 24, scope: !944)
!960 = !DILocation(line: 93, column: 2, scope: !944)
!961 = !DILocation(line: 94, column: 1, scope: !944)
!962 = distinct !DISubprogram(name: "__of_remove_property_sysfs", scope: !3, file: !3, line: 96, type: !945, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !90)
!963 = !DILocalVariable(name: "np", arg: 1, scope: !962, file: !3, line: 96, type: !656)
!964 = !DILocation(line: 96, column: 53, scope: !962)
!965 = !DILocalVariable(name: "prop", arg: 2, scope: !962, file: !3, line: 96, type: !16)
!966 = !DILocation(line: 96, column: 74, scope: !962)
!967 = !DILocation(line: 99, column: 6, scope: !968)
!968 = distinct !DILexicalBlock(scope: !962, file: !3, line: 99, column: 6)
!969 = !DILocation(line: 99, column: 14, scope: !968)
!970 = !DILocation(line: 99, column: 37, scope: !968)
!971 = !DILocation(line: 99, column: 17, scope: !968)
!972 = !DILocation(line: 99, column: 6, scope: !962)
!973 = !DILocation(line: 100, column: 30, scope: !968)
!974 = !DILocation(line: 100, column: 34, scope: !968)
!975 = !DILocation(line: 100, column: 3, scope: !968)
!976 = !DILocation(line: 101, column: 1, scope: !962)
!977 = distinct !DISubprogram(name: "__of_update_property_sysfs", scope: !3, file: !3, line: 103, type: !978, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !90)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !656, !16, !16}
!980 = !DILocalVariable(name: "np", arg: 1, scope: !977, file: !3, line: 103, type: !656)
!981 = !DILocation(line: 103, column: 53, scope: !977)
!982 = !DILocalVariable(name: "newprop", arg: 2, scope: !977, file: !3, line: 103, type: !16)
!983 = !DILocation(line: 103, column: 74, scope: !977)
!984 = !DILocalVariable(name: "oldprop", arg: 3, scope: !977, file: !3, line: 104, type: !16)
!985 = !DILocation(line: 104, column: 20, scope: !977)
!986 = !DILocation(line: 107, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !977, file: !3, line: 107, column: 6)
!988 = !DILocation(line: 107, column: 6, scope: !977)
!989 = !DILocation(line: 108, column: 3, scope: !987)
!990 = !DILocation(line: 110, column: 6, scope: !991)
!991 = distinct !DILexicalBlock(scope: !977, file: !3, line: 110, column: 6)
!992 = !DILocation(line: 110, column: 6, scope: !977)
!993 = !DILocation(line: 111, column: 30, scope: !991)
!994 = !DILocation(line: 111, column: 34, scope: !991)
!995 = !DILocation(line: 111, column: 3, scope: !991)
!996 = !DILocation(line: 112, column: 26, scope: !977)
!997 = !DILocation(line: 112, column: 30, scope: !977)
!998 = !DILocation(line: 112, column: 2, scope: !977)
!999 = !DILocation(line: 113, column: 1, scope: !977)
!1000 = distinct !DISubprogram(name: "__of_attach_node_sysfs", scope: !3, file: !3, line: 115, type: !654, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !90)
!1001 = !DILocalVariable(name: "np", arg: 1, scope: !1000, file: !3, line: 115, type: !656)
!1002 = !DILocation(line: 115, column: 48, scope: !1000)
!1003 = !DILocalVariable(name: "name", scope: !1000, file: !3, line: 117, type: !35)
!1004 = !DILocation(line: 117, column: 14, scope: !1000)
!1005 = !DILocalVariable(name: "parent", scope: !1000, file: !3, line: 118, type: !58)
!1006 = !DILocation(line: 118, column: 18, scope: !1000)
!1007 = !DILocalVariable(name: "pp", scope: !1000, file: !3, line: 119, type: !16)
!1008 = !DILocation(line: 119, column: 19, scope: !1000)
!1009 = !DILocalVariable(name: "rc", scope: !1000, file: !3, line: 120, type: !24)
!1010 = !DILocation(line: 120, column: 6, scope: !1000)
!1011 = !DILocation(line: 122, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 122, column: 6)
!1013 = !DILocation(line: 122, column: 6, scope: !1000)
!1014 = !DILocation(line: 123, column: 3, scope: !1012)
!1015 = !DILocation(line: 125, column: 18, scope: !1000)
!1016 = !DILocation(line: 125, column: 2, scope: !1000)
!1017 = !DILocation(line: 125, column: 6, scope: !1000)
!1018 = !DILocation(line: 125, column: 11, scope: !1000)
!1019 = !DILocation(line: 125, column: 16, scope: !1000)
!1020 = !DILocation(line: 126, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 126, column: 6)
!1022 = !DILocation(line: 126, column: 11, scope: !1021)
!1023 = !DILocation(line: 126, column: 6, scope: !1000)
!1024 = !DILocation(line: 128, column: 21, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 126, column: 19)
!1026 = !DILocation(line: 128, column: 30, scope: !1025)
!1027 = !DILocation(line: 128, column: 10, scope: !1025)
!1028 = !DILocation(line: 128, column: 8, scope: !1025)
!1029 = !DILocation(line: 129, column: 10, scope: !1025)
!1030 = !DILocation(line: 130, column: 2, scope: !1025)
!1031 = !DILocation(line: 131, column: 21, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 130, column: 9)
!1033 = !DILocation(line: 131, column: 25, scope: !1032)
!1034 = !DILocation(line: 131, column: 33, scope: !1032)
!1035 = !DILocation(line: 131, column: 49, scope: !1032)
!1036 = !DILocation(line: 131, column: 53, scope: !1032)
!1037 = !DILocation(line: 131, column: 39, scope: !1032)
!1038 = !DILocation(line: 131, column: 10, scope: !1032)
!1039 = !DILocation(line: 131, column: 8, scope: !1032)
!1040 = !DILocation(line: 132, column: 13, scope: !1032)
!1041 = !DILocation(line: 132, column: 17, scope: !1032)
!1042 = !DILocation(line: 132, column: 25, scope: !1032)
!1043 = !DILocation(line: 132, column: 10, scope: !1032)
!1044 = !DILocation(line: 134, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 134, column: 6)
!1046 = !DILocation(line: 134, column: 6, scope: !1000)
!1047 = !DILocation(line: 135, column: 3, scope: !1045)
!1048 = !DILocation(line: 137, column: 20, scope: !1000)
!1049 = !DILocation(line: 137, column: 24, scope: !1000)
!1050 = !DILocation(line: 137, column: 30, scope: !1000)
!1051 = !DILocation(line: 137, column: 44, scope: !1000)
!1052 = !DILocation(line: 137, column: 7, scope: !1000)
!1053 = !DILocation(line: 137, column: 5, scope: !1000)
!1054 = !DILocation(line: 138, column: 8, scope: !1000)
!1055 = !DILocation(line: 138, column: 2, scope: !1000)
!1056 = !DILocation(line: 139, column: 6, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 139, column: 6)
!1058 = !DILocation(line: 139, column: 6, scope: !1000)
!1059 = !DILocation(line: 140, column: 10, scope: !1057)
!1060 = !DILocation(line: 140, column: 3, scope: !1057)
!1061 = !DILocation(line: 142, column: 2, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 142, column: 2)
!1063 = !DILocation(line: 142, column: 2, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 142, column: 2)
!1065 = !DILocation(line: 143, column: 27, scope: !1064)
!1066 = !DILocation(line: 143, column: 31, scope: !1064)
!1067 = !DILocation(line: 143, column: 3, scope: !1064)
!1068 = distinct !{!1068, !1061, !1069}
!1069 = !DILocation(line: 143, column: 33, scope: !1062)
!1070 = !DILocation(line: 145, column: 14, scope: !1000)
!1071 = !DILocation(line: 145, column: 2, scope: !1000)
!1072 = !DILocation(line: 146, column: 2, scope: !1000)
!1073 = !DILocation(line: 147, column: 1, scope: !1000)
!1074 = distinct !DISubprogram(name: "kbasename", scope: !1075, file: !1075, line: 252, type: !1076, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!1075 = !DIFile(filename: "./include/linux/string.h", directory: "/home/lizy2001/genbc/linux")
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!35, !35}
!1078 = !DILocalVariable(name: "path", arg: 1, scope: !1074, file: !1075, line: 252, type: !35)
!1079 = !DILocation(line: 252, column: 49, scope: !1074)
!1080 = !DILocalVariable(name: "tail", scope: !1074, file: !1075, line: 254, type: !35)
!1081 = !DILocation(line: 254, column: 14, scope: !1074)
!1082 = !DILocation(line: 254, column: 29, scope: !1074)
!1083 = !DILocation(line: 254, column: 21, scope: !1074)
!1084 = !DILocation(line: 255, column: 9, scope: !1074)
!1085 = !DILocation(line: 255, column: 16, scope: !1074)
!1086 = !DILocation(line: 255, column: 21, scope: !1074)
!1087 = !DILocation(line: 255, column: 27, scope: !1074)
!1088 = !DILocation(line: 255, column: 2, scope: !1074)
!1089 = distinct !DISubprogram(name: "of_node_get", scope: !18, file: !18, line: 125, type: !1090, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!656, !656}
!1092 = !DILocalVariable(name: "node", arg: 1, scope: !1089, file: !18, line: 125, type: !656)
!1093 = !DILocation(line: 125, column: 67, scope: !1089)
!1094 = !DILocation(line: 127, column: 9, scope: !1089)
!1095 = !DILocation(line: 127, column: 2, scope: !1089)
!1096 = distinct !DISubprogram(name: "__of_detach_node_sysfs", scope: !3, file: !3, line: 149, type: !1097, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !90)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !656}
!1099 = !DILocalVariable(name: "np", arg: 1, scope: !1096, file: !3, line: 149, type: !656)
!1100 = !DILocation(line: 149, column: 49, scope: !1096)
!1101 = !DILocalVariable(name: "pp", scope: !1096, file: !3, line: 151, type: !16)
!1102 = !DILocation(line: 151, column: 19, scope: !1096)
!1103 = !DILocation(line: 153, column: 2, scope: !1096)
!1104 = !DILocation(line: 153, column: 2, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 153, column: 2)
!1106 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 153, column: 2)
!1107 = !DILocation(line: 153, column: 2, scope: !1106)
!1108 = !DILocation(line: 153, column: 2, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 153, column: 2)
!1110 = !DILocation(line: 153, column: 2, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 153, column: 2)
!1112 = !DILocation(line: 153, column: 2, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 153, column: 2)
!1114 = !{i32 -2144283983, i32 -2144283954, i32 -2144283908, i32 -2144283850, i32 -2144283796, i32 -2144283742, i32 -2144283687, i32 -2144283656}
!1115 = !DILocation(line: 153, column: 2, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 153, column: 2)
!1117 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 153, column: 2)
!1118 = !{i32 -2144283216, i32 -2144283209, i32 -2144283155, i32 -2144283124, i32 -2144283094}
!1119 = !DILocation(line: 153, column: 2, scope: !1117)
!1120 = !DILocation(line: 154, column: 7, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 154, column: 6)
!1122 = !DILocation(line: 154, column: 6, scope: !1096)
!1123 = !DILocation(line: 155, column: 3, scope: !1121)
!1124 = !DILocation(line: 158, column: 26, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 158, column: 6)
!1126 = !DILocation(line: 158, column: 6, scope: !1125)
!1127 = !DILocation(line: 158, column: 6, scope: !1096)
!1128 = !DILocation(line: 159, column: 3, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 159, column: 3)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 158, column: 31)
!1131 = !DILocation(line: 159, column: 3, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 159, column: 3)
!1133 = !DILocation(line: 160, column: 31, scope: !1132)
!1134 = !DILocation(line: 160, column: 35, scope: !1132)
!1135 = !DILocation(line: 160, column: 4, scope: !1132)
!1136 = distinct !{!1136, !1128, !1137}
!1137 = !DILocation(line: 160, column: 37, scope: !1129)
!1138 = !DILocation(line: 161, column: 16, scope: !1130)
!1139 = !DILocation(line: 161, column: 20, scope: !1130)
!1140 = !DILocation(line: 161, column: 3, scope: !1130)
!1141 = !DILocation(line: 162, column: 2, scope: !1130)
!1142 = !DILocation(line: 164, column: 14, scope: !1096)
!1143 = !DILocation(line: 164, column: 2, scope: !1096)
!1144 = !DILocation(line: 165, column: 1, scope: !1096)
!1145 = distinct !DISubprogram(name: "of_node_is_initialized", scope: !3, file: !3, line: 8, type: !654, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!1146 = !DILocalVariable(name: "node", arg: 1, scope: !1145, file: !3, line: 8, type: !656)
!1147 = !DILocation(line: 8, column: 55, scope: !1145)
!1148 = !DILocation(line: 10, column: 9, scope: !1145)
!1149 = !DILocation(line: 10, column: 14, scope: !1145)
!1150 = !DILocation(line: 10, column: 17, scope: !1145)
!1151 = !DILocation(line: 10, column: 23, scope: !1145)
!1152 = !DILocation(line: 10, column: 28, scope: !1145)
!1153 = !DILocation(line: 0, scope: !1145)
!1154 = !DILocation(line: 10, column: 2, scope: !1145)
!1155 = distinct !DISubprogram(name: "of_node_put", scope: !18, file: !18, line: 129, type: !1097, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!1156 = !DILocalVariable(name: "node", arg: 1, scope: !1155, file: !18, line: 129, type: !656)
!1157 = !DILocation(line: 129, column: 52, scope: !1155)
!1158 = !DILocation(line: 129, column: 60, scope: !1155)
!1159 = distinct !DISubprogram(name: "sysfs_get_dirent", scope: !29, file: !29, line: 619, type: !1160, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!231, !231, !35}
!1162 = !DILocalVariable(name: "parent", arg: 1, scope: !1159, file: !29, line: 619, type: !231)
!1163 = !DILocation(line: 619, column: 72, scope: !1159)
!1164 = !DILocalVariable(name: "name", arg: 2, scope: !1159, file: !29, line: 620, type: !35)
!1165 = !DILocation(line: 620, column: 22, scope: !1159)
!1166 = !DILocation(line: 622, column: 29, scope: !1159)
!1167 = !DILocation(line: 622, column: 37, scope: !1159)
!1168 = !DILocation(line: 622, column: 9, scope: !1159)
!1169 = !DILocation(line: 622, column: 2, scope: !1159)
!1170 = distinct !DISubprogram(name: "sysfs_put", scope: !29, file: !29, line: 631, type: !1171, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !231}
!1173 = !DILocalVariable(name: "kn", arg: 1, scope: !1170, file: !29, line: 631, type: !231)
!1174 = !DILocation(line: 631, column: 50, scope: !1170)
!1175 = !DILocation(line: 633, column: 13, scope: !1170)
!1176 = !DILocation(line: 633, column: 2, scope: !1170)
!1177 = !DILocation(line: 634, column: 1, scope: !1170)
!1178 = distinct !DISubprogram(name: "kobject_name", scope: !60, file: !60, line: 88, type: !1179, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!35, !1181}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1183 = !DILocalVariable(name: "kobj", arg: 1, scope: !1178, file: !60, line: 88, type: !1181)
!1184 = !DILocation(line: 88, column: 62, scope: !1178)
!1185 = !DILocation(line: 90, column: 9, scope: !1178)
!1186 = !DILocation(line: 90, column: 15, scope: !1178)
!1187 = !DILocation(line: 90, column: 2, scope: !1178)
!1188 = distinct !DISubprogram(name: "kernfs_find_and_get", scope: !233, file: !233, line: 546, type: !1160, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!1189 = !DILocalVariable(name: "kn", arg: 1, scope: !1188, file: !233, line: 546, type: !231)
!1190 = !DILocation(line: 546, column: 41, scope: !1188)
!1191 = !DILocalVariable(name: "name", arg: 2, scope: !1188, file: !233, line: 546, type: !35)
!1192 = !DILocation(line: 546, column: 57, scope: !1188)
!1193 = !DILocation(line: 548, column: 32, scope: !1188)
!1194 = !DILocation(line: 548, column: 36, scope: !1188)
!1195 = !DILocation(line: 548, column: 9, scope: !1188)
!1196 = !DILocation(line: 548, column: 2, scope: !1188)
