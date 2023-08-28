; ModuleID = '../bcout/drivers/clk/clk-divider.llvm.bc'
source_filename = "drivers/clk/clk-divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.clk_ops = type { i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }
%struct.clk_hw = type { %struct.clk_core*, %struct.clk*, %struct.clk_init_data* }
%struct.clk_core = type opaque
%struct.clk = type opaque
%struct.clk_init_data = type { i8*, %struct.clk_ops*, i8**, %struct.clk_parent_data*, %struct.clk_hw**, i8, i64 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.clk_div_table = type { i32, i32 }
%struct.clk_divider = type { %struct.clk_hw, i8*, i8, i8, i8, %struct.clk_div_table*, %struct.spinlock* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }

@.str = private unnamed_addr constant [53 x i8] c"%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"drivers/clk/clk-divider.c\00", align 1
@clk_divider_ops = dso_local constant %struct.clk_ops { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* @clk_divider_recalc_rate, i64 (%struct.clk_hw*, i64, i64*)* @clk_divider_round_rate, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* null, i32 (%struct.clk_hw*, i8)* null, i8 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i64, i64)* @clk_divider_set_rate, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8, !dbg !0
@clk_divider_ro_ops = dso_local constant %struct.clk_ops { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* @clk_divider_recalc_rate, i64 (%struct.clk_hw*, i64, i64*)* @clk_divider_round_rate, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* null, i32 (%struct.clk_hw*, i8)* null, i8 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i64, i64)* null, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8, !dbg !197
@.str.2 = private unnamed_addr constant [38 x i8] c"\014divider value exceeds LOWORD field\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @divider_recalc_rate(%struct.clk_hw* %hw, i64 %parent_rate, i32 %val, %struct.clk_div_table* %table, i64 %flags, i64 %width) #0 !dbg !205 {
entry:
  %retval = alloca i64, align 8
  %hw.addr = alloca %struct.clk_hw*, align 8
  %parent_rate.addr = alloca i64, align 8
  %val.addr = alloca i32, align 4
  %table.addr = alloca %struct.clk_div_table*, align 8
  %flags.addr = alloca i64, align 8
  %width.addr = alloca i64, align 8
  %div = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %_tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %tmp38 = alloca i64, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !208, metadata !DIExpression()), !dbg !209
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !210, metadata !DIExpression()), !dbg !211
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !212, metadata !DIExpression()), !dbg !213
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !214, metadata !DIExpression()), !dbg !215
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !216, metadata !DIExpression()), !dbg !217
  store i64 %width, i64* %width.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %width.addr, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i32* %div, metadata !220, metadata !DIExpression()), !dbg !221
  %0 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !222
  %1 = load i32, i32* %val.addr, align 4, !dbg !223
  %2 = load i64, i64* %flags.addr, align 8, !dbg !224
  %3 = load i64, i64* %width.addr, align 8, !dbg !225
  %conv = trunc i64 %3 to i8, !dbg !225
  %call = call i32 @_get_div(%struct.clk_div_table* %0, i32 %1, i64 %2, i8 zeroext %conv) #10, !dbg !226
  store i32 %call, i32* %div, align 4, !dbg !227
  %4 = load i32, i32* %div, align 4, !dbg !228
  %tobool = icmp ne i32 %4, 0, !dbg !228
  br i1 %tobool, label %if.end31, label %if.then, !dbg !230

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !231, metadata !DIExpression()), !dbg !234
  %5 = load i64, i64* %flags.addr, align 8, !dbg !234
  %and = and i64 %5, 4, !dbg !234
  %tobool1 = icmp ne i64 %and, 0, !dbg !234
  %lnot = xor i1 %tobool1, true, !dbg !234
  %lnot2 = xor i1 %lnot, true, !dbg !234
  %lnot3 = xor i1 %lnot2, true, !dbg !234
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !234
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !234
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !235
  %tobool4 = icmp ne i32 %6, 0, !dbg !235
  %lnot5 = xor i1 %tobool4, true, !dbg !235
  %lnot7 = xor i1 %lnot5, true, !dbg !235
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !235
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !235
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !235
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !234

if.then11:                                        ; preds = %if.then
  br label %do.body, !dbg !235

do.body:                                          ; preds = %if.then11
  br label %do.body12, !dbg !237

do.body12:                                        ; preds = %do.body
  br label %do.end, !dbg !239

do.end:                                           ; preds = %do.body12
  %7 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !237
  %call13 = call i8* @clk_hw_get_name(%struct.clk_hw* %7) #10, !dbg !237
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %call13) #10, !dbg !237
  br label %do.body14, !dbg !237

do.body14:                                        ; preds = %do.end
  br label %do.body15, !dbg !241

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !243

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !241

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 140, i32 2313, i64 12) #7, !dbg !245, !srcloc !247
  br label %do.end18, !dbg !245

do.end18:                                         ; preds = %do.body17
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 106) #7, !dbg !248, !srcloc !250
  br label %do.body19, !dbg !241

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !251

do.end20:                                         ; preds = %do.body19
  br label %do.end21, !dbg !241

do.end21:                                         ; preds = %do.end20
  br label %do.body22, !dbg !237

do.body22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !253

do.end23:                                         ; preds = %do.body22
  br label %do.end24, !dbg !237

do.end24:                                         ; preds = %do.end23
  br label %if.end, !dbg !237

if.end:                                           ; preds = %do.end24, %if.then
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !234
  %tobool25 = icmp ne i32 %8, 0, !dbg !234
  %lnot26 = xor i1 %tobool25, true, !dbg !234
  %lnot28 = xor i1 %lnot26, true, !dbg !234
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !234
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !234
  store i64 %conv30, i64* %tmp, align 8, !dbg !235
  %9 = load i64, i64* %tmp, align 8, !dbg !234
  %10 = load i64, i64* %parent_rate.addr, align 8, !dbg !255
  store i64 %10, i64* %retval, align 8, !dbg !256
  br label %return, !dbg !256

if.end31:                                         ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_tmp, metadata !257, metadata !DIExpression()), !dbg !259
  %11 = load i64, i64* %parent_rate.addr, align 8, !dbg !259
  %12 = load i32, i32* %div, align 4, !dbg !259
  %conv32 = zext i32 %12 to i64, !dbg !259
  %add = add i64 %11, %conv32, !dbg !259
  %sub = sub i64 %add, 1, !dbg !259
  store i64 %sub, i64* %_tmp, align 8, !dbg !259
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !260, metadata !DIExpression()), !dbg !263
  %13 = load i32, i32* %div, align 4, !dbg !263
  store i32 %13, i32* %__base, align 4, !dbg !263
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !264, metadata !DIExpression()), !dbg !263
  %14 = load i64, i64* %_tmp, align 8, !dbg !263
  %15 = load i32, i32* %__base, align 4, !dbg !263
  %conv33 = zext i32 %15 to i64, !dbg !263
  %rem = urem i64 %14, %conv33, !dbg !263
  %conv34 = trunc i64 %rem to i32, !dbg !263
  store i32 %conv34, i32* %__rem, align 4, !dbg !263
  %16 = load i64, i64* %_tmp, align 8, !dbg !263
  %17 = load i32, i32* %__base, align 4, !dbg !263
  %conv35 = zext i32 %17 to i64, !dbg !263
  %div36 = udiv i64 %16, %conv35, !dbg !263
  store i64 %div36, i64* %_tmp, align 8, !dbg !263
  %18 = load i32, i32* %__rem, align 4, !dbg !263
  store i32 %18, i32* %tmp37, align 4, !dbg !263
  %19 = load i32, i32* %tmp37, align 4, !dbg !263
  %20 = load i64, i64* %_tmp, align 8, !dbg !259
  store i64 %20, i64* %tmp38, align 8, !dbg !259
  %21 = load i64, i64* %tmp38, align 8, !dbg !259
  store i64 %21, i64* %retval, align 8, !dbg !265
  br label %return, !dbg !265

return:                                           ; preds = %if.end31, %if.end
  %22 = load i64, i64* %retval, align 8, !dbg !266
  ret i64 %22, !dbg !266
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_get_div(%struct.clk_div_table* %table, i32 %val, i64 %flags, i8 zeroext %width) #0 !dbg !267 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.clk_div_table*, align 8
  %val.addr = alloca i32, align 4
  %flags.addr = alloca i64, align 8
  %width.addr = alloca i8, align 1
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !270, metadata !DIExpression()), !dbg !271
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !272, metadata !DIExpression()), !dbg !273
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !274, metadata !DIExpression()), !dbg !275
  store i8 %width, i8* %width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %width.addr, metadata !276, metadata !DIExpression()), !dbg !277
  %0 = load i64, i64* %flags.addr, align 8, !dbg !278
  %and = and i64 %0, 1, !dbg !280
  %tobool = icmp ne i64 %and, 0, !dbg !280
  br i1 %tobool, label %if.then, label %if.end, !dbg !281

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %val.addr, align 4, !dbg !282
  store i32 %1, i32* %retval, align 4, !dbg !283
  br label %return, !dbg !283

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %flags.addr, align 8, !dbg !284
  %and1 = and i64 %2, 2, !dbg !286
  %tobool2 = icmp ne i64 %and1, 0, !dbg !286
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !287

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %val.addr, align 4, !dbg !288
  %shl = shl i32 1, %3, !dbg !289
  store i32 %shl, i32* %retval, align 4, !dbg !290
  br label %return, !dbg !290

if.end4:                                          ; preds = %if.end
  %4 = load i64, i64* %flags.addr, align 8, !dbg !291
  %and5 = and i64 %4, 64, !dbg !293
  %tobool6 = icmp ne i64 %and5, 0, !dbg !293
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !294

if.then7:                                         ; preds = %if.end4
  %5 = load i32, i32* %val.addr, align 4, !dbg !295
  %tobool8 = icmp ne i32 %5, 0, !dbg !295
  br i1 %tobool8, label %cond.true, label %cond.false, !dbg !295

cond.true:                                        ; preds = %if.then7
  %6 = load i32, i32* %val.addr, align 4, !dbg !296
  br label %cond.end, !dbg !295

cond.false:                                       ; preds = %if.then7
  %7 = load i8, i8* %width.addr, align 1, !dbg !297
  %conv = zext i8 %7 to i32, !dbg !297
  %shl9 = shl i32 1, %conv, !dbg !297
  %sub = sub i32 %shl9, 1, !dbg !297
  %add = add i32 %sub, 1, !dbg !298
  br label %cond.end, !dbg !295

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %add, %cond.false ], !dbg !295
  store i32 %cond, i32* %retval, align 4, !dbg !299
  br label %return, !dbg !299

if.end10:                                         ; preds = %if.end4
  %8 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !300
  %tobool11 = icmp ne %struct.clk_div_table* %8, null, !dbg !300
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !302

if.then12:                                        ; preds = %if.end10
  %9 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !303
  %10 = load i32, i32* %val.addr, align 4, !dbg !304
  %call = call i32 @_get_table_div(%struct.clk_div_table* %9, i32 %10) #10, !dbg !305
  store i32 %call, i32* %retval, align 4, !dbg !306
  br label %return, !dbg !306

if.end13:                                         ; preds = %if.end10
  %11 = load i32, i32* %val.addr, align 4, !dbg !307
  %add14 = add i32 %11, 1, !dbg !308
  store i32 %add14, i32* %retval, align 4, !dbg !309
  br label %return, !dbg !309

return:                                           ; preds = %if.end13, %if.then12, %cond.end, %if.then3, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !310
  ret i32 %12, !dbg !310
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @clk_hw_get_name(%struct.clk_hw*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @divider_round_rate_parent(%struct.clk_hw* %hw, %struct.clk_hw* %parent, i64 %rate, i64* %prate, %struct.clk_div_table* %table, i8 zeroext %width, i64 %flags) #0 !dbg !311 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %parent.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %prate.addr = alloca i64*, align 8
  %table.addr = alloca %struct.clk_div_table*, align 8
  %width.addr = alloca i8, align 1
  %flags.addr = alloca i64, align 8
  %div = alloca i32, align 4
  %_tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp5 = alloca i64, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !314, metadata !DIExpression()), !dbg !315
  store %struct.clk_hw* %parent, %struct.clk_hw** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %parent.addr, metadata !316, metadata !DIExpression()), !dbg !317
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !318, metadata !DIExpression()), !dbg !319
  store i64* %prate, i64** %prate.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %prate.addr, metadata !320, metadata !DIExpression()), !dbg !321
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !322, metadata !DIExpression()), !dbg !323
  store i8 %width, i8* %width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %width.addr, metadata !324, metadata !DIExpression()), !dbg !325
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !326, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.declare(metadata i32* %div, metadata !328, metadata !DIExpression()), !dbg !329
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !330
  %1 = load %struct.clk_hw*, %struct.clk_hw** %parent.addr, align 8, !dbg !331
  %2 = load i64, i64* %rate.addr, align 8, !dbg !332
  %3 = load i64*, i64** %prate.addr, align 8, !dbg !333
  %4 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !334
  %5 = load i8, i8* %width.addr, align 1, !dbg !335
  %6 = load i64, i64* %flags.addr, align 8, !dbg !336
  %call = call i32 @clk_divider_bestdiv(%struct.clk_hw* %0, %struct.clk_hw* %1, i64 %2, i64* %3, %struct.clk_div_table* %4, i8 zeroext %5, i64 %6) #10, !dbg !337
  store i32 %call, i32* %div, align 4, !dbg !338
  call void @llvm.dbg.declare(metadata i64* %_tmp, metadata !339, metadata !DIExpression()), !dbg !341
  %7 = load i64*, i64** %prate.addr, align 8, !dbg !341
  %8 = load i64, i64* %7, align 8, !dbg !341
  %9 = load i32, i32* %div, align 4, !dbg !341
  %conv = sext i32 %9 to i64, !dbg !341
  %add = add i64 %8, %conv, !dbg !341
  %sub = sub i64 %add, 1, !dbg !341
  store i64 %sub, i64* %_tmp, align 8, !dbg !341
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !342, metadata !DIExpression()), !dbg !344
  %10 = load i32, i32* %div, align 4, !dbg !344
  store i32 %10, i32* %__base, align 4, !dbg !344
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !345, metadata !DIExpression()), !dbg !344
  %11 = load i64, i64* %_tmp, align 8, !dbg !344
  %12 = load i32, i32* %__base, align 4, !dbg !344
  %conv1 = zext i32 %12 to i64, !dbg !344
  %rem = urem i64 %11, %conv1, !dbg !344
  %conv2 = trunc i64 %rem to i32, !dbg !344
  store i32 %conv2, i32* %__rem, align 4, !dbg !344
  %13 = load i64, i64* %_tmp, align 8, !dbg !344
  %14 = load i32, i32* %__base, align 4, !dbg !344
  %conv3 = zext i32 %14 to i64, !dbg !344
  %div4 = udiv i64 %13, %conv3, !dbg !344
  store i64 %div4, i64* %_tmp, align 8, !dbg !344
  %15 = load i32, i32* %__rem, align 4, !dbg !344
  store i32 %15, i32* %tmp, align 4, !dbg !344
  %16 = load i32, i32* %tmp, align 4, !dbg !344
  %17 = load i64, i64* %_tmp, align 8, !dbg !341
  store i64 %17, i64* %tmp5, align 8, !dbg !341
  %18 = load i64, i64* %tmp5, align 8, !dbg !341
  ret i64 %18, !dbg !346
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_divider_bestdiv(%struct.clk_hw* %hw, %struct.clk_hw* %parent, i64 %rate, i64* %best_parent_rate, %struct.clk_div_table* %table, i8 zeroext %width, i64 %flags) #0 !dbg !347 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.clk_hw*, align 8
  %parent.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %best_parent_rate.addr = alloca i64*, align 8
  %table.addr = alloca %struct.clk_div_table*, align 8
  %width.addr = alloca i8, align 1
  %flags.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %bestdiv = alloca i32, align 4
  %parent_rate = alloca i64, align 8
  %best = alloca i64, align 8
  %now = alloca i64, align 8
  %maxdiv = alloca i64, align 8
  %parent_rate_saved = alloca i64, align 8
  %__UNIQUE_ID___x108 = alloca i64, align 8
  %__UNIQUE_ID___y109 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %_tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %tmp40 = alloca i64, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !350, metadata !DIExpression()), !dbg !351
  store %struct.clk_hw* %parent, %struct.clk_hw** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %parent.addr, metadata !352, metadata !DIExpression()), !dbg !353
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !354, metadata !DIExpression()), !dbg !355
  store i64* %best_parent_rate, i64** %best_parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %best_parent_rate.addr, metadata !356, metadata !DIExpression()), !dbg !357
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !358, metadata !DIExpression()), !dbg !359
  store i8 %width, i8* %width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %width.addr, metadata !360, metadata !DIExpression()), !dbg !361
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !362, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.declare(metadata i32* %i, metadata !364, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.declare(metadata i32* %bestdiv, metadata !366, metadata !DIExpression()), !dbg !367
  store i32 0, i32* %bestdiv, align 4, !dbg !367
  call void @llvm.dbg.declare(metadata i64* %parent_rate, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.declare(metadata i64* %best, metadata !370, metadata !DIExpression()), !dbg !371
  store i64 0, i64* %best, align 8, !dbg !371
  call void @llvm.dbg.declare(metadata i64* %now, metadata !372, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata i64* %maxdiv, metadata !374, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata i64* %parent_rate_saved, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load i64*, i64** %best_parent_rate.addr, align 8, !dbg !378
  %1 = load i64, i64* %0, align 8, !dbg !379
  store i64 %1, i64* %parent_rate_saved, align 8, !dbg !377
  %2 = load i64, i64* %rate.addr, align 8, !dbg !380
  %tobool = icmp ne i64 %2, 0, !dbg !380
  br i1 %tobool, label %if.end, label %if.then, !dbg !382

if.then:                                          ; preds = %entry
  store i64 1, i64* %rate.addr, align 8, !dbg !383
  br label %if.end, !dbg !384

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !385
  %4 = load i8, i8* %width.addr, align 1, !dbg !386
  %5 = load i64, i64* %flags.addr, align 8, !dbg !387
  %call = call i32 @_get_maxdiv(%struct.clk_div_table* %3, i8 zeroext %4, i64 %5) #10, !dbg !388
  %conv = zext i32 %call to i64, !dbg !388
  store i64 %conv, i64* %maxdiv, align 8, !dbg !389
  %6 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !390
  %call1 = call i64 @clk_hw_get_flags(%struct.clk_hw* %6) #10, !dbg !392
  %and = and i64 %call1, 4, !dbg !393
  %tobool2 = icmp ne i64 %and, 0, !dbg !393
  br i1 %tobool2, label %if.end15, label %if.then3, !dbg !394

if.then3:                                         ; preds = %if.end
  %7 = load i64*, i64** %best_parent_rate.addr, align 8, !dbg !395
  %8 = load i64, i64* %7, align 8, !dbg !397
  store i64 %8, i64* %parent_rate, align 8, !dbg !398
  %9 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !399
  %10 = load i64, i64* %parent_rate, align 8, !dbg !400
  %11 = load i64, i64* %rate.addr, align 8, !dbg !401
  %12 = load i64, i64* %flags.addr, align 8, !dbg !402
  %call4 = call i32 @_div_round(%struct.clk_div_table* %9, i64 %10, i64 %11, i64 %12) #10, !dbg !403
  store i32 %call4, i32* %bestdiv, align 4, !dbg !404
  %13 = load i32, i32* %bestdiv, align 4, !dbg !405
  %cmp = icmp eq i32 %13, 0, !dbg !406
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !405

cond.true:                                        ; preds = %if.then3
  br label %cond.end, !dbg !405

cond.false:                                       ; preds = %if.then3
  %14 = load i32, i32* %bestdiv, align 4, !dbg !407
  br label %cond.end, !dbg !405

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %14, %cond.false ], !dbg !405
  store i32 %cond, i32* %bestdiv, align 4, !dbg !408
  %15 = load i32, i32* %bestdiv, align 4, !dbg !409
  %conv6 = sext i32 %15 to i64, !dbg !409
  %16 = load i64, i64* %maxdiv, align 8, !dbg !410
  %cmp7 = icmp ugt i64 %conv6, %16, !dbg !411
  br i1 %cmp7, label %cond.true9, label %cond.false10, !dbg !409

cond.true9:                                       ; preds = %cond.end
  %17 = load i64, i64* %maxdiv, align 8, !dbg !412
  br label %cond.end12, !dbg !409

cond.false10:                                     ; preds = %cond.end
  %18 = load i32, i32* %bestdiv, align 4, !dbg !413
  %conv11 = sext i32 %18 to i64, !dbg !413
  br label %cond.end12, !dbg !409

cond.end12:                                       ; preds = %cond.false10, %cond.true9
  %cond13 = phi i64 [ %17, %cond.true9 ], [ %conv11, %cond.false10 ], !dbg !409
  %conv14 = trunc i64 %cond13 to i32, !dbg !409
  store i32 %conv14, i32* %bestdiv, align 4, !dbg !414
  %19 = load i32, i32* %bestdiv, align 4, !dbg !415
  store i32 %19, i32* %retval, align 4, !dbg !416
  br label %return, !dbg !416

if.end15:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x108, metadata !417, metadata !DIExpression()), !dbg !419
  %20 = load i64, i64* %rate.addr, align 8, !dbg !419
  %div = udiv i64 -1, %20, !dbg !419
  store i64 %div, i64* %__UNIQUE_ID___x108, align 8, !dbg !419
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y109, metadata !420, metadata !DIExpression()), !dbg !419
  %21 = load i64, i64* %maxdiv, align 8, !dbg !419
  store i64 %21, i64* %__UNIQUE_ID___y109, align 8, !dbg !419
  %22 = load i64, i64* %__UNIQUE_ID___x108, align 8, !dbg !419
  %23 = load i64, i64* %__UNIQUE_ID___y109, align 8, !dbg !419
  %cmp16 = icmp ult i64 %22, %23, !dbg !419
  br i1 %cmp16, label %cond.true18, label %cond.false19, !dbg !419

cond.true18:                                      ; preds = %if.end15
  %24 = load i64, i64* %__UNIQUE_ID___x108, align 8, !dbg !419
  br label %cond.end20, !dbg !419

cond.false19:                                     ; preds = %if.end15
  %25 = load i64, i64* %__UNIQUE_ID___y109, align 8, !dbg !419
  br label %cond.end20, !dbg !419

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i64 [ %24, %cond.true18 ], [ %25, %cond.false19 ], !dbg !419
  store i64 %cond21, i64* %tmp, align 8, !dbg !419
  %26 = load i64, i64* %tmp, align 8, !dbg !419
  store i64 %26, i64* %maxdiv, align 8, !dbg !421
  %27 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !422
  %28 = load i64, i64* %flags.addr, align 8, !dbg !424
  %call22 = call i32 @_next_div(%struct.clk_div_table* %27, i32 0, i64 %28) #10, !dbg !425
  store i32 %call22, i32* %i, align 4, !dbg !426
  br label %for.cond, !dbg !427

for.cond:                                         ; preds = %for.inc, %cond.end20
  %29 = load i32, i32* %i, align 4, !dbg !428
  %conv23 = sext i32 %29 to i64, !dbg !428
  %30 = load i64, i64* %maxdiv, align 8, !dbg !430
  %cmp24 = icmp ule i64 %conv23, %30, !dbg !431
  br i1 %cmp24, label %for.body, label %for.end, !dbg !432

for.body:                                         ; preds = %for.cond
  %31 = load i64, i64* %rate.addr, align 8, !dbg !433
  %32 = load i32, i32* %i, align 4, !dbg !436
  %conv26 = sext i32 %32 to i64, !dbg !436
  %mul = mul i64 %31, %conv26, !dbg !437
  %33 = load i64, i64* %parent_rate_saved, align 8, !dbg !438
  %cmp27 = icmp eq i64 %mul, %33, !dbg !439
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !440

if.then29:                                        ; preds = %for.body
  %34 = load i64, i64* %parent_rate_saved, align 8, !dbg !441
  %35 = load i64*, i64** %best_parent_rate.addr, align 8, !dbg !443
  store i64 %34, i64* %35, align 8, !dbg !444
  %36 = load i32, i32* %i, align 4, !dbg !445
  store i32 %36, i32* %retval, align 4, !dbg !446
  br label %return, !dbg !446

if.end30:                                         ; preds = %for.body
  %37 = load %struct.clk_hw*, %struct.clk_hw** %parent.addr, align 8, !dbg !447
  %38 = load i64, i64* %rate.addr, align 8, !dbg !448
  %39 = load i32, i32* %i, align 4, !dbg !449
  %conv31 = sext i32 %39 to i64, !dbg !449
  %mul32 = mul i64 %38, %conv31, !dbg !450
  %call33 = call i64 @clk_hw_round_rate(%struct.clk_hw* %37, i64 %mul32) #10, !dbg !451
  store i64 %call33, i64* %parent_rate, align 8, !dbg !452
  call void @llvm.dbg.declare(metadata i64* %_tmp, metadata !453, metadata !DIExpression()), !dbg !455
  %40 = load i64, i64* %parent_rate, align 8, !dbg !455
  %41 = load i32, i32* %i, align 4, !dbg !455
  %conv34 = sext i32 %41 to i64, !dbg !455
  %add = add i64 %40, %conv34, !dbg !455
  %sub = sub i64 %add, 1, !dbg !455
  store i64 %sub, i64* %_tmp, align 8, !dbg !455
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !456, metadata !DIExpression()), !dbg !458
  %42 = load i32, i32* %i, align 4, !dbg !458
  store i32 %42, i32* %__base, align 4, !dbg !458
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !459, metadata !DIExpression()), !dbg !458
  %43 = load i64, i64* %_tmp, align 8, !dbg !458
  %44 = load i32, i32* %__base, align 4, !dbg !458
  %conv35 = zext i32 %44 to i64, !dbg !458
  %rem = urem i64 %43, %conv35, !dbg !458
  %conv36 = trunc i64 %rem to i32, !dbg !458
  store i32 %conv36, i32* %__rem, align 4, !dbg !458
  %45 = load i64, i64* %_tmp, align 8, !dbg !458
  %46 = load i32, i32* %__base, align 4, !dbg !458
  %conv37 = zext i32 %46 to i64, !dbg !458
  %div38 = udiv i64 %45, %conv37, !dbg !458
  store i64 %div38, i64* %_tmp, align 8, !dbg !458
  %47 = load i32, i32* %__rem, align 4, !dbg !458
  store i32 %47, i32* %tmp39, align 4, !dbg !458
  %48 = load i32, i32* %tmp39, align 4, !dbg !458
  %49 = load i64, i64* %_tmp, align 8, !dbg !455
  store i64 %49, i64* %tmp40, align 8, !dbg !455
  %50 = load i64, i64* %tmp40, align 8, !dbg !455
  store i64 %50, i64* %now, align 8, !dbg !460
  %51 = load i64, i64* %rate.addr, align 8, !dbg !461
  %52 = load i64, i64* %now, align 8, !dbg !463
  %53 = load i64, i64* %best, align 8, !dbg !464
  %54 = load i64, i64* %flags.addr, align 8, !dbg !465
  %call41 = call zeroext i1 @_is_best_div(i64 %51, i64 %52, i64 %53, i64 %54) #10, !dbg !466
  br i1 %call41, label %if.then42, label %if.end43, !dbg !467

if.then42:                                        ; preds = %if.end30
  %55 = load i32, i32* %i, align 4, !dbg !468
  store i32 %55, i32* %bestdiv, align 4, !dbg !470
  %56 = load i64, i64* %now, align 8, !dbg !471
  store i64 %56, i64* %best, align 8, !dbg !472
  %57 = load i64, i64* %parent_rate, align 8, !dbg !473
  %58 = load i64*, i64** %best_parent_rate.addr, align 8, !dbg !474
  store i64 %57, i64* %58, align 8, !dbg !475
  br label %if.end43, !dbg !476

if.end43:                                         ; preds = %if.then42, %if.end30
  br label %for.inc, !dbg !477

for.inc:                                          ; preds = %if.end43
  %59 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !478
  %60 = load i32, i32* %i, align 4, !dbg !479
  %61 = load i64, i64* %flags.addr, align 8, !dbg !480
  %call44 = call i32 @_next_div(%struct.clk_div_table* %59, i32 %60, i64 %61) #10, !dbg !481
  store i32 %call44, i32* %i, align 4, !dbg !482
  br label %for.cond, !dbg !483, !llvm.loop !484

for.end:                                          ; preds = %for.cond
  %62 = load i32, i32* %bestdiv, align 4, !dbg !486
  %tobool45 = icmp ne i32 %62, 0, !dbg !486
  br i1 %tobool45, label %if.end49, label %if.then46, !dbg !488

if.then46:                                        ; preds = %for.end
  %63 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !489
  %64 = load i8, i8* %width.addr, align 1, !dbg !491
  %65 = load i64, i64* %flags.addr, align 8, !dbg !492
  %call47 = call i32 @_get_maxdiv(%struct.clk_div_table* %63, i8 zeroext %64, i64 %65) #10, !dbg !493
  store i32 %call47, i32* %bestdiv, align 4, !dbg !494
  %66 = load %struct.clk_hw*, %struct.clk_hw** %parent.addr, align 8, !dbg !495
  %call48 = call i64 @clk_hw_round_rate(%struct.clk_hw* %66, i64 1) #10, !dbg !496
  %67 = load i64*, i64** %best_parent_rate.addr, align 8, !dbg !497
  store i64 %call48, i64* %67, align 8, !dbg !498
  br label %if.end49, !dbg !499

if.end49:                                         ; preds = %if.then46, %for.end
  %68 = load i32, i32* %bestdiv, align 4, !dbg !500
  store i32 %68, i32* %retval, align 4, !dbg !501
  br label %return, !dbg !501

return:                                           ; preds = %if.end49, %if.then29, %cond.end12
  %69 = load i32, i32* %retval, align 4, !dbg !502
  ret i32 %69, !dbg !502
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @divider_ro_round_rate_parent(%struct.clk_hw* %hw, %struct.clk_hw* %parent, i64 %rate, i64* %prate, %struct.clk_div_table* %table, i8 zeroext %width, i64 %flags, i32 %val) #0 !dbg !503 {
entry:
  %retval = alloca i64, align 8
  %hw.addr = alloca %struct.clk_hw*, align 8
  %parent.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %prate.addr = alloca i64*, align 8
  %table.addr = alloca %struct.clk_div_table*, align 8
  %width.addr = alloca i8, align 1
  %flags.addr = alloca i64, align 8
  %val.addr = alloca i32, align 4
  %div = alloca i32, align 4
  %_tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp11 = alloca i64, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !506, metadata !DIExpression()), !dbg !507
  store %struct.clk_hw* %parent, %struct.clk_hw** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %parent.addr, metadata !508, metadata !DIExpression()), !dbg !509
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !510, metadata !DIExpression()), !dbg !511
  store i64* %prate, i64** %prate.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %prate.addr, metadata !512, metadata !DIExpression()), !dbg !513
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !514, metadata !DIExpression()), !dbg !515
  store i8 %width, i8* %width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %width.addr, metadata !516, metadata !DIExpression()), !dbg !517
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !518, metadata !DIExpression()), !dbg !519
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !520, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.declare(metadata i32* %div, metadata !522, metadata !DIExpression()), !dbg !523
  %0 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !524
  %1 = load i32, i32* %val.addr, align 4, !dbg !525
  %2 = load i64, i64* %flags.addr, align 8, !dbg !526
  %3 = load i8, i8* %width.addr, align 1, !dbg !527
  %call = call i32 @_get_div(%struct.clk_div_table* %0, i32 %1, i64 %2, i8 zeroext %3) #10, !dbg !528
  store i32 %call, i32* %div, align 4, !dbg !529
  %4 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !530
  %call1 = call i64 @clk_hw_get_flags(%struct.clk_hw* %4) #10, !dbg !532
  %and = and i64 %call1, 4, !dbg !533
  %tobool = icmp ne i64 %and, 0, !dbg !533
  br i1 %tobool, label %if.then, label %if.end5, !dbg !534

if.then:                                          ; preds = %entry
  %5 = load %struct.clk_hw*, %struct.clk_hw** %parent.addr, align 8, !dbg !535
  %tobool2 = icmp ne %struct.clk_hw* %5, null, !dbg !535
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !538

if.then3:                                         ; preds = %if.then
  store i64 -22, i64* %retval, align 8, !dbg !539
  br label %return, !dbg !539

if.end:                                           ; preds = %if.then
  %6 = load %struct.clk_hw*, %struct.clk_hw** %parent.addr, align 8, !dbg !540
  %7 = load i64, i64* %rate.addr, align 8, !dbg !541
  %8 = load i32, i32* %div, align 4, !dbg !542
  %conv = sext i32 %8 to i64, !dbg !542
  %mul = mul i64 %7, %conv, !dbg !543
  %call4 = call i64 @clk_hw_round_rate(%struct.clk_hw* %6, i64 %mul) #10, !dbg !544
  %9 = load i64*, i64** %prate.addr, align 8, !dbg !545
  store i64 %call4, i64* %9, align 8, !dbg !546
  br label %if.end5, !dbg !547

if.end5:                                          ; preds = %if.end, %entry
  call void @llvm.dbg.declare(metadata i64* %_tmp, metadata !548, metadata !DIExpression()), !dbg !550
  %10 = load i64*, i64** %prate.addr, align 8, !dbg !550
  %11 = load i64, i64* %10, align 8, !dbg !550
  %12 = load i32, i32* %div, align 4, !dbg !550
  %conv6 = sext i32 %12 to i64, !dbg !550
  %add = add i64 %11, %conv6, !dbg !550
  %sub = sub i64 %add, 1, !dbg !550
  store i64 %sub, i64* %_tmp, align 8, !dbg !550
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !551, metadata !DIExpression()), !dbg !553
  %13 = load i32, i32* %div, align 4, !dbg !553
  store i32 %13, i32* %__base, align 4, !dbg !553
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !554, metadata !DIExpression()), !dbg !553
  %14 = load i64, i64* %_tmp, align 8, !dbg !553
  %15 = load i32, i32* %__base, align 4, !dbg !553
  %conv7 = zext i32 %15 to i64, !dbg !553
  %rem = urem i64 %14, %conv7, !dbg !553
  %conv8 = trunc i64 %rem to i32, !dbg !553
  store i32 %conv8, i32* %__rem, align 4, !dbg !553
  %16 = load i64, i64* %_tmp, align 8, !dbg !553
  %17 = load i32, i32* %__base, align 4, !dbg !553
  %conv9 = zext i32 %17 to i64, !dbg !553
  %div10 = udiv i64 %16, %conv9, !dbg !553
  store i64 %div10, i64* %_tmp, align 8, !dbg !553
  %18 = load i32, i32* %__rem, align 4, !dbg !553
  store i32 %18, i32* %tmp, align 4, !dbg !553
  %19 = load i32, i32* %tmp, align 4, !dbg !553
  %20 = load i64, i64* %_tmp, align 8, !dbg !550
  store i64 %20, i64* %tmp11, align 8, !dbg !550
  %21 = load i64, i64* %tmp11, align 8, !dbg !550
  store i64 %21, i64* %retval, align 8, !dbg !555
  br label %return, !dbg !555

return:                                           ; preds = %if.end5, %if.then3
  %22 = load i64, i64* %retval, align 8, !dbg !556
  ret i64 %22, !dbg !556
}

; Function Attrs: noredzone
declare dso_local i64 @clk_hw_get_flags(%struct.clk_hw*) #2

; Function Attrs: noredzone
declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @divider_get_val(i64 %rate, i64 %parent_rate, %struct.clk_div_table* %table, i8 zeroext %width, i64 %flags) #0 !dbg !557 {
entry:
  %retval = alloca i32, align 4
  %rate.addr = alloca i64, align 8
  %parent_rate.addr = alloca i64, align 8
  %table.addr = alloca %struct.clk_div_table*, align 8
  %width.addr = alloca i8, align 1
  %flags.addr = alloca i64, align 8
  %div = alloca i32, align 4
  %value = alloca i32, align 4
  %_tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp5 = alloca i64, align 8
  %__UNIQUE_ID___x111 = alloca i32, align 4
  %__UNIQUE_ID___y112 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !560, metadata !DIExpression()), !dbg !561
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !562, metadata !DIExpression()), !dbg !563
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !564, metadata !DIExpression()), !dbg !565
  store i8 %width, i8* %width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %width.addr, metadata !566, metadata !DIExpression()), !dbg !567
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata i32* %div, metadata !570, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata i32* %value, metadata !572, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata i64* %_tmp, metadata !574, metadata !DIExpression()), !dbg !576
  %0 = load i64, i64* %parent_rate.addr, align 8, !dbg !576
  %1 = load i64, i64* %rate.addr, align 8, !dbg !576
  %add = add i64 %0, %1, !dbg !576
  %sub = sub i64 %add, 1, !dbg !576
  store i64 %sub, i64* %_tmp, align 8, !dbg !576
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !577, metadata !DIExpression()), !dbg !579
  %2 = load i64, i64* %rate.addr, align 8, !dbg !579
  %conv = trunc i64 %2 to i32, !dbg !579
  store i32 %conv, i32* %__base, align 4, !dbg !579
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !580, metadata !DIExpression()), !dbg !579
  %3 = load i64, i64* %_tmp, align 8, !dbg !579
  %4 = load i32, i32* %__base, align 4, !dbg !579
  %conv1 = zext i32 %4 to i64, !dbg !579
  %rem = urem i64 %3, %conv1, !dbg !579
  %conv2 = trunc i64 %rem to i32, !dbg !579
  store i32 %conv2, i32* %__rem, align 4, !dbg !579
  %5 = load i64, i64* %_tmp, align 8, !dbg !579
  %6 = load i32, i32* %__base, align 4, !dbg !579
  %conv3 = zext i32 %6 to i64, !dbg !579
  %div4 = udiv i64 %5, %conv3, !dbg !579
  store i64 %div4, i64* %_tmp, align 8, !dbg !579
  %7 = load i32, i32* %__rem, align 4, !dbg !579
  store i32 %7, i32* %tmp, align 4, !dbg !579
  %8 = load i32, i32* %tmp, align 4, !dbg !579
  %9 = load i64, i64* %_tmp, align 8, !dbg !576
  store i64 %9, i64* %tmp5, align 8, !dbg !576
  %10 = load i64, i64* %tmp5, align 8, !dbg !576
  %conv6 = trunc i64 %10 to i32, !dbg !581
  store i32 %conv6, i32* %div, align 4, !dbg !582
  %11 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !583
  %12 = load i32, i32* %div, align 4, !dbg !585
  %13 = load i64, i64* %flags.addr, align 8, !dbg !586
  %call = call zeroext i1 @_is_valid_div(%struct.clk_div_table* %11, i32 %12, i64 %13) #10, !dbg !587
  br i1 %call, label %if.end, label %if.then, !dbg !588

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !589
  br label %return, !dbg !589

if.end:                                           ; preds = %entry
  %14 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !590
  %15 = load i32, i32* %div, align 4, !dbg !591
  %16 = load i64, i64* %flags.addr, align 8, !dbg !592
  %17 = load i8, i8* %width.addr, align 1, !dbg !593
  %call7 = call i32 @_get_val(%struct.clk_div_table* %14, i32 %15, i64 %16, i8 zeroext %17) #10, !dbg !594
  store i32 %call7, i32* %value, align 4, !dbg !595
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x111, metadata !596, metadata !DIExpression()), !dbg !598
  %18 = load i32, i32* %value, align 4, !dbg !598
  store i32 %18, i32* %__UNIQUE_ID___x111, align 4, !dbg !598
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y112, metadata !599, metadata !DIExpression()), !dbg !598
  %19 = load i8, i8* %width.addr, align 1, !dbg !598
  %conv8 = zext i8 %19 to i32, !dbg !598
  %shl = shl i32 1, %conv8, !dbg !598
  %sub9 = sub i32 %shl, 1, !dbg !598
  store i32 %sub9, i32* %__UNIQUE_ID___y112, align 4, !dbg !598
  %20 = load i32, i32* %__UNIQUE_ID___x111, align 4, !dbg !598
  %21 = load i32, i32* %__UNIQUE_ID___y112, align 4, !dbg !598
  %cmp = icmp ult i32 %20, %21, !dbg !598
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !598

cond.true:                                        ; preds = %if.end
  %22 = load i32, i32* %__UNIQUE_ID___x111, align 4, !dbg !598
  br label %cond.end, !dbg !598

cond.false:                                       ; preds = %if.end
  %23 = load i32, i32* %__UNIQUE_ID___y112, align 4, !dbg !598
  br label %cond.end, !dbg !598

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ], !dbg !598
  store i32 %cond, i32* %tmp10, align 4, !dbg !598
  %24 = load i32, i32* %tmp10, align 4, !dbg !598
  store i32 %24, i32* %retval, align 4, !dbg !600
  br label %return, !dbg !600

return:                                           ; preds = %cond.end, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !601
  ret i32 %25, !dbg !601
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @_is_valid_div(%struct.clk_div_table* %table, i32 %div, i64 %flags) #0 !dbg !602 {
entry:
  %retval = alloca i1, align 1
  %table.addr = alloca %struct.clk_div_table*, align 8
  %div.addr = alloca i32, align 4
  %flags.addr = alloca i64, align 8
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !607, metadata !DIExpression()), !dbg !608
  store i32 %div, i32* %div.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %div.addr, metadata !609, metadata !DIExpression()), !dbg !610
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !611, metadata !DIExpression()), !dbg !612
  %0 = load i64, i64* %flags.addr, align 8, !dbg !613
  %and = and i64 %0, 2, !dbg !615
  %tobool = icmp ne i64 %and, 0, !dbg !615
  br i1 %tobool, label %if.then, label %if.end, !dbg !616

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %div.addr, align 4, !dbg !617
  %conv = zext i32 %1 to i64, !dbg !617
  %call = call zeroext i1 @is_power_of_2(i64 %conv) #11, !dbg !618
  store i1 %call, i1* %retval, align 1, !dbg !619
  br label %return, !dbg !619

if.end:                                           ; preds = %entry
  %2 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !620
  %tobool1 = icmp ne %struct.clk_div_table* %2, null, !dbg !620
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !622

if.then2:                                         ; preds = %if.end
  %3 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !623
  %4 = load i32, i32* %div.addr, align 4, !dbg !624
  %call3 = call zeroext i1 @_is_valid_table_div(%struct.clk_div_table* %3, i32 %4) #10, !dbg !625
  store i1 %call3, i1* %retval, align 1, !dbg !626
  br label %return, !dbg !626

if.end4:                                          ; preds = %if.end
  store i1 true, i1* %retval, align 1, !dbg !627
  br label %return, !dbg !627

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %5 = load i1, i1* %retval, align 1, !dbg !628
  ret i1 %5, !dbg !628
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_get_val(%struct.clk_div_table* %table, i32 %div, i64 %flags, i8 zeroext %width) #0 !dbg !629 {
entry:
  %word.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %word.addr.i, metadata !630, metadata !DIExpression()), !dbg !635
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.clk_div_table*, align 8
  %div.addr = alloca i32, align 4
  %flags.addr = alloca i64, align 8
  %width.addr = alloca i8, align 1
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !638, metadata !DIExpression()), !dbg !639
  store i32 %div, i32* %div.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %div.addr, metadata !640, metadata !DIExpression()), !dbg !641
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !642, metadata !DIExpression()), !dbg !643
  store i8 %width, i8* %width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %width.addr, metadata !644, metadata !DIExpression()), !dbg !645
  %0 = load i64, i64* %flags.addr, align 8, !dbg !646
  %and = and i64 %0, 1, !dbg !648
  %tobool = icmp ne i64 %and, 0, !dbg !648
  br i1 %tobool, label %if.then, label %if.end, !dbg !649

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %div.addr, align 4, !dbg !650
  store i32 %1, i32* %retval, align 4, !dbg !651
  br label %return, !dbg !651

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %flags.addr, align 8, !dbg !652
  %and1 = and i64 %2, 2, !dbg !653
  %tobool2 = icmp ne i64 %and1, 0, !dbg !653
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !654

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %div.addr, align 4, !dbg !655
  %conv = zext i32 %3 to i64, !dbg !655
  store i64 %conv, i64* %word.addr.i, align 8
  %4 = load i64, i64* %word.addr.i, align 8, !dbg !656
  %5 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %4) #6, !dbg !657, !srcloc !658
  store i64 %5, i64* %word.addr.i, align 8, !dbg !657
  %6 = load i64, i64* %word.addr.i, align 8, !dbg !659
  %conv4 = trunc i64 %6 to i32, !dbg !660
  store i32 %conv4, i32* %retval, align 4, !dbg !661
  br label %return, !dbg !661

if.end5:                                          ; preds = %if.end
  %7 = load i64, i64* %flags.addr, align 8, !dbg !662
  %and6 = and i64 %7, 64, !dbg !664
  %tobool7 = icmp ne i64 %and6, 0, !dbg !664
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !665

if.then8:                                         ; preds = %if.end5
  %8 = load i32, i32* %div.addr, align 4, !dbg !666
  %9 = load i8, i8* %width.addr, align 1, !dbg !667
  %conv9 = zext i8 %9 to i32, !dbg !667
  %shl = shl i32 1, %conv9, !dbg !667
  %sub = sub i32 %shl, 1, !dbg !667
  %add = add i32 %sub, 1, !dbg !668
  %cmp = icmp eq i32 %8, %add, !dbg !669
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !670

cond.true:                                        ; preds = %if.then8
  br label %cond.end, !dbg !670

cond.false:                                       ; preds = %if.then8
  %10 = load i32, i32* %div.addr, align 4, !dbg !671
  br label %cond.end, !dbg !670

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %10, %cond.false ], !dbg !670
  store i32 %cond, i32* %retval, align 4, !dbg !672
  br label %return, !dbg !672

if.end11:                                         ; preds = %if.end5
  %11 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !673
  %tobool12 = icmp ne %struct.clk_div_table* %11, null, !dbg !673
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !675

if.then13:                                        ; preds = %if.end11
  %12 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !676
  %13 = load i32, i32* %div.addr, align 4, !dbg !677
  %call14 = call i32 @_get_table_val(%struct.clk_div_table* %12, i32 %13) #10, !dbg !678
  store i32 %call14, i32* %retval, align 4, !dbg !679
  br label %return, !dbg !679

if.end15:                                         ; preds = %if.end11
  %14 = load i32, i32* %div.addr, align 4, !dbg !680
  %sub16 = sub i32 %14, 1, !dbg !681
  store i32 %sub16, i32* %retval, align 4, !dbg !682
  br label %return, !dbg !682

return:                                           ; preds = %if.end15, %if.then13, %cond.end, %if.then3, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !683
  ret i32 %15, !dbg !683
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @clk_divider_recalc_rate(%struct.clk_hw* %hw, i64 %parent_rate) #0 !dbg !684 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %parent_rate.addr = alloca i64, align 8
  %divider = alloca %struct.clk_divider*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_divider*, align 8
  %val = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !685, metadata !DIExpression()), !dbg !686
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !687, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.declare(metadata %struct.clk_divider** %divider, metadata !689, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !691, metadata !DIExpression()), !dbg !693
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !693
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !693
  store i8* %1, i8** %__mptr, align 8, !dbg !693
  br label %do.body, !dbg !693

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !694

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !693
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !693
  %3 = bitcast i8* %add.ptr to %struct.clk_divider*, !dbg !693
  store %struct.clk_divider* %3, %struct.clk_divider** %tmp, align 8, !dbg !694
  %4 = load %struct.clk_divider*, %struct.clk_divider** %tmp, align 8, !dbg !693
  store %struct.clk_divider* %4, %struct.clk_divider** %divider, align 8, !dbg !690
  call void @llvm.dbg.declare(metadata i32* %val, metadata !696, metadata !DIExpression()), !dbg !697
  %5 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !698
  %call = call i32 @clk_div_readl(%struct.clk_divider* %5) #10, !dbg !699
  %6 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !700
  %shift = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %6, i32 0, i32 2, !dbg !701
  %7 = load i8, i8* %shift, align 8, !dbg !701
  %conv = zext i8 %7 to i32, !dbg !700
  %shr = lshr i32 %call, %conv, !dbg !702
  store i32 %shr, i32* %val, align 4, !dbg !703
  %8 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !704
  %width = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %8, i32 0, i32 3, !dbg !704
  %9 = load i8, i8* %width, align 1, !dbg !704
  %conv1 = zext i8 %9 to i32, !dbg !704
  %shl = shl i32 1, %conv1, !dbg !704
  %sub = sub i32 %shl, 1, !dbg !704
  %10 = load i32, i32* %val, align 4, !dbg !705
  %and = and i32 %10, %sub, !dbg !705
  store i32 %and, i32* %val, align 4, !dbg !705
  %11 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !706
  %12 = load i64, i64* %parent_rate.addr, align 8, !dbg !707
  %13 = load i32, i32* %val, align 4, !dbg !708
  %14 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !709
  %table = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %14, i32 0, i32 5, !dbg !710
  %15 = load %struct.clk_div_table*, %struct.clk_div_table** %table, align 8, !dbg !710
  %16 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !711
  %flags = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %16, i32 0, i32 4, !dbg !712
  %17 = load i8, i8* %flags, align 2, !dbg !712
  %conv2 = zext i8 %17 to i64, !dbg !711
  %18 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !713
  %width3 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %18, i32 0, i32 3, !dbg !714
  %19 = load i8, i8* %width3, align 1, !dbg !714
  %conv4 = zext i8 %19 to i64, !dbg !713
  %call5 = call i64 @divider_recalc_rate(%struct.clk_hw* %11, i64 %12, i32 %13, %struct.clk_div_table* %15, i64 %conv2, i64 %conv4) #10, !dbg !715
  ret i64 %call5, !dbg !716
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @clk_divider_round_rate(%struct.clk_hw* %hw, i64 %rate, i64* %prate) #0 !dbg !717 {
entry:
  %retval = alloca i64, align 8
  %hw.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %prate.addr = alloca i64*, align 8
  %divider = alloca %struct.clk_divider*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_divider*, align 8
  %val = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !718, metadata !DIExpression()), !dbg !719
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !720, metadata !DIExpression()), !dbg !721
  store i64* %prate, i64** %prate.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %prate.addr, metadata !722, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.declare(metadata %struct.clk_divider** %divider, metadata !724, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !726, metadata !DIExpression()), !dbg !728
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !728
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !728
  store i8* %1, i8** %__mptr, align 8, !dbg !728
  br label %do.body, !dbg !728

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !729

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !728
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !728
  %3 = bitcast i8* %add.ptr to %struct.clk_divider*, !dbg !728
  store %struct.clk_divider* %3, %struct.clk_divider** %tmp, align 8, !dbg !729
  %4 = load %struct.clk_divider*, %struct.clk_divider** %tmp, align 8, !dbg !728
  store %struct.clk_divider* %4, %struct.clk_divider** %divider, align 8, !dbg !725
  %5 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !731
  %flags = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %5, i32 0, i32 4, !dbg !733
  %6 = load i8, i8* %flags, align 2, !dbg !733
  %conv = zext i8 %6 to i64, !dbg !731
  %and = and i64 %conv, 32, !dbg !734
  %tobool = icmp ne i64 %and, 0, !dbg !734
  br i1 %tobool, label %if.then, label %if.end, !dbg !735

if.then:                                          ; preds = %do.end
  call void @llvm.dbg.declare(metadata i32* %val, metadata !736, metadata !DIExpression()), !dbg !738
  %7 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !739
  %call = call i32 @clk_div_readl(%struct.clk_divider* %7) #10, !dbg !740
  %8 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !741
  %shift = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %8, i32 0, i32 2, !dbg !742
  %9 = load i8, i8* %shift, align 8, !dbg !742
  %conv1 = zext i8 %9 to i32, !dbg !741
  %shr = lshr i32 %call, %conv1, !dbg !743
  store i32 %shr, i32* %val, align 4, !dbg !744
  %10 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !745
  %width = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %10, i32 0, i32 3, !dbg !745
  %11 = load i8, i8* %width, align 1, !dbg !745
  %conv2 = zext i8 %11 to i32, !dbg !745
  %shl = shl i32 1, %conv2, !dbg !745
  %sub = sub i32 %shl, 1, !dbg !745
  %12 = load i32, i32* %val, align 4, !dbg !746
  %and3 = and i32 %12, %sub, !dbg !746
  store i32 %and3, i32* %val, align 4, !dbg !746
  %13 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !747
  %14 = load i64, i64* %rate.addr, align 8, !dbg !748
  %15 = load i64*, i64** %prate.addr, align 8, !dbg !749
  %16 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !750
  %table = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %16, i32 0, i32 5, !dbg !751
  %17 = load %struct.clk_div_table*, %struct.clk_div_table** %table, align 8, !dbg !751
  %18 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !752
  %width4 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %18, i32 0, i32 3, !dbg !753
  %19 = load i8, i8* %width4, align 1, !dbg !753
  %20 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !754
  %flags5 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %20, i32 0, i32 4, !dbg !755
  %21 = load i8, i8* %flags5, align 2, !dbg !755
  %conv6 = zext i8 %21 to i64, !dbg !754
  %22 = load i32, i32* %val, align 4, !dbg !756
  %call7 = call i64 @divider_ro_round_rate(%struct.clk_hw* %13, i64 %14, i64* %15, %struct.clk_div_table* %17, i8 zeroext %19, i64 %conv6, i32 %22) #10, !dbg !757
  store i64 %call7, i64* %retval, align 8, !dbg !758
  br label %return, !dbg !758

if.end:                                           ; preds = %do.end
  %23 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !759
  %24 = load i64, i64* %rate.addr, align 8, !dbg !760
  %25 = load i64*, i64** %prate.addr, align 8, !dbg !761
  %26 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !762
  %table8 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %26, i32 0, i32 5, !dbg !763
  %27 = load %struct.clk_div_table*, %struct.clk_div_table** %table8, align 8, !dbg !763
  %28 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !764
  %width9 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %28, i32 0, i32 3, !dbg !765
  %29 = load i8, i8* %width9, align 1, !dbg !765
  %30 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !766
  %flags10 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %30, i32 0, i32 4, !dbg !767
  %31 = load i8, i8* %flags10, align 2, !dbg !767
  %conv11 = zext i8 %31 to i64, !dbg !766
  %call12 = call i64 @divider_round_rate(%struct.clk_hw* %23, i64 %24, i64* %25, %struct.clk_div_table* %27, i8 zeroext %29, i64 %conv11) #10, !dbg !768
  store i64 %call12, i64* %retval, align 8, !dbg !769
  br label %return, !dbg !769

return:                                           ; preds = %if.end, %if.then
  %32 = load i64, i64* %retval, align 8, !dbg !770
  ret i64 %32, !dbg !770
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_divider_set_rate(%struct.clk_hw* %hw, i64 %rate, i64 %parent_rate) #0 !dbg !771 {
entry:
  %lock.addr.i58 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i58, metadata !772, metadata !DIExpression()), !dbg !777
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !780, metadata !DIExpression()), !dbg !781
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !782, metadata !DIExpression()), !dbg !788
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %parent_rate.addr = alloca i64, align 8
  %divider = alloca %struct.clk_divider*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_divider*, align 8
  %value = alloca i32, align 4
  %flags = alloca i64, align 8
  %val = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %__dummy12 = alloca i64, align 8
  %__dummy213 = alloca i64, align 8
  %tmp16 = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !796, metadata !DIExpression()), !dbg !797
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !798, metadata !DIExpression()), !dbg !799
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !800, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.declare(metadata %struct.clk_divider** %divider, metadata !802, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !804, metadata !DIExpression()), !dbg !806
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !806
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !806
  store i8* %1, i8** %__mptr, align 8, !dbg !806
  br label %do.body, !dbg !806

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !807

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !806
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !806
  %3 = bitcast i8* %add.ptr to %struct.clk_divider*, !dbg !806
  store %struct.clk_divider* %3, %struct.clk_divider** %tmp, align 8, !dbg !807
  %4 = load %struct.clk_divider*, %struct.clk_divider** %tmp, align 8, !dbg !806
  store %struct.clk_divider* %4, %struct.clk_divider** %divider, align 8, !dbg !803
  call void @llvm.dbg.declare(metadata i32* %value, metadata !809, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !811, metadata !DIExpression()), !dbg !812
  store i64 0, i64* %flags, align 8, !dbg !812
  call void @llvm.dbg.declare(metadata i32* %val, metadata !813, metadata !DIExpression()), !dbg !814
  %5 = load i64, i64* %rate.addr, align 8, !dbg !815
  %6 = load i64, i64* %parent_rate.addr, align 8, !dbg !816
  %7 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !817
  %table = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %7, i32 0, i32 5, !dbg !818
  %8 = load %struct.clk_div_table*, %struct.clk_div_table** %table, align 8, !dbg !818
  %9 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !819
  %width = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %9, i32 0, i32 3, !dbg !820
  %10 = load i8, i8* %width, align 1, !dbg !820
  %11 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !821
  %flags1 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %11, i32 0, i32 4, !dbg !822
  %12 = load i8, i8* %flags1, align 2, !dbg !822
  %conv = zext i8 %12 to i64, !dbg !821
  %call = call i32 @divider_get_val(i64 %5, i64 %6, %struct.clk_div_table* %8, i8 zeroext %10, i64 %conv) #10, !dbg !823
  store i32 %call, i32* %value, align 4, !dbg !824
  %13 = load i32, i32* %value, align 4, !dbg !825
  %cmp = icmp slt i32 %13, 0, !dbg !827
  br i1 %cmp, label %if.then, label %if.end, !dbg !828

if.then:                                          ; preds = %do.end
  %14 = load i32, i32* %value, align 4, !dbg !829
  store i32 %14, i32* %retval, align 4, !dbg !830
  br label %return, !dbg !830

if.end:                                           ; preds = %do.end
  %15 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !831
  %lock = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %15, i32 0, i32 6, !dbg !832
  %16 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !832
  %tobool = icmp ne %struct.spinlock* %16, null, !dbg !831
  br i1 %tobool, label %if.then3, label %if.else, !dbg !833

if.then3:                                         ; preds = %if.end
  br label %do.body4, !dbg !834

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !835

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !836, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !839, metadata !DIExpression()), !dbg !838
  %cmp6 = icmp eq i64* %__dummy, %__dummy2, !dbg !838
  %conv7 = zext i1 %cmp6 to i32, !dbg !838
  store i32 1, i32* %tmp8, align 4, !dbg !838
  %17 = load i32, i32* %tmp8, align 4, !dbg !838
  br label %do.body9, !dbg !840

do.body9:                                         ; preds = %do.body5
  br label %do.body10, !dbg !841

do.body10:                                        ; preds = %do.body9
  br label %do.body11, !dbg !842

do.body11:                                        ; preds = %do.body10
  call void @llvm.dbg.declare(metadata i64* %__dummy12, metadata !844, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.declare(metadata i64* %__dummy213, metadata !848, metadata !DIExpression()), !dbg !847
  %cmp14 = icmp eq i64* %__dummy12, %__dummy213, !dbg !847
  %conv15 = zext i1 %cmp14 to i32, !dbg !847
  store i32 1, i32* %tmp16, align 4, !dbg !847
  %18 = load i32, i32* %tmp16, align 4, !dbg !847
  %call17 = call i64 @arch_local_irq_save() #10, !dbg !849
  store i64 %call17, i64* %flags, align 8, !dbg !849
  br label %do.end18, !dbg !849

do.end18:                                         ; preds = %do.body11
  br label %do.end19, !dbg !842

do.end19:                                         ; preds = %do.end18
  br label %do.body20, !dbg !841

do.body20:                                        ; preds = %do.end19
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !850, !srcloc !851
  br label %do.body21, !dbg !850

do.body21:                                        ; preds = %do.body20
  %19 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !852
  %lock22 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %19, i32 0, i32 6, !dbg !852
  %20 = load %struct.spinlock*, %struct.spinlock** %lock22, align 8, !dbg !852
  store %struct.spinlock* %20, %struct.spinlock** %lock.addr.i, align 8
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !853
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !854
  %rlock.i = bitcast %union.anon.0* %22 to %struct.raw_spinlock*, !dbg !854
  br label %do.end24, !dbg !852

do.end24:                                         ; preds = %do.body21
  br label %do.end25, !dbg !850

do.end25:                                         ; preds = %do.end24
  br label %do.end26, !dbg !841

do.end26:                                         ; preds = %do.end25
  br label %do.end27, !dbg !840

do.end27:                                         ; preds = %do.end26
  br label %do.end28, !dbg !835

do.end28:                                         ; preds = %do.end27
  br label %if.end29, !dbg !835

if.else:                                          ; preds = %if.end
  br label %if.end29

if.end29:                                         ; preds = %if.else, %do.end28
  %23 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !855
  %flags30 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %23, i32 0, i32 4, !dbg !857
  %24 = load i8, i8* %flags30, align 2, !dbg !857
  %conv31 = zext i8 %24 to i64, !dbg !855
  %and = and i64 %conv31, 8, !dbg !858
  %tobool32 = icmp ne i64 %and, 0, !dbg !858
  br i1 %tobool32, label %if.then33, label %if.else38, !dbg !859

if.then33:                                        ; preds = %if.end29
  %25 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !860
  %width34 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %25, i32 0, i32 3, !dbg !860
  %26 = load i8, i8* %width34, align 1, !dbg !860
  %conv35 = zext i8 %26 to i32, !dbg !860
  %shl = shl i32 1, %conv35, !dbg !860
  %sub = sub i32 %shl, 1, !dbg !860
  %27 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !862
  %shift = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %27, i32 0, i32 2, !dbg !863
  %28 = load i8, i8* %shift, align 8, !dbg !863
  %conv36 = zext i8 %28 to i32, !dbg !862
  %add = add i32 %conv36, 16, !dbg !864
  %shl37 = shl i32 %sub, %add, !dbg !865
  store i32 %shl37, i32* %val, align 4, !dbg !866
  br label %if.end48, !dbg !867

if.else38:                                        ; preds = %if.end29
  %29 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !868
  %call39 = call i32 @clk_div_readl(%struct.clk_divider* %29) #10, !dbg !870
  store i32 %call39, i32* %val, align 4, !dbg !871
  %30 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !872
  %width40 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %30, i32 0, i32 3, !dbg !872
  %31 = load i8, i8* %width40, align 1, !dbg !872
  %conv41 = zext i8 %31 to i32, !dbg !872
  %shl42 = shl i32 1, %conv41, !dbg !872
  %sub43 = sub i32 %shl42, 1, !dbg !872
  %32 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !873
  %shift44 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %32, i32 0, i32 2, !dbg !874
  %33 = load i8, i8* %shift44, align 8, !dbg !874
  %conv45 = zext i8 %33 to i32, !dbg !873
  %shl46 = shl i32 %sub43, %conv45, !dbg !875
  %neg = xor i32 %shl46, -1, !dbg !876
  %34 = load i32, i32* %val, align 4, !dbg !877
  %and47 = and i32 %34, %neg, !dbg !877
  store i32 %and47, i32* %val, align 4, !dbg !877
  br label %if.end48

if.end48:                                         ; preds = %if.else38, %if.then33
  %35 = load i32, i32* %value, align 4, !dbg !878
  %36 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !879
  %shift49 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %36, i32 0, i32 2, !dbg !880
  %37 = load i8, i8* %shift49, align 8, !dbg !880
  %conv50 = zext i8 %37 to i32, !dbg !879
  %shl51 = shl i32 %35, %conv50, !dbg !881
  %38 = load i32, i32* %val, align 4, !dbg !882
  %or = or i32 %38, %shl51, !dbg !882
  store i32 %or, i32* %val, align 4, !dbg !882
  %39 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !883
  %40 = load i32, i32* %val, align 4, !dbg !884
  call void @clk_div_writel(%struct.clk_divider* %39, i32 %40) #10, !dbg !885
  %41 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !886
  %lock52 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %41, i32 0, i32 6, !dbg !887
  %42 = load %struct.spinlock*, %struct.spinlock** %lock52, align 8, !dbg !887
  %tobool53 = icmp ne %struct.spinlock* %42, null, !dbg !886
  br i1 %tobool53, label %if.then54, label %if.else56, !dbg !888

if.then54:                                        ; preds = %if.end48
  %43 = load %struct.clk_divider*, %struct.clk_divider** %divider, align 8, !dbg !889
  %lock55 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %43, i32 0, i32 6, !dbg !890
  %44 = load %struct.spinlock*, %struct.spinlock** %lock55, align 8, !dbg !890
  %45 = load i64, i64* %flags, align 8, !dbg !891
  store %struct.spinlock* %44, %struct.spinlock** %lock.addr.i58, align 8
  store i64 %45, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !191, metadata !892, metadata !DIExpression()) #7, !dbg !895
  call void @llvm.dbg.declare(metadata !191, metadata !896, metadata !DIExpression()) #7, !dbg !895
  store i32 1, i32* %tmp.i, align 4, !dbg !895
  %46 = load i32, i32* %tmp.i, align 4, !dbg !895
  call void @llvm.dbg.declare(metadata !191, metadata !897, metadata !DIExpression()) #7, !dbg !902
  call void @llvm.dbg.declare(metadata !191, metadata !903, metadata !DIExpression()) #7, !dbg !902
  store i32 1, i32* %tmp8.i, align 4, !dbg !902
  %47 = load i32, i32* %tmp8.i, align 4, !dbg !902
  %48 = load i64, i64* %flags.addr.i, align 8, !dbg !904
  call void @arch_local_irq_restore(i64 %48) #12, !dbg !904
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !905, !srcloc !907
  %49 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i58, align 8, !dbg !908
  %50 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %49, i32 0, i32 0, !dbg !908
  %rlock.i59 = bitcast %union.anon.0* %50 to %struct.raw_spinlock*, !dbg !908
  br label %if.end57, !dbg !910

if.else56:                                        ; preds = %if.end48
  br label %if.end57

if.end57:                                         ; preds = %if.else56, %if.then54
  store i32 0, i32* %retval, align 4, !dbg !911
  br label %return, !dbg !911

return:                                           ; preds = %if.end57, %if.then
  %51 = load i32, i32* %retval, align 4, !dbg !912
  ret i32 %51, !dbg !912
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk_hw* @__clk_hw_register_divider(%struct.device* %dev, %struct.device_node* %np, i8* %name, i8* %parent_name, %struct.clk_hw* %parent_hw, %struct.clk_parent_data* %parent_data, i64 %flags, i8* %reg, i8 zeroext %shift, i8 zeroext %width, i8 zeroext %clk_divider_flags, %struct.clk_div_table* %table, %struct.spinlock* %lock) #0 !dbg !913 {
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
  %shift.addr = alloca i8, align 1
  %width.addr = alloca i8, align 1
  %clk_divider_flags.addr = alloca i8, align 1
  %table.addr = alloca %struct.clk_div_table*, align 8
  %lock.addr = alloca %struct.spinlock*, align 8
  %div = alloca %struct.clk_divider*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %init = alloca %struct.clk_init_data, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !1640, metadata !DIExpression()), !dbg !1641
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !1642, metadata !DIExpression()), !dbg !1643
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !1644, metadata !DIExpression()), !dbg !1645
  store i8* %parent_name, i8** %parent_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %parent_name.addr, metadata !1646, metadata !DIExpression()), !dbg !1647
  store %struct.clk_hw* %parent_hw, %struct.clk_hw** %parent_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %parent_hw.addr, metadata !1648, metadata !DIExpression()), !dbg !1649
  store %struct.clk_parent_data* %parent_data, %struct.clk_parent_data** %parent_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_parent_data** %parent_data.addr, metadata !1650, metadata !DIExpression()), !dbg !1651
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !1652, metadata !DIExpression()), !dbg !1653
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !1654, metadata !DIExpression()), !dbg !1655
  store i8 %shift, i8* %shift.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %shift.addr, metadata !1656, metadata !DIExpression()), !dbg !1657
  store i8 %width, i8* %width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %width.addr, metadata !1658, metadata !DIExpression()), !dbg !1659
  store i8 %clk_divider_flags, i8* %clk_divider_flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %clk_divider_flags.addr, metadata !1660, metadata !DIExpression()), !dbg !1661
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !1662, metadata !DIExpression()), !dbg !1663
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr, metadata !1664, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.declare(metadata %struct.clk_divider** %div, metadata !1666, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !1668, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.declare(metadata %struct.clk_init_data* %init, metadata !1670, metadata !DIExpression()), !dbg !1671
  %0 = bitcast %struct.clk_init_data* %init to i8*, !dbg !1671
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 56, i1 false), !dbg !1671
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1672, metadata !DIExpression()), !dbg !1673
  %1 = load i8, i8* %clk_divider_flags.addr, align 1, !dbg !1674
  %conv = zext i8 %1 to i64, !dbg !1674
  %and = and i64 %conv, 8, !dbg !1676
  %tobool = icmp ne i64 %and, 0, !dbg !1676
  br i1 %tobool, label %if.then, label %if.end6, !dbg !1677

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %width.addr, align 1, !dbg !1678
  %conv1 = zext i8 %2 to i32, !dbg !1678
  %3 = load i8, i8* %shift.addr, align 1, !dbg !1681
  %conv2 = zext i8 %3 to i32, !dbg !1681
  %add = add i32 %conv1, %conv2, !dbg !1682
  %cmp = icmp sgt i32 %add, 16, !dbg !1683
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1684

if.then4:                                         ; preds = %if.then
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0)) #13, !dbg !1685
  %call5 = call i8* @ERR_PTR(i64 -22) #10, !dbg !1687
  %4 = bitcast i8* %call5 to %struct.clk_hw*, !dbg !1687
  store %struct.clk_hw* %4, %struct.clk_hw** %retval, align 8, !dbg !1688
  br label %return, !dbg !1688

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1689

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i8* @kzalloc(i64 56, i32 3264) #10, !dbg !1690
  %5 = bitcast i8* %call7 to %struct.clk_divider*, !dbg !1690
  store %struct.clk_divider* %5, %struct.clk_divider** %div, align 8, !dbg !1691
  %6 = load %struct.clk_divider*, %struct.clk_divider** %div, align 8, !dbg !1692
  %tobool8 = icmp ne %struct.clk_divider* %6, null, !dbg !1692
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !1694

if.then9:                                         ; preds = %if.end6
  %call10 = call i8* @ERR_PTR(i64 -12) #10, !dbg !1695
  %7 = bitcast i8* %call10 to %struct.clk_hw*, !dbg !1695
  store %struct.clk_hw* %7, %struct.clk_hw** %retval, align 8, !dbg !1696
  br label %return, !dbg !1696

if.end11:                                         ; preds = %if.end6
  %8 = load i8*, i8** %name.addr, align 8, !dbg !1697
  %name12 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 0, !dbg !1698
  store i8* %8, i8** %name12, align 8, !dbg !1699
  %9 = load i8, i8* %clk_divider_flags.addr, align 1, !dbg !1700
  %conv13 = zext i8 %9 to i64, !dbg !1700
  %and14 = and i64 %conv13, 32, !dbg !1702
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1702
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !1703

if.then16:                                        ; preds = %if.end11
  %ops = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 1, !dbg !1704
  store %struct.clk_ops* @clk_divider_ro_ops, %struct.clk_ops** %ops, align 8, !dbg !1705
  br label %if.end18, !dbg !1706

if.else:                                          ; preds = %if.end11
  %ops17 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 1, !dbg !1707
  store %struct.clk_ops* @clk_divider_ops, %struct.clk_ops** %ops17, align 8, !dbg !1708
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  %10 = load i64, i64* %flags.addr, align 8, !dbg !1709
  %flags19 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 6, !dbg !1710
  store i64 %10, i64* %flags19, align 8, !dbg !1711
  %11 = load i8*, i8** %parent_name.addr, align 8, !dbg !1712
  %tobool20 = icmp ne i8* %11, null, !dbg !1712
  br i1 %tobool20, label %cond.true, label %cond.false, !dbg !1712

cond.true:                                        ; preds = %if.end18
  br label %cond.end, !dbg !1712

cond.false:                                       ; preds = %if.end18
  br label %cond.end, !dbg !1712

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8** [ %parent_name.addr, %cond.true ], [ null, %cond.false ], !dbg !1712
  %parent_names = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 2, !dbg !1713
  store i8** %cond, i8*** %parent_names, align 8, !dbg !1714
  %12 = load i8*, i8** %parent_name.addr, align 8, !dbg !1715
  %tobool21 = icmp ne i8* %12, null, !dbg !1715
  %13 = zext i1 %tobool21 to i64, !dbg !1715
  %cond22 = select i1 %tobool21, i32 1, i32 0, !dbg !1715
  %conv23 = trunc i32 %cond22 to i8, !dbg !1716
  %num_parents = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 5, !dbg !1717
  store i8 %conv23, i8* %num_parents, align 8, !dbg !1718
  %14 = load i8*, i8** %reg.addr, align 8, !dbg !1719
  %15 = load %struct.clk_divider*, %struct.clk_divider** %div, align 8, !dbg !1720
  %reg24 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %15, i32 0, i32 1, !dbg !1721
  store i8* %14, i8** %reg24, align 8, !dbg !1722
  %16 = load i8, i8* %shift.addr, align 1, !dbg !1723
  %17 = load %struct.clk_divider*, %struct.clk_divider** %div, align 8, !dbg !1724
  %shift25 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %17, i32 0, i32 2, !dbg !1725
  store i8 %16, i8* %shift25, align 8, !dbg !1726
  %18 = load i8, i8* %width.addr, align 1, !dbg !1727
  %19 = load %struct.clk_divider*, %struct.clk_divider** %div, align 8, !dbg !1728
  %width26 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %19, i32 0, i32 3, !dbg !1729
  store i8 %18, i8* %width26, align 1, !dbg !1730
  %20 = load i8, i8* %clk_divider_flags.addr, align 1, !dbg !1731
  %21 = load %struct.clk_divider*, %struct.clk_divider** %div, align 8, !dbg !1732
  %flags27 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %21, i32 0, i32 4, !dbg !1733
  store i8 %20, i8* %flags27, align 2, !dbg !1734
  %22 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !1735
  %23 = load %struct.clk_divider*, %struct.clk_divider** %div, align 8, !dbg !1736
  %lock28 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %23, i32 0, i32 6, !dbg !1737
  store %struct.spinlock* %22, %struct.spinlock** %lock28, align 8, !dbg !1738
  %24 = load %struct.clk_divider*, %struct.clk_divider** %div, align 8, !dbg !1739
  %hw29 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %24, i32 0, i32 0, !dbg !1740
  %init30 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw29, i32 0, i32 2, !dbg !1741
  store %struct.clk_init_data* %init, %struct.clk_init_data** %init30, align 8, !dbg !1742
  %25 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !1743
  %26 = load %struct.clk_divider*, %struct.clk_divider** %div, align 8, !dbg !1744
  %table31 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %26, i32 0, i32 5, !dbg !1745
  store %struct.clk_div_table* %25, %struct.clk_div_table** %table31, align 8, !dbg !1746
  %27 = load %struct.clk_divider*, %struct.clk_divider** %div, align 8, !dbg !1747
  %hw32 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %27, i32 0, i32 0, !dbg !1748
  store %struct.clk_hw* %hw32, %struct.clk_hw** %hw, align 8, !dbg !1749
  %28 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1750
  %29 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1751
  %call33 = call i32 @clk_hw_register(%struct.device* %28, %struct.clk_hw* %29) #10, !dbg !1752
  store i32 %call33, i32* %ret, align 4, !dbg !1753
  %30 = load i32, i32* %ret, align 4, !dbg !1754
  %tobool34 = icmp ne i32 %30, 0, !dbg !1754
  br i1 %tobool34, label %if.then35, label %if.end38, !dbg !1756

if.then35:                                        ; preds = %cond.end
  %31 = load %struct.clk_divider*, %struct.clk_divider** %div, align 8, !dbg !1757
  %32 = bitcast %struct.clk_divider* %31 to i8*, !dbg !1757
  call void @kfree(i8* %32) #10, !dbg !1759
  %33 = load i32, i32* %ret, align 4, !dbg !1760
  %conv36 = sext i32 %33 to i64, !dbg !1760
  %call37 = call i8* @ERR_PTR(i64 %conv36) #10, !dbg !1761
  %34 = bitcast i8* %call37 to %struct.clk_hw*, !dbg !1761
  store %struct.clk_hw* %34, %struct.clk_hw** %hw, align 8, !dbg !1762
  br label %if.end38, !dbg !1763

if.end38:                                         ; preds = %if.then35, %cond.end
  %35 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1764
  store %struct.clk_hw* %35, %struct.clk_hw** %retval, align 8, !dbg !1765
  br label %return, !dbg !1765

return:                                           ; preds = %if.end38, %if.then9, %if.then4
  %36 = load %struct.clk_hw*, %struct.clk_hw** %retval, align 8, !dbg !1766
  ret %struct.clk_hw* %36, !dbg !1766
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !1767 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !1771, metadata !DIExpression()), !dbg !1772
  %0 = load i64, i64* %error.addr, align 8, !dbg !1773
  %1 = inttoptr i64 %0 to i8*, !dbg !1774
  ret i8* %1, !dbg !1775
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1776 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1779, metadata !DIExpression()), !dbg !1785
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1791, metadata !DIExpression()), !dbg !1792
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1793, metadata !DIExpression()), !dbg !1794
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1795, metadata !DIExpression()), !dbg !1796
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1797, metadata !DIExpression()), !dbg !1801
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1803, metadata !DIExpression()), !dbg !1807
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1809, metadata !DIExpression()), !dbg !1813
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1818, metadata !DIExpression()), !dbg !1819
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1820, metadata !DIExpression()), !dbg !1821
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1822, metadata !DIExpression()), !dbg !1823
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1824, metadata !DIExpression()), !dbg !1825
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1826, metadata !DIExpression()), !dbg !1827
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1828, metadata !DIExpression()), !dbg !1829
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1830, metadata !DIExpression()), !dbg !1831
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1832, metadata !DIExpression()), !dbg !1833
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1834, metadata !DIExpression()), !dbg !1835
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1836, metadata !DIExpression()), !dbg !1837
  %0 = load i64, i64* %size.addr, align 8, !dbg !1838
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1839
  %or = or i32 %1, 256, !dbg !1840
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1841
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1842
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1843

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1844
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1845
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1846

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1847
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1848
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1849
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !1850
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1827
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1851
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1852
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1853
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1854
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1855
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1856
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !1857
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1857
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1857
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1857
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1857
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1858
  br label %kmalloc.exit, !dbg !1858

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1859
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1860
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1860
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1862

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1863
  br label %kmalloc_index.exit.i, !dbg !1863

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1864
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1866
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1867

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1868
  br label %kmalloc_index.exit.i, !dbg !1868

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1869
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1871
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1872

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1873
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1874
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1875

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1876
  br label %kmalloc_index.exit.i, !dbg !1876

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1877
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1879
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1880

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1881
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1882
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1883

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1884
  br label %kmalloc_index.exit.i, !dbg !1884

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1885
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1887
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1888

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1889
  br label %kmalloc_index.exit.i, !dbg !1889

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1890
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1892
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1893

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1894
  br label %kmalloc_index.exit.i, !dbg !1894

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1895
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1897
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1898

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1899
  br label %kmalloc_index.exit.i, !dbg !1899

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1900
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1902
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1903

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1904
  br label %kmalloc_index.exit.i, !dbg !1904

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1905
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1907
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1908

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1909
  br label %kmalloc_index.exit.i, !dbg !1909

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1910
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1912
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1913

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1914
  br label %kmalloc_index.exit.i, !dbg !1914

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1915
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1917
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1918

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1919
  br label %kmalloc_index.exit.i, !dbg !1919

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1920
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1922
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1923

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1924
  br label %kmalloc_index.exit.i, !dbg !1924

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1925
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1927
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1928

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1929
  br label %kmalloc_index.exit.i, !dbg !1929

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1930
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1932
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1933

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1934
  br label %kmalloc_index.exit.i, !dbg !1934

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1935
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1937
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1938

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1939
  br label %kmalloc_index.exit.i, !dbg !1939

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1940
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1942
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1943

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1944
  br label %kmalloc_index.exit.i, !dbg !1944

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1945
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1947
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1948

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1949
  br label %kmalloc_index.exit.i, !dbg !1949

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1950
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1952
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1953

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1954
  br label %kmalloc_index.exit.i, !dbg !1954

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1955
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1957
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1958

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1959
  br label %kmalloc_index.exit.i, !dbg !1959

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1960
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1962
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1963

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1964
  br label %kmalloc_index.exit.i, !dbg !1964

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1965
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1967
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1968

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1969
  br label %kmalloc_index.exit.i, !dbg !1969

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1970
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1972
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1973

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1974
  br label %kmalloc_index.exit.i, !dbg !1974

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1975
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1977
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1978

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1979
  br label %kmalloc_index.exit.i, !dbg !1979

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1980
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1982
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1983

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1984
  br label %kmalloc_index.exit.i, !dbg !1984

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1985
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1987
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1988

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1989
  br label %kmalloc_index.exit.i, !dbg !1989

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1990
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1992
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1993

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1994
  br label %kmalloc_index.exit.i, !dbg !1994

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1995
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1997
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1998

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1999
  br label %kmalloc_index.exit.i, !dbg !1999

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2000
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2002
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2003

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2004
  br label %kmalloc_index.exit.i, !dbg !2004

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !2005, !srcloc !2008
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #7, !dbg !2009, !srcloc !2012
  unreachable, !dbg !2013

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2014
  store i32 %45, i32* %index.i, align 4, !dbg !2015
  %46 = load i32, i32* %index.i, align 4, !dbg !2016
  %tobool.i = icmp ne i32 %46, 0, !dbg !2016
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2018

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2019
  br label %kmalloc.exit, !dbg !2019

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2020
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2021
  %and.i.i = and i32 %48, 17, !dbg !2021
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2021
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2021
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2021
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2021
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2023

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2024
  br label %kmalloc_type.exit.i, !dbg !2024

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2025
  %and2.i.i = and i32 %49, 1, !dbg !2026
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2025
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2025
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2025
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2027
  br label %kmalloc_type.exit.i, !dbg !2027

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2028
  %idxprom.i = zext i32 %51 to i64, !dbg !2029
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2029
  %52 = load i32, i32* %index.i, align 4, !dbg !2030
  %idxprom6.i = zext i32 %52 to i64, !dbg !2029
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2029
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2029
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2031
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2032
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2033
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2034
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !2035
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2035
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2035
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2035
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !2035
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1796
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2036
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2037
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2038
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2039
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !2040
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2041
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2042
  store i8* %62, i8** %retval.i, align 8, !dbg !2043
  br label %kmalloc.exit, !dbg !2043

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2044
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2045
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !2046
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2046
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2046
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2046
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !2046
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2047
  br label %kmalloc.exit, !dbg !2047

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2048
  ret i8* %65, !dbg !2049
}

; Function Attrs: noredzone
declare dso_local i32 @clk_hw_register(%struct.device*, %struct.clk_hw*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk* @clk_register_divider_table(%struct.device* %dev, i8* %name, i8* %parent_name, i64 %flags, i8* %reg, i8 zeroext %shift, i8 zeroext %width, i8 zeroext %clk_divider_flags, %struct.clk_div_table* %table, %struct.spinlock* %lock) #0 !dbg !2050 {
entry:
  %retval = alloca %struct.clk*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %parent_name.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  %reg.addr = alloca i8*, align 8
  %shift.addr = alloca i8, align 1
  %width.addr = alloca i8, align 1
  %clk_divider_flags.addr = alloca i8, align 1
  %table.addr = alloca %struct.clk_div_table*, align 8
  %lock.addr = alloca %struct.spinlock*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2053, metadata !DIExpression()), !dbg !2054
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2055, metadata !DIExpression()), !dbg !2056
  store i8* %parent_name, i8** %parent_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %parent_name.addr, metadata !2057, metadata !DIExpression()), !dbg !2058
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2059, metadata !DIExpression()), !dbg !2060
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !2061, metadata !DIExpression()), !dbg !2062
  store i8 %shift, i8* %shift.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %shift.addr, metadata !2063, metadata !DIExpression()), !dbg !2064
  store i8 %width, i8* %width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %width.addr, metadata !2065, metadata !DIExpression()), !dbg !2066
  store i8 %clk_divider_flags, i8* %clk_divider_flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %clk_divider_flags.addr, metadata !2067, metadata !DIExpression()), !dbg !2068
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !2069, metadata !DIExpression()), !dbg !2070
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr, metadata !2071, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2073, metadata !DIExpression()), !dbg !2074
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2075
  %1 = load i8*, i8** %name.addr, align 8, !dbg !2076
  %2 = load i8*, i8** %parent_name.addr, align 8, !dbg !2077
  %3 = load i64, i64* %flags.addr, align 8, !dbg !2078
  %4 = load i8*, i8** %reg.addr, align 8, !dbg !2079
  %5 = load i8, i8* %shift.addr, align 1, !dbg !2080
  %6 = load i8, i8* %width.addr, align 1, !dbg !2081
  %7 = load i8, i8* %clk_divider_flags.addr, align 1, !dbg !2082
  %8 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2083
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !2084
  %call = call %struct.clk_hw* @__clk_hw_register_divider(%struct.device* %0, %struct.device_node* null, i8* %1, i8* %2, %struct.clk_hw* null, %struct.clk_parent_data* null, i64 %3, i8* %4, i8 zeroext %5, i8 zeroext %6, i8 zeroext %7, %struct.clk_div_table* %8, %struct.spinlock* %9) #10, !dbg !2085
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !2086
  %10 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2087
  %11 = bitcast %struct.clk_hw* %10 to i8*, !dbg !2087
  %call1 = call zeroext i1 @IS_ERR(i8* %11) #10, !dbg !2089
  br i1 %call1, label %if.then, label %if.end, !dbg !2090

if.then:                                          ; preds = %entry
  %12 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2091
  %13 = bitcast %struct.clk_hw* %12 to i8*, !dbg !2091
  %call2 = call i8* @ERR_CAST(i8* %13) #10, !dbg !2092
  %14 = bitcast i8* %call2 to %struct.clk*, !dbg !2092
  store %struct.clk* %14, %struct.clk** %retval, align 8, !dbg !2093
  br label %return, !dbg !2093

if.end:                                           ; preds = %entry
  %15 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2094
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %15, i32 0, i32 1, !dbg !2095
  %16 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2095
  store %struct.clk* %16, %struct.clk** %retval, align 8, !dbg !2096
  br label %return, !dbg !2096

return:                                           ; preds = %if.end, %if.then
  %17 = load %struct.clk*, %struct.clk** %retval, align 8, !dbg !2097
  ret %struct.clk* %17, !dbg !2097
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2098 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2101, metadata !DIExpression()), !dbg !2102
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2103
  %1 = ptrtoint i8* %0 to i64, !dbg !2103
  %2 = inttoptr i64 %1 to i8*, !dbg !2103
  %3 = ptrtoint i8* %2 to i64, !dbg !2103
  %cmp = icmp uge i64 %3, -4095, !dbg !2103
  %lnot = xor i1 %cmp, true, !dbg !2103
  %lnot1 = xor i1 %lnot, true, !dbg !2103
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2103
  %conv = sext i32 %lnot.ext to i64, !dbg !2103
  %tobool = icmp ne i64 %conv, 0, !dbg !2103
  ret i1 %tobool, !dbg !2104
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_CAST(i8* %ptr) #0 !dbg !2105 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2108, metadata !DIExpression()), !dbg !2109
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2110
  ret i8* %0, !dbg !2111
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_unregister_divider(%struct.clk* %clk) #0 !dbg !2112 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  %div = alloca %struct.clk_divider*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_divider*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2115, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.declare(metadata %struct.clk_divider** %div, metadata !2117, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2119, metadata !DIExpression()), !dbg !2120
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2121
  %call = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %0) #10, !dbg !2122
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !2123
  %1 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2124
  %tobool = icmp ne %struct.clk_hw* %1, null, !dbg !2124
  br i1 %tobool, label %if.end, label %if.then, !dbg !2126

if.then:                                          ; preds = %entry
  br label %return, !dbg !2127

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2128, metadata !DIExpression()), !dbg !2130
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2130
  %3 = bitcast %struct.clk_hw* %2 to i8*, !dbg !2130
  store i8* %3, i8** %__mptr, align 8, !dbg !2130
  br label %do.body, !dbg !2130

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2131

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2130
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !2130
  %5 = bitcast i8* %add.ptr to %struct.clk_divider*, !dbg !2130
  store %struct.clk_divider* %5, %struct.clk_divider** %tmp, align 8, !dbg !2131
  %6 = load %struct.clk_divider*, %struct.clk_divider** %tmp, align 8, !dbg !2130
  store %struct.clk_divider* %6, %struct.clk_divider** %div, align 8, !dbg !2133
  %7 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2134
  call void @clk_unregister(%struct.clk* %7) #10, !dbg !2135
  %8 = load %struct.clk_divider*, %struct.clk_divider** %div, align 8, !dbg !2136
  %9 = bitcast %struct.clk_divider* %8 to i8*, !dbg !2136
  call void @kfree(i8* %9) #10, !dbg !2137
  br label %return, !dbg !2138

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !2138
}

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk*) #2

; Function Attrs: noredzone
declare dso_local void @clk_unregister(%struct.clk*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_hw_unregister_divider(%struct.clk_hw* %hw) #0 !dbg !2139 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %div = alloca %struct.clk_divider*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_divider*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2140, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.declare(metadata %struct.clk_divider** %div, metadata !2142, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2144, metadata !DIExpression()), !dbg !2146
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2146
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2146
  store i8* %1, i8** %__mptr, align 8, !dbg !2146
  br label %do.body, !dbg !2146

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2147

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2146
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2146
  %3 = bitcast i8* %add.ptr to %struct.clk_divider*, !dbg !2146
  store %struct.clk_divider* %3, %struct.clk_divider** %tmp, align 8, !dbg !2147
  %4 = load %struct.clk_divider*, %struct.clk_divider** %tmp, align 8, !dbg !2146
  store %struct.clk_divider* %4, %struct.clk_divider** %div, align 8, !dbg !2149
  %5 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2150
  call void @clk_hw_unregister(%struct.clk_hw* %5) #10, !dbg !2151
  %6 = load %struct.clk_divider*, %struct.clk_divider** %div, align 8, !dbg !2152
  %7 = bitcast %struct.clk_divider* %6 to i8*, !dbg !2152
  call void @kfree(i8* %7) #10, !dbg !2153
  ret void, !dbg !2154
}

; Function Attrs: noredzone
declare dso_local void @clk_hw_unregister(%struct.clk_hw*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_get_table_div(%struct.clk_div_table* %table, i32 %val) #0 !dbg !2155 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.clk_div_table*, align 8
  %val.addr = alloca i32, align 4
  %clkt = alloca %struct.clk_div_table*, align 8
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !2158, metadata !DIExpression()), !dbg !2159
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2160, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %clkt, metadata !2162, metadata !DIExpression()), !dbg !2163
  %0 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2164
  store %struct.clk_div_table* %0, %struct.clk_div_table** %clkt, align 8, !dbg !2166
  br label %for.cond, !dbg !2167

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2168
  %div = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %1, i32 0, i32 1, !dbg !2170
  %2 = load i32, i32* %div, align 4, !dbg !2170
  %tobool = icmp ne i32 %2, 0, !dbg !2171
  br i1 %tobool, label %for.body, label %for.end, !dbg !2171

for.body:                                         ; preds = %for.cond
  %3 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2172
  %val1 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %3, i32 0, i32 0, !dbg !2174
  %4 = load i32, i32* %val1, align 4, !dbg !2174
  %5 = load i32, i32* %val.addr, align 4, !dbg !2175
  %cmp = icmp eq i32 %4, %5, !dbg !2176
  br i1 %cmp, label %if.then, label %if.end, !dbg !2177

if.then:                                          ; preds = %for.body
  %6 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2178
  %div2 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %6, i32 0, i32 1, !dbg !2179
  %7 = load i32, i32* %div2, align 4, !dbg !2179
  store i32 %7, i32* %retval, align 4, !dbg !2180
  br label %return, !dbg !2180

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2175

for.inc:                                          ; preds = %if.end
  %8 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2181
  %incdec.ptr = getelementptr %struct.clk_div_table, %struct.clk_div_table* %8, i32 1, !dbg !2181
  store %struct.clk_div_table* %incdec.ptr, %struct.clk_div_table** %clkt, align 8, !dbg !2181
  br label %for.cond, !dbg !2182, !llvm.loop !2183

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2185
  br label %return, !dbg !2185

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2186
  ret i32 %9, !dbg !2186
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_get_maxdiv(%struct.clk_div_table* %table, i8 zeroext %width, i64 %flags) #0 !dbg !2187 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.clk_div_table*, align 8
  %width.addr = alloca i8, align 1
  %flags.addr = alloca i64, align 8
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !2190, metadata !DIExpression()), !dbg !2191
  store i8 %width, i8* %width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %width.addr, metadata !2192, metadata !DIExpression()), !dbg !2193
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2194, metadata !DIExpression()), !dbg !2195
  %0 = load i64, i64* %flags.addr, align 8, !dbg !2196
  %and = and i64 %0, 1, !dbg !2198
  %tobool = icmp ne i64 %and, 0, !dbg !2198
  br i1 %tobool, label %if.then, label %if.end, !dbg !2199

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %width.addr, align 1, !dbg !2200
  %conv = zext i8 %1 to i32, !dbg !2200
  %shl = shl i32 1, %conv, !dbg !2200
  %sub = sub i32 %shl, 1, !dbg !2200
  store i32 %sub, i32* %retval, align 4, !dbg !2201
  br label %return, !dbg !2201

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %flags.addr, align 8, !dbg !2202
  %and1 = and i64 %2, 2, !dbg !2204
  %tobool2 = icmp ne i64 %and1, 0, !dbg !2204
  br i1 %tobool2, label %if.then3, label %if.end8, !dbg !2205

if.then3:                                         ; preds = %if.end
  %3 = load i8, i8* %width.addr, align 1, !dbg !2206
  %conv4 = zext i8 %3 to i32, !dbg !2206
  %shl5 = shl i32 1, %conv4, !dbg !2206
  %sub6 = sub i32 %shl5, 1, !dbg !2206
  %shl7 = shl i32 1, %sub6, !dbg !2207
  store i32 %shl7, i32* %retval, align 4, !dbg !2208
  br label %return, !dbg !2208

if.end8:                                          ; preds = %if.end
  %4 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2209
  %tobool9 = icmp ne %struct.clk_div_table* %4, null, !dbg !2209
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !2211

if.then10:                                        ; preds = %if.end8
  %5 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2212
  %6 = load i8, i8* %width.addr, align 1, !dbg !2213
  %call = call i32 @_get_table_maxdiv(%struct.clk_div_table* %5, i8 zeroext %6) #10, !dbg !2214
  store i32 %call, i32* %retval, align 4, !dbg !2215
  br label %return, !dbg !2215

if.end11:                                         ; preds = %if.end8
  %7 = load i8, i8* %width.addr, align 1, !dbg !2216
  %conv12 = zext i8 %7 to i32, !dbg !2216
  %shl13 = shl i32 1, %conv12, !dbg !2216
  %sub14 = sub i32 %shl13, 1, !dbg !2216
  %add = add i32 %sub14, 1, !dbg !2217
  store i32 %add, i32* %retval, align 4, !dbg !2218
  br label %return, !dbg !2218

return:                                           ; preds = %if.end11, %if.then10, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !2219
  ret i32 %8, !dbg !2219
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_div_round(%struct.clk_div_table* %table, i64 %parent_rate, i64 %rate, i64 %flags) #0 !dbg !2220 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.clk_div_table*, align 8
  %parent_rate.addr = alloca i64, align 8
  %rate.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !2223, metadata !DIExpression()), !dbg !2224
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !2225, metadata !DIExpression()), !dbg !2226
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !2227, metadata !DIExpression()), !dbg !2228
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2229, metadata !DIExpression()), !dbg !2230
  %0 = load i64, i64* %flags.addr, align 8, !dbg !2231
  %and = and i64 %0, 16, !dbg !2233
  %tobool = icmp ne i64 %and, 0, !dbg !2233
  br i1 %tobool, label %if.then, label %if.end, !dbg !2234

if.then:                                          ; preds = %entry
  %1 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2235
  %2 = load i64, i64* %parent_rate.addr, align 8, !dbg !2236
  %3 = load i64, i64* %rate.addr, align 8, !dbg !2237
  %4 = load i64, i64* %flags.addr, align 8, !dbg !2238
  %call = call i32 @_div_round_closest(%struct.clk_div_table* %1, i64 %2, i64 %3, i64 %4) #10, !dbg !2239
  store i32 %call, i32* %retval, align 4, !dbg !2240
  br label %return, !dbg !2240

if.end:                                           ; preds = %entry
  %5 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2241
  %6 = load i64, i64* %parent_rate.addr, align 8, !dbg !2242
  %7 = load i64, i64* %rate.addr, align 8, !dbg !2243
  %8 = load i64, i64* %flags.addr, align 8, !dbg !2244
  %call1 = call i32 @_div_round_up(%struct.clk_div_table* %5, i64 %6, i64 %7, i64 %8) #10, !dbg !2245
  store i32 %call1, i32* %retval, align 4, !dbg !2246
  br label %return, !dbg !2246

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2247
  ret i32 %9, !dbg !2247
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_next_div(%struct.clk_div_table* %table, i32 %div, i64 %flags) #0 !dbg !2248 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.clk_div_table*, align 8
  %div.addr = alloca i32, align 4
  %flags.addr = alloca i64, align 8
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !2251, metadata !DIExpression()), !dbg !2252
  store i32 %div, i32* %div.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %div.addr, metadata !2253, metadata !DIExpression()), !dbg !2254
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2255, metadata !DIExpression()), !dbg !2256
  %0 = load i32, i32* %div.addr, align 4, !dbg !2257
  %inc = add i32 %0, 1, !dbg !2257
  store i32 %inc, i32* %div.addr, align 4, !dbg !2257
  %1 = load i64, i64* %flags.addr, align 8, !dbg !2258
  %and = and i64 %1, 2, !dbg !2260
  %tobool = icmp ne i64 %and, 0, !dbg !2260
  br i1 %tobool, label %if.then, label %if.end, !dbg !2261

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %div.addr, align 4, !dbg !2262
  %conv = sext i32 %2 to i64, !dbg !2262
  %call = call i64 @__roundup_pow_of_two(i64 %conv) #11, !dbg !2263
  %conv1 = trunc i64 %call to i32, !dbg !2263
  store i32 %conv1, i32* %retval, align 4, !dbg !2264
  br label %return, !dbg !2264

if.end:                                           ; preds = %entry
  %3 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2265
  %tobool2 = icmp ne %struct.clk_div_table* %3, null, !dbg !2265
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !2267

if.then3:                                         ; preds = %if.end
  %4 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2268
  %5 = load i32, i32* %div.addr, align 4, !dbg !2269
  %call4 = call i32 @_round_up_table(%struct.clk_div_table* %4, i32 %5) #10, !dbg !2270
  store i32 %call4, i32* %retval, align 4, !dbg !2271
  br label %return, !dbg !2271

if.end5:                                          ; preds = %if.end
  %6 = load i32, i32* %div.addr, align 4, !dbg !2272
  store i32 %6, i32* %retval, align 4, !dbg !2273
  br label %return, !dbg !2273

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2274
  ret i32 %7, !dbg !2274
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @_is_best_div(i64 %rate, i64 %now, i64 %best, i64 %flags) #0 !dbg !2275 {
entry:
  %retval = alloca i1, align 1
  %rate.addr = alloca i64, align 8
  %now.addr = alloca i64, align 8
  %best.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %__x = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__x2 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !2278, metadata !DIExpression()), !dbg !2279
  store i64 %now, i64* %now.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %now.addr, metadata !2280, metadata !DIExpression()), !dbg !2281
  store i64 %best, i64* %best.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %best.addr, metadata !2282, metadata !DIExpression()), !dbg !2283
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2284, metadata !DIExpression()), !dbg !2285
  %0 = load i64, i64* %flags.addr, align 8, !dbg !2286
  %and = and i64 %0, 16, !dbg !2288
  %tobool = icmp ne i64 %and, 0, !dbg !2288
  br i1 %tobool, label %if.then, label %if.end, !dbg !2289

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__x, metadata !2290, metadata !DIExpression()), !dbg !2292
  %1 = load i64, i64* %rate.addr, align 8, !dbg !2292
  %2 = load i64, i64* %now.addr, align 8, !dbg !2292
  %sub = sub i64 %1, %2, !dbg !2292
  store i64 %sub, i64* %__x, align 8, !dbg !2292
  %3 = load i64, i64* %__x, align 8, !dbg !2292
  %cmp = icmp slt i64 %3, 0, !dbg !2292
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2292

cond.true:                                        ; preds = %if.then
  %4 = load i64, i64* %__x, align 8, !dbg !2292
  %sub1 = sub i64 0, %4, !dbg !2292
  br label %cond.end, !dbg !2292

cond.false:                                       ; preds = %if.then
  %5 = load i64, i64* %__x, align 8, !dbg !2292
  br label %cond.end, !dbg !2292

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub1, %cond.true ], [ %5, %cond.false ], !dbg !2292
  store i64 %cond, i64* %tmp, align 8, !dbg !2292
  %6 = load i64, i64* %tmp, align 8, !dbg !2292
  call void @llvm.dbg.declare(metadata i64* %__x2, metadata !2293, metadata !DIExpression()), !dbg !2295
  %7 = load i64, i64* %rate.addr, align 8, !dbg !2295
  %8 = load i64, i64* %best.addr, align 8, !dbg !2295
  %sub3 = sub i64 %7, %8, !dbg !2295
  store i64 %sub3, i64* %__x2, align 8, !dbg !2295
  %9 = load i64, i64* %__x2, align 8, !dbg !2295
  %cmp5 = icmp slt i64 %9, 0, !dbg !2295
  br i1 %cmp5, label %cond.true6, label %cond.false8, !dbg !2295

cond.true6:                                       ; preds = %cond.end
  %10 = load i64, i64* %__x2, align 8, !dbg !2295
  %sub7 = sub i64 0, %10, !dbg !2295
  br label %cond.end9, !dbg !2295

cond.false8:                                      ; preds = %cond.end
  %11 = load i64, i64* %__x2, align 8, !dbg !2295
  br label %cond.end9, !dbg !2295

cond.end9:                                        ; preds = %cond.false8, %cond.true6
  %cond10 = phi i64 [ %sub7, %cond.true6 ], [ %11, %cond.false8 ], !dbg !2295
  store i64 %cond10, i64* %tmp4, align 8, !dbg !2295
  %12 = load i64, i64* %tmp4, align 8, !dbg !2295
  %cmp11 = icmp slt i64 %6, %12, !dbg !2296
  store i1 %cmp11, i1* %retval, align 1, !dbg !2297
  br label %return, !dbg !2297

if.end:                                           ; preds = %entry
  %13 = load i64, i64* %now.addr, align 8, !dbg !2298
  %14 = load i64, i64* %rate.addr, align 8, !dbg !2299
  %cmp12 = icmp ule i64 %13, %14, !dbg !2300
  br i1 %cmp12, label %land.rhs, label %land.end, !dbg !2301

land.rhs:                                         ; preds = %if.end
  %15 = load i64, i64* %now.addr, align 8, !dbg !2302
  %16 = load i64, i64* %best.addr, align 8, !dbg !2303
  %cmp13 = icmp ugt i64 %15, %16, !dbg !2304
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %17 = phi i1 [ false, %if.end ], [ %cmp13, %land.rhs ], !dbg !2305
  store i1 %17, i1* %retval, align 1, !dbg !2306
  br label %return, !dbg !2306

return:                                           ; preds = %land.end, %cond.end9
  %18 = load i1, i1* %retval, align 1, !dbg !2307
  ret i1 %18, !dbg !2307
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_get_table_maxdiv(%struct.clk_div_table* %table, i8 zeroext %width) #0 !dbg !2308 {
entry:
  %table.addr = alloca %struct.clk_div_table*, align 8
  %width.addr = alloca i8, align 1
  %maxdiv = alloca i32, align 4
  %mask = alloca i32, align 4
  %clkt = alloca %struct.clk_div_table*, align 8
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !2311, metadata !DIExpression()), !dbg !2312
  store i8 %width, i8* %width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %width.addr, metadata !2313, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.declare(metadata i32* %maxdiv, metadata !2315, metadata !DIExpression()), !dbg !2316
  store i32 0, i32* %maxdiv, align 4, !dbg !2316
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !2317, metadata !DIExpression()), !dbg !2318
  %0 = load i8, i8* %width.addr, align 1, !dbg !2319
  %conv = zext i8 %0 to i32, !dbg !2319
  %shl = shl i32 1, %conv, !dbg !2319
  %sub = sub i32 %shl, 1, !dbg !2319
  store i32 %sub, i32* %mask, align 4, !dbg !2318
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %clkt, metadata !2320, metadata !DIExpression()), !dbg !2321
  %1 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2322
  store %struct.clk_div_table* %1, %struct.clk_div_table** %clkt, align 8, !dbg !2324
  br label %for.cond, !dbg !2325

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2326
  %div = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %2, i32 0, i32 1, !dbg !2328
  %3 = load i32, i32* %div, align 4, !dbg !2328
  %tobool = icmp ne i32 %3, 0, !dbg !2329
  br i1 %tobool, label %for.body, label %for.end, !dbg !2329

for.body:                                         ; preds = %for.cond
  %4 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2330
  %div1 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %4, i32 0, i32 1, !dbg !2332
  %5 = load i32, i32* %div1, align 4, !dbg !2332
  %6 = load i32, i32* %maxdiv, align 4, !dbg !2333
  %cmp = icmp ugt i32 %5, %6, !dbg !2334
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2335

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2336
  %val = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %7, i32 0, i32 0, !dbg !2337
  %8 = load i32, i32* %val, align 4, !dbg !2337
  %9 = load i32, i32* %mask, align 4, !dbg !2338
  %cmp3 = icmp ule i32 %8, %9, !dbg !2339
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2340

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2341
  %div5 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %10, i32 0, i32 1, !dbg !2342
  %11 = load i32, i32* %div5, align 4, !dbg !2342
  store i32 %11, i32* %maxdiv, align 4, !dbg !2343
  br label %if.end, !dbg !2344

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !2338

for.inc:                                          ; preds = %if.end
  %12 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2345
  %incdec.ptr = getelementptr %struct.clk_div_table, %struct.clk_div_table* %12, i32 1, !dbg !2345
  store %struct.clk_div_table* %incdec.ptr, %struct.clk_div_table** %clkt, align 8, !dbg !2345
  br label %for.cond, !dbg !2346, !llvm.loop !2347

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %maxdiv, align 4, !dbg !2349
  ret i32 %13, !dbg !2350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_div_round_closest(%struct.clk_div_table* %table, i64 %parent_rate, i64 %rate, i64 %flags) #0 !dbg !2351 {
entry:
  %table.addr = alloca %struct.clk_div_table*, align 8
  %parent_rate.addr = alloca i64, align 8
  %rate.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %up = alloca i32, align 4
  %down = alloca i32, align 4
  %up_rate = alloca i64, align 8
  %down_rate = alloca i64, align 8
  %_tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp4 = alloca i64, align 8
  %_tmp18 = alloca i64, align 8
  %__base22 = alloca i32, align 4
  %__rem23 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  %tmp30 = alloca i64, align 8
  %_tmp31 = alloca i64, align 8
  %__base35 = alloca i32, align 4
  %__rem36 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %tmp43 = alloca i64, align 8
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !2352, metadata !DIExpression()), !dbg !2353
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !2354, metadata !DIExpression()), !dbg !2355
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !2356, metadata !DIExpression()), !dbg !2357
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2358, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.declare(metadata i32* %up, metadata !2360, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.declare(metadata i32* %down, metadata !2362, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.declare(metadata i64* %up_rate, metadata !2364, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.declare(metadata i64* %down_rate, metadata !2366, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.declare(metadata i64* %_tmp, metadata !2368, metadata !DIExpression()), !dbg !2370
  %0 = load i64, i64* %parent_rate.addr, align 8, !dbg !2370
  %1 = load i64, i64* %rate.addr, align 8, !dbg !2370
  %add = add i64 %0, %1, !dbg !2370
  %sub = sub i64 %add, 1, !dbg !2370
  store i64 %sub, i64* %_tmp, align 8, !dbg !2370
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !2371, metadata !DIExpression()), !dbg !2373
  %2 = load i64, i64* %rate.addr, align 8, !dbg !2373
  %conv = trunc i64 %2 to i32, !dbg !2373
  store i32 %conv, i32* %__base, align 4, !dbg !2373
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !2374, metadata !DIExpression()), !dbg !2373
  %3 = load i64, i64* %_tmp, align 8, !dbg !2373
  %4 = load i32, i32* %__base, align 4, !dbg !2373
  %conv1 = zext i32 %4 to i64, !dbg !2373
  %rem = urem i64 %3, %conv1, !dbg !2373
  %conv2 = trunc i64 %rem to i32, !dbg !2373
  store i32 %conv2, i32* %__rem, align 4, !dbg !2373
  %5 = load i64, i64* %_tmp, align 8, !dbg !2373
  %6 = load i32, i32* %__base, align 4, !dbg !2373
  %conv3 = zext i32 %6 to i64, !dbg !2373
  %div = udiv i64 %5, %conv3, !dbg !2373
  store i64 %div, i64* %_tmp, align 8, !dbg !2373
  %7 = load i32, i32* %__rem, align 4, !dbg !2373
  store i32 %7, i32* %tmp, align 4, !dbg !2373
  %8 = load i32, i32* %tmp, align 4, !dbg !2373
  %9 = load i64, i64* %_tmp, align 8, !dbg !2370
  store i64 %9, i64* %tmp4, align 8, !dbg !2370
  %10 = load i64, i64* %tmp4, align 8, !dbg !2370
  %conv5 = trunc i64 %10 to i32, !dbg !2375
  store i32 %conv5, i32* %up, align 4, !dbg !2376
  %11 = load i64, i64* %parent_rate.addr, align 8, !dbg !2377
  %12 = load i64, i64* %rate.addr, align 8, !dbg !2378
  %div6 = udiv i64 %11, %12, !dbg !2379
  %conv7 = trunc i64 %div6 to i32, !dbg !2377
  store i32 %conv7, i32* %down, align 4, !dbg !2380
  %13 = load i64, i64* %flags.addr, align 8, !dbg !2381
  %and = and i64 %13, 2, !dbg !2383
  %tobool = icmp ne i64 %and, 0, !dbg !2383
  br i1 %tobool, label %if.then, label %if.else, !dbg !2384

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %up, align 4, !dbg !2385
  %conv8 = sext i32 %14 to i64, !dbg !2385
  %call = call i64 @__roundup_pow_of_two(i64 %conv8) #11, !dbg !2387
  %conv9 = trunc i64 %call to i32, !dbg !2387
  store i32 %conv9, i32* %up, align 4, !dbg !2388
  %15 = load i32, i32* %down, align 4, !dbg !2389
  %conv10 = sext i32 %15 to i64, !dbg !2389
  %call11 = call i64 @__rounddown_pow_of_two(i64 %conv10) #11, !dbg !2390
  %conv12 = trunc i64 %call11 to i32, !dbg !2390
  store i32 %conv12, i32* %down, align 4, !dbg !2391
  br label %if.end17, !dbg !2392

if.else:                                          ; preds = %entry
  %16 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2393
  %tobool13 = icmp ne %struct.clk_div_table* %16, null, !dbg !2393
  br i1 %tobool13, label %if.then14, label %if.end, !dbg !2395

if.then14:                                        ; preds = %if.else
  %17 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2396
  %18 = load i32, i32* %up, align 4, !dbg !2398
  %call15 = call i32 @_round_up_table(%struct.clk_div_table* %17, i32 %18) #10, !dbg !2399
  store i32 %call15, i32* %up, align 4, !dbg !2400
  %19 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2401
  %20 = load i32, i32* %down, align 4, !dbg !2402
  %call16 = call i32 @_round_down_table(%struct.clk_div_table* %19, i32 %20) #10, !dbg !2403
  store i32 %call16, i32* %down, align 4, !dbg !2404
  br label %if.end, !dbg !2405

if.end:                                           ; preds = %if.then14, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  call void @llvm.dbg.declare(metadata i64* %_tmp18, metadata !2406, metadata !DIExpression()), !dbg !2408
  %21 = load i64, i64* %parent_rate.addr, align 8, !dbg !2408
  %22 = load i32, i32* %up, align 4, !dbg !2408
  %conv19 = sext i32 %22 to i64, !dbg !2408
  %add20 = add i64 %21, %conv19, !dbg !2408
  %sub21 = sub i64 %add20, 1, !dbg !2408
  store i64 %sub21, i64* %_tmp18, align 8, !dbg !2408
  call void @llvm.dbg.declare(metadata i32* %__base22, metadata !2409, metadata !DIExpression()), !dbg !2411
  %23 = load i32, i32* %up, align 4, !dbg !2411
  store i32 %23, i32* %__base22, align 4, !dbg !2411
  call void @llvm.dbg.declare(metadata i32* %__rem23, metadata !2412, metadata !DIExpression()), !dbg !2411
  %24 = load i64, i64* %_tmp18, align 8, !dbg !2411
  %25 = load i32, i32* %__base22, align 4, !dbg !2411
  %conv24 = zext i32 %25 to i64, !dbg !2411
  %rem25 = urem i64 %24, %conv24, !dbg !2411
  %conv26 = trunc i64 %rem25 to i32, !dbg !2411
  store i32 %conv26, i32* %__rem23, align 4, !dbg !2411
  %26 = load i64, i64* %_tmp18, align 8, !dbg !2411
  %27 = load i32, i32* %__base22, align 4, !dbg !2411
  %conv27 = zext i32 %27 to i64, !dbg !2411
  %div28 = udiv i64 %26, %conv27, !dbg !2411
  store i64 %div28, i64* %_tmp18, align 8, !dbg !2411
  %28 = load i32, i32* %__rem23, align 4, !dbg !2411
  store i32 %28, i32* %tmp29, align 4, !dbg !2411
  %29 = load i32, i32* %tmp29, align 4, !dbg !2411
  %30 = load i64, i64* %_tmp18, align 8, !dbg !2408
  store i64 %30, i64* %tmp30, align 8, !dbg !2408
  %31 = load i64, i64* %tmp30, align 8, !dbg !2408
  store i64 %31, i64* %up_rate, align 8, !dbg !2413
  call void @llvm.dbg.declare(metadata i64* %_tmp31, metadata !2414, metadata !DIExpression()), !dbg !2416
  %32 = load i64, i64* %parent_rate.addr, align 8, !dbg !2416
  %33 = load i32, i32* %down, align 4, !dbg !2416
  %conv32 = sext i32 %33 to i64, !dbg !2416
  %add33 = add i64 %32, %conv32, !dbg !2416
  %sub34 = sub i64 %add33, 1, !dbg !2416
  store i64 %sub34, i64* %_tmp31, align 8, !dbg !2416
  call void @llvm.dbg.declare(metadata i32* %__base35, metadata !2417, metadata !DIExpression()), !dbg !2419
  %34 = load i32, i32* %down, align 4, !dbg !2419
  store i32 %34, i32* %__base35, align 4, !dbg !2419
  call void @llvm.dbg.declare(metadata i32* %__rem36, metadata !2420, metadata !DIExpression()), !dbg !2419
  %35 = load i64, i64* %_tmp31, align 8, !dbg !2419
  %36 = load i32, i32* %__base35, align 4, !dbg !2419
  %conv37 = zext i32 %36 to i64, !dbg !2419
  %rem38 = urem i64 %35, %conv37, !dbg !2419
  %conv39 = trunc i64 %rem38 to i32, !dbg !2419
  store i32 %conv39, i32* %__rem36, align 4, !dbg !2419
  %37 = load i64, i64* %_tmp31, align 8, !dbg !2419
  %38 = load i32, i32* %__base35, align 4, !dbg !2419
  %conv40 = zext i32 %38 to i64, !dbg !2419
  %div41 = udiv i64 %37, %conv40, !dbg !2419
  store i64 %div41, i64* %_tmp31, align 8, !dbg !2419
  %39 = load i32, i32* %__rem36, align 4, !dbg !2419
  store i32 %39, i32* %tmp42, align 4, !dbg !2419
  %40 = load i32, i32* %tmp42, align 4, !dbg !2419
  %41 = load i64, i64* %_tmp31, align 8, !dbg !2416
  store i64 %41, i64* %tmp43, align 8, !dbg !2416
  %42 = load i64, i64* %tmp43, align 8, !dbg !2416
  store i64 %42, i64* %down_rate, align 8, !dbg !2421
  %43 = load i64, i64* %rate.addr, align 8, !dbg !2422
  %44 = load i64, i64* %up_rate, align 8, !dbg !2423
  %sub44 = sub i64 %43, %44, !dbg !2424
  %45 = load i64, i64* %down_rate, align 8, !dbg !2425
  %46 = load i64, i64* %rate.addr, align 8, !dbg !2426
  %sub45 = sub i64 %45, %46, !dbg !2427
  %cmp = icmp ule i64 %sub44, %sub45, !dbg !2428
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2429

cond.true:                                        ; preds = %if.end17
  %47 = load i32, i32* %up, align 4, !dbg !2430
  br label %cond.end, !dbg !2429

cond.false:                                       ; preds = %if.end17
  %48 = load i32, i32* %down, align 4, !dbg !2431
  br label %cond.end, !dbg !2429

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %47, %cond.true ], [ %48, %cond.false ], !dbg !2429
  ret i32 %cond, !dbg !2432
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_div_round_up(%struct.clk_div_table* %table, i64 %parent_rate, i64 %rate, i64 %flags) #0 !dbg !2433 {
entry:
  %table.addr = alloca %struct.clk_div_table*, align 8
  %parent_rate.addr = alloca i64, align 8
  %rate.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %div = alloca i32, align 4
  %_tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp5 = alloca i64, align 8
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !2434, metadata !DIExpression()), !dbg !2435
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !2436, metadata !DIExpression()), !dbg !2437
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !2438, metadata !DIExpression()), !dbg !2439
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2440, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.declare(metadata i32* %div, metadata !2442, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.declare(metadata i64* %_tmp, metadata !2444, metadata !DIExpression()), !dbg !2446
  %0 = load i64, i64* %parent_rate.addr, align 8, !dbg !2446
  %1 = load i64, i64* %rate.addr, align 8, !dbg !2446
  %add = add i64 %0, %1, !dbg !2446
  %sub = sub i64 %add, 1, !dbg !2446
  store i64 %sub, i64* %_tmp, align 8, !dbg !2446
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !2447, metadata !DIExpression()), !dbg !2449
  %2 = load i64, i64* %rate.addr, align 8, !dbg !2449
  %conv = trunc i64 %2 to i32, !dbg !2449
  store i32 %conv, i32* %__base, align 4, !dbg !2449
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !2450, metadata !DIExpression()), !dbg !2449
  %3 = load i64, i64* %_tmp, align 8, !dbg !2449
  %4 = load i32, i32* %__base, align 4, !dbg !2449
  %conv1 = zext i32 %4 to i64, !dbg !2449
  %rem = urem i64 %3, %conv1, !dbg !2449
  %conv2 = trunc i64 %rem to i32, !dbg !2449
  store i32 %conv2, i32* %__rem, align 4, !dbg !2449
  %5 = load i64, i64* %_tmp, align 8, !dbg !2449
  %6 = load i32, i32* %__base, align 4, !dbg !2449
  %conv3 = zext i32 %6 to i64, !dbg !2449
  %div4 = udiv i64 %5, %conv3, !dbg !2449
  store i64 %div4, i64* %_tmp, align 8, !dbg !2449
  %7 = load i32, i32* %__rem, align 4, !dbg !2449
  store i32 %7, i32* %tmp, align 4, !dbg !2449
  %8 = load i32, i32* %tmp, align 4, !dbg !2449
  %9 = load i64, i64* %_tmp, align 8, !dbg !2446
  store i64 %9, i64* %tmp5, align 8, !dbg !2446
  %10 = load i64, i64* %tmp5, align 8, !dbg !2446
  %conv6 = trunc i64 %10 to i32, !dbg !2451
  store i32 %conv6, i32* %div, align 4, !dbg !2443
  %11 = load i64, i64* %flags.addr, align 8, !dbg !2452
  %and = and i64 %11, 2, !dbg !2454
  %tobool = icmp ne i64 %and, 0, !dbg !2454
  br i1 %tobool, label %if.then, label %if.end, !dbg !2455

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %div, align 4, !dbg !2456
  %conv7 = sext i32 %12 to i64, !dbg !2456
  %call = call i64 @__roundup_pow_of_two(i64 %conv7) #11, !dbg !2457
  %conv8 = trunc i64 %call to i32, !dbg !2457
  store i32 %conv8, i32* %div, align 4, !dbg !2458
  br label %if.end, !dbg !2459

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2460
  %tobool9 = icmp ne %struct.clk_div_table* %13, null, !dbg !2460
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !2462

if.then10:                                        ; preds = %if.end
  %14 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2463
  %15 = load i32, i32* %div, align 4, !dbg !2464
  %call11 = call i32 @_round_up_table(%struct.clk_div_table* %14, i32 %15) #10, !dbg !2465
  store i32 %call11, i32* %div, align 4, !dbg !2466
  br label %if.end12, !dbg !2467

if.end12:                                         ; preds = %if.then10, %if.end
  %16 = load i32, i32* %div, align 4, !dbg !2468
  ret i32 %16, !dbg !2469
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i64 @__roundup_pow_of_two(i64 %n) #5 !dbg !2470 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2472, metadata !DIExpression()), !dbg !2473
  %0 = load i64, i64* %n.addr, align 8, !dbg !2474
  %sub = sub i64 %0, 1, !dbg !2475
  %call = call i32 @fls_long(i64 %sub) #10, !dbg !2476
  %sh_prom = zext i32 %call to i64, !dbg !2477
  %shl = shl i64 1, %sh_prom, !dbg !2477
  ret i64 %shl, !dbg !2478
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i64 @__rounddown_pow_of_two(i64 %n) #5 !dbg !2479 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2480, metadata !DIExpression()), !dbg !2481
  %0 = load i64, i64* %n.addr, align 8, !dbg !2482
  %call = call i32 @fls_long(i64 %0) #10, !dbg !2483
  %sub = sub i32 %call, 1, !dbg !2484
  %sh_prom = zext i32 %sub to i64, !dbg !2485
  %shl = shl i64 1, %sh_prom, !dbg !2485
  ret i64 %shl, !dbg !2486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_round_up_table(%struct.clk_div_table* %table, i32 %div) #0 !dbg !2487 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.clk_div_table*, align 8
  %div.addr = alloca i32, align 4
  %clkt = alloca %struct.clk_div_table*, align 8
  %up = alloca i32, align 4
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !2490, metadata !DIExpression()), !dbg !2491
  store i32 %div, i32* %div.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %div.addr, metadata !2492, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %clkt, metadata !2494, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.declare(metadata i32* %up, metadata !2496, metadata !DIExpression()), !dbg !2497
  store i32 2147483647, i32* %up, align 4, !dbg !2497
  %0 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2498
  store %struct.clk_div_table* %0, %struct.clk_div_table** %clkt, align 8, !dbg !2500
  br label %for.cond, !dbg !2501

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2502
  %div1 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %1, i32 0, i32 1, !dbg !2504
  %2 = load i32, i32* %div1, align 4, !dbg !2504
  %tobool = icmp ne i32 %2, 0, !dbg !2505
  br i1 %tobool, label %for.body, label %for.end, !dbg !2505

for.body:                                         ; preds = %for.cond
  %3 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2506
  %div2 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %3, i32 0, i32 1, !dbg !2509
  %4 = load i32, i32* %div2, align 4, !dbg !2509
  %5 = load i32, i32* %div.addr, align 4, !dbg !2510
  %cmp = icmp eq i32 %4, %5, !dbg !2511
  br i1 %cmp, label %if.then, label %if.else, !dbg !2512

if.then:                                          ; preds = %for.body
  %6 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2513
  %div3 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %6, i32 0, i32 1, !dbg !2514
  %7 = load i32, i32* %div3, align 4, !dbg !2514
  store i32 %7, i32* %retval, align 4, !dbg !2515
  br label %return, !dbg !2515

if.else:                                          ; preds = %for.body
  %8 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2516
  %div4 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %8, i32 0, i32 1, !dbg !2518
  %9 = load i32, i32* %div4, align 4, !dbg !2518
  %10 = load i32, i32* %div.addr, align 4, !dbg !2519
  %cmp5 = icmp ult i32 %9, %10, !dbg !2520
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !2521

if.then6:                                         ; preds = %if.else
  br label %for.inc, !dbg !2522

if.end:                                           ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %11 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2523
  %div8 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %11, i32 0, i32 1, !dbg !2525
  %12 = load i32, i32* %div8, align 4, !dbg !2525
  %13 = load i32, i32* %div.addr, align 4, !dbg !2526
  %sub = sub i32 %12, %13, !dbg !2527
  %14 = load i32, i32* %up, align 4, !dbg !2528
  %15 = load i32, i32* %div.addr, align 4, !dbg !2529
  %sub9 = sub i32 %14, %15, !dbg !2530
  %cmp10 = icmp ult i32 %sub, %sub9, !dbg !2531
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !2532

if.then11:                                        ; preds = %if.end7
  %16 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2533
  %div12 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %16, i32 0, i32 1, !dbg !2534
  %17 = load i32, i32* %div12, align 4, !dbg !2534
  store i32 %17, i32* %up, align 4, !dbg !2535
  br label %if.end13, !dbg !2536

if.end13:                                         ; preds = %if.then11, %if.end7
  br label %for.inc, !dbg !2537

for.inc:                                          ; preds = %if.end13, %if.then6
  %18 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2538
  %incdec.ptr = getelementptr %struct.clk_div_table, %struct.clk_div_table* %18, i32 1, !dbg !2538
  store %struct.clk_div_table* %incdec.ptr, %struct.clk_div_table** %clkt, align 8, !dbg !2538
  br label %for.cond, !dbg !2539, !llvm.loop !2540

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %up, align 4, !dbg !2542
  store i32 %19, i32* %retval, align 4, !dbg !2543
  br label %return, !dbg !2543

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !2544
  ret i32 %20, !dbg !2544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_round_down_table(%struct.clk_div_table* %table, i32 %div) #0 !dbg !2545 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.clk_div_table*, align 8
  %div.addr = alloca i32, align 4
  %clkt = alloca %struct.clk_div_table*, align 8
  %down = alloca i32, align 4
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !2546, metadata !DIExpression()), !dbg !2547
  store i32 %div, i32* %div.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %div.addr, metadata !2548, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %clkt, metadata !2550, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.declare(metadata i32* %down, metadata !2552, metadata !DIExpression()), !dbg !2553
  %0 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2554
  %call = call i32 @_get_table_mindiv(%struct.clk_div_table* %0) #10, !dbg !2555
  store i32 %call, i32* %down, align 4, !dbg !2553
  %1 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2556
  store %struct.clk_div_table* %1, %struct.clk_div_table** %clkt, align 8, !dbg !2558
  br label %for.cond, !dbg !2559

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2560
  %div1 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %2, i32 0, i32 1, !dbg !2562
  %3 = load i32, i32* %div1, align 4, !dbg !2562
  %tobool = icmp ne i32 %3, 0, !dbg !2563
  br i1 %tobool, label %for.body, label %for.end, !dbg !2563

for.body:                                         ; preds = %for.cond
  %4 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2564
  %div2 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %4, i32 0, i32 1, !dbg !2567
  %5 = load i32, i32* %div2, align 4, !dbg !2567
  %6 = load i32, i32* %div.addr, align 4, !dbg !2568
  %cmp = icmp eq i32 %5, %6, !dbg !2569
  br i1 %cmp, label %if.then, label %if.else, !dbg !2570

if.then:                                          ; preds = %for.body
  %7 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2571
  %div3 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %7, i32 0, i32 1, !dbg !2572
  %8 = load i32, i32* %div3, align 4, !dbg !2572
  store i32 %8, i32* %retval, align 4, !dbg !2573
  br label %return, !dbg !2573

if.else:                                          ; preds = %for.body
  %9 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2574
  %div4 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %9, i32 0, i32 1, !dbg !2576
  %10 = load i32, i32* %div4, align 4, !dbg !2576
  %11 = load i32, i32* %div.addr, align 4, !dbg !2577
  %cmp5 = icmp ugt i32 %10, %11, !dbg !2578
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !2579

if.then6:                                         ; preds = %if.else
  br label %for.inc, !dbg !2580

if.end:                                           ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %12 = load i32, i32* %div.addr, align 4, !dbg !2581
  %13 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2583
  %div8 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %13, i32 0, i32 1, !dbg !2584
  %14 = load i32, i32* %div8, align 4, !dbg !2584
  %sub = sub i32 %12, %14, !dbg !2585
  %15 = load i32, i32* %div.addr, align 4, !dbg !2586
  %16 = load i32, i32* %down, align 4, !dbg !2587
  %sub9 = sub i32 %15, %16, !dbg !2588
  %cmp10 = icmp ult i32 %sub, %sub9, !dbg !2589
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !2590

if.then11:                                        ; preds = %if.end7
  %17 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2591
  %div12 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %17, i32 0, i32 1, !dbg !2592
  %18 = load i32, i32* %div12, align 4, !dbg !2592
  store i32 %18, i32* %down, align 4, !dbg !2593
  br label %if.end13, !dbg !2594

if.end13:                                         ; preds = %if.then11, %if.end7
  br label %for.inc, !dbg !2595

for.inc:                                          ; preds = %if.end13, %if.then6
  %19 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2596
  %incdec.ptr = getelementptr %struct.clk_div_table, %struct.clk_div_table* %19, i32 1, !dbg !2596
  store %struct.clk_div_table* %incdec.ptr, %struct.clk_div_table** %clkt, align 8, !dbg !2596
  br label %for.cond, !dbg !2597, !llvm.loop !2598

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %down, align 4, !dbg !2600
  store i32 %20, i32* %retval, align 4, !dbg !2601
  br label %return, !dbg !2601

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !2602
  ret i32 %21, !dbg !2602
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fls_long(i64 %l) #0 !dbg !2603 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2607, metadata !DIExpression()), !dbg !2611
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2613, metadata !DIExpression()), !dbg !2614
  %l.addr = alloca i64, align 8
  store i64 %l, i64* %l.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %l.addr, metadata !2615, metadata !DIExpression()), !dbg !2616
  %0 = load i64, i64* %l.addr, align 8, !dbg !2617
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2614
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2618
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2619
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !2618, !srcloc !2620
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2618
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2621
  %add.i = add i32 %4, 1, !dbg !2622
  ret i32 %add.i, !dbg !2623
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_get_table_mindiv(%struct.clk_div_table* %table) #0 !dbg !2624 {
entry:
  %table.addr = alloca %struct.clk_div_table*, align 8
  %mindiv = alloca i32, align 4
  %clkt = alloca %struct.clk_div_table*, align 8
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !2627, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.declare(metadata i32* %mindiv, metadata !2629, metadata !DIExpression()), !dbg !2630
  store i32 -1, i32* %mindiv, align 4, !dbg !2630
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %clkt, metadata !2631, metadata !DIExpression()), !dbg !2632
  %0 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2633
  store %struct.clk_div_table* %0, %struct.clk_div_table** %clkt, align 8, !dbg !2635
  br label %for.cond, !dbg !2636

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2637
  %div = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %1, i32 0, i32 1, !dbg !2639
  %2 = load i32, i32* %div, align 4, !dbg !2639
  %tobool = icmp ne i32 %2, 0, !dbg !2640
  br i1 %tobool, label %for.body, label %for.end, !dbg !2640

for.body:                                         ; preds = %for.cond
  %3 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2641
  %div1 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %3, i32 0, i32 1, !dbg !2643
  %4 = load i32, i32* %div1, align 4, !dbg !2643
  %5 = load i32, i32* %mindiv, align 4, !dbg !2644
  %cmp = icmp ult i32 %4, %5, !dbg !2645
  br i1 %cmp, label %if.then, label %if.end, !dbg !2646

if.then:                                          ; preds = %for.body
  %6 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2647
  %div2 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %6, i32 0, i32 1, !dbg !2648
  %7 = load i32, i32* %div2, align 4, !dbg !2648
  store i32 %7, i32* %mindiv, align 4, !dbg !2649
  br label %if.end, !dbg !2650

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2644

for.inc:                                          ; preds = %if.end
  %8 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2651
  %incdec.ptr = getelementptr %struct.clk_div_table, %struct.clk_div_table* %8, i32 1, !dbg !2651
  store %struct.clk_div_table* %incdec.ptr, %struct.clk_div_table** %clkt, align 8, !dbg !2651
  br label %for.cond, !dbg !2652, !llvm.loop !2653

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %mindiv, align 4, !dbg !2655
  ret i32 %9, !dbg !2656
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i1 @is_power_of_2(i64 %n) #5 !dbg !2657 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2660, metadata !DIExpression()), !dbg !2661
  %0 = load i64, i64* %n.addr, align 8, !dbg !2662
  %cmp = icmp ne i64 %0, 0, !dbg !2663
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2664

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8, !dbg !2665
  %2 = load i64, i64* %n.addr, align 8, !dbg !2666
  %sub = sub i64 %2, 1, !dbg !2667
  %and = and i64 %1, %sub, !dbg !2668
  %cmp1 = icmp eq i64 %and, 0, !dbg !2669
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !2670
  ret i1 %3, !dbg !2671
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @_is_valid_table_div(%struct.clk_div_table* %table, i32 %div) #0 !dbg !2672 {
entry:
  %retval = alloca i1, align 1
  %table.addr = alloca %struct.clk_div_table*, align 8
  %div.addr = alloca i32, align 4
  %clkt = alloca %struct.clk_div_table*, align 8
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !2675, metadata !DIExpression()), !dbg !2676
  store i32 %div, i32* %div.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %div.addr, metadata !2677, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %clkt, metadata !2679, metadata !DIExpression()), !dbg !2680
  %0 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2681
  store %struct.clk_div_table* %0, %struct.clk_div_table** %clkt, align 8, !dbg !2683
  br label %for.cond, !dbg !2684

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2685
  %div1 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %1, i32 0, i32 1, !dbg !2687
  %2 = load i32, i32* %div1, align 4, !dbg !2687
  %tobool = icmp ne i32 %2, 0, !dbg !2688
  br i1 %tobool, label %for.body, label %for.end, !dbg !2688

for.body:                                         ; preds = %for.cond
  %3 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2689
  %div2 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %3, i32 0, i32 1, !dbg !2691
  %4 = load i32, i32* %div2, align 4, !dbg !2691
  %5 = load i32, i32* %div.addr, align 4, !dbg !2692
  %cmp = icmp eq i32 %4, %5, !dbg !2693
  br i1 %cmp, label %if.then, label %if.end, !dbg !2694

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval, align 1, !dbg !2695
  br label %return, !dbg !2695

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2692

for.inc:                                          ; preds = %if.end
  %6 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2696
  %incdec.ptr = getelementptr %struct.clk_div_table, %struct.clk_div_table* %6, i32 1, !dbg !2696
  store %struct.clk_div_table* %incdec.ptr, %struct.clk_div_table** %clkt, align 8, !dbg !2696
  br label %for.cond, !dbg !2697, !llvm.loop !2698

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !2700
  br label %return, !dbg !2700

return:                                           ; preds = %for.end, %if.then
  %7 = load i1, i1* %retval, align 1, !dbg !2701
  ret i1 %7, !dbg !2701
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_get_table_val(%struct.clk_div_table* %table, i32 %div) #0 !dbg !2702 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.clk_div_table*, align 8
  %div.addr = alloca i32, align 4
  %clkt = alloca %struct.clk_div_table*, align 8
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !2703, metadata !DIExpression()), !dbg !2704
  store i32 %div, i32* %div.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %div.addr, metadata !2705, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %clkt, metadata !2707, metadata !DIExpression()), !dbg !2708
  %0 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2709
  store %struct.clk_div_table* %0, %struct.clk_div_table** %clkt, align 8, !dbg !2711
  br label %for.cond, !dbg !2712

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2713
  %div1 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %1, i32 0, i32 1, !dbg !2715
  %2 = load i32, i32* %div1, align 4, !dbg !2715
  %tobool = icmp ne i32 %2, 0, !dbg !2716
  br i1 %tobool, label %for.body, label %for.end, !dbg !2716

for.body:                                         ; preds = %for.cond
  %3 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2717
  %div2 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %3, i32 0, i32 1, !dbg !2719
  %4 = load i32, i32* %div2, align 4, !dbg !2719
  %5 = load i32, i32* %div.addr, align 4, !dbg !2720
  %cmp = icmp eq i32 %4, %5, !dbg !2721
  br i1 %cmp, label %if.then, label %if.end, !dbg !2722

if.then:                                          ; preds = %for.body
  %6 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2723
  %val = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %6, i32 0, i32 0, !dbg !2724
  %7 = load i32, i32* %val, align 4, !dbg !2724
  store i32 %7, i32* %retval, align 4, !dbg !2725
  br label %return, !dbg !2725

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2720

for.inc:                                          ; preds = %if.end
  %8 = load %struct.clk_div_table*, %struct.clk_div_table** %clkt, align 8, !dbg !2726
  %incdec.ptr = getelementptr %struct.clk_div_table, %struct.clk_div_table* %8, i32 1, !dbg !2726
  store %struct.clk_div_table* %incdec.ptr, %struct.clk_div_table** %clkt, align 8, !dbg !2726
  br label %for.cond, !dbg !2727, !llvm.loop !2728

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2730
  br label %return, !dbg !2730

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2731
  ret i32 %9, !dbg !2731
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_div_readl(%struct.clk_divider* %divider) #0 !dbg !2732 {
entry:
  %retval = alloca i32, align 4
  %divider.addr = alloca %struct.clk_divider*, align 8
  store %struct.clk_divider* %divider, %struct.clk_divider** %divider.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_divider** %divider.addr, metadata !2735, metadata !DIExpression()), !dbg !2736
  %0 = load %struct.clk_divider*, %struct.clk_divider** %divider.addr, align 8, !dbg !2737
  %flags = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %0, i32 0, i32 4, !dbg !2739
  %1 = load i8, i8* %flags, align 2, !dbg !2739
  %conv = zext i8 %1 to i64, !dbg !2737
  %and = and i64 %conv, 128, !dbg !2740
  %tobool = icmp ne i64 %and, 0, !dbg !2740
  br i1 %tobool, label %if.then, label %if.end, !dbg !2741

if.then:                                          ; preds = %entry
  %2 = load %struct.clk_divider*, %struct.clk_divider** %divider.addr, align 8, !dbg !2742
  %reg = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %2, i32 0, i32 1, !dbg !2743
  %3 = load i8*, i8** %reg, align 8, !dbg !2743
  %call = call i32 @ioread32be(i8* %3) #10, !dbg !2744
  store i32 %call, i32* %retval, align 4, !dbg !2745
  br label %return, !dbg !2745

if.end:                                           ; preds = %entry
  %4 = load %struct.clk_divider*, %struct.clk_divider** %divider.addr, align 8, !dbg !2746
  %reg1 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %4, i32 0, i32 1, !dbg !2747
  %5 = load i8*, i8** %reg1, align 8, !dbg !2747
  %call2 = call i32 @readl(i8* %5) #10, !dbg !2748
  store i32 %call2, i32* %retval, align 4, !dbg !2749
  br label %return, !dbg !2749

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !2750
  ret i32 %6, !dbg !2750
}

; Function Attrs: noredzone
declare dso_local i32 @ioread32be(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !2751 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2758, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2760, metadata !DIExpression()), !dbg !2759
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !2759
  %1 = bitcast i8* %0 to i32*, !dbg !2759
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #7, !dbg !2759, !srcloc !2761
  store i32 %2, i32* %ret, align 4, !dbg !2759
  %3 = load i32, i32* %ret, align 4, !dbg !2759
  ret i32 %3, !dbg !2759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @divider_ro_round_rate(%struct.clk_hw* %hw, i64 %rate, i64* %prate, %struct.clk_div_table* %table, i8 zeroext %width, i64 %flags, i32 %val) #0 !dbg !2762 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %prate.addr = alloca i64*, align 8
  %table.addr = alloca %struct.clk_div_table*, align 8
  %width.addr = alloca i8, align 1
  %flags.addr = alloca i64, align 8
  %val.addr = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2765, metadata !DIExpression()), !dbg !2766
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !2767, metadata !DIExpression()), !dbg !2768
  store i64* %prate, i64** %prate.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %prate.addr, metadata !2769, metadata !DIExpression()), !dbg !2770
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !2771, metadata !DIExpression()), !dbg !2772
  store i8 %width, i8* %width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %width.addr, metadata !2773, metadata !DIExpression()), !dbg !2774
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2775, metadata !DIExpression()), !dbg !2776
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2777, metadata !DIExpression()), !dbg !2778
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2779
  %1 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2780
  %call = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %1) #10, !dbg !2781
  %2 = load i64, i64* %rate.addr, align 8, !dbg !2782
  %3 = load i64*, i64** %prate.addr, align 8, !dbg !2783
  %4 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2784
  %5 = load i8, i8* %width.addr, align 1, !dbg !2785
  %6 = load i64, i64* %flags.addr, align 8, !dbg !2786
  %7 = load i32, i32* %val.addr, align 4, !dbg !2787
  %call1 = call i64 @divider_ro_round_rate_parent(%struct.clk_hw* %0, %struct.clk_hw* %call, i64 %2, i64* %3, %struct.clk_div_table* %4, i8 zeroext %5, i64 %6, i32 %7) #10, !dbg !2788
  ret i64 %call1, !dbg !2789
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @divider_round_rate(%struct.clk_hw* %hw, i64 %rate, i64* %prate, %struct.clk_div_table* %table, i8 zeroext %width, i64 %flags) #0 !dbg !2790 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %prate.addr = alloca i64*, align 8
  %table.addr = alloca %struct.clk_div_table*, align 8
  %width.addr = alloca i8, align 1
  %flags.addr = alloca i64, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2793, metadata !DIExpression()), !dbg !2794
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !2795, metadata !DIExpression()), !dbg !2796
  store i64* %prate, i64** %prate.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %prate.addr, metadata !2797, metadata !DIExpression()), !dbg !2798
  store %struct.clk_div_table* %table, %struct.clk_div_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_div_table** %table.addr, metadata !2799, metadata !DIExpression()), !dbg !2800
  store i8 %width, i8* %width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %width.addr, metadata !2801, metadata !DIExpression()), !dbg !2802
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2803, metadata !DIExpression()), !dbg !2804
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2805
  %1 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2806
  %call = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %1) #10, !dbg !2807
  %2 = load i64, i64* %rate.addr, align 8, !dbg !2808
  %3 = load i64*, i64** %prate.addr, align 8, !dbg !2809
  %4 = load %struct.clk_div_table*, %struct.clk_div_table** %table.addr, align 8, !dbg !2810
  %5 = load i8, i8* %width.addr, align 1, !dbg !2811
  %6 = load i64, i64* %flags.addr, align 8, !dbg !2812
  %call1 = call i64 @divider_round_rate_parent(%struct.clk_hw* %0, %struct.clk_hw* %call, i64 %2, i64* %3, %struct.clk_div_table* %4, i8 zeroext %5, i64 %6) #10, !dbg !2813
  ret i64 %call1, !dbg !2814
}

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !2815 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !2819, metadata !DIExpression()), !dbg !2820
  %call = call i64 @arch_local_save_flags() #10, !dbg !2821
  store i64 %call, i64* %f, align 8, !dbg !2822
  call void @arch_local_irq_disable() #10, !dbg !2823
  %0 = load i64, i64* %f, align 8, !dbg !2824
  ret i64 %0, !dbg !2825
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_div_writel(%struct.clk_divider* %divider, i32 %val) #0 !dbg !2826 {
entry:
  %divider.addr = alloca %struct.clk_divider*, align 8
  %val.addr = alloca i32, align 4
  store %struct.clk_divider* %divider, %struct.clk_divider** %divider.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_divider** %divider.addr, metadata !2829, metadata !DIExpression()), !dbg !2830
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2831, metadata !DIExpression()), !dbg !2832
  %0 = load %struct.clk_divider*, %struct.clk_divider** %divider.addr, align 8, !dbg !2833
  %flags = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %0, i32 0, i32 4, !dbg !2835
  %1 = load i8, i8* %flags, align 2, !dbg !2835
  %conv = zext i8 %1 to i64, !dbg !2833
  %and = and i64 %conv, 128, !dbg !2836
  %tobool = icmp ne i64 %and, 0, !dbg !2836
  br i1 %tobool, label %if.then, label %if.else, !dbg !2837

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %val.addr, align 4, !dbg !2838
  %3 = load %struct.clk_divider*, %struct.clk_divider** %divider.addr, align 8, !dbg !2839
  %reg = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %3, i32 0, i32 1, !dbg !2840
  %4 = load i8*, i8** %reg, align 8, !dbg !2840
  call void @iowrite32be(i32 %2, i8* %4) #10, !dbg !2841
  br label %if.end, !dbg !2841

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %val.addr, align 4, !dbg !2842
  %6 = load %struct.clk_divider*, %struct.clk_divider** %divider.addr, align 8, !dbg !2843
  %reg1 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %6, i32 0, i32 1, !dbg !2844
  %7 = load i8*, i8** %reg1, align 8, !dbg !2844
  call void @writel(i32 %5, i8* %7) #10, !dbg !2845
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2846
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !2847 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !2848, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2851, metadata !DIExpression()), !dbg !2850
  %0 = load i64, i64* %__edi, align 8, !dbg !2850
  store i64 %0, i64* %__edi, align 8, !dbg !2850
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2852, metadata !DIExpression()), !dbg !2850
  %1 = load i64, i64* %__esi, align 8, !dbg !2850
  store i64 %1, i64* %__esi, align 8, !dbg !2850
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2853, metadata !DIExpression()), !dbg !2850
  %2 = load i64, i64* %__edx, align 8, !dbg !2850
  store i64 %2, i64* %__edx, align 8, !dbg !2850
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2854, metadata !DIExpression()), !dbg !2850
  %3 = load i64, i64* %__ecx, align 8, !dbg !2850
  store i64 %3, i64* %__ecx, align 8, !dbg !2850
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2855, metadata !DIExpression()), !dbg !2850
  %4 = load i64, i64* %__eax, align 8, !dbg !2850
  store i64 %4, i64* %__eax, align 8, !dbg !2850
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !2850
  %6 = call i64 @llvm.read_register.i64(metadata !199), !dbg !2856
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !2856, !srcloc !2859
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2856
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2856
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2856
  call void @llvm.write_register.i64(metadata !199, i64 %asmresult1), !dbg !2856
  %8 = load i64, i64* %__eax, align 8, !dbg !2856
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !2860, metadata !DIExpression()), !dbg !2862
  store i64 -1, i64* %__mask, align 8, !dbg !2862
  %9 = load i64, i64* %__mask, align 8, !dbg !2862
  store i64 %9, i64* %tmp, align 8, !dbg !2862
  %10 = load i64, i64* %tmp, align 8, !dbg !2862
  %and = and i64 %8, %10, !dbg !2856
  store i64 %and, i64* %__ret, align 8, !dbg !2856
  %11 = load i64, i64* %__ret, align 8, !dbg !2850
  store i64 %11, i64* %tmp2, align 8, !dbg !2863
  %12 = load i64, i64* %tmp2, align 8, !dbg !2850
  ret i64 %12, !dbg !2864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !2865 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2868, metadata !DIExpression()), !dbg !2870
  %0 = load i64, i64* %__edi, align 8, !dbg !2870
  store i64 %0, i64* %__edi, align 8, !dbg !2870
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2871, metadata !DIExpression()), !dbg !2870
  %1 = load i64, i64* %__esi, align 8, !dbg !2870
  store i64 %1, i64* %__esi, align 8, !dbg !2870
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2872, metadata !DIExpression()), !dbg !2870
  %2 = load i64, i64* %__edx, align 8, !dbg !2870
  store i64 %2, i64* %__edx, align 8, !dbg !2870
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2873, metadata !DIExpression()), !dbg !2870
  %3 = load i64, i64* %__ecx, align 8, !dbg !2870
  store i64 %3, i64* %__ecx, align 8, !dbg !2870
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2874, metadata !DIExpression()), !dbg !2870
  %4 = load i64, i64* %__eax, align 8, !dbg !2870
  store i64 %4, i64* %__eax, align 8, !dbg !2870
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !2870
  %6 = call i64 @llvm.read_register.i64(metadata !199), !dbg !2870
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !2870, !srcloc !2875
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2870
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2870
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2870
  call void @llvm.write_register.i64(metadata !199, i64 %asmresult1), !dbg !2870
  ret void, !dbg !2876
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noredzone
declare dso_local void @iowrite32be(i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !2877 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2881, metadata !DIExpression()), !dbg !2882
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2883, metadata !DIExpression()), !dbg !2882
  %0 = load i32, i32* %val.addr, align 4, !dbg !2882
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !2882
  %2 = bitcast i8* %1 to i32*, !dbg !2882
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !2882, !srcloc !2884
  ret void, !dbg !2882
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !2885 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2890, metadata !DIExpression()), !dbg !2892
  %0 = load i64, i64* %__edi, align 8, !dbg !2892
  store i64 %0, i64* %__edi, align 8, !dbg !2892
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2893, metadata !DIExpression()), !dbg !2892
  %1 = load i64, i64* %__esi, align 8, !dbg !2892
  store i64 %1, i64* %__esi, align 8, !dbg !2892
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2894, metadata !DIExpression()), !dbg !2892
  %2 = load i64, i64* %__edx, align 8, !dbg !2892
  store i64 %2, i64* %__edx, align 8, !dbg !2892
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2895, metadata !DIExpression()), !dbg !2892
  %3 = load i64, i64* %__ecx, align 8, !dbg !2892
  store i64 %3, i64* %__ecx, align 8, !dbg !2892
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2896, metadata !DIExpression()), !dbg !2892
  %4 = load i64, i64* %__eax, align 8, !dbg !2892
  store i64 %4, i64* %__eax, align 8, !dbg !2892
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !2892
  %6 = call i64 @llvm.read_register.i64(metadata !199), !dbg !2892
  %7 = load i64, i64* %f.addr, align 8, !dbg !2892
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !2892, !srcloc !2897
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !2892
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !2892
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2892
  call void @llvm.write_register.i64(metadata !199, i64 %asmresult1), !dbg !2892
  ret void, !dbg !2898
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #9

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !2899 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2607, metadata !DIExpression()), !dbg !2903
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2613, metadata !DIExpression()), !dbg !2905
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2906, metadata !DIExpression()), !dbg !2907
  %0 = load i64, i64* %size.addr, align 8, !dbg !2908
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2910
  br i1 %1, label %if.then, label %if.end447, !dbg !2911

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2912
  %tobool = icmp ne i64 %2, 0, !dbg !2912
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2915

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2916
  br label %return, !dbg !2916

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2917
  %cmp = icmp ult i64 %3, 4096, !dbg !2919
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2920

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2921
  br label %return, !dbg !2921

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub = sub i64 %4, 1, !dbg !2922
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2922
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2922

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub4 = sub i64 %6, 1, !dbg !2922
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2922
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2922

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub6 = sub i64 %8, 1, !dbg !2922
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2922
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2922

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2922

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub9 = sub i64 %9, 1, !dbg !2922
  %and = and i64 %sub9, -9223372036854775808, !dbg !2922
  %tobool10 = icmp ne i64 %and, 0, !dbg !2922
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2922

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2922

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub13 = sub i64 %10, 1, !dbg !2922
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2922
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2922
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2922

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2922

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub18 = sub i64 %11, 1, !dbg !2922
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2922
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2922
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2922

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2922

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub23 = sub i64 %12, 1, !dbg !2922
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2922
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2922
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2922

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2922

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub28 = sub i64 %13, 1, !dbg !2922
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2922
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2922
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2922

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2922

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub33 = sub i64 %14, 1, !dbg !2922
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2922
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2922
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2922

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2922

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub38 = sub i64 %15, 1, !dbg !2922
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2922
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2922
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2922

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2922

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub43 = sub i64 %16, 1, !dbg !2922
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2922
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2922
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2922

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2922

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub48 = sub i64 %17, 1, !dbg !2922
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2922
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2922
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2922

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2922

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub53 = sub i64 %18, 1, !dbg !2922
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2922
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2922
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2922

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2922

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub58 = sub i64 %19, 1, !dbg !2922
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2922
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2922
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2922

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2922

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub63 = sub i64 %20, 1, !dbg !2922
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2922
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2922
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2922

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2922

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub68 = sub i64 %21, 1, !dbg !2922
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2922
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2922
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2922

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2922

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub73 = sub i64 %22, 1, !dbg !2922
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2922
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2922
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2922

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2922

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub78 = sub i64 %23, 1, !dbg !2922
  %and79 = and i64 %sub78, 562949953421312, !dbg !2922
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2922
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2922

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2922

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub83 = sub i64 %24, 1, !dbg !2922
  %and84 = and i64 %sub83, 281474976710656, !dbg !2922
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2922
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2922

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2922

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub88 = sub i64 %25, 1, !dbg !2922
  %and89 = and i64 %sub88, 140737488355328, !dbg !2922
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2922
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2922

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2922

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub93 = sub i64 %26, 1, !dbg !2922
  %and94 = and i64 %sub93, 70368744177664, !dbg !2922
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2922
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2922

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2922

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub98 = sub i64 %27, 1, !dbg !2922
  %and99 = and i64 %sub98, 35184372088832, !dbg !2922
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2922
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2922

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2922

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub103 = sub i64 %28, 1, !dbg !2922
  %and104 = and i64 %sub103, 17592186044416, !dbg !2922
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2922
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2922

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2922

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub108 = sub i64 %29, 1, !dbg !2922
  %and109 = and i64 %sub108, 8796093022208, !dbg !2922
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2922
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2922

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2922

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub113 = sub i64 %30, 1, !dbg !2922
  %and114 = and i64 %sub113, 4398046511104, !dbg !2922
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2922
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2922

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2922

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub118 = sub i64 %31, 1, !dbg !2922
  %and119 = and i64 %sub118, 2199023255552, !dbg !2922
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2922
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2922

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2922

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub123 = sub i64 %32, 1, !dbg !2922
  %and124 = and i64 %sub123, 1099511627776, !dbg !2922
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2922
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2922

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2922

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub128 = sub i64 %33, 1, !dbg !2922
  %and129 = and i64 %sub128, 549755813888, !dbg !2922
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2922
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2922

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2922

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub133 = sub i64 %34, 1, !dbg !2922
  %and134 = and i64 %sub133, 274877906944, !dbg !2922
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2922
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2922

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2922

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub138 = sub i64 %35, 1, !dbg !2922
  %and139 = and i64 %sub138, 137438953472, !dbg !2922
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2922
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2922

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2922

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub143 = sub i64 %36, 1, !dbg !2922
  %and144 = and i64 %sub143, 68719476736, !dbg !2922
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2922
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2922

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2922

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub148 = sub i64 %37, 1, !dbg !2922
  %and149 = and i64 %sub148, 34359738368, !dbg !2922
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2922
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2922

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2922

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub153 = sub i64 %38, 1, !dbg !2922
  %and154 = and i64 %sub153, 17179869184, !dbg !2922
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2922
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2922

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2922

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub158 = sub i64 %39, 1, !dbg !2922
  %and159 = and i64 %sub158, 8589934592, !dbg !2922
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2922
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2922

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2922

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub163 = sub i64 %40, 1, !dbg !2922
  %and164 = and i64 %sub163, 4294967296, !dbg !2922
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2922
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2922

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2922

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub168 = sub i64 %41, 1, !dbg !2922
  %and169 = and i64 %sub168, 2147483648, !dbg !2922
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2922
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2922

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2922

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub173 = sub i64 %42, 1, !dbg !2922
  %and174 = and i64 %sub173, 1073741824, !dbg !2922
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2922
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2922

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2922

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub178 = sub i64 %43, 1, !dbg !2922
  %and179 = and i64 %sub178, 536870912, !dbg !2922
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2922
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2922

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2922

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub183 = sub i64 %44, 1, !dbg !2922
  %and184 = and i64 %sub183, 268435456, !dbg !2922
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2922
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2922

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2922

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub188 = sub i64 %45, 1, !dbg !2922
  %and189 = and i64 %sub188, 134217728, !dbg !2922
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2922
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2922

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2922

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub193 = sub i64 %46, 1, !dbg !2922
  %and194 = and i64 %sub193, 67108864, !dbg !2922
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2922
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2922

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2922

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub198 = sub i64 %47, 1, !dbg !2922
  %and199 = and i64 %sub198, 33554432, !dbg !2922
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2922
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2922

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2922

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub203 = sub i64 %48, 1, !dbg !2922
  %and204 = and i64 %sub203, 16777216, !dbg !2922
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2922
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2922

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2922

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub208 = sub i64 %49, 1, !dbg !2922
  %and209 = and i64 %sub208, 8388608, !dbg !2922
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2922
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2922

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2922

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub213 = sub i64 %50, 1, !dbg !2922
  %and214 = and i64 %sub213, 4194304, !dbg !2922
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2922
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2922

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2922

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub218 = sub i64 %51, 1, !dbg !2922
  %and219 = and i64 %sub218, 2097152, !dbg !2922
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2922
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2922

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2922

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub223 = sub i64 %52, 1, !dbg !2922
  %and224 = and i64 %sub223, 1048576, !dbg !2922
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2922
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2922

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2922

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub228 = sub i64 %53, 1, !dbg !2922
  %and229 = and i64 %sub228, 524288, !dbg !2922
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2922
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2922

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2922

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub233 = sub i64 %54, 1, !dbg !2922
  %and234 = and i64 %sub233, 262144, !dbg !2922
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2922
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2922

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2922

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub238 = sub i64 %55, 1, !dbg !2922
  %and239 = and i64 %sub238, 131072, !dbg !2922
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2922
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2922

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2922

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub243 = sub i64 %56, 1, !dbg !2922
  %and244 = and i64 %sub243, 65536, !dbg !2922
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2922
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2922

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2922

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub248 = sub i64 %57, 1, !dbg !2922
  %and249 = and i64 %sub248, 32768, !dbg !2922
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2922
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2922

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2922

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub253 = sub i64 %58, 1, !dbg !2922
  %and254 = and i64 %sub253, 16384, !dbg !2922
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2922
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2922

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2922

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub258 = sub i64 %59, 1, !dbg !2922
  %and259 = and i64 %sub258, 8192, !dbg !2922
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2922
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2922

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2922

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub263 = sub i64 %60, 1, !dbg !2922
  %and264 = and i64 %sub263, 4096, !dbg !2922
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2922
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2922

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2922

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub268 = sub i64 %61, 1, !dbg !2922
  %and269 = and i64 %sub268, 2048, !dbg !2922
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2922
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2922

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2922

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub273 = sub i64 %62, 1, !dbg !2922
  %and274 = and i64 %sub273, 1024, !dbg !2922
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2922
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2922

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2922

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub278 = sub i64 %63, 1, !dbg !2922
  %and279 = and i64 %sub278, 512, !dbg !2922
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2922
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2922

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2922

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub283 = sub i64 %64, 1, !dbg !2922
  %and284 = and i64 %sub283, 256, !dbg !2922
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2922
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2922

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2922

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub288 = sub i64 %65, 1, !dbg !2922
  %and289 = and i64 %sub288, 128, !dbg !2922
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2922
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2922

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2922

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub293 = sub i64 %66, 1, !dbg !2922
  %and294 = and i64 %sub293, 64, !dbg !2922
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2922
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2922

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2922

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub298 = sub i64 %67, 1, !dbg !2922
  %and299 = and i64 %sub298, 32, !dbg !2922
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2922
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2922

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2922

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub303 = sub i64 %68, 1, !dbg !2922
  %and304 = and i64 %sub303, 16, !dbg !2922
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2922
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2922

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2922

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub308 = sub i64 %69, 1, !dbg !2922
  %and309 = and i64 %sub308, 8, !dbg !2922
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2922
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2922

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2922

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub313 = sub i64 %70, 1, !dbg !2922
  %and314 = and i64 %sub313, 4, !dbg !2922
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2922
  %71 = zext i1 %tobool315 to i64, !dbg !2922
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2922
  br label %cond.end, !dbg !2922

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2922
  br label %cond.end317, !dbg !2922

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2922
  br label %cond.end319, !dbg !2922

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2922
  br label %cond.end321, !dbg !2922

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2922
  br label %cond.end323, !dbg !2922

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2922
  br label %cond.end325, !dbg !2922

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2922
  br label %cond.end327, !dbg !2922

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2922
  br label %cond.end329, !dbg !2922

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2922
  br label %cond.end331, !dbg !2922

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2922
  br label %cond.end333, !dbg !2922

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2922
  br label %cond.end335, !dbg !2922

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2922
  br label %cond.end337, !dbg !2922

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2922
  br label %cond.end339, !dbg !2922

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2922
  br label %cond.end341, !dbg !2922

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2922
  br label %cond.end343, !dbg !2922

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2922
  br label %cond.end345, !dbg !2922

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2922
  br label %cond.end347, !dbg !2922

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2922
  br label %cond.end349, !dbg !2922

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2922
  br label %cond.end351, !dbg !2922

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2922
  br label %cond.end353, !dbg !2922

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2922
  br label %cond.end355, !dbg !2922

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2922
  br label %cond.end357, !dbg !2922

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2922
  br label %cond.end359, !dbg !2922

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2922
  br label %cond.end361, !dbg !2922

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2922
  br label %cond.end363, !dbg !2922

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2922
  br label %cond.end365, !dbg !2922

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2922
  br label %cond.end367, !dbg !2922

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2922
  br label %cond.end369, !dbg !2922

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2922
  br label %cond.end371, !dbg !2922

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2922
  br label %cond.end373, !dbg !2922

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2922
  br label %cond.end375, !dbg !2922

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2922
  br label %cond.end377, !dbg !2922

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2922
  br label %cond.end379, !dbg !2922

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2922
  br label %cond.end381, !dbg !2922

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2922
  br label %cond.end383, !dbg !2922

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2922
  br label %cond.end385, !dbg !2922

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2922
  br label %cond.end387, !dbg !2922

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2922
  br label %cond.end389, !dbg !2922

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2922
  br label %cond.end391, !dbg !2922

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2922
  br label %cond.end393, !dbg !2922

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2922
  br label %cond.end395, !dbg !2922

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2922
  br label %cond.end397, !dbg !2922

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2922
  br label %cond.end399, !dbg !2922

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2922
  br label %cond.end401, !dbg !2922

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2922
  br label %cond.end403, !dbg !2922

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2922
  br label %cond.end405, !dbg !2922

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2922
  br label %cond.end407, !dbg !2922

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2922
  br label %cond.end409, !dbg !2922

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2922
  br label %cond.end411, !dbg !2922

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2922
  br label %cond.end413, !dbg !2922

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2922
  br label %cond.end415, !dbg !2922

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2922
  br label %cond.end417, !dbg !2922

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2922
  br label %cond.end419, !dbg !2922

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2922
  br label %cond.end421, !dbg !2922

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2922
  br label %cond.end423, !dbg !2922

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2922
  br label %cond.end425, !dbg !2922

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2922
  br label %cond.end427, !dbg !2922

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2922
  br label %cond.end429, !dbg !2922

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2922
  br label %cond.end431, !dbg !2922

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2922
  br label %cond.end433, !dbg !2922

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2922
  br label %cond.end435, !dbg !2922

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2922
  br label %cond.end437, !dbg !2922

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2922
  br label %cond.end440, !dbg !2922

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2922

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2922
  br label %cond.end444, !dbg !2922

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub443 = sub i64 %72, 1, !dbg !2922
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !2922
  br label %cond.end444, !dbg !2922

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2922
  %sub446 = sub i32 %cond445, 12, !dbg !2923
  %add = add i32 %sub446, 1, !dbg !2924
  store i32 %add, i32* %retval, align 4, !dbg !2925
  br label %return, !dbg !2925

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2926
  %dec = add i64 %73, -1, !dbg !2926
  store i64 %dec, i64* %size.addr, align 8, !dbg !2926
  %74 = load i64, i64* %size.addr, align 8, !dbg !2927
  %shr = lshr i64 %74, 12, !dbg !2927
  store i64 %shr, i64* %size.addr, align 8, !dbg !2927
  %75 = load i64, i64* %size.addr, align 8, !dbg !2928
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2905
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2929
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2930
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !2929, !srcloc !2620
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2929
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2931
  %add.i = add i32 %79, 1, !dbg !2932
  store i32 %add.i, i32* %retval, align 4, !dbg !2933
  br label %return, !dbg !2933

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2934
  ret i32 %80, !dbg !2934
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !2935 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2607, metadata !DIExpression()), !dbg !2938
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2613, metadata !DIExpression()), !dbg !2940
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2941, metadata !DIExpression()), !dbg !2942
  %0 = load i64, i64* %n.addr, align 8, !dbg !2943
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2940
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2944
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2945
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !2944, !srcloc !2620
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2944
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2946
  %add.i = add i32 %4, 1, !dbg !2947
  %sub = sub i32 %add.i, 1, !dbg !2948
  ret i32 %sub, !dbg !2949
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2950 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2954, metadata !DIExpression()), !dbg !2955
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2956, metadata !DIExpression()), !dbg !2957
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2958, metadata !DIExpression()), !dbg !2959
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2960, metadata !DIExpression()), !dbg !2961
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2962
  ret i8* %0, !dbg !2963
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind willreturn }
attributes #10 = { noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!199}
!llvm.module.flags = !{!200, !201, !202, !203}
!llvm.ident = !{!204}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "clk_divider_ops", scope: !2, file: !3, line: 453, type: !58, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !196, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/clk/clk-divider.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !17}
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
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !18, line: 305, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!24 = !{!25, !26, !30, !7, !32, !33, !34, !65, !192, !194, !83}
!25 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !27, line: 23, baseType: !28)
!27 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !29, line: 31, baseType: !25)
!29 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !31, line: 107, baseType: !26)
!31 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !31, line: 148, baseType: !7)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_divider", file: !36, line: 596, size: 448, elements: !37)
!36 = !DIFile(filename: "./include/linux/clk-provider.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !164, !165, !166, !167, !168, !175}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !35, file: !36, line: 597, baseType: !39, size: 192)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_hw", file: !36, line: 312, size: 192, elements: !40)
!40 = !{!41, !44, !47}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !39, file: !36, line: 313, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk_core", file: !36, line: 38, flags: DIFlagFwdDecl)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !39, file: !36, line: 314, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !36, line: 36, flags: DIFlagFwdDecl)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !39, file: !36, line: 315, baseType: !48, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_init_data", file: !36, line: 285, size: 448, elements: !51)
!51 = !{!52, !56, !146, !149, !160, !162, !163}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !50, file: !36, line: 286, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !50, file: !36, line: 287, baseType: !57, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_ops", file: !36, line: 220, size: 1600, elements: !60)
!60 = !{!61, !67, !71, !72, !73, !74, !75, !76, !77, !78, !79, !84, !90, !102, !109, !113, !117, !121, !122, !123, !127, !136, !137, !138, !139}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !59, file: !36, line: 221, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !66}
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !59, file: !36, line: 222, baseType: !68, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !66}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !59, file: !36, line: 223, baseType: !62, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_unused", scope: !59, file: !36, line: 224, baseType: !68, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !59, file: !36, line: 225, baseType: !62, size: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !59, file: !36, line: 226, baseType: !68, size: 64, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "is_enabled", scope: !59, file: !36, line: 227, baseType: !62, size: 64, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "disable_unused", scope: !59, file: !36, line: 228, baseType: !68, size: 64, offset: 448)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "save_context", scope: !59, file: !36, line: 229, baseType: !62, size: 64, offset: 512)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "restore_context", scope: !59, file: !36, line: 230, baseType: !68, size: 64, offset: 576)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_rate", scope: !59, file: !36, line: 231, baseType: !80, size: 64, offset: 640)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !66, !83}
!83 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "round_rate", scope: !59, file: !36, line: 233, baseType: !85, size: 64, offset: 704)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !66, !83, !89}
!88 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "determine_rate", scope: !59, file: !36, line: 235, baseType: !91, size: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!65, !66, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_rate_request", file: !36, line: 55, size: 320, elements: !96)
!96 = !{!97, !98, !99, !100, !101}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !95, file: !36, line: 56, baseType: !83, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "min_rate", scope: !95, file: !36, line: 57, baseType: !83, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "max_rate", scope: !95, file: !36, line: 58, baseType: !83, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_rate", scope: !95, file: !36, line: 59, baseType: !83, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_hw", scope: !95, file: !36, line: 60, baseType: !66, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "set_parent", scope: !59, file: !36, line: 237, baseType: !103, size: 64, offset: 832)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!65, !66, !106}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !27, line: 17, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !29, line: 21, baseType: !108)
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !59, file: !36, line: 238, baseType: !110, size: 64, offset: 896)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!106, !66}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !59, file: !36, line: 239, baseType: !114, size: 64, offset: 960)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!65, !66, !83, !83}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate_and_parent", scope: !59, file: !36, line: 241, baseType: !118, size: 64, offset: 1024)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!65, !66, !83, !83, !106}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_accuracy", scope: !59, file: !36, line: 244, baseType: !80, size: 64, offset: 1088)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "get_phase", scope: !59, file: !36, line: 246, baseType: !62, size: 64, offset: 1152)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "set_phase", scope: !59, file: !36, line: 247, baseType: !124, size: 64, offset: 1216)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!65, !66, !65}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "get_duty_cycle", scope: !59, file: !36, line: 248, baseType: !128, size: 64, offset: 1280)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!65, !66, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_duty", file: !36, line: 69, size: 64, elements: !133)
!133 = !{!134, !135}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !132, file: !36, line: 70, baseType: !7, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !132, file: !36, line: 71, baseType: !7, size: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "set_duty_cycle", scope: !59, file: !36, line: 250, baseType: !128, size: 64, offset: 1344)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !59, file: !36, line: 252, baseType: !62, size: 64, offset: 1408)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "terminate", scope: !59, file: !36, line: 253, baseType: !68, size: 64, offset: 1472)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "debug_init", scope: !59, file: !36, line: 254, baseType: !140, size: 64, offset: 1536)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !66, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !145, line: 21, flags: DIFlagFwdDecl)
!145 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!146 = !DIDerivedType(tag: DW_TAG_member, name: "parent_names", scope: !50, file: !36, line: 289, baseType: !147, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !50, file: !36, line: 290, baseType: !150, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_parent_data", file: !36, line: 264, size: 256, elements: !153)
!153 = !{!154, !157, !158, !159}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !152, file: !36, line: 265, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "fw_name", scope: !152, file: !36, line: 266, baseType: !53, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !36, line: 267, baseType: !53, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !152, file: !36, line: 268, baseType: !65, size: 32, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "parent_hws", scope: !50, file: !36, line: 291, baseType: !161, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "num_parents", scope: !50, file: !36, line: 292, baseType: !106, size: 8, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !36, line: 293, baseType: !83, size: 64, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !35, file: !36, line: 598, baseType: !33, size: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !35, file: !36, line: 599, baseType: !106, size: 8, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !35, file: !36, line: 600, baseType: !106, size: 8, offset: 264)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !35, file: !36, line: 601, baseType: !106, size: 8, offset: 272)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !35, file: !36, line: 602, baseType: !169, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_div_table", file: !36, line: 551, size: 64, elements: !172)
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !171, file: !36, line: 552, baseType: !7, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "div", scope: !171, file: !36, line: 553, baseType: !7, size: 32, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !35, file: !36, line: 603, baseType: !176, size: 64, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !178, line: 83, baseType: !179)
!178 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !178, line: 71, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !178, line: 72, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !178, line: 72, elements: !183)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !182, file: !178, line: 73, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !178, line: 20, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !185, file: !178, line: 21, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !189, line: 25, baseType: !190)
!189 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 25, elements: !191)
!191 = !{}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !27, line: 21, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !29, line: 27, baseType: !7)
!196 = !{!0, !197}
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "clk_divider_ro_ops", scope: !2, file: !3, line: 460, type: !58, isLocal: false, isDefinition: true)
!199 = !{!"rsp"}
!200 = !{i32 7, !"Dwarf Version", i32 4}
!201 = !{i32 2, !"Debug Info Version", i32 3}
!202 = !{i32 1, !"wchar_size", i32 2}
!203 = !{i32 1, !"Code Model", i32 2}
!204 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!205 = distinct !DISubprogram(name: "divider_recalc_rate", scope: !3, file: !3, line: 129, type: !206, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !191)
!206 = !DISubroutineType(types: !207)
!207 = !{!83, !66, !83, !7, !169, !83, !83}
!208 = !DILocalVariable(name: "hw", arg: 1, scope: !205, file: !3, line: 129, type: !66)
!209 = !DILocation(line: 129, column: 50, scope: !205)
!210 = !DILocalVariable(name: "parent_rate", arg: 2, scope: !205, file: !3, line: 129, type: !83)
!211 = !DILocation(line: 129, column: 68, scope: !205)
!212 = !DILocalVariable(name: "val", arg: 3, scope: !205, file: !3, line: 130, type: !7)
!213 = !DILocation(line: 130, column: 20, scope: !205)
!214 = !DILocalVariable(name: "table", arg: 4, scope: !205, file: !3, line: 131, type: !169)
!215 = !DILocation(line: 131, column: 35, scope: !205)
!216 = !DILocalVariable(name: "flags", arg: 5, scope: !205, file: !3, line: 132, type: !83)
!217 = !DILocation(line: 132, column: 21, scope: !205)
!218 = !DILocalVariable(name: "width", arg: 6, scope: !205, file: !3, line: 132, type: !83)
!219 = !DILocation(line: 132, column: 42, scope: !205)
!220 = !DILocalVariable(name: "div", scope: !205, file: !3, line: 134, type: !7)
!221 = !DILocation(line: 134, column: 15, scope: !205)
!222 = !DILocation(line: 136, column: 17, scope: !205)
!223 = !DILocation(line: 136, column: 24, scope: !205)
!224 = !DILocation(line: 136, column: 29, scope: !205)
!225 = !DILocation(line: 136, column: 36, scope: !205)
!226 = !DILocation(line: 136, column: 8, scope: !205)
!227 = !DILocation(line: 136, column: 6, scope: !205)
!228 = !DILocation(line: 137, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !205, file: !3, line: 137, column: 6)
!230 = !DILocation(line: 137, column: 6, scope: !205)
!231 = !DILocalVariable(name: "__ret_warn_on", scope: !232, file: !3, line: 138, type: !65)
!232 = distinct !DILexicalBlock(scope: !233, file: !3, line: 138, column: 3)
!233 = distinct !DILexicalBlock(scope: !229, file: !3, line: 137, column: 12)
!234 = !DILocation(line: 138, column: 3, scope: !232)
!235 = !DILocation(line: 138, column: 3, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !3, line: 138, column: 3)
!237 = !DILocation(line: 138, column: 3, scope: !238)
!238 = distinct !DILexicalBlock(scope: !236, file: !3, line: 138, column: 3)
!239 = !DILocation(line: 138, column: 3, scope: !240)
!240 = distinct !DILexicalBlock(scope: !238, file: !3, line: 138, column: 3)
!241 = !DILocation(line: 138, column: 3, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !3, line: 138, column: 3)
!243 = !DILocation(line: 138, column: 3, scope: !244)
!244 = distinct !DILexicalBlock(scope: !242, file: !3, line: 138, column: 3)
!245 = !DILocation(line: 138, column: 3, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !3, line: 138, column: 3)
!247 = !{i32 -2143979911, i32 -2143979882, i32 -2143979836, i32 -2143979778, i32 -2143979724, i32 -2143979670, i32 -2143979615, i32 -2143979584}
!248 = !DILocation(line: 138, column: 3, scope: !249)
!249 = distinct !DILexicalBlock(scope: !242, file: !3, line: 138, column: 3)
!250 = !{i32 -2143979166, i32 -2143979159, i32 -2143979107, i32 -2143979076, i32 -2143979046}
!251 = !DILocation(line: 138, column: 3, scope: !252)
!252 = distinct !DILexicalBlock(scope: !242, file: !3, line: 138, column: 3)
!253 = !DILocation(line: 138, column: 3, scope: !254)
!254 = distinct !DILexicalBlock(scope: !238, file: !3, line: 138, column: 3)
!255 = !DILocation(line: 141, column: 10, scope: !233)
!256 = !DILocation(line: 141, column: 3, scope: !233)
!257 = !DILocalVariable(name: "_tmp", scope: !258, file: !3, line: 144, type: !25)
!258 = distinct !DILexicalBlock(scope: !205, file: !3, line: 144, column: 9)
!259 = !DILocation(line: 144, column: 9, scope: !258)
!260 = !DILocalVariable(name: "__base", scope: !261, file: !3, line: 144, type: !262)
!261 = distinct !DILexicalBlock(scope: !258, file: !3, line: 144, column: 9)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !31, line: 104, baseType: !194)
!263 = !DILocation(line: 144, column: 9, scope: !261)
!264 = !DILocalVariable(name: "__rem", scope: !261, file: !3, line: 144, type: !262)
!265 = !DILocation(line: 144, column: 2, scope: !205)
!266 = !DILocation(line: 145, column: 1, scope: !205)
!267 = distinct !DISubprogram(name: "_get_div", scope: !3, file: !3, line: 90, type: !268, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!268 = !DISubroutineType(types: !269)
!269 = !{!7, !169, !7, !83, !106}
!270 = !DILocalVariable(name: "table", arg: 1, scope: !267, file: !3, line: 90, type: !169)
!271 = !DILocation(line: 90, column: 58, scope: !267)
!272 = !DILocalVariable(name: "val", arg: 2, scope: !267, file: !3, line: 91, type: !7)
!273 = !DILocation(line: 91, column: 22, scope: !267)
!274 = !DILocalVariable(name: "flags", arg: 3, scope: !267, file: !3, line: 91, type: !83)
!275 = !DILocation(line: 91, column: 41, scope: !267)
!276 = !DILocalVariable(name: "width", arg: 4, scope: !267, file: !3, line: 91, type: !106)
!277 = !DILocation(line: 91, column: 51, scope: !267)
!278 = !DILocation(line: 93, column: 6, scope: !279)
!279 = distinct !DILexicalBlock(scope: !267, file: !3, line: 93, column: 6)
!280 = !DILocation(line: 93, column: 12, scope: !279)
!281 = !DILocation(line: 93, column: 6, scope: !267)
!282 = !DILocation(line: 94, column: 10, scope: !279)
!283 = !DILocation(line: 94, column: 3, scope: !279)
!284 = !DILocation(line: 95, column: 6, scope: !285)
!285 = distinct !DILexicalBlock(scope: !267, file: !3, line: 95, column: 6)
!286 = !DILocation(line: 95, column: 12, scope: !285)
!287 = !DILocation(line: 95, column: 6, scope: !267)
!288 = !DILocation(line: 96, column: 15, scope: !285)
!289 = !DILocation(line: 96, column: 12, scope: !285)
!290 = !DILocation(line: 96, column: 3, scope: !285)
!291 = !DILocation(line: 97, column: 6, scope: !292)
!292 = distinct !DILexicalBlock(scope: !267, file: !3, line: 97, column: 6)
!293 = !DILocation(line: 97, column: 12, scope: !292)
!294 = !DILocation(line: 97, column: 6, scope: !267)
!295 = !DILocation(line: 98, column: 10, scope: !292)
!296 = !DILocation(line: 98, column: 16, scope: !292)
!297 = !DILocation(line: 98, column: 22, scope: !292)
!298 = !DILocation(line: 98, column: 42, scope: !292)
!299 = !DILocation(line: 98, column: 3, scope: !292)
!300 = !DILocation(line: 99, column: 6, scope: !301)
!301 = distinct !DILexicalBlock(scope: !267, file: !3, line: 99, column: 6)
!302 = !DILocation(line: 99, column: 6, scope: !267)
!303 = !DILocation(line: 100, column: 25, scope: !301)
!304 = !DILocation(line: 100, column: 32, scope: !301)
!305 = !DILocation(line: 100, column: 10, scope: !301)
!306 = !DILocation(line: 100, column: 3, scope: !301)
!307 = !DILocation(line: 101, column: 9, scope: !267)
!308 = !DILocation(line: 101, column: 13, scope: !267)
!309 = !DILocation(line: 101, column: 2, scope: !267)
!310 = !DILocation(line: 102, column: 1, scope: !267)
!311 = distinct !DISubprogram(name: "divider_round_rate_parent", scope: !3, file: !3, line: 345, type: !312, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !191)
!312 = !DISubroutineType(types: !313)
!313 = !{!88, !66, !66, !83, !89, !169, !106, !83}
!314 = !DILocalVariable(name: "hw", arg: 1, scope: !311, file: !3, line: 345, type: !66)
!315 = !DILocation(line: 345, column: 47, scope: !311)
!316 = !DILocalVariable(name: "parent", arg: 2, scope: !311, file: !3, line: 345, type: !66)
!317 = !DILocation(line: 345, column: 66, scope: !311)
!318 = !DILocalVariable(name: "rate", arg: 3, scope: !311, file: !3, line: 346, type: !83)
!319 = !DILocation(line: 346, column: 25, scope: !311)
!320 = !DILocalVariable(name: "prate", arg: 4, scope: !311, file: !3, line: 346, type: !89)
!321 = !DILocation(line: 346, column: 46, scope: !311)
!322 = !DILocalVariable(name: "table", arg: 5, scope: !311, file: !3, line: 347, type: !169)
!323 = !DILocation(line: 347, column: 39, scope: !311)
!324 = !DILocalVariable(name: "width", arg: 6, scope: !311, file: !3, line: 348, type: !106)
!325 = !DILocation(line: 348, column: 14, scope: !311)
!326 = !DILocalVariable(name: "flags", arg: 7, scope: !311, file: !3, line: 348, type: !83)
!327 = !DILocation(line: 348, column: 35, scope: !311)
!328 = !DILocalVariable(name: "div", scope: !311, file: !3, line: 350, type: !65)
!329 = !DILocation(line: 350, column: 6, scope: !311)
!330 = !DILocation(line: 352, column: 28, scope: !311)
!331 = !DILocation(line: 352, column: 32, scope: !311)
!332 = !DILocation(line: 352, column: 40, scope: !311)
!333 = !DILocation(line: 352, column: 46, scope: !311)
!334 = !DILocation(line: 352, column: 53, scope: !311)
!335 = !DILocation(line: 352, column: 60, scope: !311)
!336 = !DILocation(line: 352, column: 67, scope: !311)
!337 = !DILocation(line: 352, column: 8, scope: !311)
!338 = !DILocation(line: 352, column: 6, scope: !311)
!339 = !DILocalVariable(name: "_tmp", scope: !340, file: !3, line: 354, type: !25)
!340 = distinct !DILexicalBlock(scope: !311, file: !3, line: 354, column: 9)
!341 = !DILocation(line: 354, column: 9, scope: !340)
!342 = !DILocalVariable(name: "__base", scope: !343, file: !3, line: 354, type: !262)
!343 = distinct !DILexicalBlock(scope: !340, file: !3, line: 354, column: 9)
!344 = !DILocation(line: 354, column: 9, scope: !343)
!345 = !DILocalVariable(name: "__rem", scope: !343, file: !3, line: 354, type: !262)
!346 = !DILocation(line: 354, column: 2, scope: !311)
!347 = distinct !DISubprogram(name: "clk_divider_bestdiv", scope: !3, file: !3, line: 288, type: !348, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!348 = !DISubroutineType(types: !349)
!349 = !{!65, !66, !66, !83, !89, !169, !106, !83}
!350 = !DILocalVariable(name: "hw", arg: 1, scope: !347, file: !3, line: 288, type: !66)
!351 = !DILocation(line: 288, column: 47, scope: !347)
!352 = !DILocalVariable(name: "parent", arg: 2, scope: !347, file: !3, line: 288, type: !66)
!353 = !DILocation(line: 288, column: 66, scope: !347)
!354 = !DILocalVariable(name: "rate", arg: 3, scope: !347, file: !3, line: 289, type: !83)
!355 = !DILocation(line: 289, column: 25, scope: !347)
!356 = !DILocalVariable(name: "best_parent_rate", arg: 4, scope: !347, file: !3, line: 290, type: !89)
!357 = !DILocation(line: 290, column: 26, scope: !347)
!358 = !DILocalVariable(name: "table", arg: 5, scope: !347, file: !3, line: 291, type: !169)
!359 = !DILocation(line: 291, column: 39, scope: !347)
!360 = !DILocalVariable(name: "width", arg: 6, scope: !347, file: !3, line: 291, type: !106)
!361 = !DILocation(line: 291, column: 49, scope: !347)
!362 = !DILocalVariable(name: "flags", arg: 7, scope: !347, file: !3, line: 292, type: !83)
!363 = !DILocation(line: 292, column: 25, scope: !347)
!364 = !DILocalVariable(name: "i", scope: !347, file: !3, line: 294, type: !65)
!365 = !DILocation(line: 294, column: 6, scope: !347)
!366 = !DILocalVariable(name: "bestdiv", scope: !347, file: !3, line: 294, type: !65)
!367 = !DILocation(line: 294, column: 9, scope: !347)
!368 = !DILocalVariable(name: "parent_rate", scope: !347, file: !3, line: 295, type: !83)
!369 = !DILocation(line: 295, column: 16, scope: !347)
!370 = !DILocalVariable(name: "best", scope: !347, file: !3, line: 295, type: !83)
!371 = !DILocation(line: 295, column: 29, scope: !347)
!372 = !DILocalVariable(name: "now", scope: !347, file: !3, line: 295, type: !83)
!373 = !DILocation(line: 295, column: 39, scope: !347)
!374 = !DILocalVariable(name: "maxdiv", scope: !347, file: !3, line: 295, type: !83)
!375 = !DILocation(line: 295, column: 44, scope: !347)
!376 = !DILocalVariable(name: "parent_rate_saved", scope: !347, file: !3, line: 296, type: !83)
!377 = !DILocation(line: 296, column: 16, scope: !347)
!378 = !DILocation(line: 296, column: 37, scope: !347)
!379 = !DILocation(line: 296, column: 36, scope: !347)
!380 = !DILocation(line: 298, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !347, file: !3, line: 298, column: 6)
!382 = !DILocation(line: 298, column: 6, scope: !347)
!383 = !DILocation(line: 299, column: 8, scope: !381)
!384 = !DILocation(line: 299, column: 3, scope: !381)
!385 = !DILocation(line: 301, column: 23, scope: !347)
!386 = !DILocation(line: 301, column: 30, scope: !347)
!387 = !DILocation(line: 301, column: 37, scope: !347)
!388 = !DILocation(line: 301, column: 11, scope: !347)
!389 = !DILocation(line: 301, column: 9, scope: !347)
!390 = !DILocation(line: 303, column: 25, scope: !391)
!391 = distinct !DILexicalBlock(scope: !347, file: !3, line: 303, column: 6)
!392 = !DILocation(line: 303, column: 8, scope: !391)
!393 = !DILocation(line: 303, column: 29, scope: !391)
!394 = !DILocation(line: 303, column: 6, scope: !347)
!395 = !DILocation(line: 304, column: 18, scope: !396)
!396 = distinct !DILexicalBlock(scope: !391, file: !3, line: 303, column: 53)
!397 = !DILocation(line: 304, column: 17, scope: !396)
!398 = !DILocation(line: 304, column: 15, scope: !396)
!399 = !DILocation(line: 305, column: 24, scope: !396)
!400 = !DILocation(line: 305, column: 31, scope: !396)
!401 = !DILocation(line: 305, column: 44, scope: !396)
!402 = !DILocation(line: 305, column: 50, scope: !396)
!403 = !DILocation(line: 305, column: 13, scope: !396)
!404 = !DILocation(line: 305, column: 11, scope: !396)
!405 = !DILocation(line: 306, column: 13, scope: !396)
!406 = !DILocation(line: 306, column: 21, scope: !396)
!407 = !DILocation(line: 306, column: 32, scope: !396)
!408 = !DILocation(line: 306, column: 11, scope: !396)
!409 = !DILocation(line: 307, column: 13, scope: !396)
!410 = !DILocation(line: 307, column: 23, scope: !396)
!411 = !DILocation(line: 307, column: 21, scope: !396)
!412 = !DILocation(line: 307, column: 32, scope: !396)
!413 = !DILocation(line: 307, column: 41, scope: !396)
!414 = !DILocation(line: 307, column: 11, scope: !396)
!415 = !DILocation(line: 308, column: 10, scope: !396)
!416 = !DILocation(line: 308, column: 3, scope: !396)
!417 = !DILocalVariable(name: "__UNIQUE_ID___x108", scope: !418, file: !3, line: 315, type: !83)
!418 = distinct !DILexicalBlock(scope: !347, file: !3, line: 315, column: 11)
!419 = !DILocation(line: 315, column: 11, scope: !418)
!420 = !DILocalVariable(name: "__UNIQUE_ID___y109", scope: !418, file: !3, line: 315, type: !83)
!421 = !DILocation(line: 315, column: 9, scope: !347)
!422 = !DILocation(line: 317, column: 21, scope: !423)
!423 = distinct !DILexicalBlock(scope: !347, file: !3, line: 317, column: 2)
!424 = !DILocation(line: 317, column: 31, scope: !423)
!425 = !DILocation(line: 317, column: 11, scope: !423)
!426 = !DILocation(line: 317, column: 9, scope: !423)
!427 = !DILocation(line: 317, column: 7, scope: !423)
!428 = !DILocation(line: 317, column: 39, scope: !429)
!429 = distinct !DILexicalBlock(scope: !423, file: !3, line: 317, column: 2)
!430 = !DILocation(line: 317, column: 44, scope: !429)
!431 = !DILocation(line: 317, column: 41, scope: !429)
!432 = !DILocation(line: 317, column: 2, scope: !423)
!433 = !DILocation(line: 319, column: 7, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !3, line: 319, column: 7)
!435 = distinct !DILexicalBlock(scope: !429, file: !3, line: 318, column: 43)
!436 = !DILocation(line: 319, column: 14, scope: !434)
!437 = !DILocation(line: 319, column: 12, scope: !434)
!438 = !DILocation(line: 319, column: 19, scope: !434)
!439 = !DILocation(line: 319, column: 16, scope: !434)
!440 = !DILocation(line: 319, column: 7, scope: !435)
!441 = !DILocation(line: 325, column: 24, scope: !442)
!442 = distinct !DILexicalBlock(scope: !434, file: !3, line: 319, column: 38)
!443 = !DILocation(line: 325, column: 5, scope: !442)
!444 = !DILocation(line: 325, column: 22, scope: !442)
!445 = !DILocation(line: 326, column: 11, scope: !442)
!446 = !DILocation(line: 326, column: 4, scope: !442)
!447 = !DILocation(line: 328, column: 35, scope: !435)
!448 = !DILocation(line: 328, column: 43, scope: !435)
!449 = !DILocation(line: 328, column: 50, scope: !435)
!450 = !DILocation(line: 328, column: 48, scope: !435)
!451 = !DILocation(line: 328, column: 17, scope: !435)
!452 = !DILocation(line: 328, column: 15, scope: !435)
!453 = !DILocalVariable(name: "_tmp", scope: !454, file: !3, line: 329, type: !25)
!454 = distinct !DILexicalBlock(scope: !435, file: !3, line: 329, column: 9)
!455 = !DILocation(line: 329, column: 9, scope: !454)
!456 = !DILocalVariable(name: "__base", scope: !457, file: !3, line: 329, type: !262)
!457 = distinct !DILexicalBlock(scope: !454, file: !3, line: 329, column: 9)
!458 = !DILocation(line: 329, column: 9, scope: !457)
!459 = !DILocalVariable(name: "__rem", scope: !457, file: !3, line: 329, type: !262)
!460 = !DILocation(line: 329, column: 7, scope: !435)
!461 = !DILocation(line: 330, column: 20, scope: !462)
!462 = distinct !DILexicalBlock(scope: !435, file: !3, line: 330, column: 7)
!463 = !DILocation(line: 330, column: 26, scope: !462)
!464 = !DILocation(line: 330, column: 31, scope: !462)
!465 = !DILocation(line: 330, column: 37, scope: !462)
!466 = !DILocation(line: 330, column: 7, scope: !462)
!467 = !DILocation(line: 330, column: 7, scope: !435)
!468 = !DILocation(line: 331, column: 14, scope: !469)
!469 = distinct !DILexicalBlock(scope: !462, file: !3, line: 330, column: 45)
!470 = !DILocation(line: 331, column: 12, scope: !469)
!471 = !DILocation(line: 332, column: 11, scope: !469)
!472 = !DILocation(line: 332, column: 9, scope: !469)
!473 = !DILocation(line: 333, column: 24, scope: !469)
!474 = !DILocation(line: 333, column: 5, scope: !469)
!475 = !DILocation(line: 333, column: 22, scope: !469)
!476 = !DILocation(line: 334, column: 3, scope: !469)
!477 = !DILocation(line: 335, column: 2, scope: !435)
!478 = !DILocation(line: 318, column: 25, scope: !429)
!479 = !DILocation(line: 318, column: 32, scope: !429)
!480 = !DILocation(line: 318, column: 35, scope: !429)
!481 = !DILocation(line: 318, column: 15, scope: !429)
!482 = !DILocation(line: 318, column: 13, scope: !429)
!483 = !DILocation(line: 317, column: 2, scope: !429)
!484 = distinct !{!484, !432, !485}
!485 = !DILocation(line: 335, column: 2, scope: !423)
!486 = !DILocation(line: 337, column: 7, scope: !487)
!487 = distinct !DILexicalBlock(scope: !347, file: !3, line: 337, column: 6)
!488 = !DILocation(line: 337, column: 6, scope: !347)
!489 = !DILocation(line: 338, column: 25, scope: !490)
!490 = distinct !DILexicalBlock(scope: !487, file: !3, line: 337, column: 16)
!491 = !DILocation(line: 338, column: 32, scope: !490)
!492 = !DILocation(line: 338, column: 39, scope: !490)
!493 = !DILocation(line: 338, column: 13, scope: !490)
!494 = !DILocation(line: 338, column: 11, scope: !490)
!495 = !DILocation(line: 339, column: 41, scope: !490)
!496 = !DILocation(line: 339, column: 23, scope: !490)
!497 = !DILocation(line: 339, column: 4, scope: !490)
!498 = !DILocation(line: 339, column: 21, scope: !490)
!499 = !DILocation(line: 340, column: 2, scope: !490)
!500 = !DILocation(line: 342, column: 9, scope: !347)
!501 = !DILocation(line: 342, column: 2, scope: !347)
!502 = !DILocation(line: 343, column: 1, scope: !347)
!503 = distinct !DISubprogram(name: "divider_ro_round_rate_parent", scope: !3, file: !3, line: 358, type: !504, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !191)
!504 = !DISubroutineType(types: !505)
!505 = !{!88, !66, !66, !83, !89, !169, !106, !83, !7}
!506 = !DILocalVariable(name: "hw", arg: 1, scope: !503, file: !3, line: 358, type: !66)
!507 = !DILocation(line: 358, column: 50, scope: !503)
!508 = !DILocalVariable(name: "parent", arg: 2, scope: !503, file: !3, line: 358, type: !66)
!509 = !DILocation(line: 358, column: 69, scope: !503)
!510 = !DILocalVariable(name: "rate", arg: 3, scope: !503, file: !3, line: 359, type: !83)
!511 = !DILocation(line: 359, column: 21, scope: !503)
!512 = !DILocalVariable(name: "prate", arg: 4, scope: !503, file: !3, line: 359, type: !89)
!513 = !DILocation(line: 359, column: 42, scope: !503)
!514 = !DILocalVariable(name: "table", arg: 5, scope: !503, file: !3, line: 360, type: !169)
!515 = !DILocation(line: 360, column: 35, scope: !503)
!516 = !DILocalVariable(name: "width", arg: 6, scope: !503, file: !3, line: 360, type: !106)
!517 = !DILocation(line: 360, column: 45, scope: !503)
!518 = !DILocalVariable(name: "flags", arg: 7, scope: !503, file: !3, line: 361, type: !83)
!519 = !DILocation(line: 361, column: 21, scope: !503)
!520 = !DILocalVariable(name: "val", arg: 8, scope: !503, file: !3, line: 361, type: !7)
!521 = !DILocation(line: 361, column: 41, scope: !503)
!522 = !DILocalVariable(name: "div", scope: !503, file: !3, line: 363, type: !65)
!523 = !DILocation(line: 363, column: 6, scope: !503)
!524 = !DILocation(line: 365, column: 17, scope: !503)
!525 = !DILocation(line: 365, column: 24, scope: !503)
!526 = !DILocation(line: 365, column: 29, scope: !503)
!527 = !DILocation(line: 365, column: 36, scope: !503)
!528 = !DILocation(line: 365, column: 8, scope: !503)
!529 = !DILocation(line: 365, column: 6, scope: !503)
!530 = !DILocation(line: 368, column: 23, scope: !531)
!531 = distinct !DILexicalBlock(scope: !503, file: !3, line: 368, column: 6)
!532 = !DILocation(line: 368, column: 6, scope: !531)
!533 = !DILocation(line: 368, column: 27, scope: !531)
!534 = !DILocation(line: 368, column: 6, scope: !503)
!535 = !DILocation(line: 369, column: 8, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !3, line: 369, column: 7)
!537 = distinct !DILexicalBlock(scope: !531, file: !3, line: 368, column: 50)
!538 = !DILocation(line: 369, column: 7, scope: !537)
!539 = !DILocation(line: 370, column: 4, scope: !536)
!540 = !DILocation(line: 372, column: 30, scope: !537)
!541 = !DILocation(line: 372, column: 38, scope: !537)
!542 = !DILocation(line: 372, column: 45, scope: !537)
!543 = !DILocation(line: 372, column: 43, scope: !537)
!544 = !DILocation(line: 372, column: 12, scope: !537)
!545 = !DILocation(line: 372, column: 4, scope: !537)
!546 = !DILocation(line: 372, column: 10, scope: !537)
!547 = !DILocation(line: 373, column: 2, scope: !537)
!548 = !DILocalVariable(name: "_tmp", scope: !549, file: !3, line: 375, type: !25)
!549 = distinct !DILexicalBlock(scope: !503, file: !3, line: 375, column: 9)
!550 = !DILocation(line: 375, column: 9, scope: !549)
!551 = !DILocalVariable(name: "__base", scope: !552, file: !3, line: 375, type: !262)
!552 = distinct !DILexicalBlock(scope: !549, file: !3, line: 375, column: 9)
!553 = !DILocation(line: 375, column: 9, scope: !552)
!554 = !DILocalVariable(name: "__rem", scope: !552, file: !3, line: 375, type: !262)
!555 = !DILocation(line: 375, column: 2, scope: !503)
!556 = !DILocation(line: 376, column: 1, scope: !503)
!557 = distinct !DISubprogram(name: "divider_get_val", scope: !3, file: !3, line: 401, type: !558, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !191)
!558 = !DISubroutineType(types: !559)
!559 = !{!65, !83, !83, !169, !106, !83}
!560 = !DILocalVariable(name: "rate", arg: 1, scope: !557, file: !3, line: 401, type: !83)
!561 = !DILocation(line: 401, column: 35, scope: !557)
!562 = !DILocalVariable(name: "parent_rate", arg: 2, scope: !557, file: !3, line: 401, type: !83)
!563 = !DILocation(line: 401, column: 55, scope: !557)
!564 = !DILocalVariable(name: "table", arg: 3, scope: !557, file: !3, line: 402, type: !169)
!565 = !DILocation(line: 402, column: 35, scope: !557)
!566 = !DILocalVariable(name: "width", arg: 4, scope: !557, file: !3, line: 402, type: !106)
!567 = !DILocation(line: 402, column: 45, scope: !557)
!568 = !DILocalVariable(name: "flags", arg: 5, scope: !557, file: !3, line: 403, type: !83)
!569 = !DILocation(line: 403, column: 21, scope: !557)
!570 = !DILocalVariable(name: "div", scope: !557, file: !3, line: 405, type: !7)
!571 = !DILocation(line: 405, column: 15, scope: !557)
!572 = !DILocalVariable(name: "value", scope: !557, file: !3, line: 405, type: !7)
!573 = !DILocation(line: 405, column: 20, scope: !557)
!574 = !DILocalVariable(name: "_tmp", scope: !575, file: !3, line: 407, type: !25)
!575 = distinct !DILexicalBlock(scope: !557, file: !3, line: 407, column: 8)
!576 = !DILocation(line: 407, column: 8, scope: !575)
!577 = !DILocalVariable(name: "__base", scope: !578, file: !3, line: 407, type: !262)
!578 = distinct !DILexicalBlock(scope: !575, file: !3, line: 407, column: 8)
!579 = !DILocation(line: 407, column: 8, scope: !578)
!580 = !DILocalVariable(name: "__rem", scope: !578, file: !3, line: 407, type: !262)
!581 = !DILocation(line: 407, column: 8, scope: !557)
!582 = !DILocation(line: 407, column: 6, scope: !557)
!583 = !DILocation(line: 409, column: 21, scope: !584)
!584 = distinct !DILexicalBlock(scope: !557, file: !3, line: 409, column: 6)
!585 = !DILocation(line: 409, column: 28, scope: !584)
!586 = !DILocation(line: 409, column: 33, scope: !584)
!587 = !DILocation(line: 409, column: 7, scope: !584)
!588 = !DILocation(line: 409, column: 6, scope: !557)
!589 = !DILocation(line: 410, column: 3, scope: !584)
!590 = !DILocation(line: 412, column: 19, scope: !557)
!591 = !DILocation(line: 412, column: 26, scope: !557)
!592 = !DILocation(line: 412, column: 31, scope: !557)
!593 = !DILocation(line: 412, column: 38, scope: !557)
!594 = !DILocation(line: 412, column: 10, scope: !557)
!595 = !DILocation(line: 412, column: 8, scope: !557)
!596 = !DILocalVariable(name: "__UNIQUE_ID___x111", scope: !597, file: !3, line: 414, type: !7)
!597 = distinct !DILexicalBlock(scope: !557, file: !3, line: 414, column: 9)
!598 = !DILocation(line: 414, column: 9, scope: !597)
!599 = !DILocalVariable(name: "__UNIQUE_ID___y112", scope: !597, file: !3, line: 414, type: !7)
!600 = !DILocation(line: 414, column: 2, scope: !557)
!601 = !DILocation(line: 415, column: 1, scope: !557)
!602 = distinct !DISubprogram(name: "_is_valid_div", scope: !3, file: !3, line: 172, type: !603, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!603 = !DISubroutineType(types: !604)
!604 = !{!605, !169, !7, !83}
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !31, line: 30, baseType: !606)
!606 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!607 = !DILocalVariable(name: "table", arg: 1, scope: !602, file: !3, line: 172, type: !169)
!608 = !DILocation(line: 172, column: 55, scope: !602)
!609 = !DILocalVariable(name: "div", arg: 2, scope: !602, file: !3, line: 172, type: !7)
!610 = !DILocation(line: 172, column: 75, scope: !602)
!611 = !DILocalVariable(name: "flags", arg: 3, scope: !602, file: !3, line: 173, type: !83)
!612 = !DILocation(line: 173, column: 20, scope: !602)
!613 = !DILocation(line: 175, column: 6, scope: !614)
!614 = distinct !DILexicalBlock(scope: !602, file: !3, line: 175, column: 6)
!615 = !DILocation(line: 175, column: 12, scope: !614)
!616 = !DILocation(line: 175, column: 6, scope: !602)
!617 = !DILocation(line: 176, column: 24, scope: !614)
!618 = !DILocation(line: 176, column: 10, scope: !614)
!619 = !DILocation(line: 176, column: 3, scope: !614)
!620 = !DILocation(line: 177, column: 6, scope: !621)
!621 = distinct !DILexicalBlock(scope: !602, file: !3, line: 177, column: 6)
!622 = !DILocation(line: 177, column: 6, scope: !602)
!623 = !DILocation(line: 178, column: 30, scope: !621)
!624 = !DILocation(line: 178, column: 37, scope: !621)
!625 = !DILocation(line: 178, column: 10, scope: !621)
!626 = !DILocation(line: 178, column: 3, scope: !621)
!627 = !DILocation(line: 179, column: 2, scope: !602)
!628 = !DILocation(line: 180, column: 1, scope: !602)
!629 = distinct !DISubprogram(name: "_get_val", scope: !3, file: !3, line: 115, type: !268, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!630 = !DILocalVariable(name: "word", arg: 1, scope: !631, file: !632, line: 233, type: !83)
!631 = distinct !DISubprogram(name: "__ffs", scope: !632, file: !632, line: 233, type: !633, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!632 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!633 = !DISubroutineType(types: !634)
!634 = !{!83, !83}
!635 = !DILocation(line: 233, column: 58, scope: !631, inlinedAt: !636)
!636 = distinct !DILocation(line: 121, column: 10, scope: !637)
!637 = distinct !DILexicalBlock(scope: !629, file: !3, line: 120, column: 6)
!638 = !DILocalVariable(name: "table", arg: 1, scope: !629, file: !3, line: 115, type: !169)
!639 = !DILocation(line: 115, column: 58, scope: !629)
!640 = !DILocalVariable(name: "div", arg: 2, scope: !629, file: !3, line: 116, type: !7)
!641 = !DILocation(line: 116, column: 22, scope: !629)
!642 = !DILocalVariable(name: "flags", arg: 3, scope: !629, file: !3, line: 116, type: !83)
!643 = !DILocation(line: 116, column: 41, scope: !629)
!644 = !DILocalVariable(name: "width", arg: 4, scope: !629, file: !3, line: 116, type: !106)
!645 = !DILocation(line: 116, column: 51, scope: !629)
!646 = !DILocation(line: 118, column: 6, scope: !647)
!647 = distinct !DILexicalBlock(scope: !629, file: !3, line: 118, column: 6)
!648 = !DILocation(line: 118, column: 12, scope: !647)
!649 = !DILocation(line: 118, column: 6, scope: !629)
!650 = !DILocation(line: 119, column: 10, scope: !647)
!651 = !DILocation(line: 119, column: 3, scope: !647)
!652 = !DILocation(line: 120, column: 6, scope: !637)
!653 = !DILocation(line: 120, column: 12, scope: !637)
!654 = !DILocation(line: 120, column: 6, scope: !629)
!655 = !DILocation(line: 121, column: 16, scope: !637)
!656 = !DILocation(line: 237, column: 11, scope: !631, inlinedAt: !636)
!657 = !DILocation(line: 235, column: 2, scope: !631, inlinedAt: !636)
!658 = !{i32 293990}
!659 = !DILocation(line: 238, column: 9, scope: !631, inlinedAt: !636)
!660 = !DILocation(line: 121, column: 10, scope: !637)
!661 = !DILocation(line: 121, column: 3, scope: !637)
!662 = !DILocation(line: 122, column: 6, scope: !663)
!663 = distinct !DILexicalBlock(scope: !629, file: !3, line: 122, column: 6)
!664 = !DILocation(line: 122, column: 12, scope: !663)
!665 = !DILocation(line: 122, column: 6, scope: !629)
!666 = !DILocation(line: 123, column: 11, scope: !663)
!667 = !DILocation(line: 123, column: 18, scope: !663)
!668 = !DILocation(line: 123, column: 38, scope: !663)
!669 = !DILocation(line: 123, column: 15, scope: !663)
!670 = !DILocation(line: 123, column: 10, scope: !663)
!671 = !DILocation(line: 123, column: 49, scope: !663)
!672 = !DILocation(line: 123, column: 3, scope: !663)
!673 = !DILocation(line: 124, column: 6, scope: !674)
!674 = distinct !DILexicalBlock(scope: !629, file: !3, line: 124, column: 6)
!675 = !DILocation(line: 124, column: 6, scope: !629)
!676 = !DILocation(line: 125, column: 26, scope: !674)
!677 = !DILocation(line: 125, column: 33, scope: !674)
!678 = !DILocation(line: 125, column: 11, scope: !674)
!679 = !DILocation(line: 125, column: 3, scope: !674)
!680 = !DILocation(line: 126, column: 9, scope: !629)
!681 = !DILocation(line: 126, column: 13, scope: !629)
!682 = !DILocation(line: 126, column: 2, scope: !629)
!683 = !DILocation(line: 127, column: 1, scope: !629)
!684 = distinct !DISubprogram(name: "clk_divider_recalc_rate", scope: !3, file: !3, line: 148, type: !81, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!685 = !DILocalVariable(name: "hw", arg: 1, scope: !684, file: !3, line: 148, type: !66)
!686 = !DILocation(line: 148, column: 61, scope: !684)
!687 = !DILocalVariable(name: "parent_rate", arg: 2, scope: !684, file: !3, line: 149, type: !83)
!688 = !DILocation(line: 149, column: 17, scope: !684)
!689 = !DILocalVariable(name: "divider", scope: !684, file: !3, line: 151, type: !34)
!690 = !DILocation(line: 151, column: 22, scope: !684)
!691 = !DILocalVariable(name: "__mptr", scope: !692, file: !3, line: 151, type: !33)
!692 = distinct !DILexicalBlock(scope: !684, file: !3, line: 151, column: 32)
!693 = !DILocation(line: 151, column: 32, scope: !692)
!694 = !DILocation(line: 151, column: 32, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !3, line: 151, column: 32)
!696 = !DILocalVariable(name: "val", scope: !684, file: !3, line: 152, type: !7)
!697 = !DILocation(line: 152, column: 15, scope: !684)
!698 = !DILocation(line: 154, column: 22, scope: !684)
!699 = !DILocation(line: 154, column: 8, scope: !684)
!700 = !DILocation(line: 154, column: 34, scope: !684)
!701 = !DILocation(line: 154, column: 43, scope: !684)
!702 = !DILocation(line: 154, column: 31, scope: !684)
!703 = !DILocation(line: 154, column: 6, scope: !684)
!704 = !DILocation(line: 155, column: 9, scope: !684)
!705 = !DILocation(line: 155, column: 6, scope: !684)
!706 = !DILocation(line: 157, column: 29, scope: !684)
!707 = !DILocation(line: 157, column: 33, scope: !684)
!708 = !DILocation(line: 157, column: 46, scope: !684)
!709 = !DILocation(line: 157, column: 51, scope: !684)
!710 = !DILocation(line: 157, column: 60, scope: !684)
!711 = !DILocation(line: 158, column: 8, scope: !684)
!712 = !DILocation(line: 158, column: 17, scope: !684)
!713 = !DILocation(line: 158, column: 24, scope: !684)
!714 = !DILocation(line: 158, column: 33, scope: !684)
!715 = !DILocation(line: 157, column: 9, scope: !684)
!716 = !DILocation(line: 157, column: 2, scope: !684)
!717 = distinct !DISubprogram(name: "clk_divider_round_rate", scope: !3, file: !3, line: 380, type: !86, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!718 = !DILocalVariable(name: "hw", arg: 1, scope: !717, file: !3, line: 380, type: !66)
!719 = !DILocation(line: 380, column: 51, scope: !717)
!720 = !DILocalVariable(name: "rate", arg: 2, scope: !717, file: !3, line: 380, type: !83)
!721 = !DILocation(line: 380, column: 69, scope: !717)
!722 = !DILocalVariable(name: "prate", arg: 3, scope: !717, file: !3, line: 381, type: !89)
!723 = !DILocation(line: 381, column: 20, scope: !717)
!724 = !DILocalVariable(name: "divider", scope: !717, file: !3, line: 383, type: !34)
!725 = !DILocation(line: 383, column: 22, scope: !717)
!726 = !DILocalVariable(name: "__mptr", scope: !727, file: !3, line: 383, type: !33)
!727 = distinct !DILexicalBlock(scope: !717, file: !3, line: 383, column: 32)
!728 = !DILocation(line: 383, column: 32, scope: !727)
!729 = !DILocation(line: 383, column: 32, scope: !730)
!730 = distinct !DILexicalBlock(scope: !727, file: !3, line: 383, column: 32)
!731 = !DILocation(line: 386, column: 6, scope: !732)
!732 = distinct !DILexicalBlock(scope: !717, file: !3, line: 386, column: 6)
!733 = !DILocation(line: 386, column: 15, scope: !732)
!734 = !DILocation(line: 386, column: 21, scope: !732)
!735 = !DILocation(line: 386, column: 6, scope: !717)
!736 = !DILocalVariable(name: "val", scope: !737, file: !3, line: 387, type: !194)
!737 = distinct !DILexicalBlock(scope: !732, file: !3, line: 386, column: 46)
!738 = !DILocation(line: 387, column: 7, scope: !737)
!739 = !DILocation(line: 389, column: 23, scope: !737)
!740 = !DILocation(line: 389, column: 9, scope: !737)
!741 = !DILocation(line: 389, column: 35, scope: !737)
!742 = !DILocation(line: 389, column: 44, scope: !737)
!743 = !DILocation(line: 389, column: 32, scope: !737)
!744 = !DILocation(line: 389, column: 7, scope: !737)
!745 = !DILocation(line: 390, column: 10, scope: !737)
!746 = !DILocation(line: 390, column: 7, scope: !737)
!747 = !DILocation(line: 392, column: 32, scope: !737)
!748 = !DILocation(line: 392, column: 36, scope: !737)
!749 = !DILocation(line: 392, column: 42, scope: !737)
!750 = !DILocation(line: 392, column: 49, scope: !737)
!751 = !DILocation(line: 392, column: 58, scope: !737)
!752 = !DILocation(line: 393, column: 11, scope: !737)
!753 = !DILocation(line: 393, column: 20, scope: !737)
!754 = !DILocation(line: 393, column: 27, scope: !737)
!755 = !DILocation(line: 393, column: 36, scope: !737)
!756 = !DILocation(line: 394, column: 11, scope: !737)
!757 = !DILocation(line: 392, column: 10, scope: !737)
!758 = !DILocation(line: 392, column: 3, scope: !737)
!759 = !DILocation(line: 397, column: 28, scope: !717)
!760 = !DILocation(line: 397, column: 32, scope: !717)
!761 = !DILocation(line: 397, column: 38, scope: !717)
!762 = !DILocation(line: 397, column: 45, scope: !717)
!763 = !DILocation(line: 397, column: 54, scope: !717)
!764 = !DILocation(line: 398, column: 7, scope: !717)
!765 = !DILocation(line: 398, column: 16, scope: !717)
!766 = !DILocation(line: 398, column: 23, scope: !717)
!767 = !DILocation(line: 398, column: 32, scope: !717)
!768 = !DILocation(line: 397, column: 9, scope: !717)
!769 = !DILocation(line: 397, column: 2, scope: !717)
!770 = !DILocation(line: 399, column: 1, scope: !717)
!771 = distinct !DISubprogram(name: "clk_divider_set_rate", scope: !3, file: !3, line: 418, type: !115, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!772 = !DILocalVariable(name: "lock", arg: 1, scope: !773, file: !774, line: 407, type: !176)
!773 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !774, file: !774, line: 407, type: !775, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!774 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!775 = !DISubroutineType(types: !776)
!776 = !{null, !176, !83}
!777 = !DILocation(line: 407, column: 64, scope: !773, inlinedAt: !778)
!778 = distinct !DILocation(line: 446, column: 3, scope: !779)
!779 = distinct !DILexicalBlock(scope: !771, file: !3, line: 445, column: 6)
!780 = !DILocalVariable(name: "flags", arg: 2, scope: !773, file: !774, line: 407, type: !83)
!781 = !DILocation(line: 407, column: 84, scope: !773, inlinedAt: !778)
!782 = !DILocalVariable(name: "lock", arg: 1, scope: !783, file: !774, line: 327, type: !176)
!783 = distinct !DISubprogram(name: "spinlock_check", scope: !774, file: !774, line: 327, type: !784, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!784 = !DISubroutineType(types: !785)
!785 = !{!786, !176}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !178, line: 29, baseType: !185)
!788 = !DILocation(line: 327, column: 67, scope: !783, inlinedAt: !789)
!789 = distinct !DILocation(line: 432, column: 3, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 432, column: 3)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 432, column: 3)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 432, column: 3)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 432, column: 3)
!794 = distinct !DILexicalBlock(scope: !795, file: !3, line: 432, column: 3)
!795 = distinct !DILexicalBlock(scope: !771, file: !3, line: 431, column: 6)
!796 = !DILocalVariable(name: "hw", arg: 1, scope: !771, file: !3, line: 418, type: !66)
!797 = !DILocation(line: 418, column: 48, scope: !771)
!798 = !DILocalVariable(name: "rate", arg: 2, scope: !771, file: !3, line: 418, type: !83)
!799 = !DILocation(line: 418, column: 66, scope: !771)
!800 = !DILocalVariable(name: "parent_rate", arg: 3, scope: !771, file: !3, line: 419, type: !83)
!801 = !DILocation(line: 419, column: 19, scope: !771)
!802 = !DILocalVariable(name: "divider", scope: !771, file: !3, line: 421, type: !34)
!803 = !DILocation(line: 421, column: 22, scope: !771)
!804 = !DILocalVariable(name: "__mptr", scope: !805, file: !3, line: 421, type: !33)
!805 = distinct !DILexicalBlock(scope: !771, file: !3, line: 421, column: 32)
!806 = !DILocation(line: 421, column: 32, scope: !805)
!807 = !DILocation(line: 421, column: 32, scope: !808)
!808 = distinct !DILexicalBlock(scope: !805, file: !3, line: 421, column: 32)
!809 = !DILocalVariable(name: "value", scope: !771, file: !3, line: 422, type: !65)
!810 = !DILocation(line: 422, column: 6, scope: !771)
!811 = !DILocalVariable(name: "flags", scope: !771, file: !3, line: 423, type: !83)
!812 = !DILocation(line: 423, column: 16, scope: !771)
!813 = !DILocalVariable(name: "val", scope: !771, file: !3, line: 424, type: !194)
!814 = !DILocation(line: 424, column: 6, scope: !771)
!815 = !DILocation(line: 426, column: 26, scope: !771)
!816 = !DILocation(line: 426, column: 32, scope: !771)
!817 = !DILocation(line: 426, column: 45, scope: !771)
!818 = !DILocation(line: 426, column: 54, scope: !771)
!819 = !DILocation(line: 427, column: 5, scope: !771)
!820 = !DILocation(line: 427, column: 14, scope: !771)
!821 = !DILocation(line: 427, column: 21, scope: !771)
!822 = !DILocation(line: 427, column: 30, scope: !771)
!823 = !DILocation(line: 426, column: 10, scope: !771)
!824 = !DILocation(line: 426, column: 8, scope: !771)
!825 = !DILocation(line: 428, column: 6, scope: !826)
!826 = distinct !DILexicalBlock(scope: !771, file: !3, line: 428, column: 6)
!827 = !DILocation(line: 428, column: 12, scope: !826)
!828 = !DILocation(line: 428, column: 6, scope: !771)
!829 = !DILocation(line: 429, column: 10, scope: !826)
!830 = !DILocation(line: 429, column: 3, scope: !826)
!831 = !DILocation(line: 431, column: 6, scope: !795)
!832 = !DILocation(line: 431, column: 15, scope: !795)
!833 = !DILocation(line: 431, column: 6, scope: !771)
!834 = !DILocation(line: 432, column: 3, scope: !795)
!835 = !DILocation(line: 432, column: 3, scope: !794)
!836 = !DILocalVariable(name: "__dummy", scope: !837, file: !3, line: 432, type: !83)
!837 = distinct !DILexicalBlock(scope: !793, file: !3, line: 432, column: 3)
!838 = !DILocation(line: 432, column: 3, scope: !837)
!839 = !DILocalVariable(name: "__dummy2", scope: !837, file: !3, line: 432, type: !83)
!840 = !DILocation(line: 432, column: 3, scope: !793)
!841 = !DILocation(line: 432, column: 3, scope: !792)
!842 = !DILocation(line: 432, column: 3, scope: !843)
!843 = distinct !DILexicalBlock(scope: !792, file: !3, line: 432, column: 3)
!844 = !DILocalVariable(name: "__dummy", scope: !845, file: !3, line: 432, type: !83)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 432, column: 3)
!846 = distinct !DILexicalBlock(scope: !843, file: !3, line: 432, column: 3)
!847 = !DILocation(line: 432, column: 3, scope: !845)
!848 = !DILocalVariable(name: "__dummy2", scope: !845, file: !3, line: 432, type: !83)
!849 = !DILocation(line: 432, column: 3, scope: !846)
!850 = !DILocation(line: 432, column: 3, scope: !791)
!851 = !{i32 -2143955415}
!852 = !DILocation(line: 432, column: 3, scope: !790)
!853 = !DILocation(line: 329, column: 10, scope: !783, inlinedAt: !789)
!854 = !DILocation(line: 329, column: 16, scope: !783, inlinedAt: !789)
!855 = !DILocation(line: 436, column: 6, scope: !856)
!856 = distinct !DILexicalBlock(scope: !771, file: !3, line: 436, column: 6)
!857 = !DILocation(line: 436, column: 15, scope: !856)
!858 = !DILocation(line: 436, column: 21, scope: !856)
!859 = !DILocation(line: 436, column: 6, scope: !771)
!860 = !DILocation(line: 437, column: 9, scope: !861)
!861 = distinct !DILexicalBlock(scope: !856, file: !3, line: 436, column: 48)
!862 = !DILocation(line: 437, column: 42, scope: !861)
!863 = !DILocation(line: 437, column: 51, scope: !861)
!864 = !DILocation(line: 437, column: 57, scope: !861)
!865 = !DILocation(line: 437, column: 38, scope: !861)
!866 = !DILocation(line: 437, column: 7, scope: !861)
!867 = !DILocation(line: 438, column: 2, scope: !861)
!868 = !DILocation(line: 439, column: 23, scope: !869)
!869 = distinct !DILexicalBlock(scope: !856, file: !3, line: 438, column: 9)
!870 = !DILocation(line: 439, column: 9, scope: !869)
!871 = !DILocation(line: 439, column: 7, scope: !869)
!872 = !DILocation(line: 440, column: 12, scope: !869)
!873 = !DILocation(line: 440, column: 44, scope: !869)
!874 = !DILocation(line: 440, column: 53, scope: !869)
!875 = !DILocation(line: 440, column: 41, scope: !869)
!876 = !DILocation(line: 440, column: 10, scope: !869)
!877 = !DILocation(line: 440, column: 7, scope: !869)
!878 = !DILocation(line: 442, column: 14, scope: !771)
!879 = !DILocation(line: 442, column: 23, scope: !771)
!880 = !DILocation(line: 442, column: 32, scope: !771)
!881 = !DILocation(line: 442, column: 20, scope: !771)
!882 = !DILocation(line: 442, column: 6, scope: !771)
!883 = !DILocation(line: 443, column: 17, scope: !771)
!884 = !DILocation(line: 443, column: 26, scope: !771)
!885 = !DILocation(line: 443, column: 2, scope: !771)
!886 = !DILocation(line: 445, column: 6, scope: !779)
!887 = !DILocation(line: 445, column: 15, scope: !779)
!888 = !DILocation(line: 445, column: 6, scope: !771)
!889 = !DILocation(line: 446, column: 26, scope: !779)
!890 = !DILocation(line: 446, column: 35, scope: !779)
!891 = !DILocation(line: 446, column: 41, scope: !779)
!892 = !DILocalVariable(name: "__dummy", scope: !893, file: !774, line: 409, type: !83)
!893 = distinct !DILexicalBlock(scope: !894, file: !774, line: 409, column: 2)
!894 = distinct !DILexicalBlock(scope: !773, file: !774, line: 409, column: 2)
!895 = !DILocation(line: 409, column: 2, scope: !893, inlinedAt: !778)
!896 = !DILocalVariable(name: "__dummy2", scope: !893, file: !774, line: 409, type: !83)
!897 = !DILocalVariable(name: "__dummy", scope: !898, file: !774, line: 409, type: !83)
!898 = distinct !DILexicalBlock(scope: !899, file: !774, line: 409, column: 2)
!899 = distinct !DILexicalBlock(scope: !900, file: !774, line: 409, column: 2)
!900 = distinct !DILexicalBlock(scope: !901, file: !774, line: 409, column: 2)
!901 = distinct !DILexicalBlock(scope: !894, file: !774, line: 409, column: 2)
!902 = !DILocation(line: 409, column: 2, scope: !898, inlinedAt: !778)
!903 = !DILocalVariable(name: "__dummy2", scope: !898, file: !774, line: 409, type: !83)
!904 = !DILocation(line: 409, column: 2, scope: !899, inlinedAt: !778)
!905 = !DILocation(line: 409, column: 2, scope: !906, inlinedAt: !778)
!906 = distinct !DILexicalBlock(scope: !901, file: !774, line: 409, column: 2)
!907 = !{i32 -2145371708}
!908 = !DILocation(line: 409, column: 2, scope: !909, inlinedAt: !778)
!909 = distinct !DILexicalBlock(scope: !906, file: !774, line: 409, column: 2)
!910 = !DILocation(line: 446, column: 3, scope: !779)
!911 = !DILocation(line: 450, column: 2, scope: !771)
!912 = !DILocation(line: 451, column: 1, scope: !771)
!913 = distinct !DISubprogram(name: "__clk_hw_register_divider", scope: !3, file: !3, line: 466, type: !914, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !191)
!914 = !DISubroutineType(types: !915)
!915 = !{!66, !916, !919, !53, !53, !155, !150, !83, !33, !106, !106, !106, !169, !176}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !918, line: 15, flags: DIFlagFwdDecl)
!918 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !921, line: 51, size: 1344, elements: !922)
!921 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!922 = !{!923, !924, !926, !927, !1024, !1633, !1634, !1635, !1636, !1637, !1638, !1639}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !920, file: !921, line: 52, baseType: !53, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !920, file: !921, line: 53, baseType: !925, size: 32, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !921, line: 28, baseType: !194)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !920, file: !921, line: 54, baseType: !53, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !920, file: !921, line: 55, baseType: !928, size: 192, offset: 192)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !918, line: 17, size: 192, elements: !929)
!929 = !{!930, !932, !1023}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !928, file: !918, line: 18, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !928, file: !918, line: 19, baseType: !933, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !935)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !918, line: 110, size: 1152, elements: !936)
!936 = !{!937, !941, !945, !951, !959, !963, !971, !976, !980, !981, !985, !989, !993, !1006, !1007, !1008, !1009, !1019}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !935, file: !918, line: 111, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!931, !931}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !935, file: !918, line: 112, baseType: !942, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !931}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !935, file: !918, line: 113, baseType: !946, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!605, !949}
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !928)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !935, file: !918, line: 114, baseType: !952, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!955, !949, !957}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !917)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !935, file: !918, line: 116, baseType: !960, size: 64, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!605, !949, !53}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !935, file: !918, line: 118, baseType: !964, size: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!65, !949, !53, !7, !33, !967}
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 55, baseType: !968)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !969, line: 72, baseType: !970)
!969 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !969, line: 16, baseType: !83)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !935, file: !918, line: 123, baseType: !972, size: 64, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!65, !949, !53, !975, !967}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !935, file: !918, line: 126, baseType: !977, size: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!53, !949}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !935, file: !918, line: 127, baseType: !977, size: 64, offset: 512)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !935, file: !918, line: 128, baseType: !982, size: 64, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!931, !949}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !935, file: !918, line: 130, baseType: !986, size: 64, offset: 640)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!931, !949, !931}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !935, file: !918, line: 133, baseType: !990, size: 64, offset: 704)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!931, !949, !53}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !935, file: !918, line: 135, baseType: !994, size: 64, offset: 768)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!65, !949, !53, !53, !7, !7, !997}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !918, line: 43, size: 640, elements: !999)
!999 = !{!1000, !1001, !1002}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !998, file: !918, line: 44, baseType: !931, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !998, file: !918, line: 45, baseType: !7, size: 32, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !998, file: !918, line: 46, baseType: !1003, size: 512, offset: 128)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 512, elements: !1004)
!1004 = !{!1005}
!1005 = !DISubrange(count: 8)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !935, file: !918, line: 140, baseType: !986, size: 64, offset: 832)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !935, file: !918, line: 143, baseType: !982, size: 64, offset: 896)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !935, file: !918, line: 145, baseType: !938, size: 64, offset: 960)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !935, file: !918, line: 146, baseType: !1010, size: 64, offset: 1024)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!65, !949, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !918, line: 29, size: 128, elements: !1015)
!1015 = !{!1016, !1017, !1018}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1014, file: !918, line: 30, baseType: !7, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1014, file: !918, line: 31, baseType: !7, size: 32, offset: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1014, file: !918, line: 32, baseType: !949, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !935, file: !918, line: 148, baseType: !1020, size: 64, offset: 1088)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!65, !949, !916}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !928, file: !918, line: 20, baseType: !916, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !920, file: !921, line: 57, baseType: !1025, size: 64, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !921, line: 31, size: 704, elements: !1027)
!1027 = !{!1028, !1030, !1031, !1032, !1033}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1026, file: !921, line: 32, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1026, file: !921, line: 33, baseType: !65, size: 32, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1026, file: !921, line: 34, baseType: !33, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1026, file: !921, line: 35, baseType: !1025, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1026, file: !921, line: 43, baseType: !1034, size: 448, offset: 256)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1035, line: 168, size: 448, elements: !1036)
!1035 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1036 = !{!1037, !1044, !1045, !1046, !1628, !1629}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1034, file: !1035, line: 169, baseType: !1038, size: 128)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1035, line: 30, size: 128, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1038, file: !1035, line: 31, baseType: !53, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1038, file: !1035, line: 32, baseType: !1042, size: 16, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !31, line: 19, baseType: !1043)
!1043 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1034, file: !1035, line: 170, baseType: !967, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1034, file: !1035, line: 171, baseType: !33, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1034, file: !1035, line: 172, baseType: !1047, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!1050, !1053, !1056, !1151, !1029, !1361, !967}
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !31, line: 60, baseType: !1051)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !969, line: 73, baseType: !1052)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !969, line: 15, baseType: !88)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !1055, line: 526, flags: DIFlagFwdDecl)
!1055 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1058, line: 64, size: 512, elements: !1059)
!1058 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1059 = !{!1060, !1061, !1067, !1068, !1112, !1209, !1613, !1623, !1624, !1625, !1626, !1627}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1057, file: !1058, line: 65, baseType: !53, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1057, file: !1058, line: 66, baseType: !1062, size: 128, offset: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !31, line: 178, size: 128, elements: !1063)
!1063 = !{!1064, !1066}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1062, file: !31, line: 179, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1062, file: !31, line: 179, baseType: !1065, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1057, file: !1058, line: 67, baseType: !1056, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1057, file: !1058, line: 68, baseType: !1069, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1058, line: 192, size: 704, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1070, file: !1058, line: 193, baseType: !1062, size: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1070, file: !1058, line: 194, baseType: !177, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1070, file: !1058, line: 195, baseType: !1057, size: 512, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1070, file: !1058, line: 196, baseType: !1076, size: 64, offset: 640)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1078)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1058, line: 156, size: 192, elements: !1079)
!1079 = !{!1080, !1085, !1090}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1078, file: !1058, line: 157, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!65, !1069, !1056}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1078, file: !1058, line: 158, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1087)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!53, !1069, !1056}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1078, file: !1058, line: 159, baseType: !1091, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!65, !1069, !1056, !1095}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1058, line: 148, size: 20736, elements: !1097)
!1097 = !{!1098, !1102, !1106, !1107, !1111}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1096, file: !1058, line: 149, baseType: !1099, size: 192)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 192, elements: !1100)
!1100 = !{!1101}
!1101 = !DISubrange(count: 3)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1096, file: !1058, line: 150, baseType: !1103, size: 4096, offset: 192)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 4096, elements: !1104)
!1104 = !{!1105}
!1105 = !DISubrange(count: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1096, file: !1058, line: 151, baseType: !65, size: 32, offset: 4288)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1096, file: !1058, line: 152, baseType: !1108, size: 16384, offset: 4320)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 16384, elements: !1109)
!1109 = !{!1110}
!1110 = !DISubrange(count: 2048)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1096, file: !1058, line: 153, baseType: !65, size: 32, offset: 20704)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1057, file: !1058, line: 69, baseType: !1113, size: 64, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1058, line: 138, size: 448, elements: !1115)
!1115 = !{!1116, !1120, !1134, !1136, !1155, !1186, !1190}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1114, file: !1058, line: 139, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !1056}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1114, file: !1058, line: 140, baseType: !1121, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1123)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1035, line: 230, size: 128, elements: !1124)
!1124 = !{!1125, !1130}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1123, file: !1035, line: 231, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!1050, !1056, !1129, !1029}
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1123, file: !1035, line: 232, baseType: !1131, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!1050, !1056, !1129, !53, !967}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1114, file: !1058, line: 141, baseType: !1135, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1114, file: !1058, line: 142, baseType: !1137, size: 64, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1035, line: 84, size: 320, elements: !1141)
!1141 = !{!1142, !1143, !1147, !1152, !1153}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1140, file: !1035, line: 85, baseType: !53, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1140, file: !1035, line: 86, baseType: !1144, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!1042, !1056, !1129, !65}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1140, file: !1035, line: 88, baseType: !1148, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!1042, !1056, !1151, !65}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1140, file: !1035, line: 90, baseType: !1135, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1140, file: !1035, line: 91, baseType: !1154, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1114, file: !1058, line: 143, baseType: !1156, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!1159, !1056}
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !1162)
!1162 = !{!1163, !1164, !1168, !1172, !1178, !1182}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1161, file: !6, line: 40, baseType: !5, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1161, file: !6, line: 41, baseType: !1165, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!605}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1161, file: !6, line: 42, baseType: !1169, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!33}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1161, file: !6, line: 43, baseType: !1173, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!955, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1161, file: !6, line: 44, baseType: !1179, size: 64, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!955}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1161, file: !6, line: 45, baseType: !1183, size: 64, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !33}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1114, file: !1058, line: 144, baseType: !1187, size: 64, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!955, !1056}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1114, file: !1058, line: 145, baseType: !1191, size: 64, offset: 384)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !1056, !1194, !1202}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1196, line: 23, baseType: !1197)
!1196 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1196, line: 21, size: 32, elements: !1198)
!1198 = !{!1199}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1197, file: !1196, line: 22, baseType: !1200, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !31, line: 32, baseType: !1201)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !969, line: 49, baseType: !7)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1196, line: 28, baseType: !1204)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1196, line: 26, size: 32, elements: !1205)
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1204, file: !1196, line: 27, baseType: !1207, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !31, line: 33, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !969, line: 50, baseType: !7)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1057, file: !1058, line: 70, baseType: !1210, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !145, line: 123, size: 1024, elements: !1212)
!1212 = !{!1213, !1218, !1219, !1220, !1221, !1229, !1230, !1231, !1606, !1607, !1608, !1609, !1610}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1211, file: !145, line: 124, baseType: !1214, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !31, line: 168, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 166, size: 32, elements: !1216)
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1215, file: !31, line: 167, baseType: !65, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1211, file: !145, line: 125, baseType: !1214, size: 32, offset: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1211, file: !145, line: 135, baseType: !1210, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1211, file: !145, line: 136, baseType: !53, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1211, file: !145, line: 138, baseType: !1222, size: 192, align: 64, offset: 192)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1223, line: 24, size: 192, align: 64, elements: !1224)
!1223 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1224 = !{!1225, !1226, !1228}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1222, file: !1223, line: 25, baseType: !83, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1222, file: !1223, line: 26, baseType: !1227, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1222, file: !1223, line: 27, baseType: !1227, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1211, file: !145, line: 140, baseType: !955, size: 64, offset: 384)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1211, file: !145, line: 141, baseType: !7, size: 32, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !145, line: 142, baseType: !1232, size: 256, offset: 512)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !145, line: 142, size: 256, elements: !1233)
!1233 = !{!1234, !1297, !1301}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1232, file: !145, line: 143, baseType: !1235, size: 192)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !145, line: 91, size: 192, elements: !1236)
!1236 = !{!1237, !1238, !1242}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1235, file: !145, line: 92, baseType: !83, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1235, file: !145, line: 94, baseType: !1239, size: 64, offset: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1223, line: 31, size: 64, elements: !1240)
!1240 = !{!1241}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1239, file: !1223, line: 32, baseType: !1227, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1235, file: !145, line: 100, baseType: !1243, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !145, line: 180, size: 704, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1261, !1262, !1263, !1289, !1290}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1244, file: !145, line: 182, baseType: !1210, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1244, file: !145, line: 183, baseType: !7, size: 32, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1244, file: !145, line: 186, baseType: !1249, size: 192, offset: 128)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1250, line: 19, size: 192, elements: !1251)
!1250 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1251 = !{!1252, !1259, !1260}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1249, file: !1250, line: 20, baseType: !1253, size: 128)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1254, line: 292, size: 128, elements: !1255)
!1254 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1255 = !{!1256, !1257, !1258}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1253, file: !1254, line: 293, baseType: !177)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1253, file: !1254, line: 295, baseType: !32, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1253, file: !1254, line: 296, baseType: !33, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1249, file: !1250, line: 21, baseType: !7, size: 32, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1249, file: !1250, line: 22, baseType: !7, size: 32, offset: 160)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1244, file: !145, line: 187, baseType: !194, size: 32, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1244, file: !145, line: 188, baseType: !194, size: 32, offset: 352)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1244, file: !145, line: 189, baseType: !1264, size: 64, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !145, line: 168, size: 320, elements: !1266)
!1266 = !{!1267, !1273, !1277, !1281, !1285}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1265, file: !145, line: 169, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!65, !1271, !1243}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1055, line: 539, flags: DIFlagFwdDecl)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1265, file: !145, line: 171, baseType: !1274, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!65, !1210, !53, !1042}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1265, file: !145, line: 173, baseType: !1278, size: 64, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!65, !1210}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1265, file: !145, line: 174, baseType: !1282, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!65, !1210, !1210, !53}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1265, file: !145, line: 176, baseType: !1286, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!65, !1271, !1210, !1243}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1244, file: !145, line: 192, baseType: !1062, size: 128, offset: 448)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1244, file: !145, line: 194, baseType: !1291, size: 128, offset: 576)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1292, line: 40, baseType: !1293)
!1292 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1292, line: 36, size: 128, elements: !1294)
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1293, file: !1292, line: 37, baseType: !177)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1293, file: !1292, line: 38, baseType: !1062, size: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1232, file: !145, line: 144, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !145, line: 103, size: 64, elements: !1299)
!1299 = !{!1300}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1298, file: !145, line: 104, baseType: !1210, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1232, file: !145, line: 145, baseType: !1302, size: 256)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !145, line: 107, size: 256, elements: !1303)
!1303 = !{!1304, !1601, !1604, !1605}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1302, file: !145, line: 108, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !145, line: 217, size: 768, elements: !1308)
!1308 = !{!1309, !1348, !1352, !1356, !1363, !1367, !1371, !1375, !1376, !1377, !1378, !1386}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1307, file: !145, line: 222, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!65, !1313}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !145, line: 197, size: 1088, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1314, file: !145, line: 199, baseType: !1210, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1314, file: !145, line: 200, baseType: !1053, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1314, file: !145, line: 201, baseType: !1271, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1314, file: !145, line: 202, baseType: !33, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1314, file: !145, line: 205, baseType: !1321, size: 192, offset: 256)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1322, line: 53, size: 192, elements: !1323)
!1322 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1323 = !{!1324, !1334, !1335}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1321, file: !1322, line: 54, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1326, line: 13, baseType: !1327)
!1326 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !31, line: 175, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 173, size: 64, elements: !1329)
!1329 = !{!1330}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1328, file: !31, line: 174, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !27, line: 22, baseType: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !29, line: 30, baseType: !1333)
!1333 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1321, file: !1322, line: 55, baseType: !177, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1321, file: !1322, line: 59, baseType: !1062, size: 128, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1314, file: !145, line: 206, baseType: !1321, size: 192, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1314, file: !145, line: 207, baseType: !65, size: 32, offset: 640)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1314, file: !145, line: 208, baseType: !1062, size: 128, offset: 704)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1314, file: !145, line: 209, baseType: !1029, size: 64, offset: 832)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1314, file: !145, line: 211, baseType: !967, size: 64, offset: 896)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1314, file: !145, line: 212, baseType: !605, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1314, file: !145, line: 213, baseType: !605, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1314, file: !145, line: 214, baseType: !1344, size: 64, offset: 1024)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1346)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1347, line: 356, flags: DIFlagFwdDecl)
!1347 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1307, file: !145, line: 223, baseType: !1349, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !1313}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1307, file: !145, line: 236, baseType: !1353, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!65, !1271, !33}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1307, file: !145, line: 238, baseType: !1357, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!33, !1271, !1360}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !31, line: 46, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !969, line: 88, baseType: !1333)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1307, file: !145, line: 239, baseType: !1364, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!33, !1271, !33, !1360}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1307, file: !145, line: 240, baseType: !1368, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !1271, !33}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1307, file: !145, line: 242, baseType: !1372, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!1050, !1313, !1029, !967, !1361}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1307, file: !145, line: 252, baseType: !967, size: 64, offset: 448)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1307, file: !145, line: 259, baseType: !605, size: 8, offset: 512)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1307, file: !145, line: 260, baseType: !1372, size: 64, offset: 576)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1307, file: !145, line: 263, baseType: !1379, size: 64, offset: 640)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!1382, !1313, !1384}
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1383, line: 52, baseType: !7)
!1383 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !145, line: 27, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1307, file: !145, line: 266, baseType: !1387, size: 64, offset: 704)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!65, !1313, !1390}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1347, line: 305, size: 1472, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1398, !1399, !1578, !1584, !1585, !1590, !1591, !1594, !1595, !1596, !1597, !1598, !1599}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1391, file: !1347, line: 308, baseType: !83, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1391, file: !1347, line: 309, baseType: !83, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1391, file: !1347, line: 313, baseType: !1390, size: 64, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1391, file: !1347, line: 313, baseType: !1390, size: 64, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1391, file: !1347, line: 315, baseType: !1222, size: 192, align: 64, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1391, file: !1347, line: 323, baseType: !83, size: 64, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1391, file: !1347, line: 327, baseType: !1400, size: 64, offset: 512)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1347, line: 388, size: 7296, elements: !1402)
!1402 = !{!1403, !1574}
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1401, file: !1347, line: 389, baseType: !1404, size: 7296)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1401, file: !1347, line: 389, size: 7296, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1409, !1413, !1414, !1415, !1416, !1417, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1466, !1474, !1477, !1519, !1520, !1545, !1546, !1549, !1552, !1553, !1556, !1557, !1558, !1561, !1573}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1404, file: !1347, line: 390, baseType: !1390, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1404, file: !1347, line: 391, baseType: !1239, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1404, file: !1347, line: 392, baseType: !26, size: 64, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1404, file: !1347, line: 394, baseType: !1410, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!83, !1053, !83, !83, !83, !83}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1404, file: !1347, line: 398, baseType: !83, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1404, file: !1347, line: 399, baseType: !83, size: 64, offset: 320)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1404, file: !1347, line: 405, baseType: !83, size: 64, offset: 384)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1404, file: !1347, line: 406, baseType: !83, size: 64, offset: 448)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1404, file: !1347, line: 407, baseType: !1418, size: 64, offset: 512)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1055, line: 286, baseType: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1055, line: 286, size: 64, elements: !1421)
!1421 = !{!1422}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1420, file: !1055, line: 286, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1424, line: 18, baseType: !83)
!1424 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1404, file: !1347, line: 416, baseType: !1214, size: 32, offset: 576)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1404, file: !1347, line: 428, baseType: !1214, size: 32, offset: 608)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1404, file: !1347, line: 437, baseType: !1214, size: 32, offset: 640)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1404, file: !1347, line: 447, baseType: !1214, size: 32, offset: 672)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1404, file: !1347, line: 450, baseType: !1325, size: 64, offset: 704)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1404, file: !1347, line: 452, baseType: !65, size: 32, offset: 768)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1404, file: !1347, line: 454, baseType: !177, offset: 800)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1404, file: !1347, line: 457, baseType: !1433, size: 256, offset: 832)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1434, line: 35, size: 256, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1435 = !{!1436, !1437, !1438, !1439}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1433, file: !1434, line: 36, baseType: !1325, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1433, file: !1434, line: 42, baseType: !1325, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1433, file: !1434, line: 46, baseType: !787, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1433, file: !1434, line: 47, baseType: !1062, size: 128, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1404, file: !1347, line: 459, baseType: !1062, size: 128, offset: 1088)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1404, file: !1347, line: 466, baseType: !83, size: 64, offset: 1216)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1404, file: !1347, line: 467, baseType: !83, size: 64, offset: 1280)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1404, file: !1347, line: 469, baseType: !83, size: 64, offset: 1344)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1404, file: !1347, line: 470, baseType: !83, size: 64, offset: 1408)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1404, file: !1347, line: 471, baseType: !1327, size: 64, offset: 1472)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1404, file: !1347, line: 472, baseType: !83, size: 64, offset: 1536)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1404, file: !1347, line: 473, baseType: !83, size: 64, offset: 1600)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1404, file: !1347, line: 474, baseType: !83, size: 64, offset: 1664)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1404, file: !1347, line: 475, baseType: !83, size: 64, offset: 1728)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1404, file: !1347, line: 477, baseType: !177, offset: 1792)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1404, file: !1347, line: 478, baseType: !83, size: 64, offset: 1792)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1404, file: !1347, line: 478, baseType: !83, size: 64, offset: 1856)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1404, file: !1347, line: 478, baseType: !83, size: 64, offset: 1920)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1404, file: !1347, line: 478, baseType: !83, size: 64, offset: 1984)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1404, file: !1347, line: 479, baseType: !83, size: 64, offset: 2048)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1404, file: !1347, line: 479, baseType: !83, size: 64, offset: 2112)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1404, file: !1347, line: 479, baseType: !83, size: 64, offset: 2176)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1404, file: !1347, line: 480, baseType: !83, size: 64, offset: 2240)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1404, file: !1347, line: 480, baseType: !83, size: 64, offset: 2304)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1404, file: !1347, line: 480, baseType: !83, size: 64, offset: 2368)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1404, file: !1347, line: 480, baseType: !83, size: 64, offset: 2432)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1404, file: !1347, line: 482, baseType: !1463, size: 2816, offset: 2496)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 2816, elements: !1464)
!1464 = !{!1465}
!1465 = !DISubrange(count: 44)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1404, file: !1347, line: 488, baseType: !1467, size: 256, offset: 5312)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1468, line: 60, size: 256, elements: !1469)
!1468 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1469 = !{!1470}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1467, file: !1468, line: 61, baseType: !1471, size: 256)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1325, size: 256, elements: !1472)
!1472 = !{!1473}
!1473 = !DISubrange(count: 4)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1404, file: !1347, line: 490, baseType: !1475, size: 64, offset: 5568)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1347, line: 490, flags: DIFlagFwdDecl)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1404, file: !1347, line: 493, baseType: !1478, size: 896, offset: 5632)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1479, line: 53, baseType: !1480)
!1479 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1479, line: 13, size: 896, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1485, !1488, !1489, !1490, !1491, !1511, !1512, !1515}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1480, file: !1479, line: 18, baseType: !26, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1480, file: !1479, line: 28, baseType: !1327, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1480, file: !1479, line: 31, baseType: !1433, size: 256, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1480, file: !1479, line: 32, baseType: !1486, size: 64, offset: 384)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1479, line: 32, flags: DIFlagFwdDecl)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1480, file: !1479, line: 37, baseType: !1043, size: 16, offset: 448)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1480, file: !1479, line: 40, baseType: !1321, size: 192, offset: 512)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1480, file: !1479, line: 41, baseType: !33, size: 64, offset: 704)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1480, file: !1479, line: 42, baseType: !1492, size: 64, offset: 768)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1494)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1495, line: 13, size: 896, elements: !1496)
!1495 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1494, file: !1495, line: 14, baseType: !33, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1494, file: !1495, line: 15, baseType: !83, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1494, file: !1495, line: 17, baseType: !83, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1494, file: !1495, line: 17, baseType: !83, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1494, file: !1495, line: 19, baseType: !88, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1494, file: !1495, line: 21, baseType: !88, size: 64, offset: 320)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1494, file: !1495, line: 22, baseType: !88, size: 64, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1494, file: !1495, line: 23, baseType: !88, size: 64, offset: 448)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1494, file: !1495, line: 24, baseType: !88, size: 64, offset: 512)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1494, file: !1495, line: 25, baseType: !88, size: 64, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1494, file: !1495, line: 26, baseType: !88, size: 64, offset: 640)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1494, file: !1495, line: 27, baseType: !88, size: 64, offset: 704)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1494, file: !1495, line: 28, baseType: !88, size: 64, offset: 768)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1494, file: !1495, line: 29, baseType: !88, size: 64, offset: 832)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1480, file: !1479, line: 44, baseType: !1214, size: 32, offset: 832)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1480, file: !1479, line: 50, baseType: !1513, size: 16, offset: 864)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !27, line: 19, baseType: !1514)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !29, line: 24, baseType: !1043)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1480, file: !1479, line: 51, baseType: !1516, size: 16, offset: 880)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !27, line: 18, baseType: !1517)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !29, line: 23, baseType: !1518)
!1518 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1404, file: !1347, line: 495, baseType: !83, size: 64, offset: 6528)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1404, file: !1347, line: 497, baseType: !1521, size: 64, offset: 6592)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1347, line: 381, size: 384, elements: !1523)
!1523 = !{!1524, !1525, !1534}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1522, file: !1347, line: 382, baseType: !1214, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1522, file: !1347, line: 383, baseType: !1526, size: 128, offset: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1347, line: 376, size: 128, elements: !1527)
!1527 = !{!1528, !1532}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1526, file: !1347, line: 377, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1531, line: 9, flags: DIFlagFwdDecl)
!1531 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1526, file: !1347, line: 378, baseType: !1533, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1522, file: !1347, line: 384, baseType: !1535, size: 192, offset: 192)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1536, line: 26, size: 192, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1535, file: !1536, line: 27, baseType: !7, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1535, file: !1536, line: 28, baseType: !1540, size: 128, offset: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1541, line: 43, size: 128, elements: !1542)
!1541 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1540, file: !1541, line: 44, baseType: !787)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1540, file: !1541, line: 45, baseType: !1062, size: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1404, file: !1347, line: 500, baseType: !177, offset: 6656)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1404, file: !1347, line: 501, baseType: !1547, size: 64, offset: 6656)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1347, line: 387, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1404, file: !1347, line: 516, baseType: !1550, size: 64, offset: 6720)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1347, line: 516, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1404, file: !1347, line: 519, baseType: !1053, size: 64, offset: 6784)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1404, file: !1347, line: 521, baseType: !1554, size: 64, offset: 6848)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1347, line: 521, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1404, file: !1347, line: 545, baseType: !1214, size: 32, offset: 6912)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1404, file: !1347, line: 548, baseType: !605, size: 8, offset: 6944)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1404, file: !1347, line: 550, baseType: !1559, offset: 6952)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1560, line: 142, elements: !191)
!1560 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1404, file: !1347, line: 554, baseType: !1562, size: 256, offset: 6976)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1563, line: 102, size: 256, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1564 = !{!1565, !1566, !1567}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1562, file: !1563, line: 103, baseType: !1325, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1562, file: !1563, line: 104, baseType: !1062, size: 128, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1562, file: !1563, line: 105, baseType: !1568, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1563, line: 21, baseType: !1569)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !1572}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1404, file: !1347, line: 557, baseType: !194, size: 32, offset: 7232)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1401, file: !1347, line: 565, baseType: !1575, offset: 7296)
!1575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !1576)
!1576 = !{!1577}
!1577 = !DISubrange(count: -1)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1391, file: !1347, line: 333, baseType: !1579, size: 64, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1055, line: 284, baseType: !1580)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1055, line: 284, size: 64, elements: !1581)
!1581 = !{!1582}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1580, file: !1055, line: 284, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1424, line: 19, baseType: !83)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1391, file: !1347, line: 334, baseType: !83, size: 64, offset: 640)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1391, file: !1347, line: 343, baseType: !1586, size: 256, offset: 704)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1391, file: !1347, line: 340, size: 256, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1586, file: !1347, line: 341, baseType: !1222, size: 192, align: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1586, file: !1347, line: 342, baseType: !83, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1391, file: !1347, line: 351, baseType: !1062, size: 128, offset: 960)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1391, file: !1347, line: 353, baseType: !1592, size: 64, offset: 1088)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1347, line: 353, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1391, file: !1347, line: 356, baseType: !1344, size: 64, offset: 1152)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1391, file: !1347, line: 359, baseType: !83, size: 64, offset: 1216)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1391, file: !1347, line: 361, baseType: !1053, size: 64, offset: 1280)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1391, file: !1347, line: 362, baseType: !33, size: 64, offset: 1344)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1391, file: !1347, line: 365, baseType: !1325, size: 64, offset: 1408)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1391, file: !1347, line: 373, baseType: !1600, offset: 1472)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1347, line: 296, elements: !191)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1302, file: !145, line: 109, baseType: !1602, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !145, line: 31, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1302, file: !145, line: 110, baseType: !1361, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1302, file: !145, line: 111, baseType: !1210, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1211, file: !145, line: 148, baseType: !33, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1211, file: !145, line: 154, baseType: !26, size: 64, offset: 832)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1211, file: !145, line: 156, baseType: !1043, size: 16, offset: 896)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1211, file: !145, line: 157, baseType: !1042, size: 16, offset: 912)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1211, file: !145, line: 158, baseType: !1611, size: 64, offset: 960)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !145, line: 32, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1057, file: !1058, line: 71, baseType: !1614, size: 32, offset: 448)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1615, line: 19, size: 32, elements: !1616)
!1615 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1616 = !{!1617}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1614, file: !1615, line: 20, baseType: !1618, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1619, line: 113, baseType: !1620)
!1619 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1619, line: 111, size: 32, elements: !1621)
!1621 = !{!1622}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1620, file: !1619, line: 112, baseType: !1214, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1057, file: !1058, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1057, file: !1058, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1057, file: !1058, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1057, file: !1058, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1057, file: !1058, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1034, file: !1035, line: 174, baseType: !1047, size: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1034, file: !1035, line: 176, baseType: !1630, size: 64, offset: 384)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!65, !1053, !1056, !1151, !1390}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !920, file: !921, line: 58, baseType: !1025, size: 64, offset: 448)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !920, file: !921, line: 59, baseType: !919, size: 64, offset: 512)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !920, file: !921, line: 60, baseType: !919, size: 64, offset: 576)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !920, file: !921, line: 61, baseType: !919, size: 64, offset: 640)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !920, file: !921, line: 63, baseType: !1057, size: 512, offset: 704)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !920, file: !921, line: 65, baseType: !83, size: 64, offset: 1216)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !920, file: !921, line: 66, baseType: !33, size: 64, offset: 1280)
!1640 = !DILocalVariable(name: "dev", arg: 1, scope: !913, file: !3, line: 466, type: !916)
!1641 = !DILocation(line: 466, column: 57, scope: !913)
!1642 = !DILocalVariable(name: "np", arg: 2, scope: !913, file: !3, line: 467, type: !919)
!1643 = !DILocation(line: 467, column: 23, scope: !913)
!1644 = !DILocalVariable(name: "name", arg: 3, scope: !913, file: !3, line: 467, type: !53)
!1645 = !DILocation(line: 467, column: 39, scope: !913)
!1646 = !DILocalVariable(name: "parent_name", arg: 4, scope: !913, file: !3, line: 468, type: !53)
!1647 = !DILocation(line: 468, column: 15, scope: !913)
!1648 = !DILocalVariable(name: "parent_hw", arg: 5, scope: !913, file: !3, line: 468, type: !155)
!1649 = !DILocation(line: 468, column: 49, scope: !913)
!1650 = !DILocalVariable(name: "parent_data", arg: 6, scope: !913, file: !3, line: 469, type: !150)
!1651 = !DILocation(line: 469, column: 33, scope: !913)
!1652 = !DILocalVariable(name: "flags", arg: 7, scope: !913, file: !3, line: 469, type: !83)
!1653 = !DILocation(line: 469, column: 60, scope: !913)
!1654 = !DILocalVariable(name: "reg", arg: 8, scope: !913, file: !3, line: 470, type: !33)
!1655 = !DILocation(line: 470, column: 17, scope: !913)
!1656 = !DILocalVariable(name: "shift", arg: 9, scope: !913, file: !3, line: 470, type: !106)
!1657 = !DILocation(line: 470, column: 25, scope: !913)
!1658 = !DILocalVariable(name: "width", arg: 10, scope: !913, file: !3, line: 470, type: !106)
!1659 = !DILocation(line: 470, column: 35, scope: !913)
!1660 = !DILocalVariable(name: "clk_divider_flags", arg: 11, scope: !913, file: !3, line: 470, type: !106)
!1661 = !DILocation(line: 470, column: 45, scope: !913)
!1662 = !DILocalVariable(name: "table", arg: 12, scope: !913, file: !3, line: 471, type: !169)
!1663 = !DILocation(line: 471, column: 31, scope: !913)
!1664 = !DILocalVariable(name: "lock", arg: 13, scope: !913, file: !3, line: 471, type: !176)
!1665 = !DILocation(line: 471, column: 50, scope: !913)
!1666 = !DILocalVariable(name: "div", scope: !913, file: !3, line: 473, type: !34)
!1667 = !DILocation(line: 473, column: 22, scope: !913)
!1668 = !DILocalVariable(name: "hw", scope: !913, file: !3, line: 474, type: !66)
!1669 = !DILocation(line: 474, column: 17, scope: !913)
!1670 = !DILocalVariable(name: "init", scope: !913, file: !3, line: 475, type: !50)
!1671 = !DILocation(line: 475, column: 23, scope: !913)
!1672 = !DILocalVariable(name: "ret", scope: !913, file: !3, line: 476, type: !65)
!1673 = !DILocation(line: 476, column: 6, scope: !913)
!1674 = !DILocation(line: 478, column: 6, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !913, file: !3, line: 478, column: 6)
!1676 = !DILocation(line: 478, column: 24, scope: !1675)
!1677 = !DILocation(line: 478, column: 6, scope: !913)
!1678 = !DILocation(line: 479, column: 7, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 479, column: 7)
!1680 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 478, column: 51)
!1681 = !DILocation(line: 479, column: 15, scope: !1679)
!1682 = !DILocation(line: 479, column: 13, scope: !1679)
!1683 = !DILocation(line: 479, column: 21, scope: !1679)
!1684 = !DILocation(line: 479, column: 7, scope: !1680)
!1685 = !DILocation(line: 480, column: 4, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 479, column: 27)
!1687 = !DILocation(line: 481, column: 11, scope: !1686)
!1688 = !DILocation(line: 481, column: 4, scope: !1686)
!1689 = !DILocation(line: 483, column: 2, scope: !1680)
!1690 = !DILocation(line: 486, column: 8, scope: !913)
!1691 = !DILocation(line: 486, column: 6, scope: !913)
!1692 = !DILocation(line: 487, column: 7, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !913, file: !3, line: 487, column: 6)
!1694 = !DILocation(line: 487, column: 6, scope: !913)
!1695 = !DILocation(line: 488, column: 10, scope: !1693)
!1696 = !DILocation(line: 488, column: 3, scope: !1693)
!1697 = !DILocation(line: 490, column: 14, scope: !913)
!1698 = !DILocation(line: 490, column: 7, scope: !913)
!1699 = !DILocation(line: 490, column: 12, scope: !913)
!1700 = !DILocation(line: 491, column: 6, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !913, file: !3, line: 491, column: 6)
!1702 = !DILocation(line: 491, column: 24, scope: !1701)
!1703 = !DILocation(line: 491, column: 6, scope: !913)
!1704 = !DILocation(line: 492, column: 8, scope: !1701)
!1705 = !DILocation(line: 492, column: 12, scope: !1701)
!1706 = !DILocation(line: 492, column: 3, scope: !1701)
!1707 = !DILocation(line: 494, column: 8, scope: !1701)
!1708 = !DILocation(line: 494, column: 12, scope: !1701)
!1709 = !DILocation(line: 495, column: 15, scope: !913)
!1710 = !DILocation(line: 495, column: 7, scope: !913)
!1711 = !DILocation(line: 495, column: 13, scope: !913)
!1712 = !DILocation(line: 496, column: 23, scope: !913)
!1713 = !DILocation(line: 496, column: 7, scope: !913)
!1714 = !DILocation(line: 496, column: 20, scope: !913)
!1715 = !DILocation(line: 497, column: 22, scope: !913)
!1716 = !DILocation(line: 497, column: 21, scope: !913)
!1717 = !DILocation(line: 497, column: 7, scope: !913)
!1718 = !DILocation(line: 497, column: 19, scope: !913)
!1719 = !DILocation(line: 500, column: 13, scope: !913)
!1720 = !DILocation(line: 500, column: 2, scope: !913)
!1721 = !DILocation(line: 500, column: 7, scope: !913)
!1722 = !DILocation(line: 500, column: 11, scope: !913)
!1723 = !DILocation(line: 501, column: 15, scope: !913)
!1724 = !DILocation(line: 501, column: 2, scope: !913)
!1725 = !DILocation(line: 501, column: 7, scope: !913)
!1726 = !DILocation(line: 501, column: 13, scope: !913)
!1727 = !DILocation(line: 502, column: 15, scope: !913)
!1728 = !DILocation(line: 502, column: 2, scope: !913)
!1729 = !DILocation(line: 502, column: 7, scope: !913)
!1730 = !DILocation(line: 502, column: 13, scope: !913)
!1731 = !DILocation(line: 503, column: 15, scope: !913)
!1732 = !DILocation(line: 503, column: 2, scope: !913)
!1733 = !DILocation(line: 503, column: 7, scope: !913)
!1734 = !DILocation(line: 503, column: 13, scope: !913)
!1735 = !DILocation(line: 504, column: 14, scope: !913)
!1736 = !DILocation(line: 504, column: 2, scope: !913)
!1737 = !DILocation(line: 504, column: 7, scope: !913)
!1738 = !DILocation(line: 504, column: 12, scope: !913)
!1739 = !DILocation(line: 505, column: 2, scope: !913)
!1740 = !DILocation(line: 505, column: 7, scope: !913)
!1741 = !DILocation(line: 505, column: 10, scope: !913)
!1742 = !DILocation(line: 505, column: 15, scope: !913)
!1743 = !DILocation(line: 506, column: 15, scope: !913)
!1744 = !DILocation(line: 506, column: 2, scope: !913)
!1745 = !DILocation(line: 506, column: 7, scope: !913)
!1746 = !DILocation(line: 506, column: 13, scope: !913)
!1747 = !DILocation(line: 509, column: 8, scope: !913)
!1748 = !DILocation(line: 509, column: 13, scope: !913)
!1749 = !DILocation(line: 509, column: 5, scope: !913)
!1750 = !DILocation(line: 510, column: 24, scope: !913)
!1751 = !DILocation(line: 510, column: 29, scope: !913)
!1752 = !DILocation(line: 510, column: 8, scope: !913)
!1753 = !DILocation(line: 510, column: 6, scope: !913)
!1754 = !DILocation(line: 511, column: 6, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !913, file: !3, line: 511, column: 6)
!1756 = !DILocation(line: 511, column: 6, scope: !913)
!1757 = !DILocation(line: 512, column: 9, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 511, column: 11)
!1759 = !DILocation(line: 512, column: 3, scope: !1758)
!1760 = !DILocation(line: 513, column: 16, scope: !1758)
!1761 = !DILocation(line: 513, column: 8, scope: !1758)
!1762 = !DILocation(line: 513, column: 6, scope: !1758)
!1763 = !DILocation(line: 514, column: 2, scope: !1758)
!1764 = !DILocation(line: 516, column: 9, scope: !913)
!1765 = !DILocation(line: 516, column: 2, scope: !913)
!1766 = !DILocation(line: 517, column: 1, scope: !913)
!1767 = distinct !DISubprogram(name: "ERR_PTR", scope: !1768, file: !1768, line: 24, type: !1769, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!1768 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!33, !88}
!1771 = !DILocalVariable(name: "error", arg: 1, scope: !1767, file: !1768, line: 24, type: !88)
!1772 = !DILocation(line: 24, column: 48, scope: !1767)
!1773 = !DILocation(line: 26, column: 18, scope: !1767)
!1774 = !DILocation(line: 26, column: 9, scope: !1767)
!1775 = !DILocation(line: 26, column: 2, scope: !1767)
!1776 = distinct !DISubprogram(name: "kzalloc", scope: !18, file: !18, line: 662, type: !1777, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!33, !967, !32}
!1779 = !DILocalVariable(name: "s", arg: 1, scope: !1780, file: !18, line: 445, type: !1783)
!1780 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !18, file: !18, line: 445, type: !1781, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!33, !1783, !32, !967}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1347, line: 117, flags: DIFlagFwdDecl)
!1785 = !DILocation(line: 445, column: 72, scope: !1780, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 552, column: 10, scope: !1787, inlinedAt: !1790)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !18, line: 540, column: 34)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !18, line: 540, column: 6)
!1789 = distinct !DISubprogram(name: "kmalloc", scope: !18, file: !18, line: 538, type: !1777, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!1790 = distinct !DILocation(line: 664, column: 9, scope: !1776)
!1791 = !DILocalVariable(name: "flags", arg: 2, scope: !1780, file: !18, line: 446, type: !32)
!1792 = !DILocation(line: 446, column: 9, scope: !1780, inlinedAt: !1786)
!1793 = !DILocalVariable(name: "size", arg: 3, scope: !1780, file: !18, line: 446, type: !967)
!1794 = !DILocation(line: 446, column: 23, scope: !1780, inlinedAt: !1786)
!1795 = !DILocalVariable(name: "ret", scope: !1780, file: !18, line: 448, type: !33)
!1796 = !DILocation(line: 448, column: 8, scope: !1780, inlinedAt: !1786)
!1797 = !DILocalVariable(name: "flags", arg: 1, scope: !1798, file: !18, line: 318, type: !32)
!1798 = distinct !DISubprogram(name: "kmalloc_type", scope: !18, file: !18, line: 318, type: !1799, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!17, !32}
!1801 = !DILocation(line: 318, column: 67, scope: !1798, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 553, column: 20, scope: !1787, inlinedAt: !1790)
!1803 = !DILocalVariable(name: "size", arg: 1, scope: !1804, file: !18, line: 346, type: !967)
!1804 = distinct !DISubprogram(name: "kmalloc_index", scope: !18, file: !18, line: 346, type: !1805, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!7, !967}
!1807 = !DILocation(line: 346, column: 58, scope: !1804, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 547, column: 11, scope: !1787, inlinedAt: !1790)
!1809 = !DILocalVariable(name: "size", arg: 1, scope: !1810, file: !18, line: 472, type: !967)
!1810 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !18, file: !18, line: 472, type: !1811, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!33, !967, !32, !7}
!1813 = !DILocation(line: 472, column: 28, scope: !1810, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 481, column: 9, scope: !1815, inlinedAt: !1816)
!1815 = distinct !DISubprogram(name: "kmalloc_large", scope: !18, file: !18, line: 478, type: !1777, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!1816 = distinct !DILocation(line: 545, column: 11, scope: !1817, inlinedAt: !1790)
!1817 = distinct !DILexicalBlock(scope: !1787, file: !18, line: 544, column: 7)
!1818 = !DILocalVariable(name: "flags", arg: 2, scope: !1810, file: !18, line: 472, type: !32)
!1819 = !DILocation(line: 472, column: 40, scope: !1810, inlinedAt: !1814)
!1820 = !DILocalVariable(name: "order", arg: 3, scope: !1810, file: !18, line: 472, type: !7)
!1821 = !DILocation(line: 472, column: 60, scope: !1810, inlinedAt: !1814)
!1822 = !DILocalVariable(name: "size", arg: 1, scope: !1815, file: !18, line: 478, type: !967)
!1823 = !DILocation(line: 478, column: 51, scope: !1815, inlinedAt: !1816)
!1824 = !DILocalVariable(name: "flags", arg: 2, scope: !1815, file: !18, line: 478, type: !32)
!1825 = !DILocation(line: 478, column: 63, scope: !1815, inlinedAt: !1816)
!1826 = !DILocalVariable(name: "order", scope: !1815, file: !18, line: 480, type: !7)
!1827 = !DILocation(line: 480, column: 15, scope: !1815, inlinedAt: !1816)
!1828 = !DILocalVariable(name: "size", arg: 1, scope: !1789, file: !18, line: 538, type: !967)
!1829 = !DILocation(line: 538, column: 45, scope: !1789, inlinedAt: !1790)
!1830 = !DILocalVariable(name: "flags", arg: 2, scope: !1789, file: !18, line: 538, type: !32)
!1831 = !DILocation(line: 538, column: 57, scope: !1789, inlinedAt: !1790)
!1832 = !DILocalVariable(name: "index", scope: !1787, file: !18, line: 542, type: !7)
!1833 = !DILocation(line: 542, column: 16, scope: !1787, inlinedAt: !1790)
!1834 = !DILocalVariable(name: "size", arg: 1, scope: !1776, file: !18, line: 662, type: !967)
!1835 = !DILocation(line: 662, column: 36, scope: !1776)
!1836 = !DILocalVariable(name: "flags", arg: 2, scope: !1776, file: !18, line: 662, type: !32)
!1837 = !DILocation(line: 662, column: 48, scope: !1776)
!1838 = !DILocation(line: 664, column: 17, scope: !1776)
!1839 = !DILocation(line: 664, column: 23, scope: !1776)
!1840 = !DILocation(line: 664, column: 29, scope: !1776)
!1841 = !DILocation(line: 540, column: 27, scope: !1788, inlinedAt: !1790)
!1842 = !DILocation(line: 540, column: 6, scope: !1788, inlinedAt: !1790)
!1843 = !DILocation(line: 540, column: 6, scope: !1789, inlinedAt: !1790)
!1844 = !DILocation(line: 544, column: 7, scope: !1817, inlinedAt: !1790)
!1845 = !DILocation(line: 544, column: 12, scope: !1817, inlinedAt: !1790)
!1846 = !DILocation(line: 544, column: 7, scope: !1787, inlinedAt: !1790)
!1847 = !DILocation(line: 545, column: 25, scope: !1817, inlinedAt: !1790)
!1848 = !DILocation(line: 545, column: 31, scope: !1817, inlinedAt: !1790)
!1849 = !DILocation(line: 480, column: 33, scope: !1815, inlinedAt: !1816)
!1850 = !DILocation(line: 480, column: 23, scope: !1815, inlinedAt: !1816)
!1851 = !DILocation(line: 481, column: 29, scope: !1815, inlinedAt: !1816)
!1852 = !DILocation(line: 481, column: 35, scope: !1815, inlinedAt: !1816)
!1853 = !DILocation(line: 481, column: 42, scope: !1815, inlinedAt: !1816)
!1854 = !DILocation(line: 474, column: 23, scope: !1810, inlinedAt: !1814)
!1855 = !DILocation(line: 474, column: 29, scope: !1810, inlinedAt: !1814)
!1856 = !DILocation(line: 474, column: 36, scope: !1810, inlinedAt: !1814)
!1857 = !DILocation(line: 474, column: 9, scope: !1810, inlinedAt: !1814)
!1858 = !DILocation(line: 545, column: 4, scope: !1817, inlinedAt: !1790)
!1859 = !DILocation(line: 547, column: 25, scope: !1787, inlinedAt: !1790)
!1860 = !DILocation(line: 348, column: 7, scope: !1861, inlinedAt: !1808)
!1861 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 348, column: 6)
!1862 = !DILocation(line: 348, column: 6, scope: !1804, inlinedAt: !1808)
!1863 = !DILocation(line: 349, column: 3, scope: !1861, inlinedAt: !1808)
!1864 = !DILocation(line: 351, column: 6, scope: !1865, inlinedAt: !1808)
!1865 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 351, column: 6)
!1866 = !DILocation(line: 351, column: 11, scope: !1865, inlinedAt: !1808)
!1867 = !DILocation(line: 351, column: 6, scope: !1804, inlinedAt: !1808)
!1868 = !DILocation(line: 352, column: 3, scope: !1865, inlinedAt: !1808)
!1869 = !DILocation(line: 354, column: 32, scope: !1870, inlinedAt: !1808)
!1870 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 354, column: 6)
!1871 = !DILocation(line: 354, column: 37, scope: !1870, inlinedAt: !1808)
!1872 = !DILocation(line: 354, column: 42, scope: !1870, inlinedAt: !1808)
!1873 = !DILocation(line: 354, column: 45, scope: !1870, inlinedAt: !1808)
!1874 = !DILocation(line: 354, column: 50, scope: !1870, inlinedAt: !1808)
!1875 = !DILocation(line: 354, column: 6, scope: !1804, inlinedAt: !1808)
!1876 = !DILocation(line: 355, column: 3, scope: !1870, inlinedAt: !1808)
!1877 = !DILocation(line: 356, column: 32, scope: !1878, inlinedAt: !1808)
!1878 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 356, column: 6)
!1879 = !DILocation(line: 356, column: 37, scope: !1878, inlinedAt: !1808)
!1880 = !DILocation(line: 356, column: 43, scope: !1878, inlinedAt: !1808)
!1881 = !DILocation(line: 356, column: 46, scope: !1878, inlinedAt: !1808)
!1882 = !DILocation(line: 356, column: 51, scope: !1878, inlinedAt: !1808)
!1883 = !DILocation(line: 356, column: 6, scope: !1804, inlinedAt: !1808)
!1884 = !DILocation(line: 357, column: 3, scope: !1878, inlinedAt: !1808)
!1885 = !DILocation(line: 358, column: 6, scope: !1886, inlinedAt: !1808)
!1886 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 358, column: 6)
!1887 = !DILocation(line: 358, column: 11, scope: !1886, inlinedAt: !1808)
!1888 = !DILocation(line: 358, column: 6, scope: !1804, inlinedAt: !1808)
!1889 = !DILocation(line: 358, column: 26, scope: !1886, inlinedAt: !1808)
!1890 = !DILocation(line: 359, column: 6, scope: !1891, inlinedAt: !1808)
!1891 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 359, column: 6)
!1892 = !DILocation(line: 359, column: 11, scope: !1891, inlinedAt: !1808)
!1893 = !DILocation(line: 359, column: 6, scope: !1804, inlinedAt: !1808)
!1894 = !DILocation(line: 359, column: 26, scope: !1891, inlinedAt: !1808)
!1895 = !DILocation(line: 360, column: 6, scope: !1896, inlinedAt: !1808)
!1896 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 360, column: 6)
!1897 = !DILocation(line: 360, column: 11, scope: !1896, inlinedAt: !1808)
!1898 = !DILocation(line: 360, column: 6, scope: !1804, inlinedAt: !1808)
!1899 = !DILocation(line: 360, column: 26, scope: !1896, inlinedAt: !1808)
!1900 = !DILocation(line: 361, column: 6, scope: !1901, inlinedAt: !1808)
!1901 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 361, column: 6)
!1902 = !DILocation(line: 361, column: 11, scope: !1901, inlinedAt: !1808)
!1903 = !DILocation(line: 361, column: 6, scope: !1804, inlinedAt: !1808)
!1904 = !DILocation(line: 361, column: 26, scope: !1901, inlinedAt: !1808)
!1905 = !DILocation(line: 362, column: 6, scope: !1906, inlinedAt: !1808)
!1906 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 362, column: 6)
!1907 = !DILocation(line: 362, column: 11, scope: !1906, inlinedAt: !1808)
!1908 = !DILocation(line: 362, column: 6, scope: !1804, inlinedAt: !1808)
!1909 = !DILocation(line: 362, column: 26, scope: !1906, inlinedAt: !1808)
!1910 = !DILocation(line: 363, column: 6, scope: !1911, inlinedAt: !1808)
!1911 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 363, column: 6)
!1912 = !DILocation(line: 363, column: 11, scope: !1911, inlinedAt: !1808)
!1913 = !DILocation(line: 363, column: 6, scope: !1804, inlinedAt: !1808)
!1914 = !DILocation(line: 363, column: 26, scope: !1911, inlinedAt: !1808)
!1915 = !DILocation(line: 364, column: 6, scope: !1916, inlinedAt: !1808)
!1916 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 364, column: 6)
!1917 = !DILocation(line: 364, column: 11, scope: !1916, inlinedAt: !1808)
!1918 = !DILocation(line: 364, column: 6, scope: !1804, inlinedAt: !1808)
!1919 = !DILocation(line: 364, column: 26, scope: !1916, inlinedAt: !1808)
!1920 = !DILocation(line: 365, column: 6, scope: !1921, inlinedAt: !1808)
!1921 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 365, column: 6)
!1922 = !DILocation(line: 365, column: 11, scope: !1921, inlinedAt: !1808)
!1923 = !DILocation(line: 365, column: 6, scope: !1804, inlinedAt: !1808)
!1924 = !DILocation(line: 365, column: 26, scope: !1921, inlinedAt: !1808)
!1925 = !DILocation(line: 366, column: 6, scope: !1926, inlinedAt: !1808)
!1926 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 366, column: 6)
!1927 = !DILocation(line: 366, column: 11, scope: !1926, inlinedAt: !1808)
!1928 = !DILocation(line: 366, column: 6, scope: !1804, inlinedAt: !1808)
!1929 = !DILocation(line: 366, column: 26, scope: !1926, inlinedAt: !1808)
!1930 = !DILocation(line: 367, column: 6, scope: !1931, inlinedAt: !1808)
!1931 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 367, column: 6)
!1932 = !DILocation(line: 367, column: 11, scope: !1931, inlinedAt: !1808)
!1933 = !DILocation(line: 367, column: 6, scope: !1804, inlinedAt: !1808)
!1934 = !DILocation(line: 367, column: 26, scope: !1931, inlinedAt: !1808)
!1935 = !DILocation(line: 368, column: 6, scope: !1936, inlinedAt: !1808)
!1936 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 368, column: 6)
!1937 = !DILocation(line: 368, column: 11, scope: !1936, inlinedAt: !1808)
!1938 = !DILocation(line: 368, column: 6, scope: !1804, inlinedAt: !1808)
!1939 = !DILocation(line: 368, column: 26, scope: !1936, inlinedAt: !1808)
!1940 = !DILocation(line: 369, column: 6, scope: !1941, inlinedAt: !1808)
!1941 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 369, column: 6)
!1942 = !DILocation(line: 369, column: 11, scope: !1941, inlinedAt: !1808)
!1943 = !DILocation(line: 369, column: 6, scope: !1804, inlinedAt: !1808)
!1944 = !DILocation(line: 369, column: 26, scope: !1941, inlinedAt: !1808)
!1945 = !DILocation(line: 370, column: 6, scope: !1946, inlinedAt: !1808)
!1946 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 370, column: 6)
!1947 = !DILocation(line: 370, column: 11, scope: !1946, inlinedAt: !1808)
!1948 = !DILocation(line: 370, column: 6, scope: !1804, inlinedAt: !1808)
!1949 = !DILocation(line: 370, column: 26, scope: !1946, inlinedAt: !1808)
!1950 = !DILocation(line: 371, column: 6, scope: !1951, inlinedAt: !1808)
!1951 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 371, column: 6)
!1952 = !DILocation(line: 371, column: 11, scope: !1951, inlinedAt: !1808)
!1953 = !DILocation(line: 371, column: 6, scope: !1804, inlinedAt: !1808)
!1954 = !DILocation(line: 371, column: 26, scope: !1951, inlinedAt: !1808)
!1955 = !DILocation(line: 372, column: 6, scope: !1956, inlinedAt: !1808)
!1956 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 372, column: 6)
!1957 = !DILocation(line: 372, column: 11, scope: !1956, inlinedAt: !1808)
!1958 = !DILocation(line: 372, column: 6, scope: !1804, inlinedAt: !1808)
!1959 = !DILocation(line: 372, column: 26, scope: !1956, inlinedAt: !1808)
!1960 = !DILocation(line: 373, column: 6, scope: !1961, inlinedAt: !1808)
!1961 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 373, column: 6)
!1962 = !DILocation(line: 373, column: 11, scope: !1961, inlinedAt: !1808)
!1963 = !DILocation(line: 373, column: 6, scope: !1804, inlinedAt: !1808)
!1964 = !DILocation(line: 373, column: 26, scope: !1961, inlinedAt: !1808)
!1965 = !DILocation(line: 374, column: 6, scope: !1966, inlinedAt: !1808)
!1966 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 374, column: 6)
!1967 = !DILocation(line: 374, column: 11, scope: !1966, inlinedAt: !1808)
!1968 = !DILocation(line: 374, column: 6, scope: !1804, inlinedAt: !1808)
!1969 = !DILocation(line: 374, column: 26, scope: !1966, inlinedAt: !1808)
!1970 = !DILocation(line: 375, column: 6, scope: !1971, inlinedAt: !1808)
!1971 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 375, column: 6)
!1972 = !DILocation(line: 375, column: 11, scope: !1971, inlinedAt: !1808)
!1973 = !DILocation(line: 375, column: 6, scope: !1804, inlinedAt: !1808)
!1974 = !DILocation(line: 375, column: 27, scope: !1971, inlinedAt: !1808)
!1975 = !DILocation(line: 376, column: 6, scope: !1976, inlinedAt: !1808)
!1976 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 376, column: 6)
!1977 = !DILocation(line: 376, column: 11, scope: !1976, inlinedAt: !1808)
!1978 = !DILocation(line: 376, column: 6, scope: !1804, inlinedAt: !1808)
!1979 = !DILocation(line: 376, column: 32, scope: !1976, inlinedAt: !1808)
!1980 = !DILocation(line: 377, column: 6, scope: !1981, inlinedAt: !1808)
!1981 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 377, column: 6)
!1982 = !DILocation(line: 377, column: 11, scope: !1981, inlinedAt: !1808)
!1983 = !DILocation(line: 377, column: 6, scope: !1804, inlinedAt: !1808)
!1984 = !DILocation(line: 377, column: 32, scope: !1981, inlinedAt: !1808)
!1985 = !DILocation(line: 378, column: 6, scope: !1986, inlinedAt: !1808)
!1986 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 378, column: 6)
!1987 = !DILocation(line: 378, column: 11, scope: !1986, inlinedAt: !1808)
!1988 = !DILocation(line: 378, column: 6, scope: !1804, inlinedAt: !1808)
!1989 = !DILocation(line: 378, column: 32, scope: !1986, inlinedAt: !1808)
!1990 = !DILocation(line: 379, column: 6, scope: !1991, inlinedAt: !1808)
!1991 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 379, column: 6)
!1992 = !DILocation(line: 379, column: 11, scope: !1991, inlinedAt: !1808)
!1993 = !DILocation(line: 379, column: 6, scope: !1804, inlinedAt: !1808)
!1994 = !DILocation(line: 379, column: 33, scope: !1991, inlinedAt: !1808)
!1995 = !DILocation(line: 380, column: 6, scope: !1996, inlinedAt: !1808)
!1996 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 380, column: 6)
!1997 = !DILocation(line: 380, column: 11, scope: !1996, inlinedAt: !1808)
!1998 = !DILocation(line: 380, column: 6, scope: !1804, inlinedAt: !1808)
!1999 = !DILocation(line: 380, column: 33, scope: !1996, inlinedAt: !1808)
!2000 = !DILocation(line: 381, column: 6, scope: !2001, inlinedAt: !1808)
!2001 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 381, column: 6)
!2002 = !DILocation(line: 381, column: 11, scope: !2001, inlinedAt: !1808)
!2003 = !DILocation(line: 381, column: 6, scope: !1804, inlinedAt: !1808)
!2004 = !DILocation(line: 381, column: 33, scope: !2001, inlinedAt: !1808)
!2005 = !DILocation(line: 382, column: 2, scope: !2006, inlinedAt: !1808)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !18, line: 382, column: 2)
!2007 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 382, column: 2)
!2008 = !{i32 -2144068541, i32 -2144068512, i32 -2144068466, i32 -2144068408, i32 -2144068354, i32 -2144068300, i32 -2144068245, i32 -2144068214}
!2009 = !DILocation(line: 382, column: 2, scope: !2010, inlinedAt: !1808)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !18, line: 382, column: 2)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !18, line: 382, column: 2)
!2012 = !{i32 -2144067771, i32 -2144067764, i32 -2144067710, i32 -2144067679, i32 -2144067649}
!2013 = !DILocation(line: 382, column: 2, scope: !2011, inlinedAt: !1808)
!2014 = !DILocation(line: 386, column: 1, scope: !1804, inlinedAt: !1808)
!2015 = !DILocation(line: 547, column: 9, scope: !1787, inlinedAt: !1790)
!2016 = !DILocation(line: 549, column: 8, scope: !2017, inlinedAt: !1790)
!2017 = distinct !DILexicalBlock(scope: !1787, file: !18, line: 549, column: 7)
!2018 = !DILocation(line: 549, column: 7, scope: !1787, inlinedAt: !1790)
!2019 = !DILocation(line: 550, column: 4, scope: !2017, inlinedAt: !1790)
!2020 = !DILocation(line: 553, column: 33, scope: !1787, inlinedAt: !1790)
!2021 = !DILocation(line: 325, column: 6, scope: !2022, inlinedAt: !1802)
!2022 = distinct !DILexicalBlock(scope: !1798, file: !18, line: 325, column: 6)
!2023 = !DILocation(line: 325, column: 6, scope: !1798, inlinedAt: !1802)
!2024 = !DILocation(line: 326, column: 3, scope: !2022, inlinedAt: !1802)
!2025 = !DILocation(line: 332, column: 9, scope: !1798, inlinedAt: !1802)
!2026 = !DILocation(line: 332, column: 15, scope: !1798, inlinedAt: !1802)
!2027 = !DILocation(line: 332, column: 2, scope: !1798, inlinedAt: !1802)
!2028 = !DILocation(line: 336, column: 1, scope: !1798, inlinedAt: !1802)
!2029 = !DILocation(line: 553, column: 5, scope: !1787, inlinedAt: !1790)
!2030 = !DILocation(line: 553, column: 41, scope: !1787, inlinedAt: !1790)
!2031 = !DILocation(line: 554, column: 5, scope: !1787, inlinedAt: !1790)
!2032 = !DILocation(line: 554, column: 12, scope: !1787, inlinedAt: !1790)
!2033 = !DILocation(line: 448, column: 31, scope: !1780, inlinedAt: !1786)
!2034 = !DILocation(line: 448, column: 34, scope: !1780, inlinedAt: !1786)
!2035 = !DILocation(line: 448, column: 14, scope: !1780, inlinedAt: !1786)
!2036 = !DILocation(line: 450, column: 22, scope: !1780, inlinedAt: !1786)
!2037 = !DILocation(line: 450, column: 25, scope: !1780, inlinedAt: !1786)
!2038 = !DILocation(line: 450, column: 30, scope: !1780, inlinedAt: !1786)
!2039 = !DILocation(line: 450, column: 36, scope: !1780, inlinedAt: !1786)
!2040 = !DILocation(line: 450, column: 8, scope: !1780, inlinedAt: !1786)
!2041 = !DILocation(line: 450, column: 6, scope: !1780, inlinedAt: !1786)
!2042 = !DILocation(line: 451, column: 9, scope: !1780, inlinedAt: !1786)
!2043 = !DILocation(line: 552, column: 3, scope: !1787, inlinedAt: !1790)
!2044 = !DILocation(line: 557, column: 19, scope: !1789, inlinedAt: !1790)
!2045 = !DILocation(line: 557, column: 25, scope: !1789, inlinedAt: !1790)
!2046 = !DILocation(line: 557, column: 9, scope: !1789, inlinedAt: !1790)
!2047 = !DILocation(line: 557, column: 2, scope: !1789, inlinedAt: !1790)
!2048 = !DILocation(line: 558, column: 1, scope: !1789, inlinedAt: !1790)
!2049 = !DILocation(line: 664, column: 2, scope: !1776)
!2050 = distinct !DISubprogram(name: "clk_register_divider_table", scope: !3, file: !3, line: 534, type: !2051, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!45, !916, !53, !53, !83, !33, !106, !106, !106, !169, !176}
!2053 = !DILocalVariable(name: "dev", arg: 1, scope: !2050, file: !3, line: 534, type: !916)
!2054 = !DILocation(line: 534, column: 55, scope: !2050)
!2055 = !DILocalVariable(name: "name", arg: 2, scope: !2050, file: !3, line: 534, type: !53)
!2056 = !DILocation(line: 534, column: 72, scope: !2050)
!2057 = !DILocalVariable(name: "parent_name", arg: 3, scope: !2050, file: !3, line: 535, type: !53)
!2058 = !DILocation(line: 535, column: 15, scope: !2050)
!2059 = !DILocalVariable(name: "flags", arg: 4, scope: !2050, file: !3, line: 535, type: !83)
!2060 = !DILocation(line: 535, column: 42, scope: !2050)
!2061 = !DILocalVariable(name: "reg", arg: 5, scope: !2050, file: !3, line: 536, type: !33)
!2062 = !DILocation(line: 536, column: 17, scope: !2050)
!2063 = !DILocalVariable(name: "shift", arg: 6, scope: !2050, file: !3, line: 536, type: !106)
!2064 = !DILocation(line: 536, column: 25, scope: !2050)
!2065 = !DILocalVariable(name: "width", arg: 7, scope: !2050, file: !3, line: 536, type: !106)
!2066 = !DILocation(line: 536, column: 35, scope: !2050)
!2067 = !DILocalVariable(name: "clk_divider_flags", arg: 8, scope: !2050, file: !3, line: 537, type: !106)
!2068 = !DILocation(line: 537, column: 6, scope: !2050)
!2069 = !DILocalVariable(name: "table", arg: 9, scope: !2050, file: !3, line: 537, type: !169)
!2070 = !DILocation(line: 537, column: 53, scope: !2050)
!2071 = !DILocalVariable(name: "lock", arg: 10, scope: !2050, file: !3, line: 538, type: !176)
!2072 = !DILocation(line: 538, column: 15, scope: !2050)
!2073 = !DILocalVariable(name: "hw", scope: !2050, file: !3, line: 540, type: !66)
!2074 = !DILocation(line: 540, column: 17, scope: !2050)
!2075 = !DILocation(line: 542, column: 34, scope: !2050)
!2076 = !DILocation(line: 542, column: 45, scope: !2050)
!2077 = !DILocation(line: 542, column: 51, scope: !2050)
!2078 = !DILocation(line: 543, column: 10, scope: !2050)
!2079 = !DILocation(line: 543, column: 17, scope: !2050)
!2080 = !DILocation(line: 543, column: 22, scope: !2050)
!2081 = !DILocation(line: 543, column: 29, scope: !2050)
!2082 = !DILocation(line: 543, column: 36, scope: !2050)
!2083 = !DILocation(line: 544, column: 4, scope: !2050)
!2084 = !DILocation(line: 544, column: 11, scope: !2050)
!2085 = !DILocation(line: 542, column: 8, scope: !2050)
!2086 = !DILocation(line: 542, column: 5, scope: !2050)
!2087 = !DILocation(line: 545, column: 13, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 545, column: 6)
!2089 = !DILocation(line: 545, column: 6, scope: !2088)
!2090 = !DILocation(line: 545, column: 6, scope: !2050)
!2091 = !DILocation(line: 546, column: 19, scope: !2088)
!2092 = !DILocation(line: 546, column: 10, scope: !2088)
!2093 = !DILocation(line: 546, column: 3, scope: !2088)
!2094 = !DILocation(line: 547, column: 9, scope: !2050)
!2095 = !DILocation(line: 547, column: 13, scope: !2050)
!2096 = !DILocation(line: 547, column: 2, scope: !2050)
!2097 = !DILocation(line: 548, column: 1, scope: !2050)
!2098 = distinct !DISubprogram(name: "IS_ERR", scope: !1768, file: !1768, line: 34, type: !2099, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!605, !955}
!2101 = !DILocalVariable(name: "ptr", arg: 1, scope: !2098, file: !1768, line: 34, type: !955)
!2102 = !DILocation(line: 34, column: 60, scope: !2098)
!2103 = !DILocation(line: 36, column: 9, scope: !2098)
!2104 = !DILocation(line: 36, column: 2, scope: !2098)
!2105 = distinct !DISubprogram(name: "ERR_CAST", scope: !1768, file: !1768, line: 51, type: !2106, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!33, !955}
!2108 = !DILocalVariable(name: "ptr", arg: 1, scope: !2105, file: !1768, line: 51, type: !955)
!2109 = !DILocation(line: 51, column: 64, scope: !2105)
!2110 = !DILocation(line: 54, column: 18, scope: !2105)
!2111 = !DILocation(line: 54, column: 2, scope: !2105)
!2112 = distinct !DISubprogram(name: "clk_unregister_divider", scope: !3, file: !3, line: 551, type: !2113, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{null, !45}
!2115 = !DILocalVariable(name: "clk", arg: 1, scope: !2112, file: !3, line: 551, type: !45)
!2116 = !DILocation(line: 551, column: 41, scope: !2112)
!2117 = !DILocalVariable(name: "div", scope: !2112, file: !3, line: 553, type: !34)
!2118 = !DILocation(line: 553, column: 22, scope: !2112)
!2119 = !DILocalVariable(name: "hw", scope: !2112, file: !3, line: 554, type: !66)
!2120 = !DILocation(line: 554, column: 17, scope: !2112)
!2121 = !DILocation(line: 556, column: 20, scope: !2112)
!2122 = !DILocation(line: 556, column: 7, scope: !2112)
!2123 = !DILocation(line: 556, column: 5, scope: !2112)
!2124 = !DILocation(line: 557, column: 7, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 557, column: 6)
!2126 = !DILocation(line: 557, column: 6, scope: !2112)
!2127 = !DILocation(line: 558, column: 3, scope: !2125)
!2128 = !DILocalVariable(name: "__mptr", scope: !2129, file: !3, line: 560, type: !33)
!2129 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 560, column: 8)
!2130 = !DILocation(line: 560, column: 8, scope: !2129)
!2131 = !DILocation(line: 560, column: 8, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 560, column: 8)
!2133 = !DILocation(line: 560, column: 6, scope: !2112)
!2134 = !DILocation(line: 562, column: 17, scope: !2112)
!2135 = !DILocation(line: 562, column: 2, scope: !2112)
!2136 = !DILocation(line: 563, column: 8, scope: !2112)
!2137 = !DILocation(line: 563, column: 2, scope: !2112)
!2138 = !DILocation(line: 564, column: 1, scope: !2112)
!2139 = distinct !DISubprogram(name: "clk_hw_unregister_divider", scope: !3, file: !3, line: 571, type: !69, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2140 = !DILocalVariable(name: "hw", arg: 1, scope: !2139, file: !3, line: 571, type: !66)
!2141 = !DILocation(line: 571, column: 47, scope: !2139)
!2142 = !DILocalVariable(name: "div", scope: !2139, file: !3, line: 573, type: !34)
!2143 = !DILocation(line: 573, column: 22, scope: !2139)
!2144 = !DILocalVariable(name: "__mptr", scope: !2145, file: !3, line: 575, type: !33)
!2145 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 575, column: 8)
!2146 = !DILocation(line: 575, column: 8, scope: !2145)
!2147 = !DILocation(line: 575, column: 8, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 575, column: 8)
!2149 = !DILocation(line: 575, column: 6, scope: !2139)
!2150 = !DILocation(line: 577, column: 20, scope: !2139)
!2151 = !DILocation(line: 577, column: 2, scope: !2139)
!2152 = !DILocation(line: 578, column: 8, scope: !2139)
!2153 = !DILocation(line: 578, column: 2, scope: !2139)
!2154 = !DILocation(line: 579, column: 1, scope: !2139)
!2155 = distinct !DISubprogram(name: "_get_table_div", scope: !3, file: !3, line: 79, type: !2156, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!7, !169, !7}
!2158 = !DILocalVariable(name: "table", arg: 1, scope: !2155, file: !3, line: 79, type: !169)
!2159 = !DILocation(line: 79, column: 64, scope: !2155)
!2160 = !DILocalVariable(name: "val", arg: 2, scope: !2155, file: !3, line: 80, type: !7)
!2161 = !DILocation(line: 80, column: 21, scope: !2155)
!2162 = !DILocalVariable(name: "clkt", scope: !2155, file: !3, line: 82, type: !169)
!2163 = !DILocation(line: 82, column: 30, scope: !2155)
!2164 = !DILocation(line: 84, column: 14, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 84, column: 2)
!2166 = !DILocation(line: 84, column: 12, scope: !2165)
!2167 = !DILocation(line: 84, column: 7, scope: !2165)
!2168 = !DILocation(line: 84, column: 21, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 84, column: 2)
!2170 = !DILocation(line: 84, column: 27, scope: !2169)
!2171 = !DILocation(line: 84, column: 2, scope: !2165)
!2172 = !DILocation(line: 85, column: 7, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 85, column: 7)
!2174 = !DILocation(line: 85, column: 13, scope: !2173)
!2175 = !DILocation(line: 85, column: 20, scope: !2173)
!2176 = !DILocation(line: 85, column: 17, scope: !2173)
!2177 = !DILocation(line: 85, column: 7, scope: !2169)
!2178 = !DILocation(line: 86, column: 11, scope: !2173)
!2179 = !DILocation(line: 86, column: 17, scope: !2173)
!2180 = !DILocation(line: 86, column: 4, scope: !2173)
!2181 = !DILocation(line: 84, column: 36, scope: !2169)
!2182 = !DILocation(line: 84, column: 2, scope: !2169)
!2183 = distinct !{!2183, !2171, !2184}
!2184 = !DILocation(line: 86, column: 17, scope: !2165)
!2185 = !DILocation(line: 87, column: 2, scope: !2155)
!2186 = !DILocation(line: 88, column: 1, scope: !2155)
!2187 = distinct !DISubprogram(name: "_get_maxdiv", scope: !3, file: !3, line: 67, type: !2188, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!7, !169, !106, !83}
!2190 = !DILocalVariable(name: "table", arg: 1, scope: !2187, file: !3, line: 67, type: !169)
!2191 = !DILocation(line: 67, column: 61, scope: !2187)
!2192 = !DILocalVariable(name: "width", arg: 2, scope: !2187, file: !3, line: 67, type: !106)
!2193 = !DILocation(line: 67, column: 71, scope: !2187)
!2194 = !DILocalVariable(name: "flags", arg: 3, scope: !2187, file: !3, line: 68, type: !83)
!2195 = !DILocation(line: 68, column: 19, scope: !2187)
!2196 = !DILocation(line: 70, column: 6, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 70, column: 6)
!2198 = !DILocation(line: 70, column: 12, scope: !2197)
!2199 = !DILocation(line: 70, column: 6, scope: !2187)
!2200 = !DILocation(line: 71, column: 10, scope: !2197)
!2201 = !DILocation(line: 71, column: 3, scope: !2197)
!2202 = !DILocation(line: 72, column: 6, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 72, column: 6)
!2204 = !DILocation(line: 72, column: 12, scope: !2203)
!2205 = !DILocation(line: 72, column: 6, scope: !2187)
!2206 = !DILocation(line: 73, column: 15, scope: !2203)
!2207 = !DILocation(line: 73, column: 12, scope: !2203)
!2208 = !DILocation(line: 73, column: 3, scope: !2203)
!2209 = !DILocation(line: 74, column: 6, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 74, column: 6)
!2211 = !DILocation(line: 74, column: 6, scope: !2187)
!2212 = !DILocation(line: 75, column: 28, scope: !2210)
!2213 = !DILocation(line: 75, column: 35, scope: !2210)
!2214 = !DILocation(line: 75, column: 10, scope: !2210)
!2215 = !DILocation(line: 75, column: 3, scope: !2210)
!2216 = !DILocation(line: 76, column: 9, scope: !2187)
!2217 = !DILocation(line: 76, column: 29, scope: !2187)
!2218 = !DILocation(line: 76, column: 2, scope: !2187)
!2219 = !DILocation(line: 77, column: 1, scope: !2187)
!2220 = distinct !DISubprogram(name: "_div_round", scope: !3, file: !3, line: 256, type: !2221, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!65, !169, !83, !83, !83}
!2223 = !DILocalVariable(name: "table", arg: 1, scope: !2220, file: !3, line: 256, type: !169)
!2224 = !DILocation(line: 256, column: 51, scope: !2220)
!2225 = !DILocalVariable(name: "parent_rate", arg: 2, scope: !2220, file: !3, line: 257, type: !83)
!2226 = !DILocation(line: 257, column: 23, scope: !2220)
!2227 = !DILocalVariable(name: "rate", arg: 3, scope: !2220, file: !3, line: 257, type: !83)
!2228 = !DILocation(line: 257, column: 50, scope: !2220)
!2229 = !DILocalVariable(name: "flags", arg: 4, scope: !2220, file: !3, line: 258, type: !83)
!2230 = !DILocation(line: 258, column: 23, scope: !2220)
!2231 = !DILocation(line: 260, column: 6, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 260, column: 6)
!2233 = !DILocation(line: 260, column: 12, scope: !2232)
!2234 = !DILocation(line: 260, column: 6, scope: !2220)
!2235 = !DILocation(line: 261, column: 29, scope: !2232)
!2236 = !DILocation(line: 261, column: 36, scope: !2232)
!2237 = !DILocation(line: 261, column: 49, scope: !2232)
!2238 = !DILocation(line: 261, column: 55, scope: !2232)
!2239 = !DILocation(line: 261, column: 10, scope: !2232)
!2240 = !DILocation(line: 261, column: 3, scope: !2232)
!2241 = !DILocation(line: 263, column: 23, scope: !2220)
!2242 = !DILocation(line: 263, column: 30, scope: !2220)
!2243 = !DILocation(line: 263, column: 43, scope: !2220)
!2244 = !DILocation(line: 263, column: 49, scope: !2220)
!2245 = !DILocation(line: 263, column: 9, scope: !2220)
!2246 = !DILocation(line: 263, column: 2, scope: !2220)
!2247 = !DILocation(line: 264, column: 1, scope: !2220)
!2248 = distinct !DISubprogram(name: "_next_div", scope: !3, file: !3, line: 275, type: !2249, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!65, !169, !65, !83}
!2251 = !DILocalVariable(name: "table", arg: 1, scope: !2248, file: !3, line: 275, type: !169)
!2252 = !DILocation(line: 275, column: 50, scope: !2248)
!2253 = !DILocalVariable(name: "div", arg: 2, scope: !2248, file: !3, line: 275, type: !65)
!2254 = !DILocation(line: 275, column: 61, scope: !2248)
!2255 = !DILocalVariable(name: "flags", arg: 3, scope: !2248, file: !3, line: 276, type: !83)
!2256 = !DILocation(line: 276, column: 22, scope: !2248)
!2257 = !DILocation(line: 278, column: 5, scope: !2248)
!2258 = !DILocation(line: 280, column: 6, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 280, column: 6)
!2260 = !DILocation(line: 280, column: 12, scope: !2259)
!2261 = !DILocation(line: 280, column: 6, scope: !2248)
!2262 = !DILocation(line: 281, column: 31, scope: !2259)
!2263 = !DILocation(line: 281, column: 10, scope: !2259)
!2264 = !DILocation(line: 281, column: 3, scope: !2259)
!2265 = !DILocation(line: 282, column: 6, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 282, column: 6)
!2267 = !DILocation(line: 282, column: 6, scope: !2248)
!2268 = !DILocation(line: 283, column: 26, scope: !2266)
!2269 = !DILocation(line: 283, column: 33, scope: !2266)
!2270 = !DILocation(line: 283, column: 10, scope: !2266)
!2271 = !DILocation(line: 283, column: 3, scope: !2266)
!2272 = !DILocation(line: 285, column: 9, scope: !2248)
!2273 = !DILocation(line: 285, column: 2, scope: !2248)
!2274 = !DILocation(line: 286, column: 1, scope: !2248)
!2275 = distinct !DISubprogram(name: "_is_best_div", scope: !3, file: !3, line: 266, type: !2276, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!605, !83, !83, !83, !83}
!2278 = !DILocalVariable(name: "rate", arg: 1, scope: !2275, file: !3, line: 266, type: !83)
!2279 = !DILocation(line: 266, column: 40, scope: !2275)
!2280 = !DILocalVariable(name: "now", arg: 2, scope: !2275, file: !3, line: 266, type: !83)
!2281 = !DILocation(line: 266, column: 60, scope: !2275)
!2282 = !DILocalVariable(name: "best", arg: 3, scope: !2275, file: !3, line: 267, type: !83)
!2283 = !DILocation(line: 267, column: 19, scope: !2275)
!2284 = !DILocalVariable(name: "flags", arg: 4, scope: !2275, file: !3, line: 267, type: !83)
!2285 = !DILocation(line: 267, column: 39, scope: !2275)
!2286 = !DILocation(line: 269, column: 6, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 269, column: 6)
!2288 = !DILocation(line: 269, column: 12, scope: !2287)
!2289 = !DILocation(line: 269, column: 6, scope: !2275)
!2290 = !DILocalVariable(name: "__x", scope: !2291, file: !3, line: 270, type: !88)
!2291 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 270, column: 10)
!2292 = !DILocation(line: 270, column: 10, scope: !2291)
!2293 = !DILocalVariable(name: "__x", scope: !2294, file: !3, line: 270, type: !88)
!2294 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 270, column: 28)
!2295 = !DILocation(line: 270, column: 28, scope: !2294)
!2296 = !DILocation(line: 270, column: 26, scope: !2287)
!2297 = !DILocation(line: 270, column: 3, scope: !2287)
!2298 = !DILocation(line: 272, column: 9, scope: !2275)
!2299 = !DILocation(line: 272, column: 16, scope: !2275)
!2300 = !DILocation(line: 272, column: 13, scope: !2275)
!2301 = !DILocation(line: 272, column: 21, scope: !2275)
!2302 = !DILocation(line: 272, column: 24, scope: !2275)
!2303 = !DILocation(line: 272, column: 30, scope: !2275)
!2304 = !DILocation(line: 272, column: 28, scope: !2275)
!2305 = !DILocation(line: 0, scope: !2275)
!2306 = !DILocation(line: 272, column: 2, scope: !2275)
!2307 = !DILocation(line: 273, column: 1, scope: !2275)
!2308 = distinct !DISubprogram(name: "_get_table_maxdiv", scope: !3, file: !3, line: 44, type: !2309, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!7, !169, !106}
!2311 = !DILocalVariable(name: "table", arg: 1, scope: !2308, file: !3, line: 44, type: !169)
!2312 = !DILocation(line: 44, column: 67, scope: !2308)
!2313 = !DILocalVariable(name: "width", arg: 2, scope: !2308, file: !3, line: 45, type: !106)
!2314 = !DILocation(line: 45, column: 14, scope: !2308)
!2315 = !DILocalVariable(name: "maxdiv", scope: !2308, file: !3, line: 47, type: !7)
!2316 = !DILocation(line: 47, column: 15, scope: !2308)
!2317 = !DILocalVariable(name: "mask", scope: !2308, file: !3, line: 47, type: !7)
!2318 = !DILocation(line: 47, column: 27, scope: !2308)
!2319 = !DILocation(line: 47, column: 34, scope: !2308)
!2320 = !DILocalVariable(name: "clkt", scope: !2308, file: !3, line: 48, type: !169)
!2321 = !DILocation(line: 48, column: 30, scope: !2308)
!2322 = !DILocation(line: 50, column: 14, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 50, column: 2)
!2324 = !DILocation(line: 50, column: 12, scope: !2323)
!2325 = !DILocation(line: 50, column: 7, scope: !2323)
!2326 = !DILocation(line: 50, column: 21, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 50, column: 2)
!2328 = !DILocation(line: 50, column: 27, scope: !2327)
!2329 = !DILocation(line: 50, column: 2, scope: !2323)
!2330 = !DILocation(line: 51, column: 7, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 51, column: 7)
!2332 = !DILocation(line: 51, column: 13, scope: !2331)
!2333 = !DILocation(line: 51, column: 19, scope: !2331)
!2334 = !DILocation(line: 51, column: 17, scope: !2331)
!2335 = !DILocation(line: 51, column: 26, scope: !2331)
!2336 = !DILocation(line: 51, column: 29, scope: !2331)
!2337 = !DILocation(line: 51, column: 35, scope: !2331)
!2338 = !DILocation(line: 51, column: 42, scope: !2331)
!2339 = !DILocation(line: 51, column: 39, scope: !2331)
!2340 = !DILocation(line: 51, column: 7, scope: !2327)
!2341 = !DILocation(line: 52, column: 13, scope: !2331)
!2342 = !DILocation(line: 52, column: 19, scope: !2331)
!2343 = !DILocation(line: 52, column: 11, scope: !2331)
!2344 = !DILocation(line: 52, column: 4, scope: !2331)
!2345 = !DILocation(line: 50, column: 36, scope: !2327)
!2346 = !DILocation(line: 50, column: 2, scope: !2327)
!2347 = distinct !{!2347, !2329, !2348}
!2348 = !DILocation(line: 52, column: 19, scope: !2323)
!2349 = !DILocation(line: 53, column: 9, scope: !2308)
!2350 = !DILocation(line: 53, column: 2, scope: !2308)
!2351 = distinct !DISubprogram(name: "_div_round_closest", scope: !3, file: !3, line: 232, type: !2221, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2352 = !DILocalVariable(name: "table", arg: 1, scope: !2351, file: !3, line: 232, type: !169)
!2353 = !DILocation(line: 232, column: 59, scope: !2351)
!2354 = !DILocalVariable(name: "parent_rate", arg: 2, scope: !2351, file: !3, line: 233, type: !83)
!2355 = !DILocation(line: 233, column: 24, scope: !2351)
!2356 = !DILocalVariable(name: "rate", arg: 3, scope: !2351, file: !3, line: 233, type: !83)
!2357 = !DILocation(line: 233, column: 51, scope: !2351)
!2358 = !DILocalVariable(name: "flags", arg: 4, scope: !2351, file: !3, line: 234, type: !83)
!2359 = !DILocation(line: 234, column: 24, scope: !2351)
!2360 = !DILocalVariable(name: "up", scope: !2351, file: !3, line: 236, type: !65)
!2361 = !DILocation(line: 236, column: 6, scope: !2351)
!2362 = !DILocalVariable(name: "down", scope: !2351, file: !3, line: 236, type: !65)
!2363 = !DILocation(line: 236, column: 10, scope: !2351)
!2364 = !DILocalVariable(name: "up_rate", scope: !2351, file: !3, line: 237, type: !83)
!2365 = !DILocation(line: 237, column: 16, scope: !2351)
!2366 = !DILocalVariable(name: "down_rate", scope: !2351, file: !3, line: 237, type: !83)
!2367 = !DILocation(line: 237, column: 25, scope: !2351)
!2368 = !DILocalVariable(name: "_tmp", scope: !2369, file: !3, line: 239, type: !25)
!2369 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 239, column: 7)
!2370 = !DILocation(line: 239, column: 7, scope: !2369)
!2371 = !DILocalVariable(name: "__base", scope: !2372, file: !3, line: 239, type: !262)
!2372 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 239, column: 7)
!2373 = !DILocation(line: 239, column: 7, scope: !2372)
!2374 = !DILocalVariable(name: "__rem", scope: !2372, file: !3, line: 239, type: !262)
!2375 = !DILocation(line: 239, column: 7, scope: !2351)
!2376 = !DILocation(line: 239, column: 5, scope: !2351)
!2377 = !DILocation(line: 240, column: 9, scope: !2351)
!2378 = !DILocation(line: 240, column: 23, scope: !2351)
!2379 = !DILocation(line: 240, column: 21, scope: !2351)
!2380 = !DILocation(line: 240, column: 7, scope: !2351)
!2381 = !DILocation(line: 242, column: 6, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 242, column: 6)
!2383 = !DILocation(line: 242, column: 12, scope: !2382)
!2384 = !DILocation(line: 242, column: 6, scope: !2351)
!2385 = !DILocation(line: 243, column: 29, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 242, column: 40)
!2387 = !DILocation(line: 243, column: 8, scope: !2386)
!2388 = !DILocation(line: 243, column: 6, scope: !2386)
!2389 = !DILocation(line: 244, column: 33, scope: !2386)
!2390 = !DILocation(line: 244, column: 10, scope: !2386)
!2391 = !DILocation(line: 244, column: 8, scope: !2386)
!2392 = !DILocation(line: 245, column: 2, scope: !2386)
!2393 = !DILocation(line: 245, column: 13, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 245, column: 13)
!2395 = !DILocation(line: 245, column: 13, scope: !2382)
!2396 = !DILocation(line: 246, column: 24, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 245, column: 20)
!2398 = !DILocation(line: 246, column: 31, scope: !2397)
!2399 = !DILocation(line: 246, column: 8, scope: !2397)
!2400 = !DILocation(line: 246, column: 6, scope: !2397)
!2401 = !DILocation(line: 247, column: 28, scope: !2397)
!2402 = !DILocation(line: 247, column: 35, scope: !2397)
!2403 = !DILocation(line: 247, column: 10, scope: !2397)
!2404 = !DILocation(line: 247, column: 8, scope: !2397)
!2405 = !DILocation(line: 248, column: 2, scope: !2397)
!2406 = !DILocalVariable(name: "_tmp", scope: !2407, file: !3, line: 250, type: !25)
!2407 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 250, column: 12)
!2408 = !DILocation(line: 250, column: 12, scope: !2407)
!2409 = !DILocalVariable(name: "__base", scope: !2410, file: !3, line: 250, type: !262)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 250, column: 12)
!2411 = !DILocation(line: 250, column: 12, scope: !2410)
!2412 = !DILocalVariable(name: "__rem", scope: !2410, file: !3, line: 250, type: !262)
!2413 = !DILocation(line: 250, column: 10, scope: !2351)
!2414 = !DILocalVariable(name: "_tmp", scope: !2415, file: !3, line: 251, type: !25)
!2415 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 251, column: 14)
!2416 = !DILocation(line: 251, column: 14, scope: !2415)
!2417 = !DILocalVariable(name: "__base", scope: !2418, file: !3, line: 251, type: !262)
!2418 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 251, column: 14)
!2419 = !DILocation(line: 251, column: 14, scope: !2418)
!2420 = !DILocalVariable(name: "__rem", scope: !2418, file: !3, line: 251, type: !262)
!2421 = !DILocation(line: 251, column: 12, scope: !2351)
!2422 = !DILocation(line: 253, column: 10, scope: !2351)
!2423 = !DILocation(line: 253, column: 17, scope: !2351)
!2424 = !DILocation(line: 253, column: 15, scope: !2351)
!2425 = !DILocation(line: 253, column: 30, scope: !2351)
!2426 = !DILocation(line: 253, column: 42, scope: !2351)
!2427 = !DILocation(line: 253, column: 40, scope: !2351)
!2428 = !DILocation(line: 253, column: 26, scope: !2351)
!2429 = !DILocation(line: 253, column: 9, scope: !2351)
!2430 = !DILocation(line: 253, column: 50, scope: !2351)
!2431 = !DILocation(line: 253, column: 55, scope: !2351)
!2432 = !DILocation(line: 253, column: 2, scope: !2351)
!2433 = distinct !DISubprogram(name: "_div_round_up", scope: !3, file: !3, line: 218, type: !2221, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2434 = !DILocalVariable(name: "table", arg: 1, scope: !2433, file: !3, line: 218, type: !169)
!2435 = !DILocation(line: 218, column: 54, scope: !2433)
!2436 = !DILocalVariable(name: "parent_rate", arg: 2, scope: !2433, file: !3, line: 219, type: !83)
!2437 = !DILocation(line: 219, column: 19, scope: !2433)
!2438 = !DILocalVariable(name: "rate", arg: 3, scope: !2433, file: !3, line: 219, type: !83)
!2439 = !DILocation(line: 219, column: 46, scope: !2433)
!2440 = !DILocalVariable(name: "flags", arg: 4, scope: !2433, file: !3, line: 220, type: !83)
!2441 = !DILocation(line: 220, column: 19, scope: !2433)
!2442 = !DILocalVariable(name: "div", scope: !2433, file: !3, line: 222, type: !65)
!2443 = !DILocation(line: 222, column: 6, scope: !2433)
!2444 = !DILocalVariable(name: "_tmp", scope: !2445, file: !3, line: 222, type: !25)
!2445 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 222, column: 12)
!2446 = !DILocation(line: 222, column: 12, scope: !2445)
!2447 = !DILocalVariable(name: "__base", scope: !2448, file: !3, line: 222, type: !262)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 222, column: 12)
!2449 = !DILocation(line: 222, column: 12, scope: !2448)
!2450 = !DILocalVariable(name: "__rem", scope: !2448, file: !3, line: 222, type: !262)
!2451 = !DILocation(line: 222, column: 12, scope: !2433)
!2452 = !DILocation(line: 224, column: 6, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 224, column: 6)
!2454 = !DILocation(line: 224, column: 12, scope: !2453)
!2455 = !DILocation(line: 224, column: 6, scope: !2433)
!2456 = !DILocation(line: 225, column: 30, scope: !2453)
!2457 = !DILocation(line: 225, column: 9, scope: !2453)
!2458 = !DILocation(line: 225, column: 7, scope: !2453)
!2459 = !DILocation(line: 225, column: 3, scope: !2453)
!2460 = !DILocation(line: 226, column: 6, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 226, column: 6)
!2462 = !DILocation(line: 226, column: 6, scope: !2433)
!2463 = !DILocation(line: 227, column: 25, scope: !2461)
!2464 = !DILocation(line: 227, column: 32, scope: !2461)
!2465 = !DILocation(line: 227, column: 9, scope: !2461)
!2466 = !DILocation(line: 227, column: 7, scope: !2461)
!2467 = !DILocation(line: 227, column: 3, scope: !2461)
!2468 = !DILocation(line: 229, column: 9, scope: !2433)
!2469 = !DILocation(line: 229, column: 2, scope: !2433)
!2470 = distinct !DISubprogram(name: "__roundup_pow_of_two", scope: !2471, file: !2471, line: 55, type: !633, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2471 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2472 = !DILocalVariable(name: "n", arg: 1, scope: !2470, file: !2471, line: 55, type: !83)
!2473 = !DILocation(line: 55, column: 50, scope: !2470)
!2474 = !DILocation(line: 57, column: 25, scope: !2470)
!2475 = !DILocation(line: 57, column: 27, scope: !2470)
!2476 = !DILocation(line: 57, column: 16, scope: !2470)
!2477 = !DILocation(line: 57, column: 13, scope: !2470)
!2478 = !DILocation(line: 57, column: 2, scope: !2470)
!2479 = distinct !DISubprogram(name: "__rounddown_pow_of_two", scope: !2471, file: !2471, line: 65, type: !633, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2480 = !DILocalVariable(name: "n", arg: 1, scope: !2479, file: !2471, line: 65, type: !83)
!2481 = !DILocation(line: 65, column: 52, scope: !2479)
!2482 = !DILocation(line: 67, column: 26, scope: !2479)
!2483 = !DILocation(line: 67, column: 17, scope: !2479)
!2484 = !DILocation(line: 67, column: 29, scope: !2479)
!2485 = !DILocation(line: 67, column: 13, scope: !2479)
!2486 = !DILocation(line: 67, column: 2, scope: !2479)
!2487 = distinct !DISubprogram(name: "_round_up_table", scope: !3, file: !3, line: 182, type: !2488, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!65, !169, !65}
!2490 = !DILocalVariable(name: "table", arg: 1, scope: !2487, file: !3, line: 182, type: !169)
!2491 = !DILocation(line: 182, column: 56, scope: !2487)
!2492 = !DILocalVariable(name: "div", arg: 2, scope: !2487, file: !3, line: 182, type: !65)
!2493 = !DILocation(line: 182, column: 67, scope: !2487)
!2494 = !DILocalVariable(name: "clkt", scope: !2487, file: !3, line: 184, type: !169)
!2495 = !DILocation(line: 184, column: 30, scope: !2487)
!2496 = !DILocalVariable(name: "up", scope: !2487, file: !3, line: 185, type: !65)
!2497 = !DILocation(line: 185, column: 6, scope: !2487)
!2498 = !DILocation(line: 187, column: 14, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 187, column: 2)
!2500 = !DILocation(line: 187, column: 12, scope: !2499)
!2501 = !DILocation(line: 187, column: 7, scope: !2499)
!2502 = !DILocation(line: 187, column: 21, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 187, column: 2)
!2504 = !DILocation(line: 187, column: 27, scope: !2503)
!2505 = !DILocation(line: 187, column: 2, scope: !2499)
!2506 = !DILocation(line: 188, column: 7, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 188, column: 7)
!2508 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 187, column: 40)
!2509 = !DILocation(line: 188, column: 13, scope: !2507)
!2510 = !DILocation(line: 188, column: 20, scope: !2507)
!2511 = !DILocation(line: 188, column: 17, scope: !2507)
!2512 = !DILocation(line: 188, column: 7, scope: !2508)
!2513 = !DILocation(line: 189, column: 11, scope: !2507)
!2514 = !DILocation(line: 189, column: 17, scope: !2507)
!2515 = !DILocation(line: 189, column: 4, scope: !2507)
!2516 = !DILocation(line: 190, column: 12, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 190, column: 12)
!2518 = !DILocation(line: 190, column: 18, scope: !2517)
!2519 = !DILocation(line: 190, column: 24, scope: !2517)
!2520 = !DILocation(line: 190, column: 22, scope: !2517)
!2521 = !DILocation(line: 190, column: 12, scope: !2507)
!2522 = !DILocation(line: 191, column: 4, scope: !2517)
!2523 = !DILocation(line: 193, column: 8, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 193, column: 7)
!2525 = !DILocation(line: 193, column: 14, scope: !2524)
!2526 = !DILocation(line: 193, column: 20, scope: !2524)
!2527 = !DILocation(line: 193, column: 18, scope: !2524)
!2528 = !DILocation(line: 193, column: 28, scope: !2524)
!2529 = !DILocation(line: 193, column: 33, scope: !2524)
!2530 = !DILocation(line: 193, column: 31, scope: !2524)
!2531 = !DILocation(line: 193, column: 25, scope: !2524)
!2532 = !DILocation(line: 193, column: 7, scope: !2508)
!2533 = !DILocation(line: 194, column: 9, scope: !2524)
!2534 = !DILocation(line: 194, column: 15, scope: !2524)
!2535 = !DILocation(line: 194, column: 7, scope: !2524)
!2536 = !DILocation(line: 194, column: 4, scope: !2524)
!2537 = !DILocation(line: 195, column: 2, scope: !2508)
!2538 = !DILocation(line: 187, column: 36, scope: !2503)
!2539 = !DILocation(line: 187, column: 2, scope: !2503)
!2540 = distinct !{!2540, !2505, !2541}
!2541 = !DILocation(line: 195, column: 2, scope: !2499)
!2542 = !DILocation(line: 197, column: 9, scope: !2487)
!2543 = !DILocation(line: 197, column: 2, scope: !2487)
!2544 = !DILocation(line: 198, column: 1, scope: !2487)
!2545 = distinct !DISubprogram(name: "_round_down_table", scope: !3, file: !3, line: 200, type: !2488, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2546 = !DILocalVariable(name: "table", arg: 1, scope: !2545, file: !3, line: 200, type: !169)
!2547 = !DILocation(line: 200, column: 58, scope: !2545)
!2548 = !DILocalVariable(name: "div", arg: 2, scope: !2545, file: !3, line: 200, type: !65)
!2549 = !DILocation(line: 200, column: 69, scope: !2545)
!2550 = !DILocalVariable(name: "clkt", scope: !2545, file: !3, line: 202, type: !169)
!2551 = !DILocation(line: 202, column: 30, scope: !2545)
!2552 = !DILocalVariable(name: "down", scope: !2545, file: !3, line: 203, type: !65)
!2553 = !DILocation(line: 203, column: 6, scope: !2545)
!2554 = !DILocation(line: 203, column: 31, scope: !2545)
!2555 = !DILocation(line: 203, column: 13, scope: !2545)
!2556 = !DILocation(line: 205, column: 14, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 205, column: 2)
!2558 = !DILocation(line: 205, column: 12, scope: !2557)
!2559 = !DILocation(line: 205, column: 7, scope: !2557)
!2560 = !DILocation(line: 205, column: 21, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 205, column: 2)
!2562 = !DILocation(line: 205, column: 27, scope: !2561)
!2563 = !DILocation(line: 205, column: 2, scope: !2557)
!2564 = !DILocation(line: 206, column: 7, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 206, column: 7)
!2566 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 205, column: 40)
!2567 = !DILocation(line: 206, column: 13, scope: !2565)
!2568 = !DILocation(line: 206, column: 20, scope: !2565)
!2569 = !DILocation(line: 206, column: 17, scope: !2565)
!2570 = !DILocation(line: 206, column: 7, scope: !2566)
!2571 = !DILocation(line: 207, column: 11, scope: !2565)
!2572 = !DILocation(line: 207, column: 17, scope: !2565)
!2573 = !DILocation(line: 207, column: 4, scope: !2565)
!2574 = !DILocation(line: 208, column: 12, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 208, column: 12)
!2576 = !DILocation(line: 208, column: 18, scope: !2575)
!2577 = !DILocation(line: 208, column: 24, scope: !2575)
!2578 = !DILocation(line: 208, column: 22, scope: !2575)
!2579 = !DILocation(line: 208, column: 12, scope: !2565)
!2580 = !DILocation(line: 209, column: 4, scope: !2575)
!2581 = !DILocation(line: 211, column: 8, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 211, column: 7)
!2583 = !DILocation(line: 211, column: 14, scope: !2582)
!2584 = !DILocation(line: 211, column: 20, scope: !2582)
!2585 = !DILocation(line: 211, column: 12, scope: !2582)
!2586 = !DILocation(line: 211, column: 28, scope: !2582)
!2587 = !DILocation(line: 211, column: 34, scope: !2582)
!2588 = !DILocation(line: 211, column: 32, scope: !2582)
!2589 = !DILocation(line: 211, column: 25, scope: !2582)
!2590 = !DILocation(line: 211, column: 7, scope: !2566)
!2591 = !DILocation(line: 212, column: 11, scope: !2582)
!2592 = !DILocation(line: 212, column: 17, scope: !2582)
!2593 = !DILocation(line: 212, column: 9, scope: !2582)
!2594 = !DILocation(line: 212, column: 4, scope: !2582)
!2595 = !DILocation(line: 213, column: 2, scope: !2566)
!2596 = !DILocation(line: 205, column: 36, scope: !2561)
!2597 = !DILocation(line: 205, column: 2, scope: !2561)
!2598 = distinct !{!2598, !2563, !2599}
!2599 = !DILocation(line: 213, column: 2, scope: !2557)
!2600 = !DILocation(line: 215, column: 9, scope: !2545)
!2601 = !DILocation(line: 215, column: 2, scope: !2545)
!2602 = !DILocation(line: 216, column: 1, scope: !2545)
!2603 = distinct !DISubprogram(name: "fls_long", scope: !2604, file: !2604, line: 182, type: !2605, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2604 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!7, !83}
!2607 = !DILocalVariable(name: "x", arg: 1, scope: !2608, file: !632, line: 366, type: !28)
!2608 = distinct !DISubprogram(name: "fls64", scope: !632, file: !632, line: 366, type: !2609, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!65, !28}
!2611 = !DILocation(line: 366, column: 40, scope: !2608, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 186, column: 9, scope: !2603)
!2613 = !DILocalVariable(name: "bitpos", scope: !2608, file: !632, line: 368, type: !65)
!2614 = !DILocation(line: 368, column: 6, scope: !2608, inlinedAt: !2612)
!2615 = !DILocalVariable(name: "l", arg: 1, scope: !2603, file: !2604, line: 182, type: !83)
!2616 = !DILocation(line: 182, column: 47, scope: !2603)
!2617 = !DILocation(line: 186, column: 15, scope: !2603)
!2618 = !DILocation(line: 374, column: 2, scope: !2608, inlinedAt: !2612)
!2619 = !DILocation(line: 376, column: 14, scope: !2608, inlinedAt: !2612)
!2620 = !{i32 297526}
!2621 = !DILocation(line: 377, column: 9, scope: !2608, inlinedAt: !2612)
!2622 = !DILocation(line: 377, column: 16, scope: !2608, inlinedAt: !2612)
!2623 = !DILocation(line: 186, column: 2, scope: !2603)
!2624 = distinct !DISubprogram(name: "_get_table_mindiv", scope: !3, file: !3, line: 56, type: !2625, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!7, !169}
!2627 = !DILocalVariable(name: "table", arg: 1, scope: !2624, file: !3, line: 56, type: !169)
!2628 = !DILocation(line: 56, column: 67, scope: !2624)
!2629 = !DILocalVariable(name: "mindiv", scope: !2624, file: !3, line: 58, type: !7)
!2630 = !DILocation(line: 58, column: 15, scope: !2624)
!2631 = !DILocalVariable(name: "clkt", scope: !2624, file: !3, line: 59, type: !169)
!2632 = !DILocation(line: 59, column: 30, scope: !2624)
!2633 = !DILocation(line: 61, column: 14, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 61, column: 2)
!2635 = !DILocation(line: 61, column: 12, scope: !2634)
!2636 = !DILocation(line: 61, column: 7, scope: !2634)
!2637 = !DILocation(line: 61, column: 21, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 61, column: 2)
!2639 = !DILocation(line: 61, column: 27, scope: !2638)
!2640 = !DILocation(line: 61, column: 2, scope: !2634)
!2641 = !DILocation(line: 62, column: 7, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 62, column: 7)
!2643 = !DILocation(line: 62, column: 13, scope: !2642)
!2644 = !DILocation(line: 62, column: 19, scope: !2642)
!2645 = !DILocation(line: 62, column: 17, scope: !2642)
!2646 = !DILocation(line: 62, column: 7, scope: !2638)
!2647 = !DILocation(line: 63, column: 13, scope: !2642)
!2648 = !DILocation(line: 63, column: 19, scope: !2642)
!2649 = !DILocation(line: 63, column: 11, scope: !2642)
!2650 = !DILocation(line: 63, column: 4, scope: !2642)
!2651 = !DILocation(line: 61, column: 36, scope: !2638)
!2652 = !DILocation(line: 61, column: 2, scope: !2638)
!2653 = distinct !{!2653, !2640, !2654}
!2654 = !DILocation(line: 63, column: 19, scope: !2634)
!2655 = !DILocation(line: 64, column: 9, scope: !2624)
!2656 = !DILocation(line: 64, column: 2, scope: !2624)
!2657 = distinct !DISubprogram(name: "is_power_of_2", scope: !2471, file: !2471, line: 45, type: !2658, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!605, !83}
!2660 = !DILocalVariable(name: "n", arg: 1, scope: !2657, file: !2471, line: 45, type: !83)
!2661 = !DILocation(line: 45, column: 34, scope: !2657)
!2662 = !DILocation(line: 47, column: 10, scope: !2657)
!2663 = !DILocation(line: 47, column: 12, scope: !2657)
!2664 = !DILocation(line: 47, column: 17, scope: !2657)
!2665 = !DILocation(line: 47, column: 22, scope: !2657)
!2666 = !DILocation(line: 47, column: 27, scope: !2657)
!2667 = !DILocation(line: 47, column: 29, scope: !2657)
!2668 = !DILocation(line: 47, column: 24, scope: !2657)
!2669 = !DILocation(line: 47, column: 35, scope: !2657)
!2670 = !DILocation(line: 0, scope: !2657)
!2671 = !DILocation(line: 47, column: 2, scope: !2657)
!2672 = distinct !DISubprogram(name: "_is_valid_table_div", scope: !3, file: !3, line: 161, type: !2673, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!605, !169, !7}
!2675 = !DILocalVariable(name: "table", arg: 1, scope: !2672, file: !3, line: 161, type: !169)
!2676 = !DILocation(line: 161, column: 61, scope: !2672)
!2677 = !DILocalVariable(name: "div", arg: 2, scope: !2672, file: !3, line: 162, type: !7)
!2678 = !DILocation(line: 162, column: 22, scope: !2672)
!2679 = !DILocalVariable(name: "clkt", scope: !2672, file: !3, line: 164, type: !169)
!2680 = !DILocation(line: 164, column: 30, scope: !2672)
!2681 = !DILocation(line: 166, column: 14, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 166, column: 2)
!2683 = !DILocation(line: 166, column: 12, scope: !2682)
!2684 = !DILocation(line: 166, column: 7, scope: !2682)
!2685 = !DILocation(line: 166, column: 21, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 166, column: 2)
!2687 = !DILocation(line: 166, column: 27, scope: !2686)
!2688 = !DILocation(line: 166, column: 2, scope: !2682)
!2689 = !DILocation(line: 167, column: 7, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 167, column: 7)
!2691 = !DILocation(line: 167, column: 13, scope: !2690)
!2692 = !DILocation(line: 167, column: 20, scope: !2690)
!2693 = !DILocation(line: 167, column: 17, scope: !2690)
!2694 = !DILocation(line: 167, column: 7, scope: !2686)
!2695 = !DILocation(line: 168, column: 4, scope: !2690)
!2696 = !DILocation(line: 166, column: 36, scope: !2686)
!2697 = !DILocation(line: 166, column: 2, scope: !2686)
!2698 = distinct !{!2698, !2688, !2699}
!2699 = !DILocation(line: 168, column: 11, scope: !2682)
!2700 = !DILocation(line: 169, column: 2, scope: !2672)
!2701 = !DILocation(line: 170, column: 1, scope: !2672)
!2702 = distinct !DISubprogram(name: "_get_table_val", scope: !3, file: !3, line: 104, type: !2156, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2703 = !DILocalVariable(name: "table", arg: 1, scope: !2702, file: !3, line: 104, type: !169)
!2704 = !DILocation(line: 104, column: 64, scope: !2702)
!2705 = !DILocalVariable(name: "div", arg: 2, scope: !2702, file: !3, line: 105, type: !7)
!2706 = !DILocation(line: 105, column: 21, scope: !2702)
!2707 = !DILocalVariable(name: "clkt", scope: !2702, file: !3, line: 107, type: !169)
!2708 = !DILocation(line: 107, column: 30, scope: !2702)
!2709 = !DILocation(line: 109, column: 14, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 109, column: 2)
!2711 = !DILocation(line: 109, column: 12, scope: !2710)
!2712 = !DILocation(line: 109, column: 7, scope: !2710)
!2713 = !DILocation(line: 109, column: 21, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 109, column: 2)
!2715 = !DILocation(line: 109, column: 27, scope: !2714)
!2716 = !DILocation(line: 109, column: 2, scope: !2710)
!2717 = !DILocation(line: 110, column: 7, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 110, column: 7)
!2719 = !DILocation(line: 110, column: 13, scope: !2718)
!2720 = !DILocation(line: 110, column: 20, scope: !2718)
!2721 = !DILocation(line: 110, column: 17, scope: !2718)
!2722 = !DILocation(line: 110, column: 7, scope: !2714)
!2723 = !DILocation(line: 111, column: 11, scope: !2718)
!2724 = !DILocation(line: 111, column: 17, scope: !2718)
!2725 = !DILocation(line: 111, column: 4, scope: !2718)
!2726 = !DILocation(line: 109, column: 36, scope: !2714)
!2727 = !DILocation(line: 109, column: 2, scope: !2714)
!2728 = distinct !{!2728, !2716, !2729}
!2729 = !DILocation(line: 111, column: 17, scope: !2710)
!2730 = !DILocation(line: 112, column: 2, scope: !2702)
!2731 = !DILocation(line: 113, column: 1, scope: !2702)
!2732 = distinct !DISubprogram(name: "clk_div_readl", scope: !3, file: !3, line: 28, type: !2733, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!194, !34}
!2735 = !DILocalVariable(name: "divider", arg: 1, scope: !2732, file: !3, line: 28, type: !34)
!2736 = !DILocation(line: 28, column: 53, scope: !2732)
!2737 = !DILocation(line: 30, column: 6, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2732, file: !3, line: 30, column: 6)
!2739 = !DILocation(line: 30, column: 15, scope: !2738)
!2740 = !DILocation(line: 30, column: 21, scope: !2738)
!2741 = !DILocation(line: 30, column: 6, scope: !2732)
!2742 = !DILocation(line: 31, column: 21, scope: !2738)
!2743 = !DILocation(line: 31, column: 30, scope: !2738)
!2744 = !DILocation(line: 31, column: 10, scope: !2738)
!2745 = !DILocation(line: 31, column: 3, scope: !2738)
!2746 = !DILocation(line: 33, column: 15, scope: !2732)
!2747 = !DILocation(line: 33, column: 24, scope: !2732)
!2748 = !DILocation(line: 33, column: 9, scope: !2732)
!2749 = !DILocation(line: 33, column: 2, scope: !2732)
!2750 = !DILocation(line: 34, column: 1, scope: !2732)
!2751 = distinct !DISubprogram(name: "readl", scope: !2752, file: !2752, line: 59, type: !2753, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2752 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!7, !2755}
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2757)
!2757 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2758 = !DILocalVariable(name: "addr", arg: 1, scope: !2751, file: !2752, line: 59, type: !2755)
!2759 = !DILocation(line: 59, column: 1, scope: !2751)
!2760 = !DILocalVariable(name: "ret", scope: !2751, file: !2752, line: 59, type: !7)
!2761 = !{i32 -2144041978}
!2762 = distinct !DISubprogram(name: "divider_ro_round_rate", scope: !36, file: !36, line: 1135, type: !2763, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!88, !66, !83, !89, !169, !106, !83, !7}
!2765 = !DILocalVariable(name: "hw", arg: 1, scope: !2762, file: !36, line: 1135, type: !66)
!2766 = !DILocation(line: 1135, column: 57, scope: !2762)
!2767 = !DILocalVariable(name: "rate", arg: 2, scope: !2762, file: !36, line: 1135, type: !83)
!2768 = !DILocation(line: 1135, column: 75, scope: !2762)
!2769 = !DILocalVariable(name: "prate", arg: 3, scope: !2762, file: !36, line: 1136, type: !89)
!2770 = !DILocation(line: 1136, column: 22, scope: !2762)
!2771 = !DILocalVariable(name: "table", arg: 4, scope: !2762, file: !36, line: 1137, type: !169)
!2772 = !DILocation(line: 1137, column: 35, scope: !2762)
!2773 = !DILocalVariable(name: "width", arg: 5, scope: !2762, file: !36, line: 1138, type: !106)
!2774 = !DILocation(line: 1138, column: 10, scope: !2762)
!2775 = !DILocalVariable(name: "flags", arg: 6, scope: !2762, file: !36, line: 1138, type: !83)
!2776 = !DILocation(line: 1138, column: 31, scope: !2762)
!2777 = !DILocalVariable(name: "val", arg: 7, scope: !2762, file: !36, line: 1139, type: !7)
!2778 = !DILocation(line: 1139, column: 20, scope: !2762)
!2779 = !DILocation(line: 1141, column: 38, scope: !2762)
!2780 = !DILocation(line: 1141, column: 60, scope: !2762)
!2781 = !DILocation(line: 1141, column: 42, scope: !2762)
!2782 = !DILocation(line: 1142, column: 10, scope: !2762)
!2783 = !DILocation(line: 1142, column: 16, scope: !2762)
!2784 = !DILocation(line: 1142, column: 23, scope: !2762)
!2785 = !DILocation(line: 1142, column: 30, scope: !2762)
!2786 = !DILocation(line: 1142, column: 37, scope: !2762)
!2787 = !DILocation(line: 1143, column: 10, scope: !2762)
!2788 = !DILocation(line: 1141, column: 9, scope: !2762)
!2789 = !DILocation(line: 1141, column: 2, scope: !2762)
!2790 = distinct !DISubprogram(name: "divider_round_rate", scope: !36, file: !36, line: 1126, type: !2791, scopeLine: 1130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!88, !66, !83, !89, !169, !106, !83}
!2793 = !DILocalVariable(name: "hw", arg: 1, scope: !2790, file: !36, line: 1126, type: !66)
!2794 = !DILocation(line: 1126, column: 54, scope: !2790)
!2795 = !DILocalVariable(name: "rate", arg: 2, scope: !2790, file: !36, line: 1126, type: !83)
!2796 = !DILocation(line: 1126, column: 72, scope: !2790)
!2797 = !DILocalVariable(name: "prate", arg: 3, scope: !2790, file: !36, line: 1127, type: !89)
!2798 = !DILocation(line: 1127, column: 26, scope: !2790)
!2799 = !DILocalVariable(name: "table", arg: 4, scope: !2790, file: !36, line: 1128, type: !169)
!2800 = !DILocation(line: 1128, column: 39, scope: !2790)
!2801 = !DILocalVariable(name: "width", arg: 5, scope: !2790, file: !36, line: 1129, type: !106)
!2802 = !DILocation(line: 1129, column: 14, scope: !2790)
!2803 = !DILocalVariable(name: "flags", arg: 6, scope: !2790, file: !36, line: 1129, type: !83)
!2804 = !DILocation(line: 1129, column: 35, scope: !2790)
!2805 = !DILocation(line: 1131, column: 35, scope: !2790)
!2806 = !DILocation(line: 1131, column: 57, scope: !2790)
!2807 = !DILocation(line: 1131, column: 39, scope: !2790)
!2808 = !DILocation(line: 1132, column: 7, scope: !2790)
!2809 = !DILocation(line: 1132, column: 13, scope: !2790)
!2810 = !DILocation(line: 1132, column: 20, scope: !2790)
!2811 = !DILocation(line: 1132, column: 27, scope: !2790)
!2812 = !DILocation(line: 1132, column: 34, scope: !2790)
!2813 = !DILocation(line: 1131, column: 9, scope: !2790)
!2814 = !DILocation(line: 1131, column: 2, scope: !2790)
!2815 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2816, file: !2816, line: 666, type: !2817, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2816 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!83}
!2819 = !DILocalVariable(name: "f", scope: !2815, file: !2816, line: 668, type: !83)
!2820 = !DILocation(line: 668, column: 16, scope: !2815)
!2821 = !DILocation(line: 670, column: 6, scope: !2815)
!2822 = !DILocation(line: 670, column: 4, scope: !2815)
!2823 = !DILocation(line: 671, column: 2, scope: !2815)
!2824 = !DILocation(line: 672, column: 9, scope: !2815)
!2825 = !DILocation(line: 672, column: 2, scope: !2815)
!2826 = distinct !DISubprogram(name: "clk_div_writel", scope: !3, file: !3, line: 36, type: !2827, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !34, !194}
!2829 = !DILocalVariable(name: "divider", arg: 1, scope: !2826, file: !3, line: 36, type: !34)
!2830 = !DILocation(line: 36, column: 55, scope: !2826)
!2831 = !DILocalVariable(name: "val", arg: 2, scope: !2826, file: !3, line: 36, type: !194)
!2832 = !DILocation(line: 36, column: 68, scope: !2826)
!2833 = !DILocation(line: 38, column: 6, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 38, column: 6)
!2835 = !DILocation(line: 38, column: 15, scope: !2834)
!2836 = !DILocation(line: 38, column: 21, scope: !2834)
!2837 = !DILocation(line: 38, column: 6, scope: !2826)
!2838 = !DILocation(line: 39, column: 15, scope: !2834)
!2839 = !DILocation(line: 39, column: 20, scope: !2834)
!2840 = !DILocation(line: 39, column: 29, scope: !2834)
!2841 = !DILocation(line: 39, column: 3, scope: !2834)
!2842 = !DILocation(line: 41, column: 10, scope: !2834)
!2843 = !DILocation(line: 41, column: 15, scope: !2834)
!2844 = !DILocation(line: 41, column: 24, scope: !2834)
!2845 = !DILocation(line: 41, column: 3, scope: !2834)
!2846 = !DILocation(line: 42, column: 1, scope: !2826)
!2847 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2816, file: !2816, line: 646, type: !2817, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2848 = !DILocalVariable(name: "__ret", scope: !2849, file: !2816, line: 648, type: !83)
!2849 = distinct !DILexicalBlock(scope: !2847, file: !2816, line: 648, column: 9)
!2850 = !DILocation(line: 648, column: 9, scope: !2849)
!2851 = !DILocalVariable(name: "__edi", scope: !2849, file: !2816, line: 648, type: !83)
!2852 = !DILocalVariable(name: "__esi", scope: !2849, file: !2816, line: 648, type: !83)
!2853 = !DILocalVariable(name: "__edx", scope: !2849, file: !2816, line: 648, type: !83)
!2854 = !DILocalVariable(name: "__ecx", scope: !2849, file: !2816, line: 648, type: !83)
!2855 = !DILocalVariable(name: "__eax", scope: !2849, file: !2816, line: 648, type: !83)
!2856 = !DILocation(line: 648, column: 9, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !2816, line: 648, column: 9)
!2858 = distinct !DILexicalBlock(scope: !2849, file: !2816, line: 648, column: 9)
!2859 = !{i32 -2145658352, i32 -2145656037, i32 -2145655803, i32 -2145655752, i32 -2145655724, i32 -2145655699, i32 -2145656015, i32 -2145656002, i32 -2145655564, i32 -2145655445, i32 -2145655910, i32 -2145655883, i32 -2145655855, i32 -2145655825}
!2860 = !DILocalVariable(name: "__mask", scope: !2861, file: !2816, line: 648, type: !83)
!2861 = distinct !DILexicalBlock(scope: !2857, file: !2816, line: 648, column: 9)
!2862 = !DILocation(line: 648, column: 9, scope: !2861)
!2863 = !DILocation(line: 648, column: 9, scope: !2858)
!2864 = !DILocation(line: 648, column: 2, scope: !2847)
!2865 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2816, file: !2816, line: 656, type: !2866, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null}
!2868 = !DILocalVariable(name: "__edi", scope: !2869, file: !2816, line: 658, type: !83)
!2869 = distinct !DILexicalBlock(scope: !2865, file: !2816, line: 658, column: 2)
!2870 = !DILocation(line: 658, column: 2, scope: !2869)
!2871 = !DILocalVariable(name: "__esi", scope: !2869, file: !2816, line: 658, type: !83)
!2872 = !DILocalVariable(name: "__edx", scope: !2869, file: !2816, line: 658, type: !83)
!2873 = !DILocalVariable(name: "__ecx", scope: !2869, file: !2816, line: 658, type: !83)
!2874 = !DILocalVariable(name: "__eax", scope: !2869, file: !2816, line: 658, type: !83)
!2875 = !{i32 -2145651258, i32 -2145650526, i32 -2145650292, i32 -2145650241, i32 -2145650213, i32 -2145650188, i32 -2145650504, i32 -2145650491, i32 -2145650053, i32 -2145649934, i32 -2145650399, i32 -2145650372, i32 -2145650344, i32 -2145650314}
!2876 = !DILocation(line: 659, column: 1, scope: !2865)
!2877 = distinct !DISubprogram(name: "writel", scope: !2752, file: !2752, line: 67, type: !2878, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{null, !7, !2880}
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2881 = !DILocalVariable(name: "val", arg: 1, scope: !2877, file: !2752, line: 67, type: !7)
!2882 = !DILocation(line: 67, column: 1, scope: !2877)
!2883 = !DILocalVariable(name: "addr", arg: 2, scope: !2877, file: !2752, line: 67, type: !2880)
!2884 = !{i32 -2144039585}
!2885 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2816, file: !2816, line: 651, type: !2886, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{null, !83}
!2888 = !DILocalVariable(name: "f", arg: 1, scope: !2885, file: !2816, line: 651, type: !83)
!2889 = !DILocation(line: 651, column: 65, scope: !2885)
!2890 = !DILocalVariable(name: "__edi", scope: !2891, file: !2816, line: 653, type: !83)
!2891 = distinct !DILexicalBlock(scope: !2885, file: !2816, line: 653, column: 2)
!2892 = !DILocation(line: 653, column: 2, scope: !2891)
!2893 = !DILocalVariable(name: "__esi", scope: !2891, file: !2816, line: 653, type: !83)
!2894 = !DILocalVariable(name: "__edx", scope: !2891, file: !2816, line: 653, type: !83)
!2895 = !DILocalVariable(name: "__ecx", scope: !2891, file: !2816, line: 653, type: !83)
!2896 = !DILocalVariable(name: "__eax", scope: !2891, file: !2816, line: 653, type: !83)
!2897 = !{i32 -2145653885, i32 -2145653135, i32 -2145652901, i32 -2145652850, i32 -2145652822, i32 -2145652797, i32 -2145653113, i32 -2145653100, i32 -2145652662, i32 -2145652543, i32 -2145653008, i32 -2145652981, i32 -2145652953, i32 -2145652923}
!2898 = !DILocation(line: 654, column: 1, scope: !2885)
!2899 = distinct !DISubprogram(name: "get_order", scope: !2900, file: !2900, line: 29, type: !2901, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2900 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!65, !83}
!2903 = !DILocation(line: 366, column: 40, scope: !2608, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 46, column: 9, scope: !2899)
!2905 = !DILocation(line: 368, column: 6, scope: !2608, inlinedAt: !2904)
!2906 = !DILocalVariable(name: "size", arg: 1, scope: !2899, file: !2900, line: 29, type: !83)
!2907 = !DILocation(line: 29, column: 63, scope: !2899)
!2908 = !DILocation(line: 31, column: 27, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2899, file: !2900, line: 31, column: 6)
!2910 = !DILocation(line: 31, column: 6, scope: !2909)
!2911 = !DILocation(line: 31, column: 6, scope: !2899)
!2912 = !DILocation(line: 32, column: 8, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !2900, line: 32, column: 7)
!2914 = distinct !DILexicalBlock(scope: !2909, file: !2900, line: 31, column: 34)
!2915 = !DILocation(line: 32, column: 7, scope: !2914)
!2916 = !DILocation(line: 33, column: 4, scope: !2913)
!2917 = !DILocation(line: 35, column: 7, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2914, file: !2900, line: 35, column: 7)
!2919 = !DILocation(line: 35, column: 12, scope: !2918)
!2920 = !DILocation(line: 35, column: 7, scope: !2914)
!2921 = !DILocation(line: 36, column: 4, scope: !2918)
!2922 = !DILocation(line: 38, column: 10, scope: !2914)
!2923 = !DILocation(line: 38, column: 28, scope: !2914)
!2924 = !DILocation(line: 38, column: 41, scope: !2914)
!2925 = !DILocation(line: 38, column: 3, scope: !2914)
!2926 = !DILocation(line: 41, column: 6, scope: !2899)
!2927 = !DILocation(line: 42, column: 7, scope: !2899)
!2928 = !DILocation(line: 46, column: 15, scope: !2899)
!2929 = !DILocation(line: 374, column: 2, scope: !2608, inlinedAt: !2904)
!2930 = !DILocation(line: 376, column: 14, scope: !2608, inlinedAt: !2904)
!2931 = !DILocation(line: 377, column: 9, scope: !2608, inlinedAt: !2904)
!2932 = !DILocation(line: 377, column: 16, scope: !2608, inlinedAt: !2904)
!2933 = !DILocation(line: 46, column: 2, scope: !2899)
!2934 = !DILocation(line: 48, column: 1, scope: !2899)
!2935 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2471, file: !2471, line: 30, type: !2936, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!65, !26}
!2938 = !DILocation(line: 366, column: 40, scope: !2608, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 32, column: 9, scope: !2935)
!2940 = !DILocation(line: 368, column: 6, scope: !2608, inlinedAt: !2939)
!2941 = !DILocalVariable(name: "n", arg: 1, scope: !2935, file: !2471, line: 30, type: !26)
!2942 = !DILocation(line: 30, column: 21, scope: !2935)
!2943 = !DILocation(line: 32, column: 15, scope: !2935)
!2944 = !DILocation(line: 374, column: 2, scope: !2608, inlinedAt: !2939)
!2945 = !DILocation(line: 376, column: 14, scope: !2608, inlinedAt: !2939)
!2946 = !DILocation(line: 377, column: 9, scope: !2608, inlinedAt: !2939)
!2947 = !DILocation(line: 377, column: 16, scope: !2608, inlinedAt: !2939)
!2948 = !DILocation(line: 32, column: 18, scope: !2935)
!2949 = !DILocation(line: 32, column: 2, scope: !2935)
!2950 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2951, file: !2951, line: 137, type: !2952, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !191)
!2951 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!33, !1783, !955, !967, !32}
!2954 = !DILocalVariable(name: "s", arg: 1, scope: !2950, file: !2951, line: 137, type: !1783)
!2955 = !DILocation(line: 137, column: 54, scope: !2950)
!2956 = !DILocalVariable(name: "object", arg: 2, scope: !2950, file: !2951, line: 137, type: !955)
!2957 = !DILocation(line: 137, column: 69, scope: !2950)
!2958 = !DILocalVariable(name: "size", arg: 3, scope: !2950, file: !2951, line: 138, type: !967)
!2959 = !DILocation(line: 138, column: 12, scope: !2950)
!2960 = !DILocalVariable(name: "flags", arg: 4, scope: !2950, file: !2951, line: 138, type: !32)
!2961 = !DILocation(line: 138, column: 24, scope: !2950)
!2962 = !DILocation(line: 140, column: 17, scope: !2950)
!2963 = !DILocation(line: 140, column: 2, scope: !2950)
