; ModuleID = '../bcout/drivers/clk/clk-gate.llvm.bc'
source_filename = "drivers/clk/clk-gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.clk_hw = type { %struct.clk_core*, %struct.clk*, %struct.clk_init_data* }
%struct.clk_core = type opaque
%struct.clk = type opaque
%struct.clk_init_data = type { i8*, %struct.clk_ops*, i8**, %struct.clk_parent_data*, %struct.clk_hw**, i8, i64 }
%struct.clk_ops = type { {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, {}*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, {}*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }
%struct.clk_parent_data = type { %struct.clk_hw*, i8*, i8*, i32 }
%struct.clk_rate_request = type { i64, i64, i64, i64, %struct.clk_hw* }
%struct.clk_duty = type { i32, i32 }
%struct.dentry = type opaque
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.2, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.5 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i64, i64 }
%union.anon.5 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type opaque
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.cpumask = type { [1 x i64] }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.1, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.pgprot = type { i64 }
%struct.anon.1 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.kmem_cache = type opaque
%struct.clk_gate = type { %struct.clk_hw, i8*, i8, i8, %struct.spinlock* }
%struct.device = type opaque
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.attribute = type { i8*, i16 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.0, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.0 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }

@clk_gate_ops = dso_local constant { i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* } { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* @clk_gate_enable, void (%struct.clk_hw*)* @clk_gate_disable, i32 (%struct.clk_hw*)* @clk_gate_is_enabled, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* null, i64 (%struct.clk_hw*, i64, i64*)* null, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* null, i32 (%struct.clk_hw*, i8)* null, i8 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i64, i64)* null, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8, !dbg !0
@.str = private unnamed_addr constant [33 x i8] c"\013gate bit exceeds LOWORD field\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @clk_gate_is_enabled(%struct.clk_hw* %hw) #0 !dbg !184 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %reg = alloca i32, align 4
  %gate = alloca %struct.clk_gate*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_gate*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !187, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata %struct.clk_gate** %gate, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !193, metadata !DIExpression()), !dbg !195
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !195
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !195
  store i8* %1, i8** %__mptr, align 8, !dbg !195
  br label %do.body, !dbg !195

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !196

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !195
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !195
  %3 = bitcast i8* %add.ptr to %struct.clk_gate*, !dbg !195
  store %struct.clk_gate* %3, %struct.clk_gate** %tmp, align 8, !dbg !196
  %4 = load %struct.clk_gate*, %struct.clk_gate** %tmp, align 8, !dbg !195
  store %struct.clk_gate* %4, %struct.clk_gate** %gate, align 8, !dbg !192
  %5 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !198
  %call = call i32 @clk_gate_readl(%struct.clk_gate* %5) #10, !dbg !199
  store i32 %call, i32* %reg, align 4, !dbg !200
  %6 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !201
  %flags = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %6, i32 0, i32 3, !dbg !203
  %7 = load i8, i8* %flags, align 1, !dbg !203
  %conv = zext i8 %7 to i64, !dbg !201
  %and = and i64 %conv, 1, !dbg !204
  %tobool = icmp ne i64 %and, 0, !dbg !204
  br i1 %tobool, label %if.then, label %if.end, !dbg !205

if.then:                                          ; preds = %do.end
  %8 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !206
  %bit_idx = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %8, i32 0, i32 2, !dbg !206
  %9 = load i8, i8* %bit_idx, align 8, !dbg !206
  %conv1 = zext i8 %9 to i32, !dbg !206
  %sh_prom = zext i32 %conv1 to i64, !dbg !206
  %shl = shl i64 1, %sh_prom, !dbg !206
  %10 = load i32, i32* %reg, align 4, !dbg !207
  %conv2 = zext i32 %10 to i64, !dbg !207
  %xor = xor i64 %conv2, %shl, !dbg !207
  %conv3 = trunc i64 %xor to i32, !dbg !207
  store i32 %conv3, i32* %reg, align 4, !dbg !207
  br label %if.end, !dbg !208

if.end:                                           ; preds = %if.then, %do.end
  %11 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !209
  %bit_idx4 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %11, i32 0, i32 2, !dbg !209
  %12 = load i8, i8* %bit_idx4, align 8, !dbg !209
  %conv5 = zext i8 %12 to i32, !dbg !209
  %sh_prom6 = zext i32 %conv5 to i64, !dbg !209
  %shl7 = shl i64 1, %sh_prom6, !dbg !209
  %13 = load i32, i32* %reg, align 4, !dbg !210
  %conv8 = zext i32 %13 to i64, !dbg !210
  %and9 = and i64 %conv8, %shl7, !dbg !210
  %conv10 = trunc i64 %and9 to i32, !dbg !210
  store i32 %conv10, i32* %reg, align 4, !dbg !210
  %14 = load i32, i32* %reg, align 4, !dbg !211
  %tobool11 = icmp ne i32 %14, 0, !dbg !211
  %15 = zext i1 %tobool11 to i64, !dbg !211
  %cond = select i1 %tobool11, i32 1, i32 0, !dbg !211
  ret i32 %cond, !dbg !212
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_gate_readl(%struct.clk_gate* %gate) #0 !dbg !213 {
entry:
  %retval = alloca i32, align 4
  %gate.addr = alloca %struct.clk_gate*, align 8
  store %struct.clk_gate* %gate, %struct.clk_gate** %gate.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_gate** %gate.addr, metadata !216, metadata !DIExpression()), !dbg !217
  %0 = load %struct.clk_gate*, %struct.clk_gate** %gate.addr, align 8, !dbg !218
  %flags = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %0, i32 0, i32 3, !dbg !220
  %1 = load i8, i8* %flags, align 1, !dbg !220
  %conv = zext i8 %1 to i64, !dbg !218
  %and = and i64 %conv, 4, !dbg !221
  %tobool = icmp ne i64 %and, 0, !dbg !221
  br i1 %tobool, label %if.then, label %if.end, !dbg !222

if.then:                                          ; preds = %entry
  %2 = load %struct.clk_gate*, %struct.clk_gate** %gate.addr, align 8, !dbg !223
  %reg = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %2, i32 0, i32 1, !dbg !224
  %3 = load i8*, i8** %reg, align 8, !dbg !224
  %call = call i32 @ioread32be(i8* %3) #10, !dbg !225
  store i32 %call, i32* %retval, align 4, !dbg !226
  br label %return, !dbg !226

if.end:                                           ; preds = %entry
  %4 = load %struct.clk_gate*, %struct.clk_gate** %gate.addr, align 8, !dbg !227
  %reg1 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %4, i32 0, i32 1, !dbg !228
  %5 = load i8*, i8** %reg1, align 8, !dbg !228
  %call2 = call i32 @readl(i8* %5) #10, !dbg !229
  store i32 %call2, i32* %retval, align 4, !dbg !230
  br label %return, !dbg !230

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !231
  ret i32 %6, !dbg !231
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_gate_enable(%struct.clk_hw* %hw) #0 !dbg !232 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !233, metadata !DIExpression()), !dbg !234
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !235
  call void @clk_gate_endisable(%struct.clk_hw* %0, i32 1) #10, !dbg !236
  ret i32 0, !dbg !237
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_gate_disable(%struct.clk_hw* %hw) #0 !dbg !238 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !239, metadata !DIExpression()), !dbg !240
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !241
  call void @clk_gate_endisable(%struct.clk_hw* %0, i32 0) #10, !dbg !242
  ret void, !dbg !243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk_hw* @__clk_hw_register_gate(%struct.device* %dev, %struct.device_node* %np, i8* %name, i8* %parent_name, %struct.clk_hw* %parent_hw, %struct.clk_parent_data* %parent_data, i64 %flags, i8* %reg, i8 zeroext %bit_idx, i8 zeroext %clk_gate_flags, %struct.spinlock* %lock) #0 !dbg !244 {
entry:
  %retval = alloca %struct.clk_hw*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %name.addr = alloca i8*, align 8
  %parent_name.addr = alloca i8*, align 8
  %parent_hw.addr = alloca %struct.clk_hw*, align 8
  %parent_data.addr = alloca %struct.clk_parent_data*, align 8
  %flags.addr = alloca i64, align 8
  %reg.addr = alloca i8*, align 8
  %bit_idx.addr = alloca i8, align 1
  %clk_gate_flags.addr = alloca i8, align 1
  %lock.addr = alloca %struct.spinlock*, align 8
  %gate = alloca %struct.clk_gate*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %init = alloca %struct.clk_init_data, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !977, metadata !DIExpression()), !dbg !978
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !979, metadata !DIExpression()), !dbg !980
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !981, metadata !DIExpression()), !dbg !982
  store i8* %parent_name, i8** %parent_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %parent_name.addr, metadata !983, metadata !DIExpression()), !dbg !984
  store %struct.clk_hw* %parent_hw, %struct.clk_hw** %parent_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %parent_hw.addr, metadata !985, metadata !DIExpression()), !dbg !986
  store %struct.clk_parent_data* %parent_data, %struct.clk_parent_data** %parent_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_parent_data** %parent_data.addr, metadata !987, metadata !DIExpression()), !dbg !988
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !989, metadata !DIExpression()), !dbg !990
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !991, metadata !DIExpression()), !dbg !992
  store i8 %bit_idx, i8* %bit_idx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bit_idx.addr, metadata !993, metadata !DIExpression()), !dbg !994
  store i8 %clk_gate_flags, i8* %clk_gate_flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %clk_gate_flags.addr, metadata !995, metadata !DIExpression()), !dbg !996
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr, metadata !997, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.declare(metadata %struct.clk_gate** %gate, metadata !999, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !1001, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.declare(metadata %struct.clk_init_data* %init, metadata !1003, metadata !DIExpression()), !dbg !1004
  %0 = bitcast %struct.clk_init_data* %init to i8*, !dbg !1004
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 56, i1 false), !dbg !1004
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1005, metadata !DIExpression()), !dbg !1006
  store i32 -22, i32* %ret, align 4, !dbg !1006
  %1 = load i8, i8* %clk_gate_flags.addr, align 1, !dbg !1007
  %conv = zext i8 %1 to i64, !dbg !1007
  %and = and i64 %conv, 2, !dbg !1009
  %tobool = icmp ne i64 %and, 0, !dbg !1009
  br i1 %tobool, label %if.then, label %if.end5, !dbg !1010

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %bit_idx.addr, align 1, !dbg !1011
  %conv1 = zext i8 %2 to i32, !dbg !1011
  %cmp = icmp sgt i32 %conv1, 15, !dbg !1014
  br i1 %cmp, label %if.then3, label %if.end, !dbg !1015

if.then3:                                         ; preds = %if.then
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #11, !dbg !1016
  %call4 = call i8* @ERR_PTR(i64 -22) #10, !dbg !1018
  %3 = bitcast i8* %call4 to %struct.clk_hw*, !dbg !1018
  store %struct.clk_hw* %3, %struct.clk_hw** %retval, align 8, !dbg !1019
  br label %return, !dbg !1019

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !1020

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i8* @kzalloc(i64 48, i32 3264) #10, !dbg !1021
  %4 = bitcast i8* %call6 to %struct.clk_gate*, !dbg !1021
  store %struct.clk_gate* %4, %struct.clk_gate** %gate, align 8, !dbg !1022
  %5 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1023
  %tobool7 = icmp ne %struct.clk_gate* %5, null, !dbg !1023
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !1025

if.then8:                                         ; preds = %if.end5
  %call9 = call i8* @ERR_PTR(i64 -12) #10, !dbg !1026
  %6 = bitcast i8* %call9 to %struct.clk_hw*, !dbg !1026
  store %struct.clk_hw* %6, %struct.clk_hw** %retval, align 8, !dbg !1027
  br label %return, !dbg !1027

if.end10:                                         ; preds = %if.end5
  %7 = load i8*, i8** %name.addr, align 8, !dbg !1028
  %name11 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 0, !dbg !1029
  store i8* %7, i8** %name11, align 8, !dbg !1030
  %ops = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 1, !dbg !1031
  store %struct.clk_ops* bitcast ({ i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }* @clk_gate_ops to %struct.clk_ops*), %struct.clk_ops** %ops, align 8, !dbg !1032
  %8 = load i64, i64* %flags.addr, align 8, !dbg !1033
  %flags12 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 6, !dbg !1034
  store i64 %8, i64* %flags12, align 8, !dbg !1035
  %9 = load i8*, i8** %parent_name.addr, align 8, !dbg !1036
  %tobool13 = icmp ne i8* %9, null, !dbg !1036
  br i1 %tobool13, label %cond.true, label %cond.false, !dbg !1036

cond.true:                                        ; preds = %if.end10
  br label %cond.end, !dbg !1036

cond.false:                                       ; preds = %if.end10
  br label %cond.end, !dbg !1036

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8** [ %parent_name.addr, %cond.true ], [ null, %cond.false ], !dbg !1036
  %parent_names = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 2, !dbg !1037
  store i8** %cond, i8*** %parent_names, align 8, !dbg !1038
  %10 = load %struct.clk_hw*, %struct.clk_hw** %parent_hw.addr, align 8, !dbg !1039
  %tobool14 = icmp ne %struct.clk_hw* %10, null, !dbg !1039
  br i1 %tobool14, label %cond.true15, label %cond.false16, !dbg !1039

cond.true15:                                      ; preds = %cond.end
  br label %cond.end17, !dbg !1039

cond.false16:                                     ; preds = %cond.end
  br label %cond.end17, !dbg !1039

cond.end17:                                       ; preds = %cond.false16, %cond.true15
  %cond18 = phi %struct.clk_hw** [ %parent_hw.addr, %cond.true15 ], [ null, %cond.false16 ], !dbg !1039
  %parent_hws = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 4, !dbg !1040
  store %struct.clk_hw** %cond18, %struct.clk_hw*** %parent_hws, align 8, !dbg !1041
  %11 = load %struct.clk_parent_data*, %struct.clk_parent_data** %parent_data.addr, align 8, !dbg !1042
  %parent_data19 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 3, !dbg !1043
  store %struct.clk_parent_data* %11, %struct.clk_parent_data** %parent_data19, align 8, !dbg !1044
  %12 = load i8*, i8** %parent_name.addr, align 8, !dbg !1045
  %tobool20 = icmp ne i8* %12, null, !dbg !1045
  br i1 %tobool20, label %if.then24, label %lor.lhs.false, !dbg !1047

lor.lhs.false:                                    ; preds = %cond.end17
  %13 = load %struct.clk_hw*, %struct.clk_hw** %parent_hw.addr, align 8, !dbg !1048
  %tobool21 = icmp ne %struct.clk_hw* %13, null, !dbg !1048
  br i1 %tobool21, label %if.then24, label %lor.lhs.false22, !dbg !1049

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %14 = load %struct.clk_parent_data*, %struct.clk_parent_data** %parent_data.addr, align 8, !dbg !1050
  %tobool23 = icmp ne %struct.clk_parent_data* %14, null, !dbg !1050
  br i1 %tobool23, label %if.then24, label %if.else, !dbg !1051

if.then24:                                        ; preds = %lor.lhs.false22, %lor.lhs.false, %cond.end17
  %num_parents = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 5, !dbg !1052
  store i8 1, i8* %num_parents, align 8, !dbg !1053
  br label %if.end26, !dbg !1054

if.else:                                          ; preds = %lor.lhs.false22
  %num_parents25 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 5, !dbg !1055
  store i8 0, i8* %num_parents25, align 8, !dbg !1056
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then24
  %15 = load i8*, i8** %reg.addr, align 8, !dbg !1057
  %16 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1058
  %reg27 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %16, i32 0, i32 1, !dbg !1059
  store i8* %15, i8** %reg27, align 8, !dbg !1060
  %17 = load i8, i8* %bit_idx.addr, align 1, !dbg !1061
  %18 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1062
  %bit_idx28 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %18, i32 0, i32 2, !dbg !1063
  store i8 %17, i8* %bit_idx28, align 8, !dbg !1064
  %19 = load i8, i8* %clk_gate_flags.addr, align 1, !dbg !1065
  %20 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1066
  %flags29 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %20, i32 0, i32 3, !dbg !1067
  store i8 %19, i8* %flags29, align 1, !dbg !1068
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !1069
  %22 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1070
  %lock30 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %22, i32 0, i32 4, !dbg !1071
  store %struct.spinlock* %21, %struct.spinlock** %lock30, align 8, !dbg !1072
  %23 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1073
  %hw31 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %23, i32 0, i32 0, !dbg !1074
  %init32 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw31, i32 0, i32 2, !dbg !1075
  store %struct.clk_init_data* %init, %struct.clk_init_data** %init32, align 8, !dbg !1076
  %24 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1077
  %hw33 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %24, i32 0, i32 0, !dbg !1078
  store %struct.clk_hw* %hw33, %struct.clk_hw** %hw, align 8, !dbg !1079
  %25 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1080
  %tobool34 = icmp ne %struct.device* %25, null, !dbg !1080
  br i1 %tobool34, label %if.then37, label %lor.lhs.false35, !dbg !1082

lor.lhs.false35:                                  ; preds = %if.end26
  %26 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1083
  %tobool36 = icmp ne %struct.device_node* %26, null, !dbg !1083
  br i1 %tobool36, label %if.else39, label %if.then37, !dbg !1084

if.then37:                                        ; preds = %lor.lhs.false35, %if.end26
  %27 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1085
  %28 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1086
  %call38 = call i32 @clk_hw_register(%struct.device* %27, %struct.clk_hw* %28) #10, !dbg !1087
  store i32 %call38, i32* %ret, align 4, !dbg !1088
  br label %if.end44, !dbg !1089

if.else39:                                        ; preds = %lor.lhs.false35
  %29 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1090
  %tobool40 = icmp ne %struct.device_node* %29, null, !dbg !1090
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !1092

if.then41:                                        ; preds = %if.else39
  %30 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1093
  %31 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1094
  %call42 = call i32 @of_clk_hw_register(%struct.device_node* %30, %struct.clk_hw* %31) #10, !dbg !1095
  store i32 %call42, i32* %ret, align 4, !dbg !1096
  br label %if.end43, !dbg !1097

if.end43:                                         ; preds = %if.then41, %if.else39
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then37
  %32 = load i32, i32* %ret, align 4, !dbg !1098
  %tobool45 = icmp ne i32 %32, 0, !dbg !1098
  br i1 %tobool45, label %if.then46, label %if.end49, !dbg !1100

if.then46:                                        ; preds = %if.end44
  %33 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1101
  %34 = bitcast %struct.clk_gate* %33 to i8*, !dbg !1101
  call void @kfree(i8* %34) #10, !dbg !1103
  %35 = load i32, i32* %ret, align 4, !dbg !1104
  %conv47 = sext i32 %35 to i64, !dbg !1104
  %call48 = call i8* @ERR_PTR(i64 %conv47) #10, !dbg !1105
  %36 = bitcast i8* %call48 to %struct.clk_hw*, !dbg !1105
  store %struct.clk_hw* %36, %struct.clk_hw** %hw, align 8, !dbg !1106
  br label %if.end49, !dbg !1107

if.end49:                                         ; preds = %if.then46, %if.end44
  %37 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1108
  store %struct.clk_hw* %37, %struct.clk_hw** %retval, align 8, !dbg !1109
  br label %return, !dbg !1109

return:                                           ; preds = %if.end49, %if.then8, %if.then3
  %38 = load %struct.clk_hw*, %struct.clk_hw** %retval, align 8, !dbg !1110
  ret %struct.clk_hw* %38, !dbg !1110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !1111 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !1115, metadata !DIExpression()), !dbg !1116
  %0 = load i64, i64* %error.addr, align 8, !dbg !1117
  %1 = inttoptr i64 %0 to i8*, !dbg !1118
  ret i8* %1, !dbg !1119
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1120 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1123, metadata !DIExpression()), !dbg !1129
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1135, metadata !DIExpression()), !dbg !1136
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1137, metadata !DIExpression()), !dbg !1138
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1139, metadata !DIExpression()), !dbg !1140
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1141, metadata !DIExpression()), !dbg !1145
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1147, metadata !DIExpression()), !dbg !1151
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1153, metadata !DIExpression()), !dbg !1157
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1162, metadata !DIExpression()), !dbg !1163
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1164, metadata !DIExpression()), !dbg !1165
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1166, metadata !DIExpression()), !dbg !1167
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1168, metadata !DIExpression()), !dbg !1169
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1170, metadata !DIExpression()), !dbg !1171
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1172, metadata !DIExpression()), !dbg !1173
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1174, metadata !DIExpression()), !dbg !1175
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1176, metadata !DIExpression()), !dbg !1177
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1178, metadata !DIExpression()), !dbg !1179
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1180, metadata !DIExpression()), !dbg !1181
  %0 = load i64, i64* %size.addr, align 8, !dbg !1182
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1183
  %or = or i32 %1, 256, !dbg !1184
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1185
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #6, !dbg !1186
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1187

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1188
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1189
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1190

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1191
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1192
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1193
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !1194
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1171
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1195
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1196
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1197
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1198
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1199
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1200
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !1201
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1201
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1201
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1201
  call void @llvm.assume(i1 %maskcond.i.i.i) #6, !dbg !1201
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1202
  br label %kmalloc.exit, !dbg !1202

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1203
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1204
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1204
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1206

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1207
  br label %kmalloc_index.exit.i, !dbg !1207

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1208
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1210
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1211

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1212
  br label %kmalloc_index.exit.i, !dbg !1212

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1213
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1215
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1216

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1217
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1218
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1219

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1220
  br label %kmalloc_index.exit.i, !dbg !1220

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1221
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1223
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1224

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1225
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1226
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1227

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1228
  br label %kmalloc_index.exit.i, !dbg !1228

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1229
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1231
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1232

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1233
  br label %kmalloc_index.exit.i, !dbg !1233

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1234
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1236
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1237

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1238
  br label %kmalloc_index.exit.i, !dbg !1238

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1239
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1241
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1242

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1243
  br label %kmalloc_index.exit.i, !dbg !1243

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1244
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1246
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1247

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1248
  br label %kmalloc_index.exit.i, !dbg !1248

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1249
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1251
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1252

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1253
  br label %kmalloc_index.exit.i, !dbg !1253

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1254
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1256
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1257

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1258
  br label %kmalloc_index.exit.i, !dbg !1258

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1259
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1261
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1262

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1263
  br label %kmalloc_index.exit.i, !dbg !1263

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1264
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1266
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1267

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1268
  br label %kmalloc_index.exit.i, !dbg !1268

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1269
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1271
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1272

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1273
  br label %kmalloc_index.exit.i, !dbg !1273

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1274
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1276
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1277

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1278
  br label %kmalloc_index.exit.i, !dbg !1278

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1279
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1281
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1282

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1283
  br label %kmalloc_index.exit.i, !dbg !1283

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1284
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1286
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1287

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1288
  br label %kmalloc_index.exit.i, !dbg !1288

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1289
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1291
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1292

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1293
  br label %kmalloc_index.exit.i, !dbg !1293

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1294
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1296
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1297

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1298
  br label %kmalloc_index.exit.i, !dbg !1298

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1299
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1301
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1302

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1303
  br label %kmalloc_index.exit.i, !dbg !1303

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1304
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1306
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1307

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1308
  br label %kmalloc_index.exit.i, !dbg !1308

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1309
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1311
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1312

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1313
  br label %kmalloc_index.exit.i, !dbg !1313

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1314
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1316
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1317

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1318
  br label %kmalloc_index.exit.i, !dbg !1318

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1319
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1321
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1322

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1323
  br label %kmalloc_index.exit.i, !dbg !1323

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1324
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1326
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1327

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1328
  br label %kmalloc_index.exit.i, !dbg !1328

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1329
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1331
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1332

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1333
  br label %kmalloc_index.exit.i, !dbg !1333

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1334
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1336
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1337

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1338
  br label %kmalloc_index.exit.i, !dbg !1338

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1339
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1341
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1342

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1343
  br label %kmalloc_index.exit.i, !dbg !1343

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1344
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1346
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1347

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1348
  br label %kmalloc_index.exit.i, !dbg !1348

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #6, !dbg !1349, !srcloc !1352
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #6, !dbg !1353, !srcloc !1356
  unreachable, !dbg !1357

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1358
  store i32 %45, i32* %index.i, align 4, !dbg !1359
  %46 = load i32, i32* %index.i, align 4, !dbg !1360
  %tobool.i = icmp ne i32 %46, 0, !dbg !1360
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1362

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1363
  br label %kmalloc.exit, !dbg !1363

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1364
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1365
  %and.i.i = and i32 %48, 17, !dbg !1365
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1365
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1365
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1365
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1365
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1367

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1368
  br label %kmalloc_type.exit.i, !dbg !1368

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1369
  %and2.i.i = and i32 %49, 1, !dbg !1370
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1369
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1369
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1369
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1371
  br label %kmalloc_type.exit.i, !dbg !1371

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1372
  %idxprom.i = zext i32 %51 to i64, !dbg !1373
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1373
  %52 = load i32, i32* %index.i, align 4, !dbg !1374
  %idxprom6.i = zext i32 %52 to i64, !dbg !1373
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1373
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1373
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1375
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1376
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1377
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1378
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !1379
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1379
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1379
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1379
  call void @llvm.assume(i1 %maskcond.i.i) #6, !dbg !1379
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1140
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1380
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1381
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1382
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1383
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !1384
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1385
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1386
  store i8* %62, i8** %retval.i, align 8, !dbg !1387
  br label %kmalloc.exit, !dbg !1387

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1388
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1389
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !1390
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1390
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1390
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1390
  call void @llvm.assume(i1 %maskcond.i) #6, !dbg !1390
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1391
  br label %kmalloc.exit, !dbg !1391

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1392
  ret i8* %65, !dbg !1393
}

; Function Attrs: noredzone
declare dso_local i32 @clk_hw_register(%struct.device*, %struct.clk_hw*) #4

; Function Attrs: noredzone
declare dso_local i32 @of_clk_hw_register(%struct.device_node*, %struct.clk_hw*) #4

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk* @clk_register_gate(%struct.device* %dev, i8* %name, i8* %parent_name, i64 %flags, i8* %reg, i8 zeroext %bit_idx, i8 zeroext %clk_gate_flags, %struct.spinlock* %lock) #0 !dbg !1394 {
entry:
  %retval = alloca %struct.clk*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %parent_name.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  %reg.addr = alloca i8*, align 8
  %bit_idx.addr = alloca i8, align 1
  %clk_gate_flags.addr = alloca i8, align 1
  %lock.addr = alloca %struct.spinlock*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !1397, metadata !DIExpression()), !dbg !1398
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !1399, metadata !DIExpression()), !dbg !1400
  store i8* %parent_name, i8** %parent_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %parent_name.addr, metadata !1401, metadata !DIExpression()), !dbg !1402
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !1403, metadata !DIExpression()), !dbg !1404
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !1405, metadata !DIExpression()), !dbg !1406
  store i8 %bit_idx, i8* %bit_idx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bit_idx.addr, metadata !1407, metadata !DIExpression()), !dbg !1408
  store i8 %clk_gate_flags, i8* %clk_gate_flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %clk_gate_flags.addr, metadata !1409, metadata !DIExpression()), !dbg !1410
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !1413, metadata !DIExpression()), !dbg !1414
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1415
  %1 = load i8*, i8** %name.addr, align 8, !dbg !1415
  %2 = load i8*, i8** %parent_name.addr, align 8, !dbg !1415
  %3 = load i64, i64* %flags.addr, align 8, !dbg !1415
  %4 = load i8*, i8** %reg.addr, align 8, !dbg !1415
  %5 = load i8, i8* %bit_idx.addr, align 1, !dbg !1415
  %6 = load i8, i8* %clk_gate_flags.addr, align 1, !dbg !1415
  %7 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !1415
  %call = call %struct.clk_hw* @__clk_hw_register_gate(%struct.device* %0, %struct.device_node* null, i8* %1, i8* %2, %struct.clk_hw* null, %struct.clk_parent_data* null, i64 %3, i8* %4, i8 zeroext %5, i8 zeroext %6, %struct.spinlock* %7) #10, !dbg !1415
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !1416
  %8 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1417
  %9 = bitcast %struct.clk_hw* %8 to i8*, !dbg !1417
  %call1 = call zeroext i1 @IS_ERR(i8* %9) #10, !dbg !1419
  br i1 %call1, label %if.then, label %if.end, !dbg !1420

if.then:                                          ; preds = %entry
  %10 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1421
  %11 = bitcast %struct.clk_hw* %10 to i8*, !dbg !1421
  %call2 = call i8* @ERR_CAST(i8* %11) #10, !dbg !1422
  %12 = bitcast i8* %call2 to %struct.clk*, !dbg !1422
  store %struct.clk* %12, %struct.clk** %retval, align 8, !dbg !1423
  br label %return, !dbg !1423

if.end:                                           ; preds = %entry
  %13 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1424
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %13, i32 0, i32 1, !dbg !1425
  %14 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !1425
  store %struct.clk* %14, %struct.clk** %retval, align 8, !dbg !1426
  br label %return, !dbg !1426

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct.clk*, %struct.clk** %retval, align 8, !dbg !1427
  ret %struct.clk* %15, !dbg !1427
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !1428 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1431, metadata !DIExpression()), !dbg !1432
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !1433
  %1 = ptrtoint i8* %0 to i64, !dbg !1433
  %2 = inttoptr i64 %1 to i8*, !dbg !1433
  %3 = ptrtoint i8* %2 to i64, !dbg !1433
  %cmp = icmp uge i64 %3, -4095, !dbg !1433
  %lnot = xor i1 %cmp, true, !dbg !1433
  %lnot1 = xor i1 %lnot, true, !dbg !1433
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1433
  %conv = sext i32 %lnot.ext to i64, !dbg !1433
  %tobool = icmp ne i64 %conv, 0, !dbg !1433
  ret i1 %tobool, !dbg !1434
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_CAST(i8* %ptr) #0 !dbg !1435 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1438, metadata !DIExpression()), !dbg !1439
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !1440
  ret i8* %0, !dbg !1441
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_unregister_gate(%struct.clk* %clk) #0 !dbg !1442 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  %gate = alloca %struct.clk_gate*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_gate*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !1445, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.declare(metadata %struct.clk_gate** %gate, metadata !1447, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !1449, metadata !DIExpression()), !dbg !1450
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !1451
  %call = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %0) #10, !dbg !1452
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !1453
  %1 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1454
  %tobool = icmp ne %struct.clk_hw* %1, null, !dbg !1454
  br i1 %tobool, label %if.end, label %if.then, !dbg !1456

if.then:                                          ; preds = %entry
  br label %return, !dbg !1457

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1458, metadata !DIExpression()), !dbg !1460
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1460
  %3 = bitcast %struct.clk_hw* %2 to i8*, !dbg !1460
  store i8* %3, i8** %__mptr, align 8, !dbg !1460
  br label %do.body, !dbg !1460

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !1461

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !1460
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !1460
  %5 = bitcast i8* %add.ptr to %struct.clk_gate*, !dbg !1460
  store %struct.clk_gate* %5, %struct.clk_gate** %tmp, align 8, !dbg !1461
  %6 = load %struct.clk_gate*, %struct.clk_gate** %tmp, align 8, !dbg !1460
  store %struct.clk_gate* %6, %struct.clk_gate** %gate, align 8, !dbg !1463
  %7 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !1464
  call void @clk_unregister(%struct.clk* %7) #10, !dbg !1465
  %8 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1466
  %9 = bitcast %struct.clk_gate* %8 to i8*, !dbg !1466
  call void @kfree(i8* %9) #10, !dbg !1467
  br label %return, !dbg !1468

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !1468
}

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk*) #4

; Function Attrs: noredzone
declare dso_local void @clk_unregister(%struct.clk*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_hw_unregister_gate(%struct.clk_hw* %hw) #0 !dbg !1469 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %gate = alloca %struct.clk_gate*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_gate*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !1470, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.declare(metadata %struct.clk_gate** %gate, metadata !1472, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1474, metadata !DIExpression()), !dbg !1476
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1476
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !1476
  store i8* %1, i8** %__mptr, align 8, !dbg !1476
  br label %do.body, !dbg !1476

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1477

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1476
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1476
  %3 = bitcast i8* %add.ptr to %struct.clk_gate*, !dbg !1476
  store %struct.clk_gate* %3, %struct.clk_gate** %tmp, align 8, !dbg !1477
  %4 = load %struct.clk_gate*, %struct.clk_gate** %tmp, align 8, !dbg !1476
  store %struct.clk_gate* %4, %struct.clk_gate** %gate, align 8, !dbg !1479
  %5 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1480
  call void @clk_hw_unregister(%struct.clk_hw* %5) #10, !dbg !1481
  %6 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1482
  %7 = bitcast %struct.clk_gate* %6 to i8*, !dbg !1482
  call void @kfree(i8* %7) #10, !dbg !1483
  ret void, !dbg !1484
}

; Function Attrs: noredzone
declare dso_local void @clk_hw_unregister(%struct.clk_hw*) #4

; Function Attrs: noredzone
declare dso_local i32 @ioread32be(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !1485 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !1492, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1494, metadata !DIExpression()), !dbg !1493
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !1493
  %1 = bitcast i8* %0 to i32*, !dbg !1493
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #6, !dbg !1493, !srcloc !1495
  store i32 %2, i32* %ret, align 4, !dbg !1493
  %3 = load i32, i32* %ret, align 4, !dbg !1493
  ret i32 %3, !dbg !1493
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_gate_endisable(%struct.clk_hw* %hw, i32 %enable) #0 !dbg !1496 {
entry:
  %lock.addr.i69 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i69, metadata !1499, metadata !DIExpression()), !dbg !1504
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1507, metadata !DIExpression()), !dbg !1508
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !1509, metadata !DIExpression()), !dbg !1514
  %hw.addr = alloca %struct.clk_hw*, align 8
  %enable.addr = alloca i32, align 4
  %gate = alloca %struct.clk_gate*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_gate*, align 8
  %set = alloca i32, align 4
  %flags1 = alloca i64, align 8
  %reg = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp6 = alloca i32, align 4
  %__dummy10 = alloca i64, align 8
  %__dummy211 = alloca i64, align 8
  %tmp14 = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !1522, metadata !DIExpression()), !dbg !1523
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !1524, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.declare(metadata %struct.clk_gate** %gate, metadata !1526, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1528, metadata !DIExpression()), !dbg !1530
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1530
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !1530
  store i8* %1, i8** %__mptr, align 8, !dbg !1530
  br label %do.body, !dbg !1530

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1531

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1530
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1530
  %3 = bitcast i8* %add.ptr to %struct.clk_gate*, !dbg !1530
  store %struct.clk_gate* %3, %struct.clk_gate** %tmp, align 8, !dbg !1531
  %4 = load %struct.clk_gate*, %struct.clk_gate** %tmp, align 8, !dbg !1530
  store %struct.clk_gate* %4, %struct.clk_gate** %gate, align 8, !dbg !1527
  call void @llvm.dbg.declare(metadata i32* %set, metadata !1533, metadata !DIExpression()), !dbg !1534
  %5 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1535
  %flags = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %5, i32 0, i32 3, !dbg !1536
  %6 = load i8, i8* %flags, align 1, !dbg !1536
  %conv = zext i8 %6 to i64, !dbg !1535
  %and = and i64 %conv, 1, !dbg !1537
  %tobool = icmp ne i64 %and, 0, !dbg !1535
  %7 = zext i1 %tobool to i64, !dbg !1535
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !1535
  store i32 %cond, i32* %set, align 4, !dbg !1534
  call void @llvm.dbg.declare(metadata i64* %flags1, metadata !1538, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !1540, metadata !DIExpression()), !dbg !1541
  %8 = load i32, i32* %enable.addr, align 4, !dbg !1542
  %9 = load i32, i32* %set, align 4, !dbg !1543
  %xor = xor i32 %9, %8, !dbg !1543
  store i32 %xor, i32* %set, align 4, !dbg !1543
  %10 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1544
  %lock = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %10, i32 0, i32 4, !dbg !1545
  %11 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !1545
  %tobool2 = icmp ne %struct.spinlock* %11, null, !dbg !1544
  br i1 %tobool2, label %if.then, label %if.else, !dbg !1546

if.then:                                          ; preds = %do.end
  br label %do.body3, !dbg !1547

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !1548

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1549, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1552, metadata !DIExpression()), !dbg !1551
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1551
  %conv5 = zext i1 %cmp to i32, !dbg !1551
  store i32 1, i32* %tmp6, align 4, !dbg !1551
  %12 = load i32, i32* %tmp6, align 4, !dbg !1551
  br label %do.body7, !dbg !1553

do.body7:                                         ; preds = %do.body4
  br label %do.body8, !dbg !1554

do.body8:                                         ; preds = %do.body7
  br label %do.body9, !dbg !1555

do.body9:                                         ; preds = %do.body8
  call void @llvm.dbg.declare(metadata i64* %__dummy10, metadata !1557, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.declare(metadata i64* %__dummy211, metadata !1561, metadata !DIExpression()), !dbg !1560
  %cmp12 = icmp eq i64* %__dummy10, %__dummy211, !dbg !1560
  %conv13 = zext i1 %cmp12 to i32, !dbg !1560
  store i32 1, i32* %tmp14, align 4, !dbg !1560
  %13 = load i32, i32* %tmp14, align 4, !dbg !1560
  %call = call i64 @arch_local_irq_save() #10, !dbg !1562
  store i64 %call, i64* %flags1, align 8, !dbg !1562
  br label %do.end15, !dbg !1562

do.end15:                                         ; preds = %do.body9
  br label %do.end16, !dbg !1555

do.end16:                                         ; preds = %do.end15
  br label %do.body17, !dbg !1554

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !1563, !srcloc !1564
  br label %do.body18, !dbg !1563

do.body18:                                        ; preds = %do.body17
  %14 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1565
  %lock19 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %14, i32 0, i32 4, !dbg !1565
  %15 = load %struct.spinlock*, %struct.spinlock** %lock19, align 8, !dbg !1565
  store %struct.spinlock* %15, %struct.spinlock** %lock.addr.i, align 8
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !1566
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !1567
  %rlock.i = bitcast %union.anon* %17 to %struct.raw_spinlock*, !dbg !1567
  br label %do.end21, !dbg !1565

do.end21:                                         ; preds = %do.body18
  br label %do.end22, !dbg !1563

do.end22:                                         ; preds = %do.end21
  br label %do.end23, !dbg !1554

do.end23:                                         ; preds = %do.end22
  br label %do.end24, !dbg !1553

do.end24:                                         ; preds = %do.end23
  br label %do.end25, !dbg !1548

do.end25:                                         ; preds = %do.end24
  br label %if.end, !dbg !1548

if.else:                                          ; preds = %do.end
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end25
  %18 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1568
  %flags26 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %18, i32 0, i32 3, !dbg !1570
  %19 = load i8, i8* %flags26, align 1, !dbg !1570
  %conv27 = zext i8 %19 to i64, !dbg !1568
  %and28 = and i64 %conv27, 2, !dbg !1571
  %tobool29 = icmp ne i64 %and28, 0, !dbg !1571
  br i1 %tobool29, label %if.then30, label %if.else42, !dbg !1572

if.then30:                                        ; preds = %if.end
  %20 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1573
  %bit_idx = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %20, i32 0, i32 2, !dbg !1573
  %21 = load i8, i8* %bit_idx, align 8, !dbg !1573
  %conv31 = zext i8 %21 to i32, !dbg !1573
  %add = add i32 %conv31, 16, !dbg !1573
  %sh_prom = zext i32 %add to i64, !dbg !1573
  %shl = shl i64 1, %sh_prom, !dbg !1573
  %conv32 = trunc i64 %shl to i32, !dbg !1573
  store i32 %conv32, i32* %reg, align 4, !dbg !1575
  %22 = load i32, i32* %set, align 4, !dbg !1576
  %tobool33 = icmp ne i32 %22, 0, !dbg !1576
  br i1 %tobool33, label %if.then34, label %if.end41, !dbg !1578

if.then34:                                        ; preds = %if.then30
  %23 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1579
  %bit_idx35 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %23, i32 0, i32 2, !dbg !1579
  %24 = load i8, i8* %bit_idx35, align 8, !dbg !1579
  %conv36 = zext i8 %24 to i32, !dbg !1579
  %sh_prom37 = zext i32 %conv36 to i64, !dbg !1579
  %shl38 = shl i64 1, %sh_prom37, !dbg !1579
  %25 = load i32, i32* %reg, align 4, !dbg !1580
  %conv39 = zext i32 %25 to i64, !dbg !1580
  %or = or i64 %conv39, %shl38, !dbg !1580
  %conv40 = trunc i64 %or to i32, !dbg !1580
  store i32 %conv40, i32* %reg, align 4, !dbg !1580
  br label %if.end41, !dbg !1581

if.end41:                                         ; preds = %if.then34, %if.then30
  br label %if.end62, !dbg !1582

if.else42:                                        ; preds = %if.end
  %26 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1583
  %call43 = call i32 @clk_gate_readl(%struct.clk_gate* %26) #10, !dbg !1585
  store i32 %call43, i32* %reg, align 4, !dbg !1586
  %27 = load i32, i32* %set, align 4, !dbg !1587
  %tobool44 = icmp ne i32 %27, 0, !dbg !1587
  br i1 %tobool44, label %if.then45, label %if.else53, !dbg !1589

if.then45:                                        ; preds = %if.else42
  %28 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1590
  %bit_idx46 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %28, i32 0, i32 2, !dbg !1590
  %29 = load i8, i8* %bit_idx46, align 8, !dbg !1590
  %conv47 = zext i8 %29 to i32, !dbg !1590
  %sh_prom48 = zext i32 %conv47 to i64, !dbg !1590
  %shl49 = shl i64 1, %sh_prom48, !dbg !1590
  %30 = load i32, i32* %reg, align 4, !dbg !1591
  %conv50 = zext i32 %30 to i64, !dbg !1591
  %or51 = or i64 %conv50, %shl49, !dbg !1591
  %conv52 = trunc i64 %or51 to i32, !dbg !1591
  store i32 %conv52, i32* %reg, align 4, !dbg !1591
  br label %if.end61, !dbg !1592

if.else53:                                        ; preds = %if.else42
  %31 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1593
  %bit_idx54 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %31, i32 0, i32 2, !dbg !1593
  %32 = load i8, i8* %bit_idx54, align 8, !dbg !1593
  %conv55 = zext i8 %32 to i32, !dbg !1593
  %sh_prom56 = zext i32 %conv55 to i64, !dbg !1593
  %shl57 = shl i64 1, %sh_prom56, !dbg !1593
  %neg = xor i64 %shl57, -1, !dbg !1594
  %33 = load i32, i32* %reg, align 4, !dbg !1595
  %conv58 = zext i32 %33 to i64, !dbg !1595
  %and59 = and i64 %conv58, %neg, !dbg !1595
  %conv60 = trunc i64 %and59 to i32, !dbg !1595
  store i32 %conv60, i32* %reg, align 4, !dbg !1595
  br label %if.end61

if.end61:                                         ; preds = %if.else53, %if.then45
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end41
  %34 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1596
  %35 = load i32, i32* %reg, align 4, !dbg !1597
  call void @clk_gate_writel(%struct.clk_gate* %34, i32 %35) #10, !dbg !1598
  %36 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1599
  %lock63 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %36, i32 0, i32 4, !dbg !1600
  %37 = load %struct.spinlock*, %struct.spinlock** %lock63, align 8, !dbg !1600
  %tobool64 = icmp ne %struct.spinlock* %37, null, !dbg !1599
  br i1 %tobool64, label %if.then65, label %if.else67, !dbg !1601

if.then65:                                        ; preds = %if.end62
  %38 = load %struct.clk_gate*, %struct.clk_gate** %gate, align 8, !dbg !1602
  %lock66 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %38, i32 0, i32 4, !dbg !1603
  %39 = load %struct.spinlock*, %struct.spinlock** %lock66, align 8, !dbg !1603
  %40 = load i64, i64* %flags1, align 8, !dbg !1604
  store %struct.spinlock* %39, %struct.spinlock** %lock.addr.i69, align 8
  store i64 %40, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !172, metadata !1605, metadata !DIExpression()) #6, !dbg !1608
  call void @llvm.dbg.declare(metadata !172, metadata !1609, metadata !DIExpression()) #6, !dbg !1608
  store i32 1, i32* %tmp.i, align 4, !dbg !1608
  %41 = load i32, i32* %tmp.i, align 4, !dbg !1608
  call void @llvm.dbg.declare(metadata !172, metadata !1610, metadata !DIExpression()) #6, !dbg !1615
  call void @llvm.dbg.declare(metadata !172, metadata !1616, metadata !DIExpression()) #6, !dbg !1615
  store i32 1, i32* %tmp8.i, align 4, !dbg !1615
  %42 = load i32, i32* %tmp8.i, align 4, !dbg !1615
  %43 = load i64, i64* %flags.addr.i, align 8, !dbg !1617
  call void @arch_local_irq_restore(i64 %43) #13, !dbg !1617
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !1618, !srcloc !1620
  %44 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i69, align 8, !dbg !1621
  %45 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %44, i32 0, i32 0, !dbg !1621
  %rlock.i70 = bitcast %union.anon* %45 to %struct.raw_spinlock*, !dbg !1621
  br label %if.end68, !dbg !1623

if.else67:                                        ; preds = %if.end62
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then65
  ret void, !dbg !1624
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !1625 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !1629, metadata !DIExpression()), !dbg !1630
  %call = call i64 @arch_local_save_flags() #10, !dbg !1631
  store i64 %call, i64* %f, align 8, !dbg !1632
  call void @arch_local_irq_disable() #10, !dbg !1633
  %0 = load i64, i64* %f, align 8, !dbg !1634
  ret i64 %0, !dbg !1635
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_gate_writel(%struct.clk_gate* %gate, i32 %val) #0 !dbg !1636 {
entry:
  %gate.addr = alloca %struct.clk_gate*, align 8
  %val.addr = alloca i32, align 4
  store %struct.clk_gate* %gate, %struct.clk_gate** %gate.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_gate** %gate.addr, metadata !1639, metadata !DIExpression()), !dbg !1640
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !1641, metadata !DIExpression()), !dbg !1642
  %0 = load %struct.clk_gate*, %struct.clk_gate** %gate.addr, align 8, !dbg !1643
  %flags = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %0, i32 0, i32 3, !dbg !1645
  %1 = load i8, i8* %flags, align 1, !dbg !1645
  %conv = zext i8 %1 to i64, !dbg !1643
  %and = and i64 %conv, 4, !dbg !1646
  %tobool = icmp ne i64 %and, 0, !dbg !1646
  br i1 %tobool, label %if.then, label %if.else, !dbg !1647

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %val.addr, align 4, !dbg !1648
  %3 = load %struct.clk_gate*, %struct.clk_gate** %gate.addr, align 8, !dbg !1649
  %reg = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %3, i32 0, i32 1, !dbg !1650
  %4 = load i8*, i8** %reg, align 8, !dbg !1650
  call void @iowrite32be(i32 %2, i8* %4) #10, !dbg !1651
  br label %if.end, !dbg !1651

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %val.addr, align 4, !dbg !1652
  %6 = load %struct.clk_gate*, %struct.clk_gate** %gate.addr, align 8, !dbg !1653
  %reg1 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %6, i32 0, i32 1, !dbg !1654
  %7 = load i8*, i8** %reg1, align 8, !dbg !1654
  call void @writel(i32 %5, i8* %7) #10, !dbg !1655
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1656
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1657 {
entry:
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1658, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1661, metadata !DIExpression()), !dbg !1660
  %0 = load i64, i64* %__edi, align 8, !dbg !1660
  store i64 %0, i64* %__edi, align 8, !dbg !1660
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1662, metadata !DIExpression()), !dbg !1660
  %1 = load i64, i64* %__esi, align 8, !dbg !1660
  store i64 %1, i64* %__esi, align 8, !dbg !1660
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1663, metadata !DIExpression()), !dbg !1660
  %2 = load i64, i64* %__edx, align 8, !dbg !1660
  store i64 %2, i64* %__edx, align 8, !dbg !1660
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1664, metadata !DIExpression()), !dbg !1660
  %3 = load i64, i64* %__ecx, align 8, !dbg !1660
  store i64 %3, i64* %__ecx, align 8, !dbg !1660
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1665, metadata !DIExpression()), !dbg !1660
  %4 = load i64, i64* %__eax, align 8, !dbg !1660
  store i64 %4, i64* %__eax, align 8, !dbg !1660
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1660
  %6 = call i64 @llvm.read_register.i64(metadata !178), !dbg !1666
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !1666, !srcloc !1669
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1666
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1666
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1666
  call void @llvm.write_register.i64(metadata !178, i64 %asmresult1), !dbg !1666
  %8 = load i64, i64* %__eax, align 8, !dbg !1666
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1670, metadata !DIExpression()), !dbg !1672
  store i64 -1, i64* %__mask, align 8, !dbg !1672
  %9 = load i64, i64* %__mask, align 8, !dbg !1672
  store i64 %9, i64* %tmp, align 8, !dbg !1672
  %10 = load i64, i64* %tmp, align 8, !dbg !1672
  %and = and i64 %8, %10, !dbg !1666
  store i64 %and, i64* %__ret, align 8, !dbg !1666
  %11 = load i64, i64* %__ret, align 8, !dbg !1660
  store i64 %11, i64* %tmp2, align 8, !dbg !1673
  %12 = load i64, i64* %tmp2, align 8, !dbg !1660
  ret i64 %12, !dbg !1674
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !1675 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1678, metadata !DIExpression()), !dbg !1680
  %0 = load i64, i64* %__edi, align 8, !dbg !1680
  store i64 %0, i64* %__edi, align 8, !dbg !1680
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1681, metadata !DIExpression()), !dbg !1680
  %1 = load i64, i64* %__esi, align 8, !dbg !1680
  store i64 %1, i64* %__esi, align 8, !dbg !1680
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1682, metadata !DIExpression()), !dbg !1680
  %2 = load i64, i64* %__edx, align 8, !dbg !1680
  store i64 %2, i64* %__edx, align 8, !dbg !1680
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1683, metadata !DIExpression()), !dbg !1680
  %3 = load i64, i64* %__ecx, align 8, !dbg !1680
  store i64 %3, i64* %__ecx, align 8, !dbg !1680
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1684, metadata !DIExpression()), !dbg !1680
  %4 = load i64, i64* %__eax, align 8, !dbg !1680
  store i64 %4, i64* %__eax, align 8, !dbg !1680
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !1680
  %6 = call i64 @llvm.read_register.i64(metadata !178), !dbg !1680
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #6, !dbg !1680, !srcloc !1685
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1680
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1680
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1680
  call void @llvm.write_register.i64(metadata !178, i64 %asmresult1), !dbg !1680
  ret void, !dbg !1686
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noredzone
declare dso_local void @iowrite32be(i32, i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !1687 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !1691, metadata !DIExpression()), !dbg !1692
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !1693, metadata !DIExpression()), !dbg !1692
  %0 = load i32, i32* %val.addr, align 4, !dbg !1692
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !1692
  %2 = bitcast i8* %1 to i32*, !dbg !1692
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #6, !dbg !1692, !srcloc !1694
  ret void, !dbg !1692
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !1695 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !1698, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1700, metadata !DIExpression()), !dbg !1702
  %0 = load i64, i64* %__edi, align 8, !dbg !1702
  store i64 %0, i64* %__edi, align 8, !dbg !1702
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1703, metadata !DIExpression()), !dbg !1702
  %1 = load i64, i64* %__esi, align 8, !dbg !1702
  store i64 %1, i64* %__esi, align 8, !dbg !1702
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1704, metadata !DIExpression()), !dbg !1702
  %2 = load i64, i64* %__edx, align 8, !dbg !1702
  store i64 %2, i64* %__edx, align 8, !dbg !1702
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1705, metadata !DIExpression()), !dbg !1702
  %3 = load i64, i64* %__ecx, align 8, !dbg !1702
  store i64 %3, i64* %__ecx, align 8, !dbg !1702
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1706, metadata !DIExpression()), !dbg !1702
  %4 = load i64, i64* %__eax, align 8, !dbg !1702
  store i64 %4, i64* %__eax, align 8, !dbg !1702
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !1702
  %6 = call i64 @llvm.read_register.i64(metadata !178), !dbg !1702
  %7 = load i64, i64* %f.addr, align 8, !dbg !1702
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #6, !dbg !1702, !srcloc !1707
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !1702
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !1702
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1702
  call void @llvm.write_register.i64(metadata !178, i64 %asmresult1), !dbg !1702
  ret void, !dbg !1708
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #4

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #9 !dbg !1709 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1713, metadata !DIExpression()), !dbg !1718
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1720, metadata !DIExpression()), !dbg !1721
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1722, metadata !DIExpression()), !dbg !1723
  %0 = load i64, i64* %size.addr, align 8, !dbg !1724
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1726
  br i1 %1, label %if.then, label %if.end447, !dbg !1727

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1728
  %tobool = icmp ne i64 %2, 0, !dbg !1728
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1731

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1732
  br label %return, !dbg !1732

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1733
  %cmp = icmp ult i64 %3, 4096, !dbg !1735
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1736

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1737
  br label %return, !dbg !1737

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub = sub i64 %4, 1, !dbg !1738
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1738
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1738

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub4 = sub i64 %6, 1, !dbg !1738
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1738
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1738

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub6 = sub i64 %8, 1, !dbg !1738
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1738
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1738

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1738

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub9 = sub i64 %9, 1, !dbg !1738
  %and = and i64 %sub9, -9223372036854775808, !dbg !1738
  %tobool10 = icmp ne i64 %and, 0, !dbg !1738
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1738

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1738

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub13 = sub i64 %10, 1, !dbg !1738
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1738
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1738
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1738

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1738

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub18 = sub i64 %11, 1, !dbg !1738
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1738
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1738
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1738

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1738

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub23 = sub i64 %12, 1, !dbg !1738
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1738
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1738
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1738

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1738

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub28 = sub i64 %13, 1, !dbg !1738
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1738
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1738
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1738

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1738

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub33 = sub i64 %14, 1, !dbg !1738
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1738
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1738
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1738

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1738

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub38 = sub i64 %15, 1, !dbg !1738
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1738
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1738
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1738

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1738

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub43 = sub i64 %16, 1, !dbg !1738
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1738
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1738
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1738

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1738

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub48 = sub i64 %17, 1, !dbg !1738
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1738
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1738
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1738

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1738

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub53 = sub i64 %18, 1, !dbg !1738
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1738
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1738
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1738

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1738

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub58 = sub i64 %19, 1, !dbg !1738
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1738
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1738
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1738

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1738

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub63 = sub i64 %20, 1, !dbg !1738
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1738
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1738
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1738

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1738

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub68 = sub i64 %21, 1, !dbg !1738
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1738
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1738
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1738

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1738

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub73 = sub i64 %22, 1, !dbg !1738
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1738
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1738
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1738

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1738

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub78 = sub i64 %23, 1, !dbg !1738
  %and79 = and i64 %sub78, 562949953421312, !dbg !1738
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1738
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1738

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1738

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub83 = sub i64 %24, 1, !dbg !1738
  %and84 = and i64 %sub83, 281474976710656, !dbg !1738
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1738
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1738

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1738

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub88 = sub i64 %25, 1, !dbg !1738
  %and89 = and i64 %sub88, 140737488355328, !dbg !1738
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1738
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1738

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1738

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub93 = sub i64 %26, 1, !dbg !1738
  %and94 = and i64 %sub93, 70368744177664, !dbg !1738
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1738
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1738

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1738

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub98 = sub i64 %27, 1, !dbg !1738
  %and99 = and i64 %sub98, 35184372088832, !dbg !1738
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1738
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1738

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1738

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub103 = sub i64 %28, 1, !dbg !1738
  %and104 = and i64 %sub103, 17592186044416, !dbg !1738
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1738
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1738

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1738

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub108 = sub i64 %29, 1, !dbg !1738
  %and109 = and i64 %sub108, 8796093022208, !dbg !1738
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1738
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1738

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1738

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub113 = sub i64 %30, 1, !dbg !1738
  %and114 = and i64 %sub113, 4398046511104, !dbg !1738
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1738
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1738

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1738

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub118 = sub i64 %31, 1, !dbg !1738
  %and119 = and i64 %sub118, 2199023255552, !dbg !1738
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1738
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1738

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1738

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub123 = sub i64 %32, 1, !dbg !1738
  %and124 = and i64 %sub123, 1099511627776, !dbg !1738
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1738
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1738

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1738

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub128 = sub i64 %33, 1, !dbg !1738
  %and129 = and i64 %sub128, 549755813888, !dbg !1738
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1738
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1738

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1738

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub133 = sub i64 %34, 1, !dbg !1738
  %and134 = and i64 %sub133, 274877906944, !dbg !1738
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1738
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1738

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1738

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub138 = sub i64 %35, 1, !dbg !1738
  %and139 = and i64 %sub138, 137438953472, !dbg !1738
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1738
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1738

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1738

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub143 = sub i64 %36, 1, !dbg !1738
  %and144 = and i64 %sub143, 68719476736, !dbg !1738
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1738
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1738

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1738

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub148 = sub i64 %37, 1, !dbg !1738
  %and149 = and i64 %sub148, 34359738368, !dbg !1738
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1738
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1738

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1738

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub153 = sub i64 %38, 1, !dbg !1738
  %and154 = and i64 %sub153, 17179869184, !dbg !1738
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1738
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1738

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1738

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub158 = sub i64 %39, 1, !dbg !1738
  %and159 = and i64 %sub158, 8589934592, !dbg !1738
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1738
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1738

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1738

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub163 = sub i64 %40, 1, !dbg !1738
  %and164 = and i64 %sub163, 4294967296, !dbg !1738
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1738
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1738

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1738

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub168 = sub i64 %41, 1, !dbg !1738
  %and169 = and i64 %sub168, 2147483648, !dbg !1738
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1738
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1738

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1738

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub173 = sub i64 %42, 1, !dbg !1738
  %and174 = and i64 %sub173, 1073741824, !dbg !1738
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1738
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1738

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1738

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub178 = sub i64 %43, 1, !dbg !1738
  %and179 = and i64 %sub178, 536870912, !dbg !1738
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1738
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1738

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1738

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub183 = sub i64 %44, 1, !dbg !1738
  %and184 = and i64 %sub183, 268435456, !dbg !1738
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1738
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1738

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1738

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub188 = sub i64 %45, 1, !dbg !1738
  %and189 = and i64 %sub188, 134217728, !dbg !1738
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1738
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1738

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1738

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub193 = sub i64 %46, 1, !dbg !1738
  %and194 = and i64 %sub193, 67108864, !dbg !1738
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1738
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1738

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1738

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub198 = sub i64 %47, 1, !dbg !1738
  %and199 = and i64 %sub198, 33554432, !dbg !1738
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1738
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1738

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1738

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub203 = sub i64 %48, 1, !dbg !1738
  %and204 = and i64 %sub203, 16777216, !dbg !1738
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1738
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1738

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1738

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub208 = sub i64 %49, 1, !dbg !1738
  %and209 = and i64 %sub208, 8388608, !dbg !1738
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1738
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1738

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1738

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub213 = sub i64 %50, 1, !dbg !1738
  %and214 = and i64 %sub213, 4194304, !dbg !1738
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1738
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1738

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1738

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub218 = sub i64 %51, 1, !dbg !1738
  %and219 = and i64 %sub218, 2097152, !dbg !1738
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1738
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1738

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1738

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub223 = sub i64 %52, 1, !dbg !1738
  %and224 = and i64 %sub223, 1048576, !dbg !1738
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1738
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1738

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1738

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub228 = sub i64 %53, 1, !dbg !1738
  %and229 = and i64 %sub228, 524288, !dbg !1738
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1738
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1738

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1738

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub233 = sub i64 %54, 1, !dbg !1738
  %and234 = and i64 %sub233, 262144, !dbg !1738
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1738
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1738

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1738

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub238 = sub i64 %55, 1, !dbg !1738
  %and239 = and i64 %sub238, 131072, !dbg !1738
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1738
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1738

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1738

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub243 = sub i64 %56, 1, !dbg !1738
  %and244 = and i64 %sub243, 65536, !dbg !1738
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1738
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1738

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1738

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub248 = sub i64 %57, 1, !dbg !1738
  %and249 = and i64 %sub248, 32768, !dbg !1738
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1738
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1738

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1738

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub253 = sub i64 %58, 1, !dbg !1738
  %and254 = and i64 %sub253, 16384, !dbg !1738
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1738
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1738

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1738

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub258 = sub i64 %59, 1, !dbg !1738
  %and259 = and i64 %sub258, 8192, !dbg !1738
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1738
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1738

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1738

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub263 = sub i64 %60, 1, !dbg !1738
  %and264 = and i64 %sub263, 4096, !dbg !1738
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1738
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1738

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1738

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub268 = sub i64 %61, 1, !dbg !1738
  %and269 = and i64 %sub268, 2048, !dbg !1738
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1738
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1738

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1738

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub273 = sub i64 %62, 1, !dbg !1738
  %and274 = and i64 %sub273, 1024, !dbg !1738
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1738
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1738

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1738

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub278 = sub i64 %63, 1, !dbg !1738
  %and279 = and i64 %sub278, 512, !dbg !1738
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1738
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1738

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1738

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub283 = sub i64 %64, 1, !dbg !1738
  %and284 = and i64 %sub283, 256, !dbg !1738
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1738
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1738

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1738

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub288 = sub i64 %65, 1, !dbg !1738
  %and289 = and i64 %sub288, 128, !dbg !1738
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1738
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1738

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1738

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub293 = sub i64 %66, 1, !dbg !1738
  %and294 = and i64 %sub293, 64, !dbg !1738
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1738
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1738

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1738

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub298 = sub i64 %67, 1, !dbg !1738
  %and299 = and i64 %sub298, 32, !dbg !1738
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1738
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1738

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1738

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub303 = sub i64 %68, 1, !dbg !1738
  %and304 = and i64 %sub303, 16, !dbg !1738
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1738
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1738

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1738

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub308 = sub i64 %69, 1, !dbg !1738
  %and309 = and i64 %sub308, 8, !dbg !1738
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1738
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1738

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1738

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub313 = sub i64 %70, 1, !dbg !1738
  %and314 = and i64 %sub313, 4, !dbg !1738
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1738
  %71 = zext i1 %tobool315 to i64, !dbg !1738
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1738
  br label %cond.end, !dbg !1738

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1738
  br label %cond.end317, !dbg !1738

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1738
  br label %cond.end319, !dbg !1738

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1738
  br label %cond.end321, !dbg !1738

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1738
  br label %cond.end323, !dbg !1738

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1738
  br label %cond.end325, !dbg !1738

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1738
  br label %cond.end327, !dbg !1738

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1738
  br label %cond.end329, !dbg !1738

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1738
  br label %cond.end331, !dbg !1738

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1738
  br label %cond.end333, !dbg !1738

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1738
  br label %cond.end335, !dbg !1738

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1738
  br label %cond.end337, !dbg !1738

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1738
  br label %cond.end339, !dbg !1738

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1738
  br label %cond.end341, !dbg !1738

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1738
  br label %cond.end343, !dbg !1738

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1738
  br label %cond.end345, !dbg !1738

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1738
  br label %cond.end347, !dbg !1738

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1738
  br label %cond.end349, !dbg !1738

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1738
  br label %cond.end351, !dbg !1738

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1738
  br label %cond.end353, !dbg !1738

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1738
  br label %cond.end355, !dbg !1738

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1738
  br label %cond.end357, !dbg !1738

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1738
  br label %cond.end359, !dbg !1738

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1738
  br label %cond.end361, !dbg !1738

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1738
  br label %cond.end363, !dbg !1738

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1738
  br label %cond.end365, !dbg !1738

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1738
  br label %cond.end367, !dbg !1738

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1738
  br label %cond.end369, !dbg !1738

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1738
  br label %cond.end371, !dbg !1738

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1738
  br label %cond.end373, !dbg !1738

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1738
  br label %cond.end375, !dbg !1738

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1738
  br label %cond.end377, !dbg !1738

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1738
  br label %cond.end379, !dbg !1738

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1738
  br label %cond.end381, !dbg !1738

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1738
  br label %cond.end383, !dbg !1738

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1738
  br label %cond.end385, !dbg !1738

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1738
  br label %cond.end387, !dbg !1738

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1738
  br label %cond.end389, !dbg !1738

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1738
  br label %cond.end391, !dbg !1738

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1738
  br label %cond.end393, !dbg !1738

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1738
  br label %cond.end395, !dbg !1738

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1738
  br label %cond.end397, !dbg !1738

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1738
  br label %cond.end399, !dbg !1738

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1738
  br label %cond.end401, !dbg !1738

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1738
  br label %cond.end403, !dbg !1738

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1738
  br label %cond.end405, !dbg !1738

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1738
  br label %cond.end407, !dbg !1738

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1738
  br label %cond.end409, !dbg !1738

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1738
  br label %cond.end411, !dbg !1738

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1738
  br label %cond.end413, !dbg !1738

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1738
  br label %cond.end415, !dbg !1738

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1738
  br label %cond.end417, !dbg !1738

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1738
  br label %cond.end419, !dbg !1738

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1738
  br label %cond.end421, !dbg !1738

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1738
  br label %cond.end423, !dbg !1738

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1738
  br label %cond.end425, !dbg !1738

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1738
  br label %cond.end427, !dbg !1738

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1738
  br label %cond.end429, !dbg !1738

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1738
  br label %cond.end431, !dbg !1738

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1738
  br label %cond.end433, !dbg !1738

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1738
  br label %cond.end435, !dbg !1738

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1738
  br label %cond.end437, !dbg !1738

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1738
  br label %cond.end440, !dbg !1738

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1738

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1738
  br label %cond.end444, !dbg !1738

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1738
  %sub443 = sub i64 %72, 1, !dbg !1738
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !1738
  br label %cond.end444, !dbg !1738

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1738
  %sub446 = sub i32 %cond445, 12, !dbg !1739
  %add = add i32 %sub446, 1, !dbg !1740
  store i32 %add, i32* %retval, align 4, !dbg !1741
  br label %return, !dbg !1741

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1742
  %dec = add i64 %73, -1, !dbg !1742
  store i64 %dec, i64* %size.addr, align 8, !dbg !1742
  %74 = load i64, i64* %size.addr, align 8, !dbg !1743
  %shr = lshr i64 %74, 12, !dbg !1743
  store i64 %shr, i64* %size.addr, align 8, !dbg !1743
  %75 = load i64, i64* %size.addr, align 8, !dbg !1744
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1721
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1745
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1746
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #5, !dbg !1745, !srcloc !1747
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1745
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1748
  %add.i = add i32 %79, 1, !dbg !1749
  store i32 %add.i, i32* %retval, align 4, !dbg !1750
  br label %return, !dbg !1750

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1751
  ret i32 %80, !dbg !1751
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #9 !dbg !1752 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1713, metadata !DIExpression()), !dbg !1756
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1720, metadata !DIExpression()), !dbg !1758
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1759, metadata !DIExpression()), !dbg !1760
  %0 = load i64, i64* %n.addr, align 8, !dbg !1761
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1758
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1762
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1763
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #5, !dbg !1762, !srcloc !1747
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1762
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1764
  %add.i = add i32 %4, 1, !dbg !1765
  %sub = sub i32 %add.i, 1, !dbg !1766
  ret i32 %sub, !dbg !1767
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1768 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1772, metadata !DIExpression()), !dbg !1773
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1774, metadata !DIExpression()), !dbg !1775
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1776, metadata !DIExpression()), !dbg !1777
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1778, metadata !DIExpression()), !dbg !1779
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1780
  ret i8* %0, !dbg !1781
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind willreturn }
attributes #9 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!178}
!llvm.module.flags = !{!179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "clk_gate_ops", scope: !2, file: !3, line: 119, type: !45, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !177, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/clk/clk-gate.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !13, line: 305, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!19 = !{!20, !21, !173, !175, !70}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_gate", file: !23, line: 471, size: 384, elements: !24)
!23 = !DIFile(filename: "./include/linux/clk-provider.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !153, !154, !155, !156}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !22, file: !23, line: 472, baseType: !26, size: 192)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_hw", file: !23, line: 312, size: 192, elements: !27)
!27 = !{!28, !31, !34}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !26, file: !23, line: 313, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk_core", file: !23, line: 38, flags: DIFlagFwdDecl)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !26, file: !23, line: 314, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !23, line: 36, flags: DIFlagFwdDecl)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !26, file: !23, line: 315, baseType: !35, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_init_data", file: !23, line: 285, size: 448, elements: !38)
!38 = !{!39, !43, !135, !138, !149, !151, !152}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !37, file: !23, line: 286, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !37, file: !23, line: 287, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_ops", file: !23, line: 220, size: 1600, elements: !47)
!47 = !{!48, !54, !58, !59, !60, !61, !62, !63, !64, !65, !66, !71, !77, !89, !98, !102, !106, !110, !111, !112, !116, !125, !126, !127, !128}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !46, file: !23, line: 221, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !53}
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !46, file: !23, line: 222, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !53}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !46, file: !23, line: 223, baseType: !49, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_unused", scope: !46, file: !23, line: 224, baseType: !55, size: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !46, file: !23, line: 225, baseType: !49, size: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !46, file: !23, line: 226, baseType: !55, size: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "is_enabled", scope: !46, file: !23, line: 227, baseType: !49, size: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "disable_unused", scope: !46, file: !23, line: 228, baseType: !55, size: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "save_context", scope: !46, file: !23, line: 229, baseType: !49, size: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "restore_context", scope: !46, file: !23, line: 230, baseType: !55, size: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_rate", scope: !46, file: !23, line: 231, baseType: !67, size: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !53, !70}
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "round_rate", scope: !46, file: !23, line: 233, baseType: !72, size: 64, offset: 704)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !53, !70, !76}
!75 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "determine_rate", scope: !46, file: !23, line: 235, baseType: !78, size: 64, offset: 768)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!52, !53, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_rate_request", file: !23, line: 55, size: 320, elements: !83)
!83 = !{!84, !85, !86, !87, !88}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !82, file: !23, line: 56, baseType: !70, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "min_rate", scope: !82, file: !23, line: 57, baseType: !70, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "max_rate", scope: !82, file: !23, line: 58, baseType: !70, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_rate", scope: !82, file: !23, line: 59, baseType: !70, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_hw", scope: !82, file: !23, line: 60, baseType: !53, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "set_parent", scope: !46, file: !23, line: 237, baseType: !90, size: 64, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!52, !53, !93}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !94, line: 17, baseType: !95)
!94 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !96, line: 21, baseType: !97)
!96 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !46, file: !23, line: 238, baseType: !99, size: 64, offset: 896)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!93, !53}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !46, file: !23, line: 239, baseType: !103, size: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!52, !53, !70, !70}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate_and_parent", scope: !46, file: !23, line: 241, baseType: !107, size: 64, offset: 1024)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!52, !53, !70, !70, !93}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_accuracy", scope: !46, file: !23, line: 244, baseType: !67, size: 64, offset: 1088)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "get_phase", scope: !46, file: !23, line: 246, baseType: !49, size: 64, offset: 1152)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "set_phase", scope: !46, file: !23, line: 247, baseType: !113, size: 64, offset: 1216)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!52, !53, !52}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "get_duty_cycle", scope: !46, file: !23, line: 248, baseType: !117, size: 64, offset: 1280)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!52, !53, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_duty", file: !23, line: 69, size: 64, elements: !122)
!122 = !{!123, !124}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !121, file: !23, line: 70, baseType: !7, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !121, file: !23, line: 71, baseType: !7, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "set_duty_cycle", scope: !46, file: !23, line: 250, baseType: !117, size: 64, offset: 1344)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !46, file: !23, line: 252, baseType: !49, size: 64, offset: 1408)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "terminate", scope: !46, file: !23, line: 253, baseType: !55, size: 64, offset: 1472)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "debug_init", scope: !46, file: !23, line: 254, baseType: !129, size: 64, offset: 1536)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !53, !132}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !134, line: 21, flags: DIFlagFwdDecl)
!134 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!135 = !DIDerivedType(tag: DW_TAG_member, name: "parent_names", scope: !37, file: !23, line: 289, baseType: !136, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !37, file: !23, line: 290, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_parent_data", file: !23, line: 264, size: 256, elements: !142)
!142 = !{!143, !146, !147, !148}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !141, file: !23, line: 265, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "fw_name", scope: !141, file: !23, line: 266, baseType: !40, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !141, file: !23, line: 267, baseType: !40, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !141, file: !23, line: 268, baseType: !52, size: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parent_hws", scope: !37, file: !23, line: 291, baseType: !150, size: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "num_parents", scope: !37, file: !23, line: 292, baseType: !93, size: 8, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !37, file: !23, line: 293, baseType: !70, size: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !22, file: !23, line: 473, baseType: !20, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "bit_idx", scope: !22, file: !23, line: 474, baseType: !93, size: 8, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !22, file: !23, line: 475, baseType: !93, size: 8, offset: 264)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !22, file: !23, line: 476, baseType: !157, size: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !159, line: 83, baseType: !160)
!159 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !159, line: 71, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !159, line: 72, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !159, line: 72, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !163, file: !159, line: 73, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !159, line: 20, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !166, file: !159, line: 21, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !170, line: 25, baseType: !171)
!170 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 25, elements: !172)
!172 = !{}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !174, line: 148, baseType: !7)
!174 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!177 = !{!0}
!178 = !{!"rsp"}
!179 = !{i32 7, !"Dwarf Version", i32 4}
!180 = !{i32 2, !"Debug Info Version", i32 3}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"Code Model", i32 2}
!183 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!184 = distinct !DISubprogram(name: "clk_gate_is_enabled", scope: !3, file: !3, line: 102, type: !50, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !172)
!185 = !DILocalVariable(name: "hw", arg: 1, scope: !184, file: !3, line: 102, type: !53)
!186 = !DILocation(line: 102, column: 40, scope: !184)
!187 = !DILocalVariable(name: "reg", scope: !184, file: !3, line: 104, type: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !94, line: 21, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !96, line: 27, baseType: !7)
!190 = !DILocation(line: 104, column: 6, scope: !184)
!191 = !DILocalVariable(name: "gate", scope: !184, file: !3, line: 105, type: !21)
!192 = !DILocation(line: 105, column: 19, scope: !184)
!193 = !DILocalVariable(name: "__mptr", scope: !194, file: !3, line: 105, type: !20)
!194 = distinct !DILexicalBlock(scope: !184, file: !3, line: 105, column: 26)
!195 = !DILocation(line: 105, column: 26, scope: !194)
!196 = !DILocation(line: 105, column: 26, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !3, line: 105, column: 26)
!198 = !DILocation(line: 107, column: 23, scope: !184)
!199 = !DILocation(line: 107, column: 8, scope: !184)
!200 = !DILocation(line: 107, column: 6, scope: !184)
!201 = !DILocation(line: 110, column: 6, scope: !202)
!202 = distinct !DILexicalBlock(scope: !184, file: !3, line: 110, column: 6)
!203 = !DILocation(line: 110, column: 12, scope: !202)
!204 = !DILocation(line: 110, column: 18, scope: !202)
!205 = !DILocation(line: 110, column: 6, scope: !184)
!206 = !DILocation(line: 111, column: 10, scope: !202)
!207 = !DILocation(line: 111, column: 7, scope: !202)
!208 = !DILocation(line: 111, column: 3, scope: !202)
!209 = !DILocation(line: 113, column: 9, scope: !184)
!210 = !DILocation(line: 113, column: 6, scope: !184)
!211 = !DILocation(line: 115, column: 9, scope: !184)
!212 = !DILocation(line: 115, column: 2, scope: !184)
!213 = distinct !DISubprogram(name: "clk_gate_readl", scope: !3, file: !3, line: 26, type: !214, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!214 = !DISubroutineType(types: !215)
!215 = !{!188, !21}
!216 = !DILocalVariable(name: "gate", arg: 1, scope: !213, file: !3, line: 26, type: !21)
!217 = !DILocation(line: 26, column: 51, scope: !213)
!218 = !DILocation(line: 28, column: 6, scope: !219)
!219 = distinct !DILexicalBlock(scope: !213, file: !3, line: 28, column: 6)
!220 = !DILocation(line: 28, column: 12, scope: !219)
!221 = !DILocation(line: 28, column: 18, scope: !219)
!222 = !DILocation(line: 28, column: 6, scope: !213)
!223 = !DILocation(line: 29, column: 21, scope: !219)
!224 = !DILocation(line: 29, column: 27, scope: !219)
!225 = !DILocation(line: 29, column: 10, scope: !219)
!226 = !DILocation(line: 29, column: 3, scope: !219)
!227 = !DILocation(line: 31, column: 15, scope: !213)
!228 = !DILocation(line: 31, column: 21, scope: !213)
!229 = !DILocation(line: 31, column: 9, scope: !213)
!230 = !DILocation(line: 31, column: 2, scope: !213)
!231 = !DILocation(line: 32, column: 1, scope: !213)
!232 = distinct !DISubprogram(name: "clk_gate_enable", scope: !3, file: !3, line: 90, type: !50, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!233 = !DILocalVariable(name: "hw", arg: 1, scope: !232, file: !3, line: 90, type: !53)
!234 = !DILocation(line: 90, column: 43, scope: !232)
!235 = !DILocation(line: 92, column: 21, scope: !232)
!236 = !DILocation(line: 92, column: 2, scope: !232)
!237 = !DILocation(line: 94, column: 2, scope: !232)
!238 = distinct !DISubprogram(name: "clk_gate_disable", scope: !3, file: !3, line: 97, type: !56, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!239 = !DILocalVariable(name: "hw", arg: 1, scope: !238, file: !3, line: 97, type: !53)
!240 = !DILocation(line: 97, column: 45, scope: !238)
!241 = !DILocation(line: 99, column: 21, scope: !238)
!242 = !DILocation(line: 99, column: 2, scope: !238)
!243 = !DILocation(line: 100, column: 1, scope: !238)
!244 = distinct !DISubprogram(name: "__clk_hw_register_gate", scope: !3, file: !3, line: 126, type: !245, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !172)
!245 = !DISubroutineType(types: !246)
!246 = !{!53, !247, !250, !40, !40, !144, !139, !70, !20, !93, !93, !157}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !249, line: 15, flags: DIFlagFwdDecl)
!249 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !252, line: 51, size: 1344, elements: !253)
!252 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!253 = !{!254, !255, !257, !258, !360, !970, !971, !972, !973, !974, !975, !976}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !251, file: !252, line: 52, baseType: !40, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !251, file: !252, line: 53, baseType: !256, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !252, line: 28, baseType: !188)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !251, file: !252, line: 54, baseType: !40, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !251, file: !252, line: 55, baseType: !259, size: 192, offset: 192)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !249, line: 17, size: 192, elements: !260)
!260 = !{!261, !263, !359}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !259, file: !249, line: 18, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !259, file: !249, line: 19, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !249, line: 110, size: 1152, elements: !267)
!267 = !{!268, !272, !276, !284, !292, !296, !304, !309, !313, !314, !318, !322, !326, !342, !343, !344, !345, !355}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !266, file: !249, line: 111, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!262, !262}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !266, file: !249, line: 112, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !262}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !266, file: !249, line: 113, baseType: !277, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!280, !282}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !174, line: 30, baseType: !281)
!281 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !266, file: !249, line: 114, baseType: !285, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!288, !282, !290}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !266, file: !249, line: 116, baseType: !293, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!280, !282, !40}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !266, file: !249, line: 118, baseType: !297, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!52, !282, !40, !7, !20, !300}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !174, line: 55, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !302, line: 72, baseType: !303)
!302 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !302, line: 16, baseType: !70)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !266, file: !249, line: 123, baseType: !305, size: 64, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!52, !282, !40, !308, !300}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !266, file: !249, line: 126, baseType: !310, size: 64, offset: 448)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!40, !282}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !266, file: !249, line: 127, baseType: !310, size: 64, offset: 512)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !266, file: !249, line: 128, baseType: !315, size: 64, offset: 576)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!262, !282}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !266, file: !249, line: 130, baseType: !319, size: 64, offset: 640)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!262, !282, !262}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !266, file: !249, line: 133, baseType: !323, size: 64, offset: 704)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!262, !282, !40}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !266, file: !249, line: 135, baseType: !327, size: 64, offset: 768)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!52, !282, !40, !40, !7, !7, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !249, line: 43, size: 640, elements: !332)
!332 = !{!333, !334, !335}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !331, file: !249, line: 44, baseType: !262, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !331, file: !249, line: 45, baseType: !7, size: 32, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !331, file: !249, line: 46, baseType: !336, size: 512, offset: 128)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 512, elements: !340)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !94, line: 23, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !96, line: 31, baseType: !339)
!339 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!340 = !{!341}
!341 = !DISubrange(count: 8)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !266, file: !249, line: 140, baseType: !319, size: 64, offset: 832)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !266, file: !249, line: 143, baseType: !315, size: 64, offset: 896)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !266, file: !249, line: 145, baseType: !269, size: 64, offset: 960)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !266, file: !249, line: 146, baseType: !346, size: 64, offset: 1024)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!52, !282, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !249, line: 29, size: 128, elements: !351)
!351 = !{!352, !353, !354}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !350, file: !249, line: 30, baseType: !7, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !350, file: !249, line: 31, baseType: !7, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !350, file: !249, line: 32, baseType: !282, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !266, file: !249, line: 148, baseType: !356, size: 64, offset: 1088)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!52, !282, !247}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !259, file: !249, line: 20, baseType: !247, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !251, file: !252, line: 57, baseType: !361, size: 64, offset: 384)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !252, line: 31, size: 704, elements: !363)
!363 = !{!364, !366, !367, !368, !369}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !362, file: !252, line: 32, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !362, file: !252, line: 33, baseType: !52, size: 32, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !362, file: !252, line: 34, baseType: !20, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !252, line: 35, baseType: !361, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !362, file: !252, line: 43, baseType: !370, size: 448, offset: 256)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !371, line: 168, size: 448, elements: !372)
!371 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!372 = !{!373, !380, !381, !382, !965, !966}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !370, file: !371, line: 169, baseType: !374, size: 128)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !371, line: 30, size: 128, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !374, file: !371, line: 31, baseType: !40, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !374, file: !371, line: 32, baseType: !378, size: 16, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !174, line: 19, baseType: !379)
!379 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !370, file: !371, line: 170, baseType: !300, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !370, file: !371, line: 171, baseType: !20, size: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !370, file: !371, line: 172, baseType: !383, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!386, !389, !392, !487, !365, !697, !300}
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !174, line: 60, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !302, line: 73, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !302, line: 15, baseType: !75)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !391, line: 526, flags: DIFlagFwdDecl)
!391 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !394, line: 64, size: 512, elements: !395)
!394 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!395 = !{!396, !397, !403, !404, !448, !545, !950, !960, !961, !962, !963, !964}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !394, line: 65, baseType: !40, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !393, file: !394, line: 66, baseType: !398, size: 128, offset: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !174, line: 178, size: 128, elements: !399)
!399 = !{!400, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !174, line: 179, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !398, file: !174, line: 179, baseType: !401, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !393, file: !394, line: 67, baseType: !392, size: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !393, file: !394, line: 68, baseType: !405, size: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !394, line: 192, size: 704, elements: !407)
!407 = !{!408, !409, !410, !411}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !406, file: !394, line: 193, baseType: !398, size: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !406, file: !394, line: 194, baseType: !158, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !406, file: !394, line: 195, baseType: !393, size: 512, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !406, file: !394, line: 196, baseType: !412, size: 64, offset: 640)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !394, line: 156, size: 192, elements: !415)
!415 = !{!416, !421, !426}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !414, file: !394, line: 157, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!52, !405, !392}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !414, file: !394, line: 158, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!40, !405, !392}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !414, file: !394, line: 159, baseType: !427, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!52, !405, !392, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !394, line: 148, size: 20736, elements: !433)
!433 = !{!434, !438, !442, !443, !447}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !432, file: !394, line: 149, baseType: !435, size: 192)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 192, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 3)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !432, file: !394, line: 150, baseType: !439, size: 4096, offset: 192)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 4096, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !432, file: !394, line: 151, baseType: !52, size: 32, offset: 4288)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !432, file: !394, line: 152, baseType: !444, size: 16384, offset: 4320)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 16384, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 2048)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !432, file: !394, line: 153, baseType: !52, size: 32, offset: 20704)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !393, file: !394, line: 69, baseType: !449, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !394, line: 138, size: 448, elements: !451)
!451 = !{!452, !456, !470, !472, !491, !522, !526}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !450, file: !394, line: 139, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !392}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !450, file: !394, line: 140, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !371, line: 230, size: 128, elements: !460)
!460 = !{!461, !466}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !459, file: !371, line: 231, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!386, !392, !465, !365}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !459, file: !371, line: 232, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!386, !392, !465, !40, !300}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !450, file: !394, line: 141, baseType: !471, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !450, file: !394, line: 142, baseType: !473, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !371, line: 84, size: 320, elements: !477)
!477 = !{!478, !479, !483, !488, !489}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !476, file: !371, line: 85, baseType: !40, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !476, file: !371, line: 86, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!378, !392, !465, !52}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !476, file: !371, line: 88, baseType: !484, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!378, !392, !487, !52}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !476, file: !371, line: 90, baseType: !471, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !476, file: !371, line: 91, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !450, file: !394, line: 143, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!495, !392}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !498)
!498 = !{!499, !500, !504, !508, !514, !518}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !497, file: !6, line: 40, baseType: !5, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !497, file: !6, line: 41, baseType: !501, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!280}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !497, file: !6, line: 42, baseType: !505, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!20}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !497, file: !6, line: 43, baseType: !509, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!288, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !497, file: !6, line: 44, baseType: !515, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!288}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !497, file: !6, line: 45, baseType: !519, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !20}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !450, file: !394, line: 144, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!288, !392}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !450, file: !394, line: 145, baseType: !527, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !392, !530, !538}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !532, line: 23, baseType: !533)
!532 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 21, size: 32, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !533, file: !532, line: 22, baseType: !536, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !174, line: 32, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !302, line: 49, baseType: !7)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !532, line: 28, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 26, size: 32, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !540, file: !532, line: 27, baseType: !543, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !174, line: 33, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !302, line: 50, baseType: !7)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !393, file: !394, line: 70, baseType: !546, size: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !134, line: 123, size: 1024, elements: !548)
!548 = !{!549, !554, !555, !556, !557, !565, !566, !567, !943, !944, !945, !946, !947}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !547, file: !134, line: 124, baseType: !550, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !174, line: 168, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 166, size: 32, elements: !552)
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !551, file: !174, line: 167, baseType: !52, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !547, file: !134, line: 125, baseType: !550, size: 32, offset: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !547, file: !134, line: 135, baseType: !546, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !547, file: !134, line: 136, baseType: !40, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !547, file: !134, line: 138, baseType: !558, size: 192, align: 64, offset: 192)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !559, line: 24, size: 192, align: 64, elements: !560)
!559 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!560 = !{!561, !562, !564}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !558, file: !559, line: 25, baseType: !70, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !558, file: !559, line: 26, baseType: !563, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !558, file: !559, line: 27, baseType: !563, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !547, file: !134, line: 140, baseType: !288, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !547, file: !134, line: 141, baseType: !7, size: 32, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !134, line: 142, baseType: !568, size: 256, offset: 512)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !134, line: 142, size: 256, elements: !569)
!569 = !{!570, !633, !637}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !568, file: !134, line: 143, baseType: !571, size: 192)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !134, line: 91, size: 192, elements: !572)
!572 = !{!573, !574, !578}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !571, file: !134, line: 92, baseType: !70, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !571, file: !134, line: 94, baseType: !575, size: 64, offset: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !559, line: 31, size: 64, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !575, file: !559, line: 32, baseType: !563, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !571, file: !134, line: 100, baseType: !579, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !134, line: 180, size: 704, elements: !581)
!581 = !{!582, !583, !584, !597, !598, !599, !625, !626}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !580, file: !134, line: 182, baseType: !546, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !134, line: 183, baseType: !7, size: 32, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !580, file: !134, line: 186, baseType: !585, size: 192, offset: 128)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !586, line: 19, size: 192, elements: !587)
!586 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!587 = !{!588, !595, !596}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !585, file: !586, line: 20, baseType: !589, size: 128)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !590, line: 292, size: 128, elements: !591)
!590 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!591 = !{!592, !593, !594}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !589, file: !590, line: 293, baseType: !158)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !589, file: !590, line: 295, baseType: !173, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !589, file: !590, line: 296, baseType: !20, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !585, file: !586, line: 21, baseType: !7, size: 32, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !585, file: !586, line: 22, baseType: !7, size: 32, offset: 160)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !580, file: !134, line: 187, baseType: !188, size: 32, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !580, file: !134, line: 188, baseType: !188, size: 32, offset: 352)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !580, file: !134, line: 189, baseType: !600, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !134, line: 168, size: 320, elements: !602)
!602 = !{!603, !609, !613, !617, !621}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !601, file: !134, line: 169, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!52, !607, !579}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !391, line: 539, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !601, file: !134, line: 171, baseType: !610, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!52, !546, !40, !378}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !601, file: !134, line: 173, baseType: !614, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!52, !546}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !601, file: !134, line: 174, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!52, !546, !546, !40}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !601, file: !134, line: 176, baseType: !622, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!52, !607, !546, !579}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !580, file: !134, line: 192, baseType: !398, size: 128, offset: 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !580, file: !134, line: 194, baseType: !627, size: 128, offset: 576)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !628, line: 40, baseType: !629)
!628 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !628, line: 36, size: 128, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !629, file: !628, line: 37, baseType: !158)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !629, file: !628, line: 38, baseType: !398, size: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !568, file: !134, line: 144, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !134, line: 103, size: 64, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !634, file: !134, line: 104, baseType: !546, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !568, file: !134, line: 145, baseType: !638, size: 256)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !134, line: 107, size: 256, elements: !639)
!639 = !{!640, !938, !941, !942}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !638, file: !134, line: 108, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !134, line: 217, size: 768, elements: !644)
!644 = !{!645, !684, !688, !692, !699, !703, !707, !711, !712, !713, !714, !722}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !643, file: !134, line: 222, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!52, !649}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !134, line: 197, size: 1088, elements: !651)
!651 = !{!652, !653, !654, !655, !656, !672, !673, !674, !675, !676, !677, !678, !679}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !650, file: !134, line: 199, baseType: !546, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !650, file: !134, line: 200, baseType: !389, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !650, file: !134, line: 201, baseType: !607, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !650, file: !134, line: 202, baseType: !20, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !650, file: !134, line: 205, baseType: !657, size: 192, offset: 256)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !658, line: 53, size: 192, elements: !659)
!658 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!659 = !{!660, !670, !671}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !657, file: !658, line: 54, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !662, line: 13, baseType: !663)
!662 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !174, line: 175, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 173, size: 64, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !664, file: !174, line: 174, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !94, line: 22, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !96, line: 30, baseType: !669)
!669 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !657, file: !658, line: 55, baseType: !158, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !657, file: !658, line: 59, baseType: !398, size: 128, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !650, file: !134, line: 206, baseType: !657, size: 192, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !650, file: !134, line: 207, baseType: !52, size: 32, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !650, file: !134, line: 208, baseType: !398, size: 128, offset: 704)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !650, file: !134, line: 209, baseType: !365, size: 64, offset: 832)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !650, file: !134, line: 211, baseType: !300, size: 64, offset: 896)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !650, file: !134, line: 212, baseType: !280, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !650, file: !134, line: 213, baseType: !280, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !650, file: !134, line: 214, baseType: !680, size: 64, offset: 1024)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !683, line: 356, flags: DIFlagFwdDecl)
!683 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!684 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !643, file: !134, line: 223, baseType: !685, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !649}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !643, file: !134, line: 236, baseType: !689, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!52, !607, !20}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !643, file: !134, line: 238, baseType: !693, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!20, !607, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !174, line: 46, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !302, line: 88, baseType: !669)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !643, file: !134, line: 239, baseType: !700, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!20, !607, !20, !696}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !643, file: !134, line: 240, baseType: !704, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !607, !20}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !643, file: !134, line: 242, baseType: !708, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!386, !649, !365, !300, !697}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !643, file: !134, line: 252, baseType: !300, size: 64, offset: 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !643, file: !134, line: 259, baseType: !280, size: 8, offset: 512)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !643, file: !134, line: 260, baseType: !708, size: 64, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !643, file: !134, line: 263, baseType: !715, size: 64, offset: 640)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!718, !649, !720}
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !719, line: 52, baseType: !7)
!719 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !134, line: 27, flags: DIFlagFwdDecl)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !643, file: !134, line: 266, baseType: !723, size: 64, offset: 704)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!52, !649, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !683, line: 305, size: 1472, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !915, !921, !922, !927, !928, !931, !932, !933, !934, !935, !936}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !727, file: !683, line: 308, baseType: !70, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !727, file: !683, line: 309, baseType: !70, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !727, file: !683, line: 313, baseType: !726, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !727, file: !683, line: 313, baseType: !726, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !727, file: !683, line: 315, baseType: !558, size: 192, align: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !727, file: !683, line: 323, baseType: !70, size: 64, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !727, file: !683, line: 327, baseType: !736, size: 64, offset: 512)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !683, line: 388, size: 7296, elements: !738)
!738 = !{!739, !911}
!739 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !683, line: 389, baseType: !740, size: 7296)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !683, line: 389, size: 7296, elements: !741)
!741 = !{!742, !743, !744, !745, !749, !750, !751, !752, !753, !761, !762, !763, !764, !765, !766, !767, !768, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !803, !811, !814, !856, !857, !882, !883, !886, !889, !890, !893, !894, !895, !898, !910}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !740, file: !683, line: 390, baseType: !726, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !740, file: !683, line: 391, baseType: !575, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !740, file: !683, line: 392, baseType: !337, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !740, file: !683, line: 394, baseType: !746, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!70, !389, !70, !70, !70, !70}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !740, file: !683, line: 398, baseType: !70, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !740, file: !683, line: 399, baseType: !70, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !740, file: !683, line: 405, baseType: !70, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !740, file: !683, line: 406, baseType: !70, size: 64, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !740, file: !683, line: 407, baseType: !754, size: 64, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !391, line: 286, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 286, size: 64, elements: !757)
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !756, file: !391, line: 286, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !760, line: 18, baseType: !70)
!760 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!761 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !740, file: !683, line: 416, baseType: !550, size: 32, offset: 576)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !740, file: !683, line: 428, baseType: !550, size: 32, offset: 608)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !740, file: !683, line: 437, baseType: !550, size: 32, offset: 640)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !740, file: !683, line: 447, baseType: !550, size: 32, offset: 672)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !740, file: !683, line: 450, baseType: !661, size: 64, offset: 704)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !740, file: !683, line: 452, baseType: !52, size: 32, offset: 768)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !740, file: !683, line: 454, baseType: !158, offset: 800)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !740, file: !683, line: 457, baseType: !769, size: 256, offset: 832)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !770, line: 35, size: 256, elements: !771)
!770 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !773, !774, !776}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !769, file: !770, line: 36, baseType: !661, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !769, file: !770, line: 42, baseType: !661, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !769, file: !770, line: 46, baseType: !775, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !159, line: 29, baseType: !166)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !769, file: !770, line: 47, baseType: !398, size: 128, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !740, file: !683, line: 459, baseType: !398, size: 128, offset: 1088)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !740, file: !683, line: 466, baseType: !70, size: 64, offset: 1216)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !740, file: !683, line: 467, baseType: !70, size: 64, offset: 1280)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !740, file: !683, line: 469, baseType: !70, size: 64, offset: 1344)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !740, file: !683, line: 470, baseType: !70, size: 64, offset: 1408)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !740, file: !683, line: 471, baseType: !663, size: 64, offset: 1472)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !740, file: !683, line: 472, baseType: !70, size: 64, offset: 1536)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !740, file: !683, line: 473, baseType: !70, size: 64, offset: 1600)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !740, file: !683, line: 474, baseType: !70, size: 64, offset: 1664)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !740, file: !683, line: 475, baseType: !70, size: 64, offset: 1728)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !740, file: !683, line: 477, baseType: !158, offset: 1792)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !740, file: !683, line: 478, baseType: !70, size: 64, offset: 1792)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !740, file: !683, line: 478, baseType: !70, size: 64, offset: 1856)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !740, file: !683, line: 478, baseType: !70, size: 64, offset: 1920)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !740, file: !683, line: 478, baseType: !70, size: 64, offset: 1984)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !740, file: !683, line: 479, baseType: !70, size: 64, offset: 2048)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !740, file: !683, line: 479, baseType: !70, size: 64, offset: 2112)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !740, file: !683, line: 479, baseType: !70, size: 64, offset: 2176)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !740, file: !683, line: 480, baseType: !70, size: 64, offset: 2240)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !740, file: !683, line: 480, baseType: !70, size: 64, offset: 2304)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !740, file: !683, line: 480, baseType: !70, size: 64, offset: 2368)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !740, file: !683, line: 480, baseType: !70, size: 64, offset: 2432)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !740, file: !683, line: 482, baseType: !800, size: 2816, offset: 2496)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 2816, elements: !801)
!801 = !{!802}
!802 = !DISubrange(count: 44)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !740, file: !683, line: 488, baseType: !804, size: 256, offset: 5312)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !805, line: 60, size: 256, elements: !806)
!805 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !804, file: !805, line: 61, baseType: !808, size: 256)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 256, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 4)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !740, file: !683, line: 490, baseType: !812, size: 64, offset: 5568)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !683, line: 490, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !740, file: !683, line: 493, baseType: !815, size: 896, offset: 5632)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !816, line: 53, baseType: !817)
!816 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !816, line: 13, size: 896, elements: !818)
!818 = !{!819, !820, !821, !822, !825, !826, !827, !828, !848, !849, !852}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !817, file: !816, line: 18, baseType: !337, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !817, file: !816, line: 28, baseType: !663, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !817, file: !816, line: 31, baseType: !769, size: 256, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !817, file: !816, line: 32, baseType: !823, size: 64, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !816, line: 32, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !817, file: !816, line: 37, baseType: !379, size: 16, offset: 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !817, file: !816, line: 40, baseType: !657, size: 192, offset: 512)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !817, file: !816, line: 41, baseType: !20, size: 64, offset: 704)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !817, file: !816, line: 42, baseType: !829, size: 64, offset: 768)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !832, line: 13, size: 896, elements: !833)
!832 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!833 = !{!834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !831, file: !832, line: 14, baseType: !20, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !831, file: !832, line: 15, baseType: !70, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !831, file: !832, line: 17, baseType: !70, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !831, file: !832, line: 17, baseType: !70, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !831, file: !832, line: 19, baseType: !75, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !831, file: !832, line: 21, baseType: !75, size: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !831, file: !832, line: 22, baseType: !75, size: 64, offset: 384)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !831, file: !832, line: 23, baseType: !75, size: 64, offset: 448)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !831, file: !832, line: 24, baseType: !75, size: 64, offset: 512)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !831, file: !832, line: 25, baseType: !75, size: 64, offset: 576)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !831, file: !832, line: 26, baseType: !75, size: 64, offset: 640)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !831, file: !832, line: 27, baseType: !75, size: 64, offset: 704)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !831, file: !832, line: 28, baseType: !75, size: 64, offset: 768)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !831, file: !832, line: 29, baseType: !75, size: 64, offset: 832)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !817, file: !816, line: 44, baseType: !550, size: 32, offset: 832)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !817, file: !816, line: 50, baseType: !850, size: 16, offset: 864)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !94, line: 19, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !96, line: 24, baseType: !379)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !817, file: !816, line: 51, baseType: !853, size: 16, offset: 880)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !94, line: 18, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !96, line: 23, baseType: !855)
!855 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !740, file: !683, line: 495, baseType: !70, size: 64, offset: 6528)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !740, file: !683, line: 497, baseType: !858, size: 64, offset: 6592)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !683, line: 381, size: 384, elements: !860)
!860 = !{!861, !862, !871}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !859, file: !683, line: 382, baseType: !550, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !859, file: !683, line: 383, baseType: !863, size: 128, offset: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !683, line: 376, size: 128, elements: !864)
!864 = !{!865, !869}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !863, file: !683, line: 377, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !868, line: 9, flags: DIFlagFwdDecl)
!868 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!869 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !863, file: !683, line: 378, baseType: !870, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !859, file: !683, line: 384, baseType: !872, size: 192, offset: 192)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !873, line: 26, size: 192, elements: !874)
!873 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !872, file: !873, line: 27, baseType: !7, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !872, file: !873, line: 28, baseType: !877, size: 128, offset: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !878, line: 43, size: 128, elements: !879)
!878 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !877, file: !878, line: 44, baseType: !775)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !877, file: !878, line: 45, baseType: !398, size: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !740, file: !683, line: 500, baseType: !158, offset: 6656)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !740, file: !683, line: 501, baseType: !884, size: 64, offset: 6656)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !683, line: 387, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !740, file: !683, line: 516, baseType: !887, size: 64, offset: 6720)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !683, line: 516, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !740, file: !683, line: 519, baseType: !389, size: 64, offset: 6784)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !740, file: !683, line: 521, baseType: !891, size: 64, offset: 6848)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !683, line: 521, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !740, file: !683, line: 545, baseType: !550, size: 32, offset: 6912)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !740, file: !683, line: 548, baseType: !280, size: 8, offset: 6944)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !740, file: !683, line: 550, baseType: !896, offset: 6952)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !897, line: 142, elements: !172)
!897 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!898 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !740, file: !683, line: 554, baseType: !899, size: 256, offset: 6976)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !900, line: 102, size: 256, elements: !901)
!900 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !899, file: !900, line: 103, baseType: !661, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !899, file: !900, line: 104, baseType: !398, size: 128, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !899, file: !900, line: 105, baseType: !905, size: 64, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !900, line: 21, baseType: !906)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !909}
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !740, file: !683, line: 557, baseType: !188, size: 32, offset: 7232)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !737, file: !683, line: 565, baseType: !912, offset: 7296)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, elements: !913)
!913 = !{!914}
!914 = !DISubrange(count: -1)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !727, file: !683, line: 333, baseType: !916, size: 64, offset: 576)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !391, line: 284, baseType: !917)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !391, line: 284, size: 64, elements: !918)
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !917, file: !391, line: 284, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !760, line: 19, baseType: !70)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !727, file: !683, line: 334, baseType: !70, size: 64, offset: 640)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !727, file: !683, line: 343, baseType: !923, size: 256, offset: 704)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !683, line: 340, size: 256, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !923, file: !683, line: 341, baseType: !558, size: 192, align: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !923, file: !683, line: 342, baseType: !70, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !727, file: !683, line: 351, baseType: !398, size: 128, offset: 960)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !727, file: !683, line: 353, baseType: !929, size: 64, offset: 1088)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !683, line: 353, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !727, file: !683, line: 356, baseType: !680, size: 64, offset: 1152)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !727, file: !683, line: 359, baseType: !70, size: 64, offset: 1216)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !727, file: !683, line: 361, baseType: !389, size: 64, offset: 1280)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !727, file: !683, line: 362, baseType: !20, size: 64, offset: 1344)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !727, file: !683, line: 365, baseType: !661, size: 64, offset: 1408)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !727, file: !683, line: 373, baseType: !937, offset: 1472)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !683, line: 296, elements: !172)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !638, file: !134, line: 109, baseType: !939, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !134, line: 31, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !638, file: !134, line: 110, baseType: !697, size: 64, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !638, file: !134, line: 111, baseType: !546, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !547, file: !134, line: 148, baseType: !20, size: 64, offset: 768)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !547, file: !134, line: 154, baseType: !337, size: 64, offset: 832)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !547, file: !134, line: 156, baseType: !379, size: 16, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !547, file: !134, line: 157, baseType: !378, size: 16, offset: 912)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !547, file: !134, line: 158, baseType: !948, size: 64, offset: 960)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !134, line: 32, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !393, file: !394, line: 71, baseType: !951, size: 32, offset: 448)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !952, line: 19, size: 32, elements: !953)
!952 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!953 = !{!954}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !951, file: !952, line: 20, baseType: !955, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !956, line: 113, baseType: !957)
!956 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !956, line: 111, size: 32, elements: !958)
!958 = !{!959}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !957, file: !956, line: 112, baseType: !550, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !393, file: !394, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !393, file: !394, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !393, file: !394, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !393, file: !394, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !393, file: !394, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !370, file: !371, line: 174, baseType: !383, size: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !370, file: !371, line: 176, baseType: !967, size: 64, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!52, !389, !392, !487, !726}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !251, file: !252, line: 58, baseType: !361, size: 64, offset: 448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !251, file: !252, line: 59, baseType: !250, size: 64, offset: 512)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !251, file: !252, line: 60, baseType: !250, size: 64, offset: 576)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !251, file: !252, line: 61, baseType: !250, size: 64, offset: 640)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !251, file: !252, line: 63, baseType: !393, size: 512, offset: 704)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !251, file: !252, line: 65, baseType: !70, size: 64, offset: 1216)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !251, file: !252, line: 66, baseType: !20, size: 64, offset: 1280)
!977 = !DILocalVariable(name: "dev", arg: 1, scope: !244, file: !3, line: 126, type: !247)
!978 = !DILocation(line: 126, column: 54, scope: !244)
!979 = !DILocalVariable(name: "np", arg: 2, scope: !244, file: !3, line: 127, type: !250)
!980 = !DILocation(line: 127, column: 23, scope: !244)
!981 = !DILocalVariable(name: "name", arg: 3, scope: !244, file: !3, line: 127, type: !40)
!982 = !DILocation(line: 127, column: 39, scope: !244)
!983 = !DILocalVariable(name: "parent_name", arg: 4, scope: !244, file: !3, line: 128, type: !40)
!984 = !DILocation(line: 128, column: 15, scope: !244)
!985 = !DILocalVariable(name: "parent_hw", arg: 5, scope: !244, file: !3, line: 128, type: !144)
!986 = !DILocation(line: 128, column: 49, scope: !244)
!987 = !DILocalVariable(name: "parent_data", arg: 6, scope: !244, file: !3, line: 129, type: !139)
!988 = !DILocation(line: 129, column: 33, scope: !244)
!989 = !DILocalVariable(name: "flags", arg: 7, scope: !244, file: !3, line: 130, type: !70)
!990 = !DILocation(line: 130, column: 17, scope: !244)
!991 = !DILocalVariable(name: "reg", arg: 8, scope: !244, file: !3, line: 131, type: !20)
!992 = !DILocation(line: 131, column: 17, scope: !244)
!993 = !DILocalVariable(name: "bit_idx", arg: 9, scope: !244, file: !3, line: 131, type: !93)
!994 = !DILocation(line: 131, column: 25, scope: !244)
!995 = !DILocalVariable(name: "clk_gate_flags", arg: 10, scope: !244, file: !3, line: 132, type: !93)
!996 = !DILocation(line: 132, column: 6, scope: !244)
!997 = !DILocalVariable(name: "lock", arg: 11, scope: !244, file: !3, line: 132, type: !157)
!998 = !DILocation(line: 132, column: 34, scope: !244)
!999 = !DILocalVariable(name: "gate", scope: !244, file: !3, line: 134, type: !21)
!1000 = !DILocation(line: 134, column: 19, scope: !244)
!1001 = !DILocalVariable(name: "hw", scope: !244, file: !3, line: 135, type: !53)
!1002 = !DILocation(line: 135, column: 17, scope: !244)
!1003 = !DILocalVariable(name: "init", scope: !244, file: !3, line: 136, type: !37)
!1004 = !DILocation(line: 136, column: 23, scope: !244)
!1005 = !DILocalVariable(name: "ret", scope: !244, file: !3, line: 137, type: !52)
!1006 = !DILocation(line: 137, column: 6, scope: !244)
!1007 = !DILocation(line: 139, column: 6, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !244, file: !3, line: 139, column: 6)
!1009 = !DILocation(line: 139, column: 21, scope: !1008)
!1010 = !DILocation(line: 139, column: 6, scope: !244)
!1011 = !DILocation(line: 140, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 140, column: 7)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 139, column: 45)
!1014 = !DILocation(line: 140, column: 15, scope: !1012)
!1015 = !DILocation(line: 140, column: 7, scope: !1013)
!1016 = !DILocation(line: 141, column: 4, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 140, column: 21)
!1018 = !DILocation(line: 142, column: 11, scope: !1017)
!1019 = !DILocation(line: 142, column: 4, scope: !1017)
!1020 = !DILocation(line: 144, column: 2, scope: !1013)
!1021 = !DILocation(line: 147, column: 9, scope: !244)
!1022 = !DILocation(line: 147, column: 7, scope: !244)
!1023 = !DILocation(line: 148, column: 7, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !244, file: !3, line: 148, column: 6)
!1025 = !DILocation(line: 148, column: 6, scope: !244)
!1026 = !DILocation(line: 149, column: 10, scope: !1024)
!1027 = !DILocation(line: 149, column: 3, scope: !1024)
!1028 = !DILocation(line: 151, column: 14, scope: !244)
!1029 = !DILocation(line: 151, column: 7, scope: !244)
!1030 = !DILocation(line: 151, column: 12, scope: !244)
!1031 = !DILocation(line: 152, column: 7, scope: !244)
!1032 = !DILocation(line: 152, column: 11, scope: !244)
!1033 = !DILocation(line: 153, column: 15, scope: !244)
!1034 = !DILocation(line: 153, column: 7, scope: !244)
!1035 = !DILocation(line: 153, column: 13, scope: !244)
!1036 = !DILocation(line: 154, column: 22, scope: !244)
!1037 = !DILocation(line: 154, column: 7, scope: !244)
!1038 = !DILocation(line: 154, column: 20, scope: !244)
!1039 = !DILocation(line: 155, column: 20, scope: !244)
!1040 = !DILocation(line: 155, column: 7, scope: !244)
!1041 = !DILocation(line: 155, column: 18, scope: !244)
!1042 = !DILocation(line: 156, column: 21, scope: !244)
!1043 = !DILocation(line: 156, column: 7, scope: !244)
!1044 = !DILocation(line: 156, column: 19, scope: !244)
!1045 = !DILocation(line: 157, column: 6, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !244, file: !3, line: 157, column: 6)
!1047 = !DILocation(line: 157, column: 18, scope: !1046)
!1048 = !DILocation(line: 157, column: 21, scope: !1046)
!1049 = !DILocation(line: 157, column: 31, scope: !1046)
!1050 = !DILocation(line: 157, column: 34, scope: !1046)
!1051 = !DILocation(line: 157, column: 6, scope: !244)
!1052 = !DILocation(line: 158, column: 8, scope: !1046)
!1053 = !DILocation(line: 158, column: 20, scope: !1046)
!1054 = !DILocation(line: 158, column: 3, scope: !1046)
!1055 = !DILocation(line: 160, column: 8, scope: !1046)
!1056 = !DILocation(line: 160, column: 20, scope: !1046)
!1057 = !DILocation(line: 163, column: 14, scope: !244)
!1058 = !DILocation(line: 163, column: 2, scope: !244)
!1059 = !DILocation(line: 163, column: 8, scope: !244)
!1060 = !DILocation(line: 163, column: 12, scope: !244)
!1061 = !DILocation(line: 164, column: 18, scope: !244)
!1062 = !DILocation(line: 164, column: 2, scope: !244)
!1063 = !DILocation(line: 164, column: 8, scope: !244)
!1064 = !DILocation(line: 164, column: 16, scope: !244)
!1065 = !DILocation(line: 165, column: 16, scope: !244)
!1066 = !DILocation(line: 165, column: 2, scope: !244)
!1067 = !DILocation(line: 165, column: 8, scope: !244)
!1068 = !DILocation(line: 165, column: 14, scope: !244)
!1069 = !DILocation(line: 166, column: 15, scope: !244)
!1070 = !DILocation(line: 166, column: 2, scope: !244)
!1071 = !DILocation(line: 166, column: 8, scope: !244)
!1072 = !DILocation(line: 166, column: 13, scope: !244)
!1073 = !DILocation(line: 167, column: 2, scope: !244)
!1074 = !DILocation(line: 167, column: 8, scope: !244)
!1075 = !DILocation(line: 167, column: 11, scope: !244)
!1076 = !DILocation(line: 167, column: 16, scope: !244)
!1077 = !DILocation(line: 169, column: 8, scope: !244)
!1078 = !DILocation(line: 169, column: 14, scope: !244)
!1079 = !DILocation(line: 169, column: 5, scope: !244)
!1080 = !DILocation(line: 170, column: 6, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !244, file: !3, line: 170, column: 6)
!1082 = !DILocation(line: 170, column: 10, scope: !1081)
!1083 = !DILocation(line: 170, column: 14, scope: !1081)
!1084 = !DILocation(line: 170, column: 6, scope: !244)
!1085 = !DILocation(line: 171, column: 25, scope: !1081)
!1086 = !DILocation(line: 171, column: 30, scope: !1081)
!1087 = !DILocation(line: 171, column: 9, scope: !1081)
!1088 = !DILocation(line: 171, column: 7, scope: !1081)
!1089 = !DILocation(line: 171, column: 3, scope: !1081)
!1090 = !DILocation(line: 172, column: 11, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 172, column: 11)
!1092 = !DILocation(line: 172, column: 11, scope: !1081)
!1093 = !DILocation(line: 173, column: 28, scope: !1091)
!1094 = !DILocation(line: 173, column: 32, scope: !1091)
!1095 = !DILocation(line: 173, column: 9, scope: !1091)
!1096 = !DILocation(line: 173, column: 7, scope: !1091)
!1097 = !DILocation(line: 173, column: 3, scope: !1091)
!1098 = !DILocation(line: 174, column: 6, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !244, file: !3, line: 174, column: 6)
!1100 = !DILocation(line: 174, column: 6, scope: !244)
!1101 = !DILocation(line: 175, column: 9, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 174, column: 11)
!1103 = !DILocation(line: 175, column: 3, scope: !1102)
!1104 = !DILocation(line: 176, column: 16, scope: !1102)
!1105 = !DILocation(line: 176, column: 8, scope: !1102)
!1106 = !DILocation(line: 176, column: 6, scope: !1102)
!1107 = !DILocation(line: 177, column: 2, scope: !1102)
!1108 = !DILocation(line: 179, column: 9, scope: !244)
!1109 = !DILocation(line: 179, column: 2, scope: !244)
!1110 = !DILocation(line: 181, column: 1, scope: !244)
!1111 = distinct !DISubprogram(name: "ERR_PTR", scope: !1112, file: !1112, line: 24, type: !1113, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1112 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!20, !75}
!1115 = !DILocalVariable(name: "error", arg: 1, scope: !1111, file: !1112, line: 24, type: !75)
!1116 = !DILocation(line: 24, column: 48, scope: !1111)
!1117 = !DILocation(line: 26, column: 18, scope: !1111)
!1118 = !DILocation(line: 26, column: 9, scope: !1111)
!1119 = !DILocation(line: 26, column: 2, scope: !1111)
!1120 = distinct !DISubprogram(name: "kzalloc", scope: !13, file: !13, line: 662, type: !1121, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!20, !300, !173}
!1123 = !DILocalVariable(name: "s", arg: 1, scope: !1124, file: !13, line: 445, type: !1127)
!1124 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !13, file: !13, line: 445, type: !1125, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!20, !1127, !173, !300}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !683, line: 117, flags: DIFlagFwdDecl)
!1129 = !DILocation(line: 445, column: 72, scope: !1124, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 552, column: 10, scope: !1131, inlinedAt: !1134)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !13, line: 540, column: 34)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !13, line: 540, column: 6)
!1133 = distinct !DISubprogram(name: "kmalloc", scope: !13, file: !13, line: 538, type: !1121, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1134 = distinct !DILocation(line: 664, column: 9, scope: !1120)
!1135 = !DILocalVariable(name: "flags", arg: 2, scope: !1124, file: !13, line: 446, type: !173)
!1136 = !DILocation(line: 446, column: 9, scope: !1124, inlinedAt: !1130)
!1137 = !DILocalVariable(name: "size", arg: 3, scope: !1124, file: !13, line: 446, type: !300)
!1138 = !DILocation(line: 446, column: 23, scope: !1124, inlinedAt: !1130)
!1139 = !DILocalVariable(name: "ret", scope: !1124, file: !13, line: 448, type: !20)
!1140 = !DILocation(line: 448, column: 8, scope: !1124, inlinedAt: !1130)
!1141 = !DILocalVariable(name: "flags", arg: 1, scope: !1142, file: !13, line: 318, type: !173)
!1142 = distinct !DISubprogram(name: "kmalloc_type", scope: !13, file: !13, line: 318, type: !1143, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!12, !173}
!1145 = !DILocation(line: 318, column: 67, scope: !1142, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 553, column: 20, scope: !1131, inlinedAt: !1134)
!1147 = !DILocalVariable(name: "size", arg: 1, scope: !1148, file: !13, line: 346, type: !300)
!1148 = distinct !DISubprogram(name: "kmalloc_index", scope: !13, file: !13, line: 346, type: !1149, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!7, !300}
!1151 = !DILocation(line: 346, column: 58, scope: !1148, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 547, column: 11, scope: !1131, inlinedAt: !1134)
!1153 = !DILocalVariable(name: "size", arg: 1, scope: !1154, file: !13, line: 472, type: !300)
!1154 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !13, file: !13, line: 472, type: !1155, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!20, !300, !173, !7}
!1157 = !DILocation(line: 472, column: 28, scope: !1154, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 481, column: 9, scope: !1159, inlinedAt: !1160)
!1159 = distinct !DISubprogram(name: "kmalloc_large", scope: !13, file: !13, line: 478, type: !1121, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1160 = distinct !DILocation(line: 545, column: 11, scope: !1161, inlinedAt: !1134)
!1161 = distinct !DILexicalBlock(scope: !1131, file: !13, line: 544, column: 7)
!1162 = !DILocalVariable(name: "flags", arg: 2, scope: !1154, file: !13, line: 472, type: !173)
!1163 = !DILocation(line: 472, column: 40, scope: !1154, inlinedAt: !1158)
!1164 = !DILocalVariable(name: "order", arg: 3, scope: !1154, file: !13, line: 472, type: !7)
!1165 = !DILocation(line: 472, column: 60, scope: !1154, inlinedAt: !1158)
!1166 = !DILocalVariable(name: "size", arg: 1, scope: !1159, file: !13, line: 478, type: !300)
!1167 = !DILocation(line: 478, column: 51, scope: !1159, inlinedAt: !1160)
!1168 = !DILocalVariable(name: "flags", arg: 2, scope: !1159, file: !13, line: 478, type: !173)
!1169 = !DILocation(line: 478, column: 63, scope: !1159, inlinedAt: !1160)
!1170 = !DILocalVariable(name: "order", scope: !1159, file: !13, line: 480, type: !7)
!1171 = !DILocation(line: 480, column: 15, scope: !1159, inlinedAt: !1160)
!1172 = !DILocalVariable(name: "size", arg: 1, scope: !1133, file: !13, line: 538, type: !300)
!1173 = !DILocation(line: 538, column: 45, scope: !1133, inlinedAt: !1134)
!1174 = !DILocalVariable(name: "flags", arg: 2, scope: !1133, file: !13, line: 538, type: !173)
!1175 = !DILocation(line: 538, column: 57, scope: !1133, inlinedAt: !1134)
!1176 = !DILocalVariable(name: "index", scope: !1131, file: !13, line: 542, type: !7)
!1177 = !DILocation(line: 542, column: 16, scope: !1131, inlinedAt: !1134)
!1178 = !DILocalVariable(name: "size", arg: 1, scope: !1120, file: !13, line: 662, type: !300)
!1179 = !DILocation(line: 662, column: 36, scope: !1120)
!1180 = !DILocalVariable(name: "flags", arg: 2, scope: !1120, file: !13, line: 662, type: !173)
!1181 = !DILocation(line: 662, column: 48, scope: !1120)
!1182 = !DILocation(line: 664, column: 17, scope: !1120)
!1183 = !DILocation(line: 664, column: 23, scope: !1120)
!1184 = !DILocation(line: 664, column: 29, scope: !1120)
!1185 = !DILocation(line: 540, column: 27, scope: !1132, inlinedAt: !1134)
!1186 = !DILocation(line: 540, column: 6, scope: !1132, inlinedAt: !1134)
!1187 = !DILocation(line: 540, column: 6, scope: !1133, inlinedAt: !1134)
!1188 = !DILocation(line: 544, column: 7, scope: !1161, inlinedAt: !1134)
!1189 = !DILocation(line: 544, column: 12, scope: !1161, inlinedAt: !1134)
!1190 = !DILocation(line: 544, column: 7, scope: !1131, inlinedAt: !1134)
!1191 = !DILocation(line: 545, column: 25, scope: !1161, inlinedAt: !1134)
!1192 = !DILocation(line: 545, column: 31, scope: !1161, inlinedAt: !1134)
!1193 = !DILocation(line: 480, column: 33, scope: !1159, inlinedAt: !1160)
!1194 = !DILocation(line: 480, column: 23, scope: !1159, inlinedAt: !1160)
!1195 = !DILocation(line: 481, column: 29, scope: !1159, inlinedAt: !1160)
!1196 = !DILocation(line: 481, column: 35, scope: !1159, inlinedAt: !1160)
!1197 = !DILocation(line: 481, column: 42, scope: !1159, inlinedAt: !1160)
!1198 = !DILocation(line: 474, column: 23, scope: !1154, inlinedAt: !1158)
!1199 = !DILocation(line: 474, column: 29, scope: !1154, inlinedAt: !1158)
!1200 = !DILocation(line: 474, column: 36, scope: !1154, inlinedAt: !1158)
!1201 = !DILocation(line: 474, column: 9, scope: !1154, inlinedAt: !1158)
!1202 = !DILocation(line: 545, column: 4, scope: !1161, inlinedAt: !1134)
!1203 = !DILocation(line: 547, column: 25, scope: !1131, inlinedAt: !1134)
!1204 = !DILocation(line: 348, column: 7, scope: !1205, inlinedAt: !1152)
!1205 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 348, column: 6)
!1206 = !DILocation(line: 348, column: 6, scope: !1148, inlinedAt: !1152)
!1207 = !DILocation(line: 349, column: 3, scope: !1205, inlinedAt: !1152)
!1208 = !DILocation(line: 351, column: 6, scope: !1209, inlinedAt: !1152)
!1209 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 351, column: 6)
!1210 = !DILocation(line: 351, column: 11, scope: !1209, inlinedAt: !1152)
!1211 = !DILocation(line: 351, column: 6, scope: !1148, inlinedAt: !1152)
!1212 = !DILocation(line: 352, column: 3, scope: !1209, inlinedAt: !1152)
!1213 = !DILocation(line: 354, column: 32, scope: !1214, inlinedAt: !1152)
!1214 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 354, column: 6)
!1215 = !DILocation(line: 354, column: 37, scope: !1214, inlinedAt: !1152)
!1216 = !DILocation(line: 354, column: 42, scope: !1214, inlinedAt: !1152)
!1217 = !DILocation(line: 354, column: 45, scope: !1214, inlinedAt: !1152)
!1218 = !DILocation(line: 354, column: 50, scope: !1214, inlinedAt: !1152)
!1219 = !DILocation(line: 354, column: 6, scope: !1148, inlinedAt: !1152)
!1220 = !DILocation(line: 355, column: 3, scope: !1214, inlinedAt: !1152)
!1221 = !DILocation(line: 356, column: 32, scope: !1222, inlinedAt: !1152)
!1222 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 356, column: 6)
!1223 = !DILocation(line: 356, column: 37, scope: !1222, inlinedAt: !1152)
!1224 = !DILocation(line: 356, column: 43, scope: !1222, inlinedAt: !1152)
!1225 = !DILocation(line: 356, column: 46, scope: !1222, inlinedAt: !1152)
!1226 = !DILocation(line: 356, column: 51, scope: !1222, inlinedAt: !1152)
!1227 = !DILocation(line: 356, column: 6, scope: !1148, inlinedAt: !1152)
!1228 = !DILocation(line: 357, column: 3, scope: !1222, inlinedAt: !1152)
!1229 = !DILocation(line: 358, column: 6, scope: !1230, inlinedAt: !1152)
!1230 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 358, column: 6)
!1231 = !DILocation(line: 358, column: 11, scope: !1230, inlinedAt: !1152)
!1232 = !DILocation(line: 358, column: 6, scope: !1148, inlinedAt: !1152)
!1233 = !DILocation(line: 358, column: 26, scope: !1230, inlinedAt: !1152)
!1234 = !DILocation(line: 359, column: 6, scope: !1235, inlinedAt: !1152)
!1235 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 359, column: 6)
!1236 = !DILocation(line: 359, column: 11, scope: !1235, inlinedAt: !1152)
!1237 = !DILocation(line: 359, column: 6, scope: !1148, inlinedAt: !1152)
!1238 = !DILocation(line: 359, column: 26, scope: !1235, inlinedAt: !1152)
!1239 = !DILocation(line: 360, column: 6, scope: !1240, inlinedAt: !1152)
!1240 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 360, column: 6)
!1241 = !DILocation(line: 360, column: 11, scope: !1240, inlinedAt: !1152)
!1242 = !DILocation(line: 360, column: 6, scope: !1148, inlinedAt: !1152)
!1243 = !DILocation(line: 360, column: 26, scope: !1240, inlinedAt: !1152)
!1244 = !DILocation(line: 361, column: 6, scope: !1245, inlinedAt: !1152)
!1245 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 361, column: 6)
!1246 = !DILocation(line: 361, column: 11, scope: !1245, inlinedAt: !1152)
!1247 = !DILocation(line: 361, column: 6, scope: !1148, inlinedAt: !1152)
!1248 = !DILocation(line: 361, column: 26, scope: !1245, inlinedAt: !1152)
!1249 = !DILocation(line: 362, column: 6, scope: !1250, inlinedAt: !1152)
!1250 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 362, column: 6)
!1251 = !DILocation(line: 362, column: 11, scope: !1250, inlinedAt: !1152)
!1252 = !DILocation(line: 362, column: 6, scope: !1148, inlinedAt: !1152)
!1253 = !DILocation(line: 362, column: 26, scope: !1250, inlinedAt: !1152)
!1254 = !DILocation(line: 363, column: 6, scope: !1255, inlinedAt: !1152)
!1255 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 363, column: 6)
!1256 = !DILocation(line: 363, column: 11, scope: !1255, inlinedAt: !1152)
!1257 = !DILocation(line: 363, column: 6, scope: !1148, inlinedAt: !1152)
!1258 = !DILocation(line: 363, column: 26, scope: !1255, inlinedAt: !1152)
!1259 = !DILocation(line: 364, column: 6, scope: !1260, inlinedAt: !1152)
!1260 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 364, column: 6)
!1261 = !DILocation(line: 364, column: 11, scope: !1260, inlinedAt: !1152)
!1262 = !DILocation(line: 364, column: 6, scope: !1148, inlinedAt: !1152)
!1263 = !DILocation(line: 364, column: 26, scope: !1260, inlinedAt: !1152)
!1264 = !DILocation(line: 365, column: 6, scope: !1265, inlinedAt: !1152)
!1265 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 365, column: 6)
!1266 = !DILocation(line: 365, column: 11, scope: !1265, inlinedAt: !1152)
!1267 = !DILocation(line: 365, column: 6, scope: !1148, inlinedAt: !1152)
!1268 = !DILocation(line: 365, column: 26, scope: !1265, inlinedAt: !1152)
!1269 = !DILocation(line: 366, column: 6, scope: !1270, inlinedAt: !1152)
!1270 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 366, column: 6)
!1271 = !DILocation(line: 366, column: 11, scope: !1270, inlinedAt: !1152)
!1272 = !DILocation(line: 366, column: 6, scope: !1148, inlinedAt: !1152)
!1273 = !DILocation(line: 366, column: 26, scope: !1270, inlinedAt: !1152)
!1274 = !DILocation(line: 367, column: 6, scope: !1275, inlinedAt: !1152)
!1275 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 367, column: 6)
!1276 = !DILocation(line: 367, column: 11, scope: !1275, inlinedAt: !1152)
!1277 = !DILocation(line: 367, column: 6, scope: !1148, inlinedAt: !1152)
!1278 = !DILocation(line: 367, column: 26, scope: !1275, inlinedAt: !1152)
!1279 = !DILocation(line: 368, column: 6, scope: !1280, inlinedAt: !1152)
!1280 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 368, column: 6)
!1281 = !DILocation(line: 368, column: 11, scope: !1280, inlinedAt: !1152)
!1282 = !DILocation(line: 368, column: 6, scope: !1148, inlinedAt: !1152)
!1283 = !DILocation(line: 368, column: 26, scope: !1280, inlinedAt: !1152)
!1284 = !DILocation(line: 369, column: 6, scope: !1285, inlinedAt: !1152)
!1285 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 369, column: 6)
!1286 = !DILocation(line: 369, column: 11, scope: !1285, inlinedAt: !1152)
!1287 = !DILocation(line: 369, column: 6, scope: !1148, inlinedAt: !1152)
!1288 = !DILocation(line: 369, column: 26, scope: !1285, inlinedAt: !1152)
!1289 = !DILocation(line: 370, column: 6, scope: !1290, inlinedAt: !1152)
!1290 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 370, column: 6)
!1291 = !DILocation(line: 370, column: 11, scope: !1290, inlinedAt: !1152)
!1292 = !DILocation(line: 370, column: 6, scope: !1148, inlinedAt: !1152)
!1293 = !DILocation(line: 370, column: 26, scope: !1290, inlinedAt: !1152)
!1294 = !DILocation(line: 371, column: 6, scope: !1295, inlinedAt: !1152)
!1295 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 371, column: 6)
!1296 = !DILocation(line: 371, column: 11, scope: !1295, inlinedAt: !1152)
!1297 = !DILocation(line: 371, column: 6, scope: !1148, inlinedAt: !1152)
!1298 = !DILocation(line: 371, column: 26, scope: !1295, inlinedAt: !1152)
!1299 = !DILocation(line: 372, column: 6, scope: !1300, inlinedAt: !1152)
!1300 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 372, column: 6)
!1301 = !DILocation(line: 372, column: 11, scope: !1300, inlinedAt: !1152)
!1302 = !DILocation(line: 372, column: 6, scope: !1148, inlinedAt: !1152)
!1303 = !DILocation(line: 372, column: 26, scope: !1300, inlinedAt: !1152)
!1304 = !DILocation(line: 373, column: 6, scope: !1305, inlinedAt: !1152)
!1305 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 373, column: 6)
!1306 = !DILocation(line: 373, column: 11, scope: !1305, inlinedAt: !1152)
!1307 = !DILocation(line: 373, column: 6, scope: !1148, inlinedAt: !1152)
!1308 = !DILocation(line: 373, column: 26, scope: !1305, inlinedAt: !1152)
!1309 = !DILocation(line: 374, column: 6, scope: !1310, inlinedAt: !1152)
!1310 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 374, column: 6)
!1311 = !DILocation(line: 374, column: 11, scope: !1310, inlinedAt: !1152)
!1312 = !DILocation(line: 374, column: 6, scope: !1148, inlinedAt: !1152)
!1313 = !DILocation(line: 374, column: 26, scope: !1310, inlinedAt: !1152)
!1314 = !DILocation(line: 375, column: 6, scope: !1315, inlinedAt: !1152)
!1315 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 375, column: 6)
!1316 = !DILocation(line: 375, column: 11, scope: !1315, inlinedAt: !1152)
!1317 = !DILocation(line: 375, column: 6, scope: !1148, inlinedAt: !1152)
!1318 = !DILocation(line: 375, column: 27, scope: !1315, inlinedAt: !1152)
!1319 = !DILocation(line: 376, column: 6, scope: !1320, inlinedAt: !1152)
!1320 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 376, column: 6)
!1321 = !DILocation(line: 376, column: 11, scope: !1320, inlinedAt: !1152)
!1322 = !DILocation(line: 376, column: 6, scope: !1148, inlinedAt: !1152)
!1323 = !DILocation(line: 376, column: 32, scope: !1320, inlinedAt: !1152)
!1324 = !DILocation(line: 377, column: 6, scope: !1325, inlinedAt: !1152)
!1325 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 377, column: 6)
!1326 = !DILocation(line: 377, column: 11, scope: !1325, inlinedAt: !1152)
!1327 = !DILocation(line: 377, column: 6, scope: !1148, inlinedAt: !1152)
!1328 = !DILocation(line: 377, column: 32, scope: !1325, inlinedAt: !1152)
!1329 = !DILocation(line: 378, column: 6, scope: !1330, inlinedAt: !1152)
!1330 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 378, column: 6)
!1331 = !DILocation(line: 378, column: 11, scope: !1330, inlinedAt: !1152)
!1332 = !DILocation(line: 378, column: 6, scope: !1148, inlinedAt: !1152)
!1333 = !DILocation(line: 378, column: 32, scope: !1330, inlinedAt: !1152)
!1334 = !DILocation(line: 379, column: 6, scope: !1335, inlinedAt: !1152)
!1335 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 379, column: 6)
!1336 = !DILocation(line: 379, column: 11, scope: !1335, inlinedAt: !1152)
!1337 = !DILocation(line: 379, column: 6, scope: !1148, inlinedAt: !1152)
!1338 = !DILocation(line: 379, column: 33, scope: !1335, inlinedAt: !1152)
!1339 = !DILocation(line: 380, column: 6, scope: !1340, inlinedAt: !1152)
!1340 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 380, column: 6)
!1341 = !DILocation(line: 380, column: 11, scope: !1340, inlinedAt: !1152)
!1342 = !DILocation(line: 380, column: 6, scope: !1148, inlinedAt: !1152)
!1343 = !DILocation(line: 380, column: 33, scope: !1340, inlinedAt: !1152)
!1344 = !DILocation(line: 381, column: 6, scope: !1345, inlinedAt: !1152)
!1345 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 381, column: 6)
!1346 = !DILocation(line: 381, column: 11, scope: !1345, inlinedAt: !1152)
!1347 = !DILocation(line: 381, column: 6, scope: !1148, inlinedAt: !1152)
!1348 = !DILocation(line: 381, column: 33, scope: !1345, inlinedAt: !1152)
!1349 = !DILocation(line: 382, column: 2, scope: !1350, inlinedAt: !1152)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !13, line: 382, column: 2)
!1351 = distinct !DILexicalBlock(scope: !1148, file: !13, line: 382, column: 2)
!1352 = !{i32 -2144078496, i32 -2144078467, i32 -2144078421, i32 -2144078363, i32 -2144078309, i32 -2144078255, i32 -2144078200, i32 -2144078169}
!1353 = !DILocation(line: 382, column: 2, scope: !1354, inlinedAt: !1152)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !13, line: 382, column: 2)
!1355 = distinct !DILexicalBlock(scope: !1351, file: !13, line: 382, column: 2)
!1356 = !{i32 -2144077726, i32 -2144077719, i32 -2144077665, i32 -2144077634, i32 -2144077604}
!1357 = !DILocation(line: 382, column: 2, scope: !1355, inlinedAt: !1152)
!1358 = !DILocation(line: 386, column: 1, scope: !1148, inlinedAt: !1152)
!1359 = !DILocation(line: 547, column: 9, scope: !1131, inlinedAt: !1134)
!1360 = !DILocation(line: 549, column: 8, scope: !1361, inlinedAt: !1134)
!1361 = distinct !DILexicalBlock(scope: !1131, file: !13, line: 549, column: 7)
!1362 = !DILocation(line: 549, column: 7, scope: !1131, inlinedAt: !1134)
!1363 = !DILocation(line: 550, column: 4, scope: !1361, inlinedAt: !1134)
!1364 = !DILocation(line: 553, column: 33, scope: !1131, inlinedAt: !1134)
!1365 = !DILocation(line: 325, column: 6, scope: !1366, inlinedAt: !1146)
!1366 = distinct !DILexicalBlock(scope: !1142, file: !13, line: 325, column: 6)
!1367 = !DILocation(line: 325, column: 6, scope: !1142, inlinedAt: !1146)
!1368 = !DILocation(line: 326, column: 3, scope: !1366, inlinedAt: !1146)
!1369 = !DILocation(line: 332, column: 9, scope: !1142, inlinedAt: !1146)
!1370 = !DILocation(line: 332, column: 15, scope: !1142, inlinedAt: !1146)
!1371 = !DILocation(line: 332, column: 2, scope: !1142, inlinedAt: !1146)
!1372 = !DILocation(line: 336, column: 1, scope: !1142, inlinedAt: !1146)
!1373 = !DILocation(line: 553, column: 5, scope: !1131, inlinedAt: !1134)
!1374 = !DILocation(line: 553, column: 41, scope: !1131, inlinedAt: !1134)
!1375 = !DILocation(line: 554, column: 5, scope: !1131, inlinedAt: !1134)
!1376 = !DILocation(line: 554, column: 12, scope: !1131, inlinedAt: !1134)
!1377 = !DILocation(line: 448, column: 31, scope: !1124, inlinedAt: !1130)
!1378 = !DILocation(line: 448, column: 34, scope: !1124, inlinedAt: !1130)
!1379 = !DILocation(line: 448, column: 14, scope: !1124, inlinedAt: !1130)
!1380 = !DILocation(line: 450, column: 22, scope: !1124, inlinedAt: !1130)
!1381 = !DILocation(line: 450, column: 25, scope: !1124, inlinedAt: !1130)
!1382 = !DILocation(line: 450, column: 30, scope: !1124, inlinedAt: !1130)
!1383 = !DILocation(line: 450, column: 36, scope: !1124, inlinedAt: !1130)
!1384 = !DILocation(line: 450, column: 8, scope: !1124, inlinedAt: !1130)
!1385 = !DILocation(line: 450, column: 6, scope: !1124, inlinedAt: !1130)
!1386 = !DILocation(line: 451, column: 9, scope: !1124, inlinedAt: !1130)
!1387 = !DILocation(line: 552, column: 3, scope: !1131, inlinedAt: !1134)
!1388 = !DILocation(line: 557, column: 19, scope: !1133, inlinedAt: !1134)
!1389 = !DILocation(line: 557, column: 25, scope: !1133, inlinedAt: !1134)
!1390 = !DILocation(line: 557, column: 9, scope: !1133, inlinedAt: !1134)
!1391 = !DILocation(line: 557, column: 2, scope: !1133, inlinedAt: !1134)
!1392 = !DILocation(line: 558, column: 1, scope: !1133, inlinedAt: !1134)
!1393 = !DILocation(line: 664, column: 2, scope: !1120)
!1394 = distinct !DISubprogram(name: "clk_register_gate", scope: !3, file: !3, line: 184, type: !1395, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!32, !247, !40, !40, !70, !20, !93, !93, !157}
!1397 = !DILocalVariable(name: "dev", arg: 1, scope: !1394, file: !3, line: 184, type: !247)
!1398 = !DILocation(line: 184, column: 46, scope: !1394)
!1399 = !DILocalVariable(name: "name", arg: 2, scope: !1394, file: !3, line: 184, type: !40)
!1400 = !DILocation(line: 184, column: 63, scope: !1394)
!1401 = !DILocalVariable(name: "parent_name", arg: 3, scope: !1394, file: !3, line: 185, type: !40)
!1402 = !DILocation(line: 185, column: 15, scope: !1394)
!1403 = !DILocalVariable(name: "flags", arg: 4, scope: !1394, file: !3, line: 185, type: !70)
!1404 = !DILocation(line: 185, column: 42, scope: !1394)
!1405 = !DILocalVariable(name: "reg", arg: 5, scope: !1394, file: !3, line: 186, type: !20)
!1406 = !DILocation(line: 186, column: 17, scope: !1394)
!1407 = !DILocalVariable(name: "bit_idx", arg: 6, scope: !1394, file: !3, line: 186, type: !93)
!1408 = !DILocation(line: 186, column: 25, scope: !1394)
!1409 = !DILocalVariable(name: "clk_gate_flags", arg: 7, scope: !1394, file: !3, line: 187, type: !93)
!1410 = !DILocation(line: 187, column: 6, scope: !1394)
!1411 = !DILocalVariable(name: "lock", arg: 8, scope: !1394, file: !3, line: 187, type: !157)
!1412 = !DILocation(line: 187, column: 34, scope: !1394)
!1413 = !DILocalVariable(name: "hw", scope: !1394, file: !3, line: 189, type: !53)
!1414 = !DILocation(line: 189, column: 17, scope: !1394)
!1415 = !DILocation(line: 191, column: 7, scope: !1394)
!1416 = !DILocation(line: 191, column: 5, scope: !1394)
!1417 = !DILocation(line: 193, column: 13, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 193, column: 6)
!1419 = !DILocation(line: 193, column: 6, scope: !1418)
!1420 = !DILocation(line: 193, column: 6, scope: !1394)
!1421 = !DILocation(line: 194, column: 19, scope: !1418)
!1422 = !DILocation(line: 194, column: 10, scope: !1418)
!1423 = !DILocation(line: 194, column: 3, scope: !1418)
!1424 = !DILocation(line: 195, column: 9, scope: !1394)
!1425 = !DILocation(line: 195, column: 13, scope: !1394)
!1426 = !DILocation(line: 195, column: 2, scope: !1394)
!1427 = !DILocation(line: 196, column: 1, scope: !1394)
!1428 = distinct !DISubprogram(name: "IS_ERR", scope: !1112, file: !1112, line: 34, type: !1429, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!280, !288}
!1431 = !DILocalVariable(name: "ptr", arg: 1, scope: !1428, file: !1112, line: 34, type: !288)
!1432 = !DILocation(line: 34, column: 60, scope: !1428)
!1433 = !DILocation(line: 36, column: 9, scope: !1428)
!1434 = !DILocation(line: 36, column: 2, scope: !1428)
!1435 = distinct !DISubprogram(name: "ERR_CAST", scope: !1112, file: !1112, line: 51, type: !1436, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!20, !288}
!1438 = !DILocalVariable(name: "ptr", arg: 1, scope: !1435, file: !1112, line: 51, type: !288)
!1439 = !DILocation(line: 51, column: 64, scope: !1435)
!1440 = !DILocation(line: 54, column: 18, scope: !1435)
!1441 = !DILocation(line: 54, column: 2, scope: !1435)
!1442 = distinct !DISubprogram(name: "clk_unregister_gate", scope: !3, file: !3, line: 199, type: !1443, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !32}
!1445 = !DILocalVariable(name: "clk", arg: 1, scope: !1442, file: !3, line: 199, type: !32)
!1446 = !DILocation(line: 199, column: 38, scope: !1442)
!1447 = !DILocalVariable(name: "gate", scope: !1442, file: !3, line: 201, type: !21)
!1448 = !DILocation(line: 201, column: 19, scope: !1442)
!1449 = !DILocalVariable(name: "hw", scope: !1442, file: !3, line: 202, type: !53)
!1450 = !DILocation(line: 202, column: 17, scope: !1442)
!1451 = !DILocation(line: 204, column: 20, scope: !1442)
!1452 = !DILocation(line: 204, column: 7, scope: !1442)
!1453 = !DILocation(line: 204, column: 5, scope: !1442)
!1454 = !DILocation(line: 205, column: 7, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 205, column: 6)
!1456 = !DILocation(line: 205, column: 6, scope: !1442)
!1457 = !DILocation(line: 206, column: 3, scope: !1455)
!1458 = !DILocalVariable(name: "__mptr", scope: !1459, file: !3, line: 208, type: !20)
!1459 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 208, column: 9)
!1460 = !DILocation(line: 208, column: 9, scope: !1459)
!1461 = !DILocation(line: 208, column: 9, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 208, column: 9)
!1463 = !DILocation(line: 208, column: 7, scope: !1442)
!1464 = !DILocation(line: 210, column: 17, scope: !1442)
!1465 = !DILocation(line: 210, column: 2, scope: !1442)
!1466 = !DILocation(line: 211, column: 8, scope: !1442)
!1467 = !DILocation(line: 211, column: 2, scope: !1442)
!1468 = !DILocation(line: 212, column: 1, scope: !1442)
!1469 = distinct !DISubprogram(name: "clk_hw_unregister_gate", scope: !3, file: !3, line: 215, type: !56, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1470 = !DILocalVariable(name: "hw", arg: 1, scope: !1469, file: !3, line: 215, type: !53)
!1471 = !DILocation(line: 215, column: 44, scope: !1469)
!1472 = !DILocalVariable(name: "gate", scope: !1469, file: !3, line: 217, type: !21)
!1473 = !DILocation(line: 217, column: 19, scope: !1469)
!1474 = !DILocalVariable(name: "__mptr", scope: !1475, file: !3, line: 219, type: !20)
!1475 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 219, column: 9)
!1476 = !DILocation(line: 219, column: 9, scope: !1475)
!1477 = !DILocation(line: 219, column: 9, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 219, column: 9)
!1479 = !DILocation(line: 219, column: 7, scope: !1469)
!1480 = !DILocation(line: 221, column: 20, scope: !1469)
!1481 = !DILocation(line: 221, column: 2, scope: !1469)
!1482 = !DILocation(line: 222, column: 8, scope: !1469)
!1483 = !DILocation(line: 222, column: 2, scope: !1469)
!1484 = !DILocation(line: 223, column: 1, scope: !1469)
!1485 = distinct !DISubprogram(name: "readl", scope: !1486, file: !1486, line: 59, type: !1487, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1486 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!7, !1489}
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1491)
!1491 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1492 = !DILocalVariable(name: "addr", arg: 1, scope: !1485, file: !1486, line: 59, type: !1489)
!1493 = !DILocation(line: 59, column: 1, scope: !1485)
!1494 = !DILocalVariable(name: "ret", scope: !1485, file: !1486, line: 59, type: !7)
!1495 = !{i32 -2144051933}
!1496 = distinct !DISubprogram(name: "clk_gate_endisable", scope: !3, file: !3, line: 55, type: !1497, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !53, !52}
!1499 = !DILocalVariable(name: "lock", arg: 1, scope: !1500, file: !1501, line: 407, type: !157)
!1500 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !1501, file: !1501, line: 407, type: !1502, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1501 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !157, !70}
!1504 = !DILocation(line: 407, column: 64, scope: !1500, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 85, column: 3, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 84, column: 6)
!1507 = !DILocalVariable(name: "flags", arg: 2, scope: !1500, file: !1501, line: 407, type: !70)
!1508 = !DILocation(line: 407, column: 84, scope: !1500, inlinedAt: !1505)
!1509 = !DILocalVariable(name: "lock", arg: 1, scope: !1510, file: !1501, line: 327, type: !157)
!1510 = distinct !DISubprogram(name: "spinlock_check", scope: !1501, file: !1501, line: 327, type: !1511, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!1513, !157}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!1514 = !DILocation(line: 327, column: 67, scope: !1510, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 65, column: 3, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 65, column: 3)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 65, column: 3)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 65, column: 3)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 65, column: 3)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 65, column: 3)
!1521 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 64, column: 6)
!1522 = !DILocalVariable(name: "hw", arg: 1, scope: !1496, file: !3, line: 55, type: !53)
!1523 = !DILocation(line: 55, column: 47, scope: !1496)
!1524 = !DILocalVariable(name: "enable", arg: 2, scope: !1496, file: !3, line: 55, type: !52)
!1525 = !DILocation(line: 55, column: 55, scope: !1496)
!1526 = !DILocalVariable(name: "gate", scope: !1496, file: !3, line: 57, type: !21)
!1527 = !DILocation(line: 57, column: 19, scope: !1496)
!1528 = !DILocalVariable(name: "__mptr", scope: !1529, file: !3, line: 57, type: !20)
!1529 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 57, column: 26)
!1530 = !DILocation(line: 57, column: 26, scope: !1529)
!1531 = !DILocation(line: 57, column: 26, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 57, column: 26)
!1533 = !DILocalVariable(name: "set", scope: !1496, file: !3, line: 58, type: !52)
!1534 = !DILocation(line: 58, column: 6, scope: !1496)
!1535 = !DILocation(line: 58, column: 12, scope: !1496)
!1536 = !DILocation(line: 58, column: 18, scope: !1496)
!1537 = !DILocation(line: 58, column: 24, scope: !1496)
!1538 = !DILocalVariable(name: "flags", scope: !1496, file: !3, line: 59, type: !70)
!1539 = !DILocation(line: 59, column: 16, scope: !1496)
!1540 = !DILocalVariable(name: "reg", scope: !1496, file: !3, line: 60, type: !188)
!1541 = !DILocation(line: 60, column: 6, scope: !1496)
!1542 = !DILocation(line: 62, column: 9, scope: !1496)
!1543 = !DILocation(line: 62, column: 6, scope: !1496)
!1544 = !DILocation(line: 64, column: 6, scope: !1521)
!1545 = !DILocation(line: 64, column: 12, scope: !1521)
!1546 = !DILocation(line: 64, column: 6, scope: !1496)
!1547 = !DILocation(line: 65, column: 3, scope: !1521)
!1548 = !DILocation(line: 65, column: 3, scope: !1520)
!1549 = !DILocalVariable(name: "__dummy", scope: !1550, file: !3, line: 65, type: !70)
!1550 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 65, column: 3)
!1551 = !DILocation(line: 65, column: 3, scope: !1550)
!1552 = !DILocalVariable(name: "__dummy2", scope: !1550, file: !3, line: 65, type: !70)
!1553 = !DILocation(line: 65, column: 3, scope: !1519)
!1554 = !DILocation(line: 65, column: 3, scope: !1518)
!1555 = !DILocation(line: 65, column: 3, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 65, column: 3)
!1557 = !DILocalVariable(name: "__dummy", scope: !1558, file: !3, line: 65, type: !70)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 65, column: 3)
!1559 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 65, column: 3)
!1560 = !DILocation(line: 65, column: 3, scope: !1558)
!1561 = !DILocalVariable(name: "__dummy2", scope: !1558, file: !3, line: 65, type: !70)
!1562 = !DILocation(line: 65, column: 3, scope: !1559)
!1563 = !DILocation(line: 65, column: 3, scope: !1517)
!1564 = !{i32 -2143989246}
!1565 = !DILocation(line: 65, column: 3, scope: !1516)
!1566 = !DILocation(line: 329, column: 10, scope: !1510, inlinedAt: !1515)
!1567 = !DILocation(line: 329, column: 16, scope: !1510, inlinedAt: !1515)
!1568 = !DILocation(line: 69, column: 6, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 69, column: 6)
!1570 = !DILocation(line: 69, column: 12, scope: !1569)
!1571 = !DILocation(line: 69, column: 18, scope: !1569)
!1572 = !DILocation(line: 69, column: 6, scope: !1496)
!1573 = !DILocation(line: 70, column: 9, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 69, column: 42)
!1575 = !DILocation(line: 70, column: 7, scope: !1574)
!1576 = !DILocation(line: 71, column: 7, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 71, column: 7)
!1578 = !DILocation(line: 71, column: 7, scope: !1574)
!1579 = !DILocation(line: 72, column: 11, scope: !1577)
!1580 = !DILocation(line: 72, column: 8, scope: !1577)
!1581 = !DILocation(line: 72, column: 4, scope: !1577)
!1582 = !DILocation(line: 73, column: 2, scope: !1574)
!1583 = !DILocation(line: 74, column: 24, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 73, column: 9)
!1585 = !DILocation(line: 74, column: 9, scope: !1584)
!1586 = !DILocation(line: 74, column: 7, scope: !1584)
!1587 = !DILocation(line: 76, column: 7, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 76, column: 7)
!1589 = !DILocation(line: 76, column: 7, scope: !1584)
!1590 = !DILocation(line: 77, column: 11, scope: !1588)
!1591 = !DILocation(line: 77, column: 8, scope: !1588)
!1592 = !DILocation(line: 77, column: 4, scope: !1588)
!1593 = !DILocation(line: 79, column: 12, scope: !1588)
!1594 = !DILocation(line: 79, column: 11, scope: !1588)
!1595 = !DILocation(line: 79, column: 8, scope: !1588)
!1596 = !DILocation(line: 82, column: 18, scope: !1496)
!1597 = !DILocation(line: 82, column: 24, scope: !1496)
!1598 = !DILocation(line: 82, column: 2, scope: !1496)
!1599 = !DILocation(line: 84, column: 6, scope: !1506)
!1600 = !DILocation(line: 84, column: 12, scope: !1506)
!1601 = !DILocation(line: 84, column: 6, scope: !1496)
!1602 = !DILocation(line: 85, column: 26, scope: !1506)
!1603 = !DILocation(line: 85, column: 32, scope: !1506)
!1604 = !DILocation(line: 85, column: 38, scope: !1506)
!1605 = !DILocalVariable(name: "__dummy", scope: !1606, file: !1501, line: 409, type: !70)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !1501, line: 409, column: 2)
!1607 = distinct !DILexicalBlock(scope: !1500, file: !1501, line: 409, column: 2)
!1608 = !DILocation(line: 409, column: 2, scope: !1606, inlinedAt: !1505)
!1609 = !DILocalVariable(name: "__dummy2", scope: !1606, file: !1501, line: 409, type: !70)
!1610 = !DILocalVariable(name: "__dummy", scope: !1611, file: !1501, line: 409, type: !70)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !1501, line: 409, column: 2)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !1501, line: 409, column: 2)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !1501, line: 409, column: 2)
!1614 = distinct !DILexicalBlock(scope: !1607, file: !1501, line: 409, column: 2)
!1615 = !DILocation(line: 409, column: 2, scope: !1611, inlinedAt: !1505)
!1616 = !DILocalVariable(name: "__dummy2", scope: !1611, file: !1501, line: 409, type: !70)
!1617 = !DILocation(line: 409, column: 2, scope: !1612, inlinedAt: !1505)
!1618 = !DILocation(line: 409, column: 2, scope: !1619, inlinedAt: !1505)
!1619 = distinct !DILexicalBlock(scope: !1614, file: !1501, line: 409, column: 2)
!1620 = !{i32 -2145381663}
!1621 = !DILocation(line: 409, column: 2, scope: !1622, inlinedAt: !1505)
!1622 = distinct !DILexicalBlock(scope: !1619, file: !1501, line: 409, column: 2)
!1623 = !DILocation(line: 85, column: 3, scope: !1506)
!1624 = !DILocation(line: 88, column: 1, scope: !1496)
!1625 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !1626, file: !1626, line: 666, type: !1627, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1626 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!70}
!1629 = !DILocalVariable(name: "f", scope: !1625, file: !1626, line: 668, type: !70)
!1630 = !DILocation(line: 668, column: 16, scope: !1625)
!1631 = !DILocation(line: 670, column: 6, scope: !1625)
!1632 = !DILocation(line: 670, column: 4, scope: !1625)
!1633 = !DILocation(line: 671, column: 2, scope: !1625)
!1634 = !DILocation(line: 672, column: 9, scope: !1625)
!1635 = !DILocation(line: 672, column: 2, scope: !1625)
!1636 = distinct !DISubprogram(name: "clk_gate_writel", scope: !3, file: !3, line: 34, type: !1637, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null, !21, !188}
!1639 = !DILocalVariable(name: "gate", arg: 1, scope: !1636, file: !3, line: 34, type: !21)
!1640 = !DILocation(line: 34, column: 53, scope: !1636)
!1641 = !DILocalVariable(name: "val", arg: 2, scope: !1636, file: !3, line: 34, type: !188)
!1642 = !DILocation(line: 34, column: 63, scope: !1636)
!1643 = !DILocation(line: 36, column: 6, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 36, column: 6)
!1645 = !DILocation(line: 36, column: 12, scope: !1644)
!1646 = !DILocation(line: 36, column: 18, scope: !1644)
!1647 = !DILocation(line: 36, column: 6, scope: !1636)
!1648 = !DILocation(line: 37, column: 15, scope: !1644)
!1649 = !DILocation(line: 37, column: 20, scope: !1644)
!1650 = !DILocation(line: 37, column: 26, scope: !1644)
!1651 = !DILocation(line: 37, column: 3, scope: !1644)
!1652 = !DILocation(line: 39, column: 10, scope: !1644)
!1653 = !DILocation(line: 39, column: 15, scope: !1644)
!1654 = !DILocation(line: 39, column: 21, scope: !1644)
!1655 = !DILocation(line: 39, column: 3, scope: !1644)
!1656 = !DILocation(line: 40, column: 1, scope: !1636)
!1657 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1626, file: !1626, line: 646, type: !1627, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1658 = !DILocalVariable(name: "__ret", scope: !1659, file: !1626, line: 648, type: !70)
!1659 = distinct !DILexicalBlock(scope: !1657, file: !1626, line: 648, column: 9)
!1660 = !DILocation(line: 648, column: 9, scope: !1659)
!1661 = !DILocalVariable(name: "__edi", scope: !1659, file: !1626, line: 648, type: !70)
!1662 = !DILocalVariable(name: "__esi", scope: !1659, file: !1626, line: 648, type: !70)
!1663 = !DILocalVariable(name: "__edx", scope: !1659, file: !1626, line: 648, type: !70)
!1664 = !DILocalVariable(name: "__ecx", scope: !1659, file: !1626, line: 648, type: !70)
!1665 = !DILocalVariable(name: "__eax", scope: !1659, file: !1626, line: 648, type: !70)
!1666 = !DILocation(line: 648, column: 9, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !1626, line: 648, column: 9)
!1668 = distinct !DILexicalBlock(scope: !1659, file: !1626, line: 648, column: 9)
!1669 = !{i32 -2145668307, i32 -2145665992, i32 -2145665758, i32 -2145665707, i32 -2145665679, i32 -2145665654, i32 -2145665970, i32 -2145665957, i32 -2145665519, i32 -2145665400, i32 -2145665865, i32 -2145665838, i32 -2145665810, i32 -2145665780}
!1670 = !DILocalVariable(name: "__mask", scope: !1671, file: !1626, line: 648, type: !70)
!1671 = distinct !DILexicalBlock(scope: !1667, file: !1626, line: 648, column: 9)
!1672 = !DILocation(line: 648, column: 9, scope: !1671)
!1673 = !DILocation(line: 648, column: 9, scope: !1668)
!1674 = !DILocation(line: 648, column: 2, scope: !1657)
!1675 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !1626, file: !1626, line: 656, type: !1676, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null}
!1678 = !DILocalVariable(name: "__edi", scope: !1679, file: !1626, line: 658, type: !70)
!1679 = distinct !DILexicalBlock(scope: !1675, file: !1626, line: 658, column: 2)
!1680 = !DILocation(line: 658, column: 2, scope: !1679)
!1681 = !DILocalVariable(name: "__esi", scope: !1679, file: !1626, line: 658, type: !70)
!1682 = !DILocalVariable(name: "__edx", scope: !1679, file: !1626, line: 658, type: !70)
!1683 = !DILocalVariable(name: "__ecx", scope: !1679, file: !1626, line: 658, type: !70)
!1684 = !DILocalVariable(name: "__eax", scope: !1679, file: !1626, line: 658, type: !70)
!1685 = !{i32 -2145661213, i32 -2145660481, i32 -2145660247, i32 -2145660196, i32 -2145660168, i32 -2145660143, i32 -2145660459, i32 -2145660446, i32 -2145660008, i32 -2145659889, i32 -2145660354, i32 -2145660327, i32 -2145660299, i32 -2145660269}
!1686 = !DILocation(line: 659, column: 1, scope: !1675)
!1687 = distinct !DISubprogram(name: "writel", scope: !1486, file: !1486, line: 67, type: !1688, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !7, !1690}
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1691 = !DILocalVariable(name: "val", arg: 1, scope: !1687, file: !1486, line: 67, type: !7)
!1692 = !DILocation(line: 67, column: 1, scope: !1687)
!1693 = !DILocalVariable(name: "addr", arg: 2, scope: !1687, file: !1486, line: 67, type: !1690)
!1694 = !{i32 -2144049540}
!1695 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !1626, file: !1626, line: 651, type: !1696, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !70}
!1698 = !DILocalVariable(name: "f", arg: 1, scope: !1695, file: !1626, line: 651, type: !70)
!1699 = !DILocation(line: 651, column: 65, scope: !1695)
!1700 = !DILocalVariable(name: "__edi", scope: !1701, file: !1626, line: 653, type: !70)
!1701 = distinct !DILexicalBlock(scope: !1695, file: !1626, line: 653, column: 2)
!1702 = !DILocation(line: 653, column: 2, scope: !1701)
!1703 = !DILocalVariable(name: "__esi", scope: !1701, file: !1626, line: 653, type: !70)
!1704 = !DILocalVariable(name: "__edx", scope: !1701, file: !1626, line: 653, type: !70)
!1705 = !DILocalVariable(name: "__ecx", scope: !1701, file: !1626, line: 653, type: !70)
!1706 = !DILocalVariable(name: "__eax", scope: !1701, file: !1626, line: 653, type: !70)
!1707 = !{i32 -2145663840, i32 -2145663090, i32 -2145662856, i32 -2145662805, i32 -2145662777, i32 -2145662752, i32 -2145663068, i32 -2145663055, i32 -2145662617, i32 -2145662498, i32 -2145662963, i32 -2145662936, i32 -2145662908, i32 -2145662878}
!1708 = !DILocation(line: 654, column: 1, scope: !1695)
!1709 = distinct !DISubprogram(name: "get_order", scope: !1710, file: !1710, line: 29, type: !1711, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1710 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!52, !70}
!1713 = !DILocalVariable(name: "x", arg: 1, scope: !1714, file: !1715, line: 366, type: !338)
!1714 = distinct !DISubprogram(name: "fls64", scope: !1715, file: !1715, line: 366, type: !1716, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1715 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!52, !338}
!1718 = !DILocation(line: 366, column: 40, scope: !1714, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 46, column: 9, scope: !1709)
!1720 = !DILocalVariable(name: "bitpos", scope: !1714, file: !1715, line: 368, type: !52)
!1721 = !DILocation(line: 368, column: 6, scope: !1714, inlinedAt: !1719)
!1722 = !DILocalVariable(name: "size", arg: 1, scope: !1709, file: !1710, line: 29, type: !70)
!1723 = !DILocation(line: 29, column: 63, scope: !1709)
!1724 = !DILocation(line: 31, column: 27, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1709, file: !1710, line: 31, column: 6)
!1726 = !DILocation(line: 31, column: 6, scope: !1725)
!1727 = !DILocation(line: 31, column: 6, scope: !1709)
!1728 = !DILocation(line: 32, column: 8, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !1710, line: 32, column: 7)
!1730 = distinct !DILexicalBlock(scope: !1725, file: !1710, line: 31, column: 34)
!1731 = !DILocation(line: 32, column: 7, scope: !1730)
!1732 = !DILocation(line: 33, column: 4, scope: !1729)
!1733 = !DILocation(line: 35, column: 7, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1730, file: !1710, line: 35, column: 7)
!1735 = !DILocation(line: 35, column: 12, scope: !1734)
!1736 = !DILocation(line: 35, column: 7, scope: !1730)
!1737 = !DILocation(line: 36, column: 4, scope: !1734)
!1738 = !DILocation(line: 38, column: 10, scope: !1730)
!1739 = !DILocation(line: 38, column: 28, scope: !1730)
!1740 = !DILocation(line: 38, column: 41, scope: !1730)
!1741 = !DILocation(line: 38, column: 3, scope: !1730)
!1742 = !DILocation(line: 41, column: 6, scope: !1709)
!1743 = !DILocation(line: 42, column: 7, scope: !1709)
!1744 = !DILocation(line: 46, column: 15, scope: !1709)
!1745 = !DILocation(line: 374, column: 2, scope: !1714, inlinedAt: !1719)
!1746 = !DILocation(line: 376, column: 14, scope: !1714, inlinedAt: !1719)
!1747 = !{i32 287571}
!1748 = !DILocation(line: 377, column: 9, scope: !1714, inlinedAt: !1719)
!1749 = !DILocation(line: 377, column: 16, scope: !1714, inlinedAt: !1719)
!1750 = !DILocation(line: 46, column: 2, scope: !1709)
!1751 = !DILocation(line: 48, column: 1, scope: !1709)
!1752 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1753, file: !1753, line: 30, type: !1754, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1753 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!52, !337}
!1756 = !DILocation(line: 366, column: 40, scope: !1714, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 32, column: 9, scope: !1752)
!1758 = !DILocation(line: 368, column: 6, scope: !1714, inlinedAt: !1757)
!1759 = !DILocalVariable(name: "n", arg: 1, scope: !1752, file: !1753, line: 30, type: !337)
!1760 = !DILocation(line: 30, column: 21, scope: !1752)
!1761 = !DILocation(line: 32, column: 15, scope: !1752)
!1762 = !DILocation(line: 374, column: 2, scope: !1714, inlinedAt: !1757)
!1763 = !DILocation(line: 376, column: 14, scope: !1714, inlinedAt: !1757)
!1764 = !DILocation(line: 377, column: 9, scope: !1714, inlinedAt: !1757)
!1765 = !DILocation(line: 377, column: 16, scope: !1714, inlinedAt: !1757)
!1766 = !DILocation(line: 32, column: 18, scope: !1752)
!1767 = !DILocation(line: 32, column: 2, scope: !1752)
!1768 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1769, file: !1769, line: 137, type: !1770, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !172)
!1769 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!20, !1127, !288, !300, !173}
!1772 = !DILocalVariable(name: "s", arg: 1, scope: !1768, file: !1769, line: 137, type: !1127)
!1773 = !DILocation(line: 137, column: 54, scope: !1768)
!1774 = !DILocalVariable(name: "object", arg: 2, scope: !1768, file: !1769, line: 137, type: !288)
!1775 = !DILocation(line: 137, column: 69, scope: !1768)
!1776 = !DILocalVariable(name: "size", arg: 3, scope: !1768, file: !1769, line: 138, type: !300)
!1777 = !DILocation(line: 138, column: 12, scope: !1768)
!1778 = !DILocalVariable(name: "flags", arg: 4, scope: !1768, file: !1769, line: 138, type: !173)
!1779 = !DILocation(line: 138, column: 24, scope: !1768)
!1780 = !DILocation(line: 140, column: 17, scope: !1768)
!1781 = !DILocation(line: 140, column: 2, scope: !1768)
