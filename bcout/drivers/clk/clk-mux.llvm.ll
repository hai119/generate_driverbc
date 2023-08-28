; ModuleID = '../bcout/drivers/clk/clk-mux.llvm.bc'
source_filename = "drivers/clk/clk-mux.c"
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
%struct.clk_mux = type { %struct.clk_hw, i8*, i32*, i32, i8, i8, %struct.spinlock* }
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

@clk_mux_ops = dso_local constant %struct.clk_ops { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* null, i64 (%struct.clk_hw*, i64, i64*)* null, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_mux_determine_rate, i32 (%struct.clk_hw*, i8)* @clk_mux_set_parent, i8 (%struct.clk_hw*)* @clk_mux_get_parent, i32 (%struct.clk_hw*, i64, i64)* null, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8, !dbg !0
@clk_mux_ro_ops = dso_local constant %struct.clk_ops { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* null, i64 (%struct.clk_hw*, i64, i64*)* null, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* null, i32 (%struct.clk_hw*, i8)* null, i8 (%struct.clk_hw*)* @clk_mux_get_parent, i32 (%struct.clk_hw*, i64, i64)* null, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8, !dbg !183
@.str = private unnamed_addr constant [34 x i8] c"\013mux value exceeds LOWORD field\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @clk_mux_val_to_index(%struct.clk_hw* %hw, i32* %table, i32 %flags, i32 %val) #0 !dbg !191 {
entry:
  %x.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i, metadata !194, metadata !DIExpression()), !dbg !199
  %r.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r.i, metadata !202, metadata !DIExpression()), !dbg !203
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.clk_hw*, align 8
  %table.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %num_parents = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !204, metadata !DIExpression()), !dbg !205
  store i32* %table, i32** %table.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table.addr, metadata !206, metadata !DIExpression()), !dbg !207
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !208, metadata !DIExpression()), !dbg !209
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata i32* %num_parents, metadata !212, metadata !DIExpression()), !dbg !213
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !214
  %call = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %0) #10, !dbg !215
  store i32 %call, i32* %num_parents, align 4, !dbg !213
  %1 = load i32*, i32** %table.addr, align 8, !dbg !216
  %tobool = icmp ne i32* %1, null, !dbg !216
  br i1 %tobool, label %if.then, label %if.end3, !dbg !218

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !219, metadata !DIExpression()), !dbg !221
  store i32 0, i32* %i, align 4, !dbg !222
  br label %for.cond, !dbg !224

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !225
  %3 = load i32, i32* %num_parents, align 4, !dbg !227
  %cmp = icmp slt i32 %2, %3, !dbg !228
  br i1 %cmp, label %for.body, label %for.end, !dbg !229

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %table.addr, align 8, !dbg !230
  %5 = load i32, i32* %i, align 4, !dbg !232
  %idxprom = sext i32 %5 to i64, !dbg !230
  %arrayidx = getelementptr i32, i32* %4, i64 %idxprom, !dbg !230
  %6 = load i32, i32* %arrayidx, align 4, !dbg !230
  %7 = load i32, i32* %val.addr, align 4, !dbg !233
  %cmp1 = icmp eq i32 %6, %7, !dbg !234
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !235

if.then2:                                         ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !236
  store i32 %8, i32* %retval, align 4, !dbg !237
  br label %return, !dbg !237

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !233

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !dbg !238
  %inc = add i32 %9, 1, !dbg !238
  store i32 %inc, i32* %i, align 4, !dbg !238
  br label %for.cond, !dbg !239, !llvm.loop !240

for.end:                                          ; preds = %for.cond
  store i32 -22, i32* %retval, align 4, !dbg !242
  br label %return, !dbg !242

if.end3:                                          ; preds = %entry
  %10 = load i32, i32* %val.addr, align 4, !dbg !243
  %tobool4 = icmp ne i32 %10, 0, !dbg !243
  br i1 %tobool4, label %land.lhs.true, label %if.end8, !dbg !244

land.lhs.true:                                    ; preds = %if.end3
  %11 = load i32, i32* %flags.addr, align 4, !dbg !245
  %conv = zext i32 %11 to i64, !dbg !245
  %and = and i64 %conv, 2, !dbg !246
  %tobool5 = icmp ne i64 %and, 0, !dbg !246
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !247

if.then6:                                         ; preds = %land.lhs.true
  %12 = load i32, i32* %val.addr, align 4, !dbg !248
  store i32 %12, i32* %x.addr.i, align 4
  %13 = load i32, i32* %x.addr.i, align 4, !dbg !249
  %14 = call i32 asm "bsfl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %13, i32 -1) #5, !dbg !250, !srcloc !251
  store i32 %14, i32* %r.i, align 4, !dbg !250
  %15 = load i32, i32* %r.i, align 4, !dbg !252
  %add.i = add i32 %15, 1, !dbg !253
  %sub = sub i32 %add.i, 1, !dbg !254
  store i32 %sub, i32* %val.addr, align 4, !dbg !255
  br label %if.end8, !dbg !256

if.end8:                                          ; preds = %if.then6, %land.lhs.true, %if.end3
  %16 = load i32, i32* %val.addr, align 4, !dbg !257
  %tobool9 = icmp ne i32 %16, 0, !dbg !257
  br i1 %tobool9, label %land.lhs.true10, label %if.end15, !dbg !259

land.lhs.true10:                                  ; preds = %if.end8
  %17 = load i32, i32* %flags.addr, align 4, !dbg !260
  %conv11 = zext i32 %17 to i64, !dbg !260
  %and12 = and i64 %conv11, 1, !dbg !261
  %tobool13 = icmp ne i64 %and12, 0, !dbg !261
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !262

if.then14:                                        ; preds = %land.lhs.true10
  %18 = load i32, i32* %val.addr, align 4, !dbg !263
  %dec = add i32 %18, -1, !dbg !263
  store i32 %dec, i32* %val.addr, align 4, !dbg !263
  br label %if.end15, !dbg !264

if.end15:                                         ; preds = %if.then14, %land.lhs.true10, %if.end8
  %19 = load i32, i32* %val.addr, align 4, !dbg !265
  %20 = load i32, i32* %num_parents, align 4, !dbg !267
  %cmp16 = icmp uge i32 %19, %20, !dbg !268
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !269

if.then18:                                        ; preds = %if.end15
  store i32 -22, i32* %retval, align 4, !dbg !270
  br label %return, !dbg !270

if.end19:                                         ; preds = %if.end15
  %21 = load i32, i32* %val.addr, align 4, !dbg !271
  store i32 %21, i32* %retval, align 4, !dbg !272
  br label %return, !dbg !272

return:                                           ; preds = %if.end19, %if.then18, %for.end, %if.then2
  %22 = load i32, i32* %retval, align 4, !dbg !273
  ret i32 %22, !dbg !273
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @clk_mux_index_to_val(i32* %table, i32 %flags, i8 zeroext %index) #0 !dbg !274 {
entry:
  %table.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %index.addr = alloca i8, align 1
  %val = alloca i32, align 4
  store i32* %table, i32** %table.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table.addr, metadata !277, metadata !DIExpression()), !dbg !278
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !279, metadata !DIExpression()), !dbg !280
  store i8 %index, i8* %index.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %index.addr, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata i32* %val, metadata !283, metadata !DIExpression()), !dbg !284
  %0 = load i8, i8* %index.addr, align 1, !dbg !285
  %conv = zext i8 %0 to i32, !dbg !285
  store i32 %conv, i32* %val, align 4, !dbg !284
  %1 = load i32*, i32** %table.addr, align 8, !dbg !286
  %tobool = icmp ne i32* %1, null, !dbg !286
  br i1 %tobool, label %if.then, label %if.else, !dbg !288

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %table.addr, align 8, !dbg !289
  %3 = load i8, i8* %index.addr, align 1, !dbg !291
  %idxprom = zext i8 %3 to i64, !dbg !289
  %arrayidx = getelementptr i32, i32* %2, i64 %idxprom, !dbg !289
  %4 = load i32, i32* %arrayidx, align 4, !dbg !289
  store i32 %4, i32* %val, align 4, !dbg !292
  br label %if.end10, !dbg !293

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %flags.addr, align 4, !dbg !294
  %conv1 = zext i32 %5 to i64, !dbg !294
  %and = and i64 %conv1, 2, !dbg !297
  %tobool2 = icmp ne i64 %and, 0, !dbg !297
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !298

if.then3:                                         ; preds = %if.else
  %6 = load i8, i8* %index.addr, align 1, !dbg !299
  %conv4 = zext i8 %6 to i32, !dbg !299
  %shl = shl i32 1, %conv4, !dbg !300
  store i32 %shl, i32* %val, align 4, !dbg !301
  br label %if.end, !dbg !302

if.end:                                           ; preds = %if.then3, %if.else
  %7 = load i32, i32* %flags.addr, align 4, !dbg !303
  %conv5 = zext i32 %7 to i64, !dbg !303
  %and6 = and i64 %conv5, 1, !dbg !305
  %tobool7 = icmp ne i64 %and6, 0, !dbg !305
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !306

if.then8:                                         ; preds = %if.end
  %8 = load i32, i32* %val, align 4, !dbg !307
  %inc = add i32 %8, 1, !dbg !307
  store i32 %inc, i32* %val, align 4, !dbg !307
  br label %if.end9, !dbg !308

if.end9:                                          ; preds = %if.then8, %if.end
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then
  %9 = load i32, i32* %val, align 4, !dbg !309
  ret i32 %9, !dbg !310
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_mux_determine_rate(%struct.clk_hw* %hw, %struct.clk_rate_request* %req) #0 !dbg !311 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %req.addr = alloca %struct.clk_rate_request*, align 8
  %mux = alloca %struct.clk_mux*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_mux*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !312, metadata !DIExpression()), !dbg !313
  store %struct.clk_rate_request* %req, %struct.clk_rate_request** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_rate_request** %req.addr, metadata !314, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.declare(metadata %struct.clk_mux** %mux, metadata !316, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !318, metadata !DIExpression()), !dbg !320
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !320
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !320
  store i8* %1, i8** %__mptr, align 8, !dbg !320
  br label %do.body, !dbg !320

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !321

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !320
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !320
  %3 = bitcast i8* %add.ptr to %struct.clk_mux*, !dbg !320
  store %struct.clk_mux* %3, %struct.clk_mux** %tmp, align 8, !dbg !321
  %4 = load %struct.clk_mux*, %struct.clk_mux** %tmp, align 8, !dbg !320
  store %struct.clk_mux* %4, %struct.clk_mux** %mux, align 8, !dbg !317
  %5 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !323
  %6 = load %struct.clk_rate_request*, %struct.clk_rate_request** %req.addr, align 8, !dbg !324
  %7 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !325
  %flags = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %7, i32 0, i32 5, !dbg !326
  %8 = load i8, i8* %flags, align 1, !dbg !326
  %conv = zext i8 %8 to i64, !dbg !325
  %call = call i32 @clk_mux_determine_rate_flags(%struct.clk_hw* %5, %struct.clk_rate_request* %6, i64 %conv) #10, !dbg !327
  ret i32 %call, !dbg !328
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_mux_set_parent(%struct.clk_hw* %hw, i8 zeroext %index) #0 !dbg !329 {
entry:
  %lock.addr.i48 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i48, metadata !330, metadata !DIExpression()), !dbg !335
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !338, metadata !DIExpression()), !dbg !339
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !340, metadata !DIExpression()), !dbg !346
  %hw.addr = alloca %struct.clk_hw*, align 8
  %index.addr = alloca i8, align 1
  %mux = alloca %struct.clk_mux*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_mux*, align 8
  %val = alloca i32, align 4
  %flags1 = alloca i64, align 8
  %reg = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp5 = alloca i32, align 4
  %__dummy9 = alloca i64, align 8
  %__dummy210 = alloca i64, align 8
  %tmp13 = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !354, metadata !DIExpression()), !dbg !355
  store i8 %index, i8* %index.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %index.addr, metadata !356, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.declare(metadata %struct.clk_mux** %mux, metadata !358, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !360, metadata !DIExpression()), !dbg !362
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !362
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !362
  store i8* %1, i8** %__mptr, align 8, !dbg !362
  br label %do.body, !dbg !362

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !363

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !362
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !362
  %3 = bitcast i8* %add.ptr to %struct.clk_mux*, !dbg !362
  store %struct.clk_mux* %3, %struct.clk_mux** %tmp, align 8, !dbg !363
  %4 = load %struct.clk_mux*, %struct.clk_mux** %tmp, align 8, !dbg !362
  store %struct.clk_mux* %4, %struct.clk_mux** %mux, align 8, !dbg !359
  call void @llvm.dbg.declare(metadata i32* %val, metadata !365, metadata !DIExpression()), !dbg !366
  %5 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !367
  %table = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %5, i32 0, i32 2, !dbg !368
  %6 = load i32*, i32** %table, align 8, !dbg !368
  %7 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !369
  %flags = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %7, i32 0, i32 5, !dbg !370
  %8 = load i8, i8* %flags, align 1, !dbg !370
  %conv = zext i8 %8 to i32, !dbg !369
  %9 = load i8, i8* %index.addr, align 1, !dbg !371
  %call = call i32 @clk_mux_index_to_val(i32* %6, i32 %conv, i8 zeroext %9) #10, !dbg !372
  store i32 %call, i32* %val, align 4, !dbg !366
  call void @llvm.dbg.declare(metadata i64* %flags1, metadata !373, metadata !DIExpression()), !dbg !374
  store i64 0, i64* %flags1, align 8, !dbg !374
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !375, metadata !DIExpression()), !dbg !376
  %10 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !377
  %lock = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %10, i32 0, i32 6, !dbg !378
  %11 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !378
  %tobool = icmp ne %struct.spinlock* %11, null, !dbg !377
  br i1 %tobool, label %if.then, label %if.else, !dbg !379

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !380

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !381

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !382, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !385, metadata !DIExpression()), !dbg !384
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !384
  %conv4 = zext i1 %cmp to i32, !dbg !384
  store i32 1, i32* %tmp5, align 4, !dbg !384
  %12 = load i32, i32* %tmp5, align 4, !dbg !384
  br label %do.body6, !dbg !386

do.body6:                                         ; preds = %do.body3
  br label %do.body7, !dbg !387

do.body7:                                         ; preds = %do.body6
  br label %do.body8, !dbg !388

do.body8:                                         ; preds = %do.body7
  call void @llvm.dbg.declare(metadata i64* %__dummy9, metadata !390, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.declare(metadata i64* %__dummy210, metadata !394, metadata !DIExpression()), !dbg !393
  %cmp11 = icmp eq i64* %__dummy9, %__dummy210, !dbg !393
  %conv12 = zext i1 %cmp11 to i32, !dbg !393
  store i32 1, i32* %tmp13, align 4, !dbg !393
  %13 = load i32, i32* %tmp13, align 4, !dbg !393
  %call14 = call i64 @arch_local_irq_save() #10, !dbg !395
  store i64 %call14, i64* %flags1, align 8, !dbg !395
  br label %do.end15, !dbg !395

do.end15:                                         ; preds = %do.body8
  br label %do.end16, !dbg !388

do.end16:                                         ; preds = %do.end15
  br label %do.body17, !dbg !387

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !396, !srcloc !397
  br label %do.body18, !dbg !396

do.body18:                                        ; preds = %do.body17
  %14 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !398
  %lock19 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %14, i32 0, i32 6, !dbg !398
  %15 = load %struct.spinlock*, %struct.spinlock** %lock19, align 8, !dbg !398
  store %struct.spinlock* %15, %struct.spinlock** %lock.addr.i, align 8
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !399
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !400
  %rlock.i = bitcast %union.anon.0* %17 to %struct.raw_spinlock*, !dbg !400
  br label %do.end21, !dbg !398

do.end21:                                         ; preds = %do.body18
  br label %do.end22, !dbg !396

do.end22:                                         ; preds = %do.end21
  br label %do.end23, !dbg !387

do.end23:                                         ; preds = %do.end22
  br label %do.end24, !dbg !386

do.end24:                                         ; preds = %do.end23
  br label %do.end25, !dbg !381

do.end25:                                         ; preds = %do.end24
  br label %if.end, !dbg !381

if.else:                                          ; preds = %do.end
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end25
  %18 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !401
  %flags26 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %18, i32 0, i32 5, !dbg !403
  %19 = load i8, i8* %flags26, align 1, !dbg !403
  %conv27 = zext i8 %19 to i64, !dbg !401
  %and = and i64 %conv27, 4, !dbg !404
  %tobool28 = icmp ne i64 %and, 0, !dbg !404
  br i1 %tobool28, label %if.then29, label %if.else31, !dbg !405

if.then29:                                        ; preds = %if.end
  %20 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !406
  %mask = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %20, i32 0, i32 3, !dbg !408
  %21 = load i32, i32* %mask, align 8, !dbg !408
  %22 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !409
  %shift = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %22, i32 0, i32 4, !dbg !410
  %23 = load i8, i8* %shift, align 4, !dbg !410
  %conv30 = zext i8 %23 to i32, !dbg !409
  %add = add i32 %conv30, 16, !dbg !411
  %shl = shl i32 %21, %add, !dbg !412
  store i32 %shl, i32* %reg, align 4, !dbg !413
  br label %if.end38, !dbg !414

if.else31:                                        ; preds = %if.end
  %24 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !415
  %call32 = call i32 @clk_mux_readl(%struct.clk_mux* %24) #10, !dbg !417
  store i32 %call32, i32* %reg, align 4, !dbg !418
  %25 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !419
  %mask33 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %25, i32 0, i32 3, !dbg !420
  %26 = load i32, i32* %mask33, align 8, !dbg !420
  %27 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !421
  %shift34 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %27, i32 0, i32 4, !dbg !422
  %28 = load i8, i8* %shift34, align 4, !dbg !422
  %conv35 = zext i8 %28 to i32, !dbg !421
  %shl36 = shl i32 %26, %conv35, !dbg !423
  %neg = xor i32 %shl36, -1, !dbg !424
  %29 = load i32, i32* %reg, align 4, !dbg !425
  %and37 = and i32 %29, %neg, !dbg !425
  store i32 %and37, i32* %reg, align 4, !dbg !425
  br label %if.end38

if.end38:                                         ; preds = %if.else31, %if.then29
  %30 = load i32, i32* %val, align 4, !dbg !426
  %31 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !427
  %shift39 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %31, i32 0, i32 4, !dbg !428
  %32 = load i8, i8* %shift39, align 4, !dbg !428
  %conv40 = zext i8 %32 to i32, !dbg !427
  %shl41 = shl i32 %30, %conv40, !dbg !429
  store i32 %shl41, i32* %val, align 4, !dbg !430
  %33 = load i32, i32* %val, align 4, !dbg !431
  %34 = load i32, i32* %reg, align 4, !dbg !432
  %or = or i32 %34, %33, !dbg !432
  store i32 %or, i32* %reg, align 4, !dbg !432
  %35 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !433
  %36 = load i32, i32* %reg, align 4, !dbg !434
  call void @clk_mux_writel(%struct.clk_mux* %35, i32 %36) #10, !dbg !435
  %37 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !436
  %lock42 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %37, i32 0, i32 6, !dbg !437
  %38 = load %struct.spinlock*, %struct.spinlock** %lock42, align 8, !dbg !437
  %tobool43 = icmp ne %struct.spinlock* %38, null, !dbg !436
  br i1 %tobool43, label %if.then44, label %if.else46, !dbg !438

if.then44:                                        ; preds = %if.end38
  %39 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !439
  %lock45 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %39, i32 0, i32 6, !dbg !440
  %40 = load %struct.spinlock*, %struct.spinlock** %lock45, align 8, !dbg !440
  %41 = load i64, i64* %flags1, align 8, !dbg !441
  store %struct.spinlock* %40, %struct.spinlock** %lock.addr.i48, align 8
  store i64 %41, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !179, metadata !442, metadata !DIExpression()) #6, !dbg !445
  call void @llvm.dbg.declare(metadata !179, metadata !446, metadata !DIExpression()) #6, !dbg !445
  store i32 1, i32* %tmp.i, align 4, !dbg !445
  %42 = load i32, i32* %tmp.i, align 4, !dbg !445
  call void @llvm.dbg.declare(metadata !179, metadata !447, metadata !DIExpression()) #6, !dbg !452
  call void @llvm.dbg.declare(metadata !179, metadata !453, metadata !DIExpression()) #6, !dbg !452
  store i32 1, i32* %tmp8.i, align 4, !dbg !452
  %43 = load i32, i32* %tmp8.i, align 4, !dbg !452
  %44 = load i64, i64* %flags.addr.i, align 8, !dbg !454
  call void @arch_local_irq_restore(i64 %44) #11, !dbg !454
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !455, !srcloc !457
  %45 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i48, align 8, !dbg !458
  %46 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %45, i32 0, i32 0, !dbg !458
  %rlock.i49 = bitcast %union.anon.0* %46 to %struct.raw_spinlock*, !dbg !458
  br label %if.end47, !dbg !460

if.else46:                                        ; preds = %if.end38
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %if.then44
  ret i32 0, !dbg !461
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @clk_mux_get_parent(%struct.clk_hw* %hw) #0 !dbg !462 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %mux = alloca %struct.clk_mux*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_mux*, align 8
  %val = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !463, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.declare(metadata %struct.clk_mux** %mux, metadata !465, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !467, metadata !DIExpression()), !dbg !469
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !469
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !469
  store i8* %1, i8** %__mptr, align 8, !dbg !469
  br label %do.body, !dbg !469

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !470

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !469
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !469
  %3 = bitcast i8* %add.ptr to %struct.clk_mux*, !dbg !469
  store %struct.clk_mux* %3, %struct.clk_mux** %tmp, align 8, !dbg !470
  %4 = load %struct.clk_mux*, %struct.clk_mux** %tmp, align 8, !dbg !469
  store %struct.clk_mux* %4, %struct.clk_mux** %mux, align 8, !dbg !466
  call void @llvm.dbg.declare(metadata i32* %val, metadata !472, metadata !DIExpression()), !dbg !473
  %5 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !474
  %call = call i32 @clk_mux_readl(%struct.clk_mux* %5) #10, !dbg !475
  %6 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !476
  %shift = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %6, i32 0, i32 4, !dbg !477
  %7 = load i8, i8* %shift, align 4, !dbg !477
  %conv = zext i8 %7 to i32, !dbg !476
  %shr = lshr i32 %call, %conv, !dbg !478
  store i32 %shr, i32* %val, align 4, !dbg !479
  %8 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !480
  %mask = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %8, i32 0, i32 3, !dbg !481
  %9 = load i32, i32* %mask, align 8, !dbg !481
  %10 = load i32, i32* %val, align 4, !dbg !482
  %and = and i32 %10, %9, !dbg !482
  store i32 %and, i32* %val, align 4, !dbg !482
  %11 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !483
  %12 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !484
  %table = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %12, i32 0, i32 2, !dbg !485
  %13 = load i32*, i32** %table, align 8, !dbg !485
  %14 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !486
  %flags = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %14, i32 0, i32 5, !dbg !487
  %15 = load i8, i8* %flags, align 1, !dbg !487
  %conv1 = zext i8 %15 to i32, !dbg !486
  %16 = load i32, i32* %val, align 4, !dbg !488
  %call2 = call i32 @clk_mux_val_to_index(%struct.clk_hw* %11, i32* %13, i32 %conv1, i32 %16) #10, !dbg !489
  %conv3 = trunc i32 %call2 to i8, !dbg !489
  ret i8 %conv3, !dbg !490
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk_hw* @__clk_hw_register_mux(%struct.device* %dev, %struct.device_node* %np, i8* %name, i8 zeroext %num_parents, i8** %parent_names, %struct.clk_hw** %parent_hws, %struct.clk_parent_data* %parent_data, i64 %flags, i8* %reg, i8 zeroext %shift, i32 %mask, i8 zeroext %clk_mux_flags, i32* %table, %struct.spinlock* %lock) #0 !dbg !491 {
entry:
  %x.addr.i52 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i52, metadata !194, metadata !DIExpression()), !dbg !1223
  %r.i53 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r.i53, metadata !202, metadata !DIExpression()), !dbg !1227
  %x.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i, metadata !1228, metadata !DIExpression()), !dbg !1232
  %r.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r.i, metadata !1234, metadata !DIExpression()), !dbg !1235
  %retval = alloca %struct.clk_hw*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %name.addr = alloca i8*, align 8
  %num_parents.addr = alloca i8, align 1
  %parent_names.addr = alloca i8**, align 8
  %parent_hws.addr = alloca %struct.clk_hw**, align 8
  %parent_data.addr = alloca %struct.clk_parent_data*, align 8
  %flags.addr = alloca i64, align 8
  %reg.addr = alloca i8*, align 8
  %shift.addr = alloca i8, align 1
  %mask.addr = alloca i32, align 4
  %clk_mux_flags.addr = alloca i8, align 1
  %table.addr = alloca i32*, align 8
  %lock.addr = alloca %struct.spinlock*, align 8
  %mux = alloca %struct.clk_mux*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %init = alloca %struct.clk_init_data, align 8
  %width = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !1236, metadata !DIExpression()), !dbg !1237
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !1238, metadata !DIExpression()), !dbg !1239
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !1240, metadata !DIExpression()), !dbg !1241
  store i8 %num_parents, i8* %num_parents.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %num_parents.addr, metadata !1242, metadata !DIExpression()), !dbg !1243
  store i8** %parent_names, i8*** %parent_names.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %parent_names.addr, metadata !1244, metadata !DIExpression()), !dbg !1245
  store %struct.clk_hw** %parent_hws, %struct.clk_hw*** %parent_hws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw*** %parent_hws.addr, metadata !1246, metadata !DIExpression()), !dbg !1247
  store %struct.clk_parent_data* %parent_data, %struct.clk_parent_data** %parent_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_parent_data** %parent_data.addr, metadata !1248, metadata !DIExpression()), !dbg !1249
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !1250, metadata !DIExpression()), !dbg !1251
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !1252, metadata !DIExpression()), !dbg !1253
  store i8 %shift, i8* %shift.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %shift.addr, metadata !1254, metadata !DIExpression()), !dbg !1255
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !1256, metadata !DIExpression()), !dbg !1257
  store i8 %clk_mux_flags, i8* %clk_mux_flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %clk_mux_flags.addr, metadata !1258, metadata !DIExpression()), !dbg !1259
  store i32* %table, i32** %table.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table.addr, metadata !1260, metadata !DIExpression()), !dbg !1261
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr, metadata !1262, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.declare(metadata %struct.clk_mux** %mux, metadata !1264, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !1266, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.declare(metadata %struct.clk_init_data* %init, metadata !1268, metadata !DIExpression()), !dbg !1269
  %0 = bitcast %struct.clk_init_data* %init to i8*, !dbg !1269
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 56, i1 false), !dbg !1269
  call void @llvm.dbg.declare(metadata i8* %width, metadata !1270, metadata !DIExpression()), !dbg !1271
  store i8 0, i8* %width, align 1, !dbg !1271
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1272, metadata !DIExpression()), !dbg !1273
  store i32 -22, i32* %ret, align 4, !dbg !1273
  %1 = load i8, i8* %clk_mux_flags.addr, align 1, !dbg !1274
  %conv = zext i8 %1 to i64, !dbg !1274
  %and = and i64 %conv, 4, !dbg !1275
  %tobool = icmp ne i64 %and, 0, !dbg !1275
  br i1 %tobool, label %if.then, label %if.end10, !dbg !1276

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %mask.addr, align 4, !dbg !1277
  store i32 %2, i32* %x.addr.i, align 4
  %3 = load i32, i32* %x.addr.i, align 4, !dbg !1278
  %4 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %3, i32 -1) #5, !dbg !1279, !srcloc !1280
  store i32 %4, i32* %r.i, align 4, !dbg !1279
  %5 = load i32, i32* %r.i, align 4, !dbg !1281
  %add.i = add i32 %5, 1, !dbg !1282
  %6 = load i32, i32* %mask.addr, align 4, !dbg !1283
  store i32 %6, i32* %x.addr.i52, align 4
  %7 = load i32, i32* %x.addr.i52, align 4, !dbg !1284
  %8 = call i32 asm "bsfl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %7, i32 -1) #5, !dbg !1285, !srcloc !251
  store i32 %8, i32* %r.i53, align 4, !dbg !1285
  %9 = load i32, i32* %r.i53, align 4, !dbg !1286
  %add.i54 = add i32 %9, 1, !dbg !1287
  %sub = sub i32 %add.i, %add.i54, !dbg !1288
  %add = add i32 %sub, 1, !dbg !1289
  %conv2 = trunc i32 %add to i8, !dbg !1290
  store i8 %conv2, i8* %width, align 1, !dbg !1291
  %10 = load i8, i8* %width, align 1, !dbg !1292
  %conv3 = zext i8 %10 to i32, !dbg !1292
  %11 = load i8, i8* %shift.addr, align 1, !dbg !1294
  %conv4 = zext i8 %11 to i32, !dbg !1294
  %add5 = add i32 %conv3, %conv4, !dbg !1295
  %cmp = icmp sgt i32 %add5, 16, !dbg !1296
  br i1 %cmp, label %if.then7, label %if.end, !dbg !1297

if.then7:                                         ; preds = %if.then
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #12, !dbg !1298
  %call9 = call i8* @ERR_PTR(i64 -22) #10, !dbg !1300
  %12 = bitcast i8* %call9 to %struct.clk_hw*, !dbg !1300
  store %struct.clk_hw* %12, %struct.clk_hw** %retval, align 8, !dbg !1301
  br label %return, !dbg !1301

if.end:                                           ; preds = %if.then
  br label %if.end10, !dbg !1302

if.end10:                                         ; preds = %if.end, %entry
  %call11 = call i8* @kzalloc(i64 56, i32 3264) #10, !dbg !1303
  %13 = bitcast i8* %call11 to %struct.clk_mux*, !dbg !1303
  store %struct.clk_mux* %13, %struct.clk_mux** %mux, align 8, !dbg !1304
  %14 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !1305
  %tobool12 = icmp ne %struct.clk_mux* %14, null, !dbg !1305
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !1307

if.then13:                                        ; preds = %if.end10
  %call14 = call i8* @ERR_PTR(i64 -12) #10, !dbg !1308
  %15 = bitcast i8* %call14 to %struct.clk_hw*, !dbg !1308
  store %struct.clk_hw* %15, %struct.clk_hw** %retval, align 8, !dbg !1309
  br label %return, !dbg !1309

if.end15:                                         ; preds = %if.end10
  %16 = load i8*, i8** %name.addr, align 8, !dbg !1310
  %name16 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 0, !dbg !1311
  store i8* %16, i8** %name16, align 8, !dbg !1312
  %17 = load i8, i8* %clk_mux_flags.addr, align 1, !dbg !1313
  %conv17 = zext i8 %17 to i64, !dbg !1313
  %and18 = and i64 %conv17, 8, !dbg !1315
  %tobool19 = icmp ne i64 %and18, 0, !dbg !1315
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !1316

if.then20:                                        ; preds = %if.end15
  %ops = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 1, !dbg !1317
  store %struct.clk_ops* @clk_mux_ro_ops, %struct.clk_ops** %ops, align 8, !dbg !1318
  br label %if.end22, !dbg !1319

if.else:                                          ; preds = %if.end15
  %ops21 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 1, !dbg !1320
  store %struct.clk_ops* @clk_mux_ops, %struct.clk_ops** %ops21, align 8, !dbg !1321
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then20
  %18 = load i64, i64* %flags.addr, align 8, !dbg !1322
  %flags23 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 6, !dbg !1323
  store i64 %18, i64* %flags23, align 8, !dbg !1324
  %19 = load i8**, i8*** %parent_names.addr, align 8, !dbg !1325
  %parent_names24 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 2, !dbg !1326
  store i8** %19, i8*** %parent_names24, align 8, !dbg !1327
  %20 = load %struct.clk_parent_data*, %struct.clk_parent_data** %parent_data.addr, align 8, !dbg !1328
  %parent_data25 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 3, !dbg !1329
  store %struct.clk_parent_data* %20, %struct.clk_parent_data** %parent_data25, align 8, !dbg !1330
  %21 = load %struct.clk_hw**, %struct.clk_hw*** %parent_hws.addr, align 8, !dbg !1331
  %parent_hws26 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 4, !dbg !1332
  store %struct.clk_hw** %21, %struct.clk_hw*** %parent_hws26, align 8, !dbg !1333
  %22 = load i8, i8* %num_parents.addr, align 1, !dbg !1334
  %num_parents27 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 5, !dbg !1335
  store i8 %22, i8* %num_parents27, align 8, !dbg !1336
  %23 = load i8*, i8** %reg.addr, align 8, !dbg !1337
  %24 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !1338
  %reg28 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %24, i32 0, i32 1, !dbg !1339
  store i8* %23, i8** %reg28, align 8, !dbg !1340
  %25 = load i8, i8* %shift.addr, align 1, !dbg !1341
  %26 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !1342
  %shift29 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %26, i32 0, i32 4, !dbg !1343
  store i8 %25, i8* %shift29, align 4, !dbg !1344
  %27 = load i32, i32* %mask.addr, align 4, !dbg !1345
  %28 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !1346
  %mask30 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %28, i32 0, i32 3, !dbg !1347
  store i32 %27, i32* %mask30, align 8, !dbg !1348
  %29 = load i8, i8* %clk_mux_flags.addr, align 1, !dbg !1349
  %30 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !1350
  %flags31 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %30, i32 0, i32 5, !dbg !1351
  store i8 %29, i8* %flags31, align 1, !dbg !1352
  %31 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !1353
  %32 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !1354
  %lock32 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %32, i32 0, i32 6, !dbg !1355
  store %struct.spinlock* %31, %struct.spinlock** %lock32, align 8, !dbg !1356
  %33 = load i32*, i32** %table.addr, align 8, !dbg !1357
  %34 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !1358
  %table33 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %34, i32 0, i32 2, !dbg !1359
  store i32* %33, i32** %table33, align 8, !dbg !1360
  %35 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !1361
  %hw34 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %35, i32 0, i32 0, !dbg !1362
  %init35 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw34, i32 0, i32 2, !dbg !1363
  store %struct.clk_init_data* %init, %struct.clk_init_data** %init35, align 8, !dbg !1364
  %36 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !1365
  %hw36 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %36, i32 0, i32 0, !dbg !1366
  store %struct.clk_hw* %hw36, %struct.clk_hw** %hw, align 8, !dbg !1367
  %37 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1368
  %tobool37 = icmp ne %struct.device* %37, null, !dbg !1368
  br i1 %tobool37, label %if.then39, label %lor.lhs.false, !dbg !1370

lor.lhs.false:                                    ; preds = %if.end22
  %38 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1371
  %tobool38 = icmp ne %struct.device_node* %38, null, !dbg !1371
  br i1 %tobool38, label %if.else41, label %if.then39, !dbg !1372

if.then39:                                        ; preds = %lor.lhs.false, %if.end22
  %39 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1373
  %40 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1374
  %call40 = call i32 @clk_hw_register(%struct.device* %39, %struct.clk_hw* %40) #10, !dbg !1375
  store i32 %call40, i32* %ret, align 4, !dbg !1376
  br label %if.end46, !dbg !1377

if.else41:                                        ; preds = %lor.lhs.false
  %41 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1378
  %tobool42 = icmp ne %struct.device_node* %41, null, !dbg !1378
  br i1 %tobool42, label %if.then43, label %if.end45, !dbg !1380

if.then43:                                        ; preds = %if.else41
  %42 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !1381
  %43 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1382
  %call44 = call i32 @of_clk_hw_register(%struct.device_node* %42, %struct.clk_hw* %43) #10, !dbg !1383
  store i32 %call44, i32* %ret, align 4, !dbg !1384
  br label %if.end45, !dbg !1385

if.end45:                                         ; preds = %if.then43, %if.else41
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then39
  %44 = load i32, i32* %ret, align 4, !dbg !1386
  %tobool47 = icmp ne i32 %44, 0, !dbg !1386
  br i1 %tobool47, label %if.then48, label %if.end51, !dbg !1388

if.then48:                                        ; preds = %if.end46
  %45 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !1389
  %46 = bitcast %struct.clk_mux* %45 to i8*, !dbg !1389
  call void @kfree(i8* %46) #10, !dbg !1391
  %47 = load i32, i32* %ret, align 4, !dbg !1392
  %conv49 = sext i32 %47 to i64, !dbg !1392
  %call50 = call i8* @ERR_PTR(i64 %conv49) #10, !dbg !1393
  %48 = bitcast i8* %call50 to %struct.clk_hw*, !dbg !1393
  store %struct.clk_hw* %48, %struct.clk_hw** %hw, align 8, !dbg !1394
  br label %if.end51, !dbg !1395

if.end51:                                         ; preds = %if.then48, %if.end46
  %49 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1396
  store %struct.clk_hw* %49, %struct.clk_hw** %retval, align 8, !dbg !1397
  br label %return, !dbg !1397

return:                                           ; preds = %if.end51, %if.then13, %if.then7
  %50 = load %struct.clk_hw*, %struct.clk_hw** %retval, align 8, !dbg !1398
  ret %struct.clk_hw* %50, !dbg !1398
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !1399 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !1403, metadata !DIExpression()), !dbg !1404
  %0 = load i64, i64* %error.addr, align 8, !dbg !1405
  %1 = inttoptr i64 %0 to i8*, !dbg !1406
  ret i8* %1, !dbg !1407
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1408 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1411, metadata !DIExpression()), !dbg !1417
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1423, metadata !DIExpression()), !dbg !1424
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1425, metadata !DIExpression()), !dbg !1426
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1427, metadata !DIExpression()), !dbg !1428
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1429, metadata !DIExpression()), !dbg !1433
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1435, metadata !DIExpression()), !dbg !1439
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1441, metadata !DIExpression()), !dbg !1445
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1450, metadata !DIExpression()), !dbg !1451
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1452, metadata !DIExpression()), !dbg !1453
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1454, metadata !DIExpression()), !dbg !1455
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1456, metadata !DIExpression()), !dbg !1457
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1458, metadata !DIExpression()), !dbg !1459
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1460, metadata !DIExpression()), !dbg !1461
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1462, metadata !DIExpression()), !dbg !1463
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1464, metadata !DIExpression()), !dbg !1465
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1466, metadata !DIExpression()), !dbg !1467
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1468, metadata !DIExpression()), !dbg !1469
  %0 = load i64, i64* %size.addr, align 8, !dbg !1470
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1471
  %or = or i32 %1, 256, !dbg !1472
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1473
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #6, !dbg !1474
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1475

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1476
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1477
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1478

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1479
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1480
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1481
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !1482
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1459
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1483
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1484
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1485
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1486
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1487
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1488
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !1489
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1489
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1489
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1489
  call void @llvm.assume(i1 %maskcond.i.i.i) #6, !dbg !1489
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1490
  br label %kmalloc.exit, !dbg !1490

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1491
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1492
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1492
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1494

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1495
  br label %kmalloc_index.exit.i, !dbg !1495

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1496
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1498
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1499

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1500
  br label %kmalloc_index.exit.i, !dbg !1500

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1501
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1503
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1504

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1505
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1506
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1507

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1508
  br label %kmalloc_index.exit.i, !dbg !1508

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1509
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1511
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1512

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1513
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1514
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1515

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1516
  br label %kmalloc_index.exit.i, !dbg !1516

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1517
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1519
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1520

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1521
  br label %kmalloc_index.exit.i, !dbg !1521

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1522
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1524
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1525

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1526
  br label %kmalloc_index.exit.i, !dbg !1526

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1527
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1529
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1530

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1531
  br label %kmalloc_index.exit.i, !dbg !1531

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1532
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1534
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1535

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1536
  br label %kmalloc_index.exit.i, !dbg !1536

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1537
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1539
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1540

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1541
  br label %kmalloc_index.exit.i, !dbg !1541

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1542
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1544
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1545

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1546
  br label %kmalloc_index.exit.i, !dbg !1546

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1547
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1549
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1550

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1551
  br label %kmalloc_index.exit.i, !dbg !1551

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1552
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1554
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1555

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1556
  br label %kmalloc_index.exit.i, !dbg !1556

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1557
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1559
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1560

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1561
  br label %kmalloc_index.exit.i, !dbg !1561

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1562
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1564
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1565

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1566
  br label %kmalloc_index.exit.i, !dbg !1566

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1567
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1569
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1570

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1571
  br label %kmalloc_index.exit.i, !dbg !1571

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1572
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1574
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1575

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1576
  br label %kmalloc_index.exit.i, !dbg !1576

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1577
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1579
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1580

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1581
  br label %kmalloc_index.exit.i, !dbg !1581

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1582
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1584
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1585

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1586
  br label %kmalloc_index.exit.i, !dbg !1586

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1587
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1589
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1590

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1591
  br label %kmalloc_index.exit.i, !dbg !1591

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1592
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1594
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1595

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1596
  br label %kmalloc_index.exit.i, !dbg !1596

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1597
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1599
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1600

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1601
  br label %kmalloc_index.exit.i, !dbg !1601

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1602
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1604
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1605

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1606
  br label %kmalloc_index.exit.i, !dbg !1606

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1607
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1609
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1610

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1611
  br label %kmalloc_index.exit.i, !dbg !1611

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1612
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1614
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1615

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1616
  br label %kmalloc_index.exit.i, !dbg !1616

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1617
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1619
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1620

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1621
  br label %kmalloc_index.exit.i, !dbg !1621

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1622
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1624
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1625

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1626
  br label %kmalloc_index.exit.i, !dbg !1626

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1627
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1629
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1630

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1631
  br label %kmalloc_index.exit.i, !dbg !1631

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1632
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1634
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1635

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1636
  br label %kmalloc_index.exit.i, !dbg !1636

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #6, !dbg !1637, !srcloc !1640
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #6, !dbg !1641, !srcloc !1644
  unreachable, !dbg !1645

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1646
  store i32 %45, i32* %index.i, align 4, !dbg !1647
  %46 = load i32, i32* %index.i, align 4, !dbg !1648
  %tobool.i = icmp ne i32 %46, 0, !dbg !1648
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1650

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1651
  br label %kmalloc.exit, !dbg !1651

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1652
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1653
  %and.i.i = and i32 %48, 17, !dbg !1653
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1653
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1653
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1653
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1653
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1655

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1656
  br label %kmalloc_type.exit.i, !dbg !1656

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1657
  %and2.i.i = and i32 %49, 1, !dbg !1658
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1657
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1657
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1657
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1659
  br label %kmalloc_type.exit.i, !dbg !1659

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1660
  %idxprom.i = zext i32 %51 to i64, !dbg !1661
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1661
  %52 = load i32, i32* %index.i, align 4, !dbg !1662
  %idxprom6.i = zext i32 %52 to i64, !dbg !1661
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1661
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1661
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1663
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1664
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1665
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1666
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !1667
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1667
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1667
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1667
  call void @llvm.assume(i1 %maskcond.i.i) #6, !dbg !1667
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1428
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1668
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1669
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1670
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1671
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !1672
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1673
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1674
  store i8* %62, i8** %retval.i, align 8, !dbg !1675
  br label %kmalloc.exit, !dbg !1675

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1676
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1677
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !1678
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1678
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1678
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1678
  call void @llvm.assume(i1 %maskcond.i) #6, !dbg !1678
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1679
  br label %kmalloc.exit, !dbg !1679

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1680
  ret i8* %65, !dbg !1681
}

; Function Attrs: noredzone
declare dso_local i32 @clk_hw_register(%struct.device*, %struct.clk_hw*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_clk_hw_register(%struct.device_node*, %struct.clk_hw*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk* @clk_register_mux_table(%struct.device* %dev, i8* %name, i8** %parent_names, i8 zeroext %num_parents, i64 %flags, i8* %reg, i8 zeroext %shift, i32 %mask, i8 zeroext %clk_mux_flags, i32* %table, %struct.spinlock* %lock) #0 !dbg !1682 {
entry:
  %retval = alloca %struct.clk*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %parent_names.addr = alloca i8**, align 8
  %num_parents.addr = alloca i8, align 1
  %flags.addr = alloca i64, align 8
  %reg.addr = alloca i8*, align 8
  %shift.addr = alloca i8, align 1
  %mask.addr = alloca i32, align 4
  %clk_mux_flags.addr = alloca i8, align 1
  %table.addr = alloca i32*, align 8
  %lock.addr = alloca %struct.spinlock*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !1685, metadata !DIExpression()), !dbg !1686
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !1687, metadata !DIExpression()), !dbg !1688
  store i8** %parent_names, i8*** %parent_names.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %parent_names.addr, metadata !1689, metadata !DIExpression()), !dbg !1690
  store i8 %num_parents, i8* %num_parents.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %num_parents.addr, metadata !1691, metadata !DIExpression()), !dbg !1692
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !1693, metadata !DIExpression()), !dbg !1694
  store i8* %reg, i8** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reg.addr, metadata !1695, metadata !DIExpression()), !dbg !1696
  store i8 %shift, i8* %shift.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %shift.addr, metadata !1697, metadata !DIExpression()), !dbg !1698
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !1699, metadata !DIExpression()), !dbg !1700
  store i8 %clk_mux_flags, i8* %clk_mux_flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %clk_mux_flags.addr, metadata !1701, metadata !DIExpression()), !dbg !1702
  store i32* %table, i32** %table.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table.addr, metadata !1703, metadata !DIExpression()), !dbg !1704
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr, metadata !1705, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !1707, metadata !DIExpression()), !dbg !1708
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1709
  %1 = load i8*, i8** %name.addr, align 8, !dbg !1709
  %2 = load i8, i8* %num_parents.addr, align 1, !dbg !1709
  %3 = load i8**, i8*** %parent_names.addr, align 8, !dbg !1709
  %4 = load i64, i64* %flags.addr, align 8, !dbg !1709
  %5 = load i8*, i8** %reg.addr, align 8, !dbg !1709
  %6 = load i8, i8* %shift.addr, align 1, !dbg !1709
  %7 = load i32, i32* %mask.addr, align 4, !dbg !1709
  %8 = load i8, i8* %clk_mux_flags.addr, align 1, !dbg !1709
  %9 = load i32*, i32** %table.addr, align 8, !dbg !1709
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !1709
  %call = call %struct.clk_hw* @__clk_hw_register_mux(%struct.device* %0, %struct.device_node* null, i8* %1, i8 zeroext %2, i8** %3, %struct.clk_hw** null, %struct.clk_parent_data* null, i64 %4, i8* %5, i8 zeroext %6, i32 %7, i8 zeroext %8, i32* %9, %struct.spinlock* %10) #10, !dbg !1709
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !1710
  %11 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1711
  %12 = bitcast %struct.clk_hw* %11 to i8*, !dbg !1711
  %call1 = call zeroext i1 @IS_ERR(i8* %12) #10, !dbg !1713
  br i1 %call1, label %if.then, label %if.end, !dbg !1714

if.then:                                          ; preds = %entry
  %13 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1715
  %14 = bitcast %struct.clk_hw* %13 to i8*, !dbg !1715
  %call2 = call i8* @ERR_CAST(i8* %14) #10, !dbg !1716
  %15 = bitcast i8* %call2 to %struct.clk*, !dbg !1716
  store %struct.clk* %15, %struct.clk** %retval, align 8, !dbg !1717
  br label %return, !dbg !1717

if.end:                                           ; preds = %entry
  %16 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1718
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %16, i32 0, i32 1, !dbg !1719
  %17 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !1719
  store %struct.clk* %17, %struct.clk** %retval, align 8, !dbg !1720
  br label %return, !dbg !1720

return:                                           ; preds = %if.end, %if.then
  %18 = load %struct.clk*, %struct.clk** %retval, align 8, !dbg !1721
  ret %struct.clk* %18, !dbg !1721
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !1722 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1725, metadata !DIExpression()), !dbg !1726
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !1727
  %1 = ptrtoint i8* %0 to i64, !dbg !1727
  %2 = inttoptr i64 %1 to i8*, !dbg !1727
  %3 = ptrtoint i8* %2 to i64, !dbg !1727
  %cmp = icmp uge i64 %3, -4095, !dbg !1727
  %lnot = xor i1 %cmp, true, !dbg !1727
  %lnot1 = xor i1 %lnot, true, !dbg !1727
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1727
  %conv = sext i32 %lnot.ext to i64, !dbg !1727
  %tobool = icmp ne i64 %conv, 0, !dbg !1727
  ret i1 %tobool, !dbg !1728
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_CAST(i8* %ptr) #0 !dbg !1729 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1732, metadata !DIExpression()), !dbg !1733
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !1734
  ret i8* %0, !dbg !1735
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_unregister_mux(%struct.clk* %clk) #0 !dbg !1736 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  %mux = alloca %struct.clk_mux*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_mux*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !1739, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.declare(metadata %struct.clk_mux** %mux, metadata !1741, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !1743, metadata !DIExpression()), !dbg !1744
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !1745
  %call = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %0) #10, !dbg !1746
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !1747
  %1 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1748
  %tobool = icmp ne %struct.clk_hw* %1, null, !dbg !1748
  br i1 %tobool, label %if.end, label %if.then, !dbg !1750

if.then:                                          ; preds = %entry
  br label %return, !dbg !1751

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1752, metadata !DIExpression()), !dbg !1754
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !1754
  %3 = bitcast %struct.clk_hw* %2 to i8*, !dbg !1754
  store i8* %3, i8** %__mptr, align 8, !dbg !1754
  br label %do.body, !dbg !1754

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !1755

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !1754
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !1754
  %5 = bitcast i8* %add.ptr to %struct.clk_mux*, !dbg !1754
  store %struct.clk_mux* %5, %struct.clk_mux** %tmp, align 8, !dbg !1755
  %6 = load %struct.clk_mux*, %struct.clk_mux** %tmp, align 8, !dbg !1754
  store %struct.clk_mux* %6, %struct.clk_mux** %mux, align 8, !dbg !1757
  %7 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !1758
  call void @clk_unregister(%struct.clk* %7) #10, !dbg !1759
  %8 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !1760
  %9 = bitcast %struct.clk_mux* %8 to i8*, !dbg !1760
  call void @kfree(i8* %9) #10, !dbg !1761
  br label %return, !dbg !1762

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !1762
}

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk*) #2

; Function Attrs: noredzone
declare dso_local void @clk_unregister(%struct.clk*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_hw_unregister_mux(%struct.clk_hw* %hw) #0 !dbg !1763 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %mux = alloca %struct.clk_mux*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_mux*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !1764, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.declare(metadata %struct.clk_mux** %mux, metadata !1766, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1768, metadata !DIExpression()), !dbg !1770
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1770
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !1770
  store i8* %1, i8** %__mptr, align 8, !dbg !1770
  br label %do.body, !dbg !1770

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1771

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1770
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1770
  %3 = bitcast i8* %add.ptr to %struct.clk_mux*, !dbg !1770
  store %struct.clk_mux* %3, %struct.clk_mux** %tmp, align 8, !dbg !1771
  %4 = load %struct.clk_mux*, %struct.clk_mux** %tmp, align 8, !dbg !1770
  store %struct.clk_mux* %4, %struct.clk_mux** %mux, align 8, !dbg !1773
  %5 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1774
  call void @clk_hw_unregister(%struct.clk_hw* %5) #10, !dbg !1775
  %6 = load %struct.clk_mux*, %struct.clk_mux** %mux, align 8, !dbg !1776
  %7 = bitcast %struct.clk_mux* %6 to i8*, !dbg !1776
  call void @kfree(i8* %7) #10, !dbg !1777
  ret void, !dbg !1778
}

; Function Attrs: noredzone
declare dso_local void @clk_hw_unregister(%struct.clk_hw*) #2

; Function Attrs: noredzone
declare dso_local i32 @clk_mux_determine_rate_flags(%struct.clk_hw*, %struct.clk_rate_request*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !1779 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !1783, metadata !DIExpression()), !dbg !1784
  %call = call i64 @arch_local_save_flags() #10, !dbg !1785
  store i64 %call, i64* %f, align 8, !dbg !1786
  call void @arch_local_irq_disable() #10, !dbg !1787
  %0 = load i64, i64* %f, align 8, !dbg !1788
  ret i64 %0, !dbg !1789
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_mux_readl(%struct.clk_mux* %mux) #0 !dbg !1790 {
entry:
  %retval = alloca i32, align 4
  %mux.addr = alloca %struct.clk_mux*, align 8
  store %struct.clk_mux* %mux, %struct.clk_mux** %mux.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_mux** %mux.addr, metadata !1793, metadata !DIExpression()), !dbg !1794
  %0 = load %struct.clk_mux*, %struct.clk_mux** %mux.addr, align 8, !dbg !1795
  %flags = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %0, i32 0, i32 5, !dbg !1797
  %1 = load i8, i8* %flags, align 1, !dbg !1797
  %conv = zext i8 %1 to i64, !dbg !1795
  %and = and i64 %conv, 32, !dbg !1798
  %tobool = icmp ne i64 %and, 0, !dbg !1798
  br i1 %tobool, label %if.then, label %if.end, !dbg !1799

if.then:                                          ; preds = %entry
  %2 = load %struct.clk_mux*, %struct.clk_mux** %mux.addr, align 8, !dbg !1800
  %reg = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %2, i32 0, i32 1, !dbg !1801
  %3 = load i8*, i8** %reg, align 8, !dbg !1801
  %call = call i32 @ioread32be(i8* %3) #10, !dbg !1802
  store i32 %call, i32* %retval, align 4, !dbg !1803
  br label %return, !dbg !1803

if.end:                                           ; preds = %entry
  %4 = load %struct.clk_mux*, %struct.clk_mux** %mux.addr, align 8, !dbg !1804
  %reg1 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %4, i32 0, i32 1, !dbg !1805
  %5 = load i8*, i8** %reg1, align 8, !dbg !1805
  %call2 = call i32 @readl(i8* %5) #10, !dbg !1806
  store i32 %call2, i32* %retval, align 4, !dbg !1807
  br label %return, !dbg !1807

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !1808
  ret i32 %6, !dbg !1808
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_mux_writel(%struct.clk_mux* %mux, i32 %val) #0 !dbg !1809 {
entry:
  %mux.addr = alloca %struct.clk_mux*, align 8
  %val.addr = alloca i32, align 4
  store %struct.clk_mux* %mux, %struct.clk_mux** %mux.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_mux** %mux.addr, metadata !1812, metadata !DIExpression()), !dbg !1813
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !1814, metadata !DIExpression()), !dbg !1815
  %0 = load %struct.clk_mux*, %struct.clk_mux** %mux.addr, align 8, !dbg !1816
  %flags = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %0, i32 0, i32 5, !dbg !1818
  %1 = load i8, i8* %flags, align 1, !dbg !1818
  %conv = zext i8 %1 to i64, !dbg !1816
  %and = and i64 %conv, 32, !dbg !1819
  %tobool = icmp ne i64 %and, 0, !dbg !1819
  br i1 %tobool, label %if.then, label %if.else, !dbg !1820

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %val.addr, align 4, !dbg !1821
  %3 = load %struct.clk_mux*, %struct.clk_mux** %mux.addr, align 8, !dbg !1822
  %reg = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %3, i32 0, i32 1, !dbg !1823
  %4 = load i8*, i8** %reg, align 8, !dbg !1823
  call void @iowrite32be(i32 %2, i8* %4) #10, !dbg !1824
  br label %if.end, !dbg !1824

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %val.addr, align 4, !dbg !1825
  %6 = load %struct.clk_mux*, %struct.clk_mux** %mux.addr, align 8, !dbg !1826
  %reg1 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %6, i32 0, i32 1, !dbg !1827
  %7 = load i8*, i8** %reg1, align 8, !dbg !1827
  call void @writel(i32 %5, i8* %7) #10, !dbg !1828
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1829
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1830 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1831, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1834, metadata !DIExpression()), !dbg !1833
  %0 = load i64, i64* %__edi, align 8, !dbg !1833
  store i64 %0, i64* %__edi, align 8, !dbg !1833
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1835, metadata !DIExpression()), !dbg !1833
  %1 = load i64, i64* %__esi, align 8, !dbg !1833
  store i64 %1, i64* %__esi, align 8, !dbg !1833
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1836, metadata !DIExpression()), !dbg !1833
  %2 = load i64, i64* %__edx, align 8, !dbg !1833
  store i64 %2, i64* %__edx, align 8, !dbg !1833
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1837, metadata !DIExpression()), !dbg !1833
  %3 = load i64, i64* %__ecx, align 8, !dbg !1833
  store i64 %3, i64* %__ecx, align 8, !dbg !1833
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1838, metadata !DIExpression()), !dbg !1833
  %4 = load i64, i64* %__eax, align 8, !dbg !1833
  store i64 %4, i64* %__eax, align 8, !dbg !1833
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1833
  %6 = call i64 @llvm.read_register.i64(metadata !185), !dbg !1839
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !1839, !srcloc !1842
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1839
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1839
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1839
  call void @llvm.write_register.i64(metadata !185, i64 %asmresult1), !dbg !1839
  %8 = load i64, i64* %__eax, align 8, !dbg !1839
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1843, metadata !DIExpression()), !dbg !1845
  store i64 -1, i64* %__mask, align 8, !dbg !1845
  %9 = load i64, i64* %__mask, align 8, !dbg !1845
  store i64 %9, i64* %tmp, align 8, !dbg !1845
  %10 = load i64, i64* %tmp, align 8, !dbg !1845
  %and = and i64 %8, %10, !dbg !1839
  store i64 %and, i64* %__ret, align 8, !dbg !1839
  %11 = load i64, i64* %__ret, align 8, !dbg !1833
  store i64 %11, i64* %tmp2, align 8, !dbg !1846
  %12 = load i64, i64* %tmp2, align 8, !dbg !1833
  ret i64 %12, !dbg !1847
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !1848 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1851, metadata !DIExpression()), !dbg !1853
  %0 = load i64, i64* %__edi, align 8, !dbg !1853
  store i64 %0, i64* %__edi, align 8, !dbg !1853
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1854, metadata !DIExpression()), !dbg !1853
  %1 = load i64, i64* %__esi, align 8, !dbg !1853
  store i64 %1, i64* %__esi, align 8, !dbg !1853
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1855, metadata !DIExpression()), !dbg !1853
  %2 = load i64, i64* %__edx, align 8, !dbg !1853
  store i64 %2, i64* %__edx, align 8, !dbg !1853
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1856, metadata !DIExpression()), !dbg !1853
  %3 = load i64, i64* %__ecx, align 8, !dbg !1853
  store i64 %3, i64* %__ecx, align 8, !dbg !1853
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1857, metadata !DIExpression()), !dbg !1853
  %4 = load i64, i64* %__eax, align 8, !dbg !1853
  store i64 %4, i64* %__eax, align 8, !dbg !1853
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !1853
  %6 = call i64 @llvm.read_register.i64(metadata !185), !dbg !1853
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #6, !dbg !1853, !srcloc !1858
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1853
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1853
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1853
  call void @llvm.write_register.i64(metadata !185, i64 %asmresult1), !dbg !1853
  ret void, !dbg !1859
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noredzone
declare dso_local i32 @ioread32be(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !1860 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !1867, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1869, metadata !DIExpression()), !dbg !1868
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !1868
  %1 = bitcast i8* %0 to i32*, !dbg !1868
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #6, !dbg !1868, !srcloc !1870
  store i32 %2, i32* %ret, align 4, !dbg !1868
  %3 = load i32, i32* %ret, align 4, !dbg !1868
  ret i32 %3, !dbg !1868
}

; Function Attrs: noredzone
declare dso_local void @iowrite32be(i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !1871 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !1875, metadata !DIExpression()), !dbg !1876
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !1877, metadata !DIExpression()), !dbg !1876
  %0 = load i32, i32* %val.addr, align 4, !dbg !1876
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !1876
  %2 = bitcast i8* %1 to i32*, !dbg !1876
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #6, !dbg !1876, !srcloc !1878
  ret void, !dbg !1876
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !1879 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !1882, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1884, metadata !DIExpression()), !dbg !1886
  %0 = load i64, i64* %__edi, align 8, !dbg !1886
  store i64 %0, i64* %__edi, align 8, !dbg !1886
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1887, metadata !DIExpression()), !dbg !1886
  %1 = load i64, i64* %__esi, align 8, !dbg !1886
  store i64 %1, i64* %__esi, align 8, !dbg !1886
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1888, metadata !DIExpression()), !dbg !1886
  %2 = load i64, i64* %__edx, align 8, !dbg !1886
  store i64 %2, i64* %__edx, align 8, !dbg !1886
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1889, metadata !DIExpression()), !dbg !1886
  %3 = load i64, i64* %__ecx, align 8, !dbg !1886
  store i64 %3, i64* %__ecx, align 8, !dbg !1886
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1890, metadata !DIExpression()), !dbg !1886
  %4 = load i64, i64* %__eax, align 8, !dbg !1886
  store i64 %4, i64* %__eax, align 8, !dbg !1886
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !1886
  %6 = call i64 @llvm.read_register.i64(metadata !185), !dbg !1886
  %7 = load i64, i64* %f.addr, align 8, !dbg !1886
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #6, !dbg !1886, !srcloc !1891
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !1886
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !1886
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1886
  call void @llvm.write_register.i64(metadata !185, i64 %asmresult1), !dbg !1886
  ret void, !dbg !1892
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #9 !dbg !1893 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1897, metadata !DIExpression()), !dbg !1901
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1903, metadata !DIExpression()), !dbg !1904
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1905, metadata !DIExpression()), !dbg !1906
  %0 = load i64, i64* %size.addr, align 8, !dbg !1907
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1909
  br i1 %1, label %if.then, label %if.end447, !dbg !1910

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1911
  %tobool = icmp ne i64 %2, 0, !dbg !1911
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1914

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1915
  br label %return, !dbg !1915

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1916
  %cmp = icmp ult i64 %3, 4096, !dbg !1918
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1919

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1920
  br label %return, !dbg !1920

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub = sub i64 %4, 1, !dbg !1921
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1921
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1921

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub4 = sub i64 %6, 1, !dbg !1921
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1921
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1921

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub6 = sub i64 %8, 1, !dbg !1921
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1921
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1921

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1921

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub9 = sub i64 %9, 1, !dbg !1921
  %and = and i64 %sub9, -9223372036854775808, !dbg !1921
  %tobool10 = icmp ne i64 %and, 0, !dbg !1921
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1921

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1921

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub13 = sub i64 %10, 1, !dbg !1921
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1921
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1921
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1921

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1921

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub18 = sub i64 %11, 1, !dbg !1921
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1921
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1921
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1921

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1921

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub23 = sub i64 %12, 1, !dbg !1921
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1921
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1921
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1921

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1921

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub28 = sub i64 %13, 1, !dbg !1921
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1921
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1921
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1921

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1921

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub33 = sub i64 %14, 1, !dbg !1921
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1921
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1921
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1921

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1921

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub38 = sub i64 %15, 1, !dbg !1921
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1921
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1921
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1921

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1921

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub43 = sub i64 %16, 1, !dbg !1921
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1921
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1921
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1921

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1921

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub48 = sub i64 %17, 1, !dbg !1921
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1921
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1921
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1921

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1921

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub53 = sub i64 %18, 1, !dbg !1921
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1921
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1921
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1921

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1921

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub58 = sub i64 %19, 1, !dbg !1921
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1921
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1921
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1921

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1921

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub63 = sub i64 %20, 1, !dbg !1921
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1921
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1921
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1921

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1921

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub68 = sub i64 %21, 1, !dbg !1921
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1921
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1921
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1921

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1921

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub73 = sub i64 %22, 1, !dbg !1921
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1921
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1921
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1921

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1921

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub78 = sub i64 %23, 1, !dbg !1921
  %and79 = and i64 %sub78, 562949953421312, !dbg !1921
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1921
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1921

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1921

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub83 = sub i64 %24, 1, !dbg !1921
  %and84 = and i64 %sub83, 281474976710656, !dbg !1921
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1921
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1921

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1921

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub88 = sub i64 %25, 1, !dbg !1921
  %and89 = and i64 %sub88, 140737488355328, !dbg !1921
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1921
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1921

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1921

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub93 = sub i64 %26, 1, !dbg !1921
  %and94 = and i64 %sub93, 70368744177664, !dbg !1921
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1921
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1921

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1921

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub98 = sub i64 %27, 1, !dbg !1921
  %and99 = and i64 %sub98, 35184372088832, !dbg !1921
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1921
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1921

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1921

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub103 = sub i64 %28, 1, !dbg !1921
  %and104 = and i64 %sub103, 17592186044416, !dbg !1921
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1921
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1921

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1921

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub108 = sub i64 %29, 1, !dbg !1921
  %and109 = and i64 %sub108, 8796093022208, !dbg !1921
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1921
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1921

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1921

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub113 = sub i64 %30, 1, !dbg !1921
  %and114 = and i64 %sub113, 4398046511104, !dbg !1921
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1921
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1921

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1921

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub118 = sub i64 %31, 1, !dbg !1921
  %and119 = and i64 %sub118, 2199023255552, !dbg !1921
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1921
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1921

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1921

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub123 = sub i64 %32, 1, !dbg !1921
  %and124 = and i64 %sub123, 1099511627776, !dbg !1921
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1921
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1921

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1921

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub128 = sub i64 %33, 1, !dbg !1921
  %and129 = and i64 %sub128, 549755813888, !dbg !1921
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1921
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1921

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1921

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub133 = sub i64 %34, 1, !dbg !1921
  %and134 = and i64 %sub133, 274877906944, !dbg !1921
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1921
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1921

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1921

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub138 = sub i64 %35, 1, !dbg !1921
  %and139 = and i64 %sub138, 137438953472, !dbg !1921
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1921
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1921

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1921

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub143 = sub i64 %36, 1, !dbg !1921
  %and144 = and i64 %sub143, 68719476736, !dbg !1921
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1921
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1921

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1921

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub148 = sub i64 %37, 1, !dbg !1921
  %and149 = and i64 %sub148, 34359738368, !dbg !1921
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1921
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1921

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1921

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub153 = sub i64 %38, 1, !dbg !1921
  %and154 = and i64 %sub153, 17179869184, !dbg !1921
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1921
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1921

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1921

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub158 = sub i64 %39, 1, !dbg !1921
  %and159 = and i64 %sub158, 8589934592, !dbg !1921
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1921
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1921

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1921

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub163 = sub i64 %40, 1, !dbg !1921
  %and164 = and i64 %sub163, 4294967296, !dbg !1921
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1921
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1921

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1921

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub168 = sub i64 %41, 1, !dbg !1921
  %and169 = and i64 %sub168, 2147483648, !dbg !1921
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1921
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1921

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1921

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub173 = sub i64 %42, 1, !dbg !1921
  %and174 = and i64 %sub173, 1073741824, !dbg !1921
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1921
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1921

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1921

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub178 = sub i64 %43, 1, !dbg !1921
  %and179 = and i64 %sub178, 536870912, !dbg !1921
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1921
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1921

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1921

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub183 = sub i64 %44, 1, !dbg !1921
  %and184 = and i64 %sub183, 268435456, !dbg !1921
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1921
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1921

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1921

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub188 = sub i64 %45, 1, !dbg !1921
  %and189 = and i64 %sub188, 134217728, !dbg !1921
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1921
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1921

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1921

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub193 = sub i64 %46, 1, !dbg !1921
  %and194 = and i64 %sub193, 67108864, !dbg !1921
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1921
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1921

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1921

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub198 = sub i64 %47, 1, !dbg !1921
  %and199 = and i64 %sub198, 33554432, !dbg !1921
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1921
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1921

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1921

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub203 = sub i64 %48, 1, !dbg !1921
  %and204 = and i64 %sub203, 16777216, !dbg !1921
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1921
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1921

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1921

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub208 = sub i64 %49, 1, !dbg !1921
  %and209 = and i64 %sub208, 8388608, !dbg !1921
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1921
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1921

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1921

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub213 = sub i64 %50, 1, !dbg !1921
  %and214 = and i64 %sub213, 4194304, !dbg !1921
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1921
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1921

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1921

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub218 = sub i64 %51, 1, !dbg !1921
  %and219 = and i64 %sub218, 2097152, !dbg !1921
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1921
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1921

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1921

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub223 = sub i64 %52, 1, !dbg !1921
  %and224 = and i64 %sub223, 1048576, !dbg !1921
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1921
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1921

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1921

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub228 = sub i64 %53, 1, !dbg !1921
  %and229 = and i64 %sub228, 524288, !dbg !1921
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1921
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1921

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1921

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub233 = sub i64 %54, 1, !dbg !1921
  %and234 = and i64 %sub233, 262144, !dbg !1921
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1921
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1921

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1921

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub238 = sub i64 %55, 1, !dbg !1921
  %and239 = and i64 %sub238, 131072, !dbg !1921
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1921
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1921

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1921

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub243 = sub i64 %56, 1, !dbg !1921
  %and244 = and i64 %sub243, 65536, !dbg !1921
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1921
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1921

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1921

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub248 = sub i64 %57, 1, !dbg !1921
  %and249 = and i64 %sub248, 32768, !dbg !1921
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1921
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1921

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1921

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub253 = sub i64 %58, 1, !dbg !1921
  %and254 = and i64 %sub253, 16384, !dbg !1921
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1921
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1921

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1921

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub258 = sub i64 %59, 1, !dbg !1921
  %and259 = and i64 %sub258, 8192, !dbg !1921
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1921
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1921

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1921

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub263 = sub i64 %60, 1, !dbg !1921
  %and264 = and i64 %sub263, 4096, !dbg !1921
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1921
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1921

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1921

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub268 = sub i64 %61, 1, !dbg !1921
  %and269 = and i64 %sub268, 2048, !dbg !1921
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1921
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1921

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1921

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub273 = sub i64 %62, 1, !dbg !1921
  %and274 = and i64 %sub273, 1024, !dbg !1921
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1921
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1921

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1921

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub278 = sub i64 %63, 1, !dbg !1921
  %and279 = and i64 %sub278, 512, !dbg !1921
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1921
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1921

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1921

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub283 = sub i64 %64, 1, !dbg !1921
  %and284 = and i64 %sub283, 256, !dbg !1921
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1921
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1921

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1921

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub288 = sub i64 %65, 1, !dbg !1921
  %and289 = and i64 %sub288, 128, !dbg !1921
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1921
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1921

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1921

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub293 = sub i64 %66, 1, !dbg !1921
  %and294 = and i64 %sub293, 64, !dbg !1921
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1921
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1921

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1921

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub298 = sub i64 %67, 1, !dbg !1921
  %and299 = and i64 %sub298, 32, !dbg !1921
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1921
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1921

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1921

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub303 = sub i64 %68, 1, !dbg !1921
  %and304 = and i64 %sub303, 16, !dbg !1921
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1921
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1921

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1921

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub308 = sub i64 %69, 1, !dbg !1921
  %and309 = and i64 %sub308, 8, !dbg !1921
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1921
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1921

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1921

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub313 = sub i64 %70, 1, !dbg !1921
  %and314 = and i64 %sub313, 4, !dbg !1921
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1921
  %71 = zext i1 %tobool315 to i64, !dbg !1921
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1921
  br label %cond.end, !dbg !1921

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1921
  br label %cond.end317, !dbg !1921

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1921
  br label %cond.end319, !dbg !1921

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1921
  br label %cond.end321, !dbg !1921

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1921
  br label %cond.end323, !dbg !1921

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1921
  br label %cond.end325, !dbg !1921

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1921
  br label %cond.end327, !dbg !1921

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1921
  br label %cond.end329, !dbg !1921

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1921
  br label %cond.end331, !dbg !1921

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1921
  br label %cond.end333, !dbg !1921

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1921
  br label %cond.end335, !dbg !1921

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1921
  br label %cond.end337, !dbg !1921

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1921
  br label %cond.end339, !dbg !1921

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1921
  br label %cond.end341, !dbg !1921

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1921
  br label %cond.end343, !dbg !1921

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1921
  br label %cond.end345, !dbg !1921

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1921
  br label %cond.end347, !dbg !1921

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1921
  br label %cond.end349, !dbg !1921

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1921
  br label %cond.end351, !dbg !1921

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1921
  br label %cond.end353, !dbg !1921

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1921
  br label %cond.end355, !dbg !1921

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1921
  br label %cond.end357, !dbg !1921

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1921
  br label %cond.end359, !dbg !1921

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1921
  br label %cond.end361, !dbg !1921

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1921
  br label %cond.end363, !dbg !1921

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1921
  br label %cond.end365, !dbg !1921

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1921
  br label %cond.end367, !dbg !1921

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1921
  br label %cond.end369, !dbg !1921

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1921
  br label %cond.end371, !dbg !1921

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1921
  br label %cond.end373, !dbg !1921

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1921
  br label %cond.end375, !dbg !1921

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1921
  br label %cond.end377, !dbg !1921

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1921
  br label %cond.end379, !dbg !1921

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1921
  br label %cond.end381, !dbg !1921

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1921
  br label %cond.end383, !dbg !1921

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1921
  br label %cond.end385, !dbg !1921

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1921
  br label %cond.end387, !dbg !1921

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1921
  br label %cond.end389, !dbg !1921

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1921
  br label %cond.end391, !dbg !1921

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1921
  br label %cond.end393, !dbg !1921

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1921
  br label %cond.end395, !dbg !1921

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1921
  br label %cond.end397, !dbg !1921

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1921
  br label %cond.end399, !dbg !1921

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1921
  br label %cond.end401, !dbg !1921

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1921
  br label %cond.end403, !dbg !1921

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1921
  br label %cond.end405, !dbg !1921

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1921
  br label %cond.end407, !dbg !1921

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1921
  br label %cond.end409, !dbg !1921

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1921
  br label %cond.end411, !dbg !1921

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1921
  br label %cond.end413, !dbg !1921

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1921
  br label %cond.end415, !dbg !1921

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1921
  br label %cond.end417, !dbg !1921

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1921
  br label %cond.end419, !dbg !1921

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1921
  br label %cond.end421, !dbg !1921

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1921
  br label %cond.end423, !dbg !1921

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1921
  br label %cond.end425, !dbg !1921

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1921
  br label %cond.end427, !dbg !1921

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1921
  br label %cond.end429, !dbg !1921

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1921
  br label %cond.end431, !dbg !1921

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1921
  br label %cond.end433, !dbg !1921

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1921
  br label %cond.end435, !dbg !1921

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1921
  br label %cond.end437, !dbg !1921

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1921
  br label %cond.end440, !dbg !1921

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1921

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1921
  br label %cond.end444, !dbg !1921

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1921
  %sub443 = sub i64 %72, 1, !dbg !1921
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !1921
  br label %cond.end444, !dbg !1921

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1921
  %sub446 = sub i32 %cond445, 12, !dbg !1922
  %add = add i32 %sub446, 1, !dbg !1923
  store i32 %add, i32* %retval, align 4, !dbg !1924
  br label %return, !dbg !1924

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1925
  %dec = add i64 %73, -1, !dbg !1925
  store i64 %dec, i64* %size.addr, align 8, !dbg !1925
  %74 = load i64, i64* %size.addr, align 8, !dbg !1926
  %shr = lshr i64 %74, 12, !dbg !1926
  store i64 %shr, i64* %size.addr, align 8, !dbg !1926
  %75 = load i64, i64* %size.addr, align 8, !dbg !1927
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1904
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1928
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1929
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #5, !dbg !1928, !srcloc !1930
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1928
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1931
  %add.i = add i32 %79, 1, !dbg !1932
  store i32 %add.i, i32* %retval, align 4, !dbg !1933
  br label %return, !dbg !1933

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1934
  ret i32 %80, !dbg !1934
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #9 !dbg !1935 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1897, metadata !DIExpression()), !dbg !1939
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1903, metadata !DIExpression()), !dbg !1941
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1942, metadata !DIExpression()), !dbg !1943
  %0 = load i64, i64* %n.addr, align 8, !dbg !1944
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1941
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1945
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1946
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #5, !dbg !1945, !srcloc !1930
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1945
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1947
  %add.i = add i32 %4, 1, !dbg !1948
  %sub = sub i32 %add.i, 1, !dbg !1949
  ret i32 %sub, !dbg !1950
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1951 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1955, metadata !DIExpression()), !dbg !1956
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1957, metadata !DIExpression()), !dbg !1958
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1959, metadata !DIExpression()), !dbg !1960
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1961, metadata !DIExpression()), !dbg !1962
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1963
  ret i8* %0, !dbg !1964
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind willreturn }
attributes #9 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noredzone }
attributes #11 = { noredzone nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!185}
!llvm.module.flags = !{!186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "clk_mux_ops", scope: !2, file: !3, line: 136, type: !47, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !182, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/clk/clk-mux.c", directory: "/home/lizy2001/genbc/linux")
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
!19 = !{!20, !22, !23, !72, !180}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !21, line: 148, baseType: !7)
!21 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_mux", file: !25, line: 815, size: 448, elements: !26)
!25 = !DIFile(filename: "./include/linux/clk-provider.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !155, !156, !160, !161, !162, !163}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !24, file: !25, line: 816, baseType: !28, size: 192)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_hw", file: !25, line: 312, size: 192, elements: !29)
!29 = !{!30, !33, !36}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !28, file: !25, line: 313, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk_core", file: !25, line: 38, flags: DIFlagFwdDecl)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !28, file: !25, line: 314, baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !25, line: 36, flags: DIFlagFwdDecl)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !28, file: !25, line: 315, baseType: !37, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_init_data", file: !25, line: 285, size: 448, elements: !40)
!40 = !{!41, !45, !137, !140, !151, !153, !154}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !39, file: !25, line: 286, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !39, file: !25, line: 287, baseType: !46, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_ops", file: !25, line: 220, size: 1600, elements: !49)
!49 = !{!50, !56, !60, !61, !62, !63, !64, !65, !66, !67, !68, !73, !79, !91, !100, !104, !108, !112, !113, !114, !118, !127, !128, !129, !130}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !48, file: !25, line: 221, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !55}
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !48, file: !25, line: 222, baseType: !57, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !55}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !48, file: !25, line: 223, baseType: !51, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_unused", scope: !48, file: !25, line: 224, baseType: !57, size: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !48, file: !25, line: 225, baseType: !51, size: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !48, file: !25, line: 226, baseType: !57, size: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "is_enabled", scope: !48, file: !25, line: 227, baseType: !51, size: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "disable_unused", scope: !48, file: !25, line: 228, baseType: !57, size: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "save_context", scope: !48, file: !25, line: 229, baseType: !51, size: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "restore_context", scope: !48, file: !25, line: 230, baseType: !57, size: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_rate", scope: !48, file: !25, line: 231, baseType: !69, size: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !55, !72}
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "round_rate", scope: !48, file: !25, line: 233, baseType: !74, size: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !55, !72, !78}
!77 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "determine_rate", scope: !48, file: !25, line: 235, baseType: !80, size: 64, offset: 768)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!54, !55, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_rate_request", file: !25, line: 55, size: 320, elements: !85)
!85 = !{!86, !87, !88, !89, !90}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !84, file: !25, line: 56, baseType: !72, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "min_rate", scope: !84, file: !25, line: 57, baseType: !72, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "max_rate", scope: !84, file: !25, line: 58, baseType: !72, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_rate", scope: !84, file: !25, line: 59, baseType: !72, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_hw", scope: !84, file: !25, line: 60, baseType: !55, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "set_parent", scope: !48, file: !25, line: 237, baseType: !92, size: 64, offset: 832)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!54, !55, !95}
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !96, line: 17, baseType: !97)
!96 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !98, line: 21, baseType: !99)
!98 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !48, file: !25, line: 238, baseType: !101, size: 64, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!95, !55}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !48, file: !25, line: 239, baseType: !105, size: 64, offset: 960)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!54, !55, !72, !72}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate_and_parent", scope: !48, file: !25, line: 241, baseType: !109, size: 64, offset: 1024)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!54, !55, !72, !72, !95}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_accuracy", scope: !48, file: !25, line: 244, baseType: !69, size: 64, offset: 1088)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "get_phase", scope: !48, file: !25, line: 246, baseType: !51, size: 64, offset: 1152)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "set_phase", scope: !48, file: !25, line: 247, baseType: !115, size: 64, offset: 1216)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!54, !55, !54}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "get_duty_cycle", scope: !48, file: !25, line: 248, baseType: !119, size: 64, offset: 1280)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!54, !55, !122}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_duty", file: !25, line: 69, size: 64, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !123, file: !25, line: 70, baseType: !7, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !123, file: !25, line: 71, baseType: !7, size: 32, offset: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "set_duty_cycle", scope: !48, file: !25, line: 250, baseType: !119, size: 64, offset: 1344)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !48, file: !25, line: 252, baseType: !51, size: 64, offset: 1408)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "terminate", scope: !48, file: !25, line: 253, baseType: !57, size: 64, offset: 1472)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "debug_init", scope: !48, file: !25, line: 254, baseType: !131, size: 64, offset: 1536)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !55, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !136, line: 21, flags: DIFlagFwdDecl)
!136 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!137 = !DIDerivedType(tag: DW_TAG_member, name: "parent_names", scope: !39, file: !25, line: 289, baseType: !138, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !39, file: !25, line: 290, baseType: !141, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_parent_data", file: !25, line: 264, size: 256, elements: !144)
!144 = !{!145, !148, !149, !150}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !143, file: !25, line: 265, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "fw_name", scope: !143, file: !25, line: 266, baseType: !42, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !25, line: 267, baseType: !42, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !143, file: !25, line: 268, baseType: !54, size: 32, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "parent_hws", scope: !39, file: !25, line: 291, baseType: !152, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "num_parents", scope: !39, file: !25, line: 292, baseType: !95, size: 8, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !25, line: 293, baseType: !72, size: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !24, file: !25, line: 817, baseType: !22, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !24, file: !25, line: 818, baseType: !157, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !96, line: 21, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !98, line: 27, baseType: !7)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !24, file: !25, line: 819, baseType: !158, size: 32, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !24, file: !25, line: 820, baseType: !95, size: 8, offset: 352)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !24, file: !25, line: 821, baseType: !95, size: 8, offset: 360)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !24, file: !25, line: 822, baseType: !164, size: 64, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !166, line: 83, baseType: !167)
!166 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !166, line: 71, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !167, file: !166, line: 72, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !166, line: 72, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !170, file: !166, line: 73, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !166, line: 20, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !173, file: !166, line: 21, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !177, line: 25, baseType: !178)
!177 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 25, elements: !179)
!179 = !{}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!182 = !{!0, !183}
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "clk_mux_ro_ops", scope: !2, file: !3, line: 143, type: !47, isLocal: false, isDefinition: true)
!185 = !{!"rsp"}
!186 = !{i32 7, !"Dwarf Version", i32 4}
!187 = !{i32 2, !"Debug Info Version", i32 3}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"Code Model", i32 2}
!190 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!191 = distinct !DISubprogram(name: "clk_mux_val_to_index", scope: !3, file: !3, line: 42, type: !192, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!192 = !DISubroutineType(types: !193)
!193 = !{!54, !55, !157, !7, !7}
!194 = !DILocalVariable(name: "x", arg: 1, scope: !195, file: !196, line: 283, type: !54)
!195 = distinct !DISubprogram(name: "ffs", scope: !196, file: !196, line: 283, type: !197, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!196 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!197 = !DISubroutineType(types: !198)
!198 = !{!54, !54}
!199 = !DILocation(line: 283, column: 36, scope: !195, inlinedAt: !200)
!200 = distinct !DILocation(line: 57, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !191, file: !3, line: 56, column: 6)
!202 = !DILocalVariable(name: "r", scope: !195, file: !196, line: 285, type: !54)
!203 = !DILocation(line: 285, column: 6, scope: !195, inlinedAt: !200)
!204 = !DILocalVariable(name: "hw", arg: 1, scope: !191, file: !3, line: 42, type: !55)
!205 = !DILocation(line: 42, column: 41, scope: !191)
!206 = !DILocalVariable(name: "table", arg: 2, scope: !191, file: !3, line: 42, type: !157)
!207 = !DILocation(line: 42, column: 50, scope: !191)
!208 = !DILocalVariable(name: "flags", arg: 3, scope: !191, file: !3, line: 42, type: !7)
!209 = !DILocation(line: 42, column: 70, scope: !191)
!210 = !DILocalVariable(name: "val", arg: 4, scope: !191, file: !3, line: 43, type: !7)
!211 = !DILocation(line: 43, column: 18, scope: !191)
!212 = !DILocalVariable(name: "num_parents", scope: !191, file: !3, line: 45, type: !54)
!213 = !DILocation(line: 45, column: 6, scope: !191)
!214 = !DILocation(line: 45, column: 43, scope: !191)
!215 = !DILocation(line: 45, column: 20, scope: !191)
!216 = !DILocation(line: 47, column: 6, scope: !217)
!217 = distinct !DILexicalBlock(scope: !191, file: !3, line: 47, column: 6)
!218 = !DILocation(line: 47, column: 6, scope: !191)
!219 = !DILocalVariable(name: "i", scope: !220, file: !3, line: 48, type: !54)
!220 = distinct !DILexicalBlock(scope: !217, file: !3, line: 47, column: 13)
!221 = !DILocation(line: 48, column: 7, scope: !220)
!222 = !DILocation(line: 50, column: 10, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !3, line: 50, column: 3)
!224 = !DILocation(line: 50, column: 8, scope: !223)
!225 = !DILocation(line: 50, column: 15, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !3, line: 50, column: 3)
!227 = !DILocation(line: 50, column: 19, scope: !226)
!228 = !DILocation(line: 50, column: 17, scope: !226)
!229 = !DILocation(line: 50, column: 3, scope: !223)
!230 = !DILocation(line: 51, column: 8, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !3, line: 51, column: 8)
!232 = !DILocation(line: 51, column: 14, scope: !231)
!233 = !DILocation(line: 51, column: 20, scope: !231)
!234 = !DILocation(line: 51, column: 17, scope: !231)
!235 = !DILocation(line: 51, column: 8, scope: !226)
!236 = !DILocation(line: 52, column: 12, scope: !231)
!237 = !DILocation(line: 52, column: 5, scope: !231)
!238 = !DILocation(line: 50, column: 33, scope: !226)
!239 = !DILocation(line: 50, column: 3, scope: !226)
!240 = distinct !{!240, !229, !241}
!241 = !DILocation(line: 52, column: 12, scope: !223)
!242 = !DILocation(line: 53, column: 3, scope: !220)
!243 = !DILocation(line: 56, column: 6, scope: !201)
!244 = !DILocation(line: 56, column: 10, scope: !201)
!245 = !DILocation(line: 56, column: 14, scope: !201)
!246 = !DILocation(line: 56, column: 20, scope: !201)
!247 = !DILocation(line: 56, column: 6, scope: !191)
!248 = !DILocation(line: 57, column: 13, scope: !201)
!249 = !DILocation(line: 299, column: 14, scope: !195, inlinedAt: !200)
!250 = !DILocation(line: 297, column: 2, scope: !195, inlinedAt: !200)
!251 = !{i32 286175}
!252 = !DILocation(line: 310, column: 9, scope: !195, inlinedAt: !200)
!253 = !DILocation(line: 310, column: 11, scope: !195, inlinedAt: !200)
!254 = !DILocation(line: 57, column: 18, scope: !201)
!255 = !DILocation(line: 57, column: 7, scope: !201)
!256 = !DILocation(line: 57, column: 3, scope: !201)
!257 = !DILocation(line: 59, column: 6, scope: !258)
!258 = distinct !DILexicalBlock(scope: !191, file: !3, line: 59, column: 6)
!259 = !DILocation(line: 59, column: 10, scope: !258)
!260 = !DILocation(line: 59, column: 14, scope: !258)
!261 = !DILocation(line: 59, column: 20, scope: !258)
!262 = !DILocation(line: 59, column: 6, scope: !191)
!263 = !DILocation(line: 60, column: 6, scope: !258)
!264 = !DILocation(line: 60, column: 3, scope: !258)
!265 = !DILocation(line: 62, column: 6, scope: !266)
!266 = distinct !DILexicalBlock(scope: !191, file: !3, line: 62, column: 6)
!267 = !DILocation(line: 62, column: 13, scope: !266)
!268 = !DILocation(line: 62, column: 10, scope: !266)
!269 = !DILocation(line: 62, column: 6, scope: !191)
!270 = !DILocation(line: 63, column: 3, scope: !266)
!271 = !DILocation(line: 65, column: 9, scope: !191)
!272 = !DILocation(line: 65, column: 2, scope: !191)
!273 = !DILocation(line: 66, column: 1, scope: !191)
!274 = distinct !DISubprogram(name: "clk_mux_index_to_val", scope: !3, file: !3, line: 69, type: !275, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!275 = !DISubroutineType(types: !276)
!276 = !{!7, !157, !7, !95}
!277 = !DILocalVariable(name: "table", arg: 1, scope: !274, file: !3, line: 69, type: !157)
!278 = !DILocation(line: 69, column: 40, scope: !274)
!279 = !DILocalVariable(name: "flags", arg: 2, scope: !274, file: !3, line: 69, type: !7)
!280 = !DILocation(line: 69, column: 60, scope: !274)
!281 = !DILocalVariable(name: "index", arg: 3, scope: !274, file: !3, line: 69, type: !95)
!282 = !DILocation(line: 69, column: 70, scope: !274)
!283 = !DILocalVariable(name: "val", scope: !274, file: !3, line: 71, type: !7)
!284 = !DILocation(line: 71, column: 15, scope: !274)
!285 = !DILocation(line: 71, column: 21, scope: !274)
!286 = !DILocation(line: 73, column: 6, scope: !287)
!287 = distinct !DILexicalBlock(scope: !274, file: !3, line: 73, column: 6)
!288 = !DILocation(line: 73, column: 6, scope: !274)
!289 = !DILocation(line: 74, column: 9, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !3, line: 73, column: 13)
!291 = !DILocation(line: 74, column: 15, scope: !290)
!292 = !DILocation(line: 74, column: 7, scope: !290)
!293 = !DILocation(line: 75, column: 2, scope: !290)
!294 = !DILocation(line: 76, column: 7, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !3, line: 76, column: 7)
!296 = distinct !DILexicalBlock(scope: !287, file: !3, line: 75, column: 9)
!297 = !DILocation(line: 76, column: 13, scope: !295)
!298 = !DILocation(line: 76, column: 7, scope: !296)
!299 = !DILocation(line: 77, column: 15, scope: !295)
!300 = !DILocation(line: 77, column: 12, scope: !295)
!301 = !DILocation(line: 77, column: 8, scope: !295)
!302 = !DILocation(line: 77, column: 4, scope: !295)
!303 = !DILocation(line: 79, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !296, file: !3, line: 79, column: 7)
!305 = !DILocation(line: 79, column: 13, scope: !304)
!306 = !DILocation(line: 79, column: 7, scope: !296)
!307 = !DILocation(line: 80, column: 7, scope: !304)
!308 = !DILocation(line: 80, column: 4, scope: !304)
!309 = !DILocation(line: 83, column: 9, scope: !274)
!310 = !DILocation(line: 83, column: 2, scope: !274)
!311 = distinct !DISubprogram(name: "clk_mux_determine_rate", scope: !3, file: !3, line: 128, type: !81, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!312 = !DILocalVariable(name: "hw", arg: 1, scope: !311, file: !3, line: 128, type: !55)
!313 = !DILocation(line: 128, column: 50, scope: !311)
!314 = !DILocalVariable(name: "req", arg: 2, scope: !311, file: !3, line: 129, type: !83)
!315 = !DILocation(line: 129, column: 32, scope: !311)
!316 = !DILocalVariable(name: "mux", scope: !311, file: !3, line: 131, type: !23)
!317 = !DILocation(line: 131, column: 18, scope: !311)
!318 = !DILocalVariable(name: "__mptr", scope: !319, file: !3, line: 131, type: !22)
!319 = distinct !DILexicalBlock(scope: !311, file: !3, line: 131, column: 24)
!320 = !DILocation(line: 131, column: 24, scope: !319)
!321 = !DILocation(line: 131, column: 24, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !3, line: 131, column: 24)
!323 = !DILocation(line: 133, column: 38, scope: !311)
!324 = !DILocation(line: 133, column: 42, scope: !311)
!325 = !DILocation(line: 133, column: 47, scope: !311)
!326 = !DILocation(line: 133, column: 52, scope: !311)
!327 = !DILocation(line: 133, column: 9, scope: !311)
!328 = !DILocation(line: 133, column: 2, scope: !311)
!329 = distinct !DISubprogram(name: "clk_mux_set_parent", scope: !3, file: !3, line: 98, type: !93, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!330 = !DILocalVariable(name: "lock", arg: 1, scope: !331, file: !332, line: 407, type: !164)
!331 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !332, file: !332, line: 407, type: !333, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!332 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!333 = !DISubroutineType(types: !334)
!334 = !{null, !164, !72}
!335 = !DILocation(line: 407, column: 64, scope: !331, inlinedAt: !336)
!336 = distinct !DILocation(line: 121, column: 3, scope: !337)
!337 = distinct !DILexicalBlock(scope: !329, file: !3, line: 120, column: 6)
!338 = !DILocalVariable(name: "flags", arg: 2, scope: !331, file: !332, line: 407, type: !72)
!339 = !DILocation(line: 407, column: 84, scope: !331, inlinedAt: !336)
!340 = !DILocalVariable(name: "lock", arg: 1, scope: !341, file: !332, line: 327, type: !164)
!341 = distinct !DISubprogram(name: "spinlock_check", scope: !332, file: !332, line: 327, type: !342, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!342 = !DISubroutineType(types: !343)
!343 = !{!344, !164}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !166, line: 29, baseType: !173)
!346 = !DILocation(line: 327, column: 67, scope: !341, inlinedAt: !347)
!347 = distinct !DILocation(line: 106, column: 3, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !3, line: 106, column: 3)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 106, column: 3)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 106, column: 3)
!351 = distinct !DILexicalBlock(scope: !352, file: !3, line: 106, column: 3)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 106, column: 3)
!353 = distinct !DILexicalBlock(scope: !329, file: !3, line: 105, column: 6)
!354 = !DILocalVariable(name: "hw", arg: 1, scope: !329, file: !3, line: 98, type: !55)
!355 = !DILocation(line: 98, column: 46, scope: !329)
!356 = !DILocalVariable(name: "index", arg: 2, scope: !329, file: !3, line: 98, type: !95)
!357 = !DILocation(line: 98, column: 53, scope: !329)
!358 = !DILocalVariable(name: "mux", scope: !329, file: !3, line: 100, type: !23)
!359 = !DILocation(line: 100, column: 18, scope: !329)
!360 = !DILocalVariable(name: "__mptr", scope: !361, file: !3, line: 100, type: !22)
!361 = distinct !DILexicalBlock(scope: !329, file: !3, line: 100, column: 24)
!362 = !DILocation(line: 100, column: 24, scope: !361)
!363 = !DILocation(line: 100, column: 24, scope: !364)
!364 = distinct !DILexicalBlock(scope: !361, file: !3, line: 100, column: 24)
!365 = !DILocalVariable(name: "val", scope: !329, file: !3, line: 101, type: !158)
!366 = !DILocation(line: 101, column: 6, scope: !329)
!367 = !DILocation(line: 101, column: 33, scope: !329)
!368 = !DILocation(line: 101, column: 38, scope: !329)
!369 = !DILocation(line: 101, column: 45, scope: !329)
!370 = !DILocation(line: 101, column: 50, scope: !329)
!371 = !DILocation(line: 101, column: 57, scope: !329)
!372 = !DILocation(line: 101, column: 12, scope: !329)
!373 = !DILocalVariable(name: "flags", scope: !329, file: !3, line: 102, type: !72)
!374 = !DILocation(line: 102, column: 16, scope: !329)
!375 = !DILocalVariable(name: "reg", scope: !329, file: !3, line: 103, type: !158)
!376 = !DILocation(line: 103, column: 6, scope: !329)
!377 = !DILocation(line: 105, column: 6, scope: !353)
!378 = !DILocation(line: 105, column: 11, scope: !353)
!379 = !DILocation(line: 105, column: 6, scope: !329)
!380 = !DILocation(line: 106, column: 3, scope: !353)
!381 = !DILocation(line: 106, column: 3, scope: !352)
!382 = !DILocalVariable(name: "__dummy", scope: !383, file: !3, line: 106, type: !72)
!383 = distinct !DILexicalBlock(scope: !351, file: !3, line: 106, column: 3)
!384 = !DILocation(line: 106, column: 3, scope: !383)
!385 = !DILocalVariable(name: "__dummy2", scope: !383, file: !3, line: 106, type: !72)
!386 = !DILocation(line: 106, column: 3, scope: !351)
!387 = !DILocation(line: 106, column: 3, scope: !350)
!388 = !DILocation(line: 106, column: 3, scope: !389)
!389 = distinct !DILexicalBlock(scope: !350, file: !3, line: 106, column: 3)
!390 = !DILocalVariable(name: "__dummy", scope: !391, file: !3, line: 106, type: !72)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 106, column: 3)
!392 = distinct !DILexicalBlock(scope: !389, file: !3, line: 106, column: 3)
!393 = !DILocation(line: 106, column: 3, scope: !391)
!394 = !DILocalVariable(name: "__dummy2", scope: !391, file: !3, line: 106, type: !72)
!395 = !DILocation(line: 106, column: 3, scope: !392)
!396 = !DILocation(line: 106, column: 3, scope: !349)
!397 = !{i32 -2143986699}
!398 = !DILocation(line: 106, column: 3, scope: !348)
!399 = !DILocation(line: 329, column: 10, scope: !341, inlinedAt: !347)
!400 = !DILocation(line: 329, column: 16, scope: !341, inlinedAt: !347)
!401 = !DILocation(line: 110, column: 6, scope: !402)
!402 = distinct !DILexicalBlock(scope: !329, file: !3, line: 110, column: 6)
!403 = !DILocation(line: 110, column: 11, scope: !402)
!404 = !DILocation(line: 110, column: 17, scope: !402)
!405 = !DILocation(line: 110, column: 6, scope: !329)
!406 = !DILocation(line: 111, column: 9, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !3, line: 110, column: 40)
!408 = !DILocation(line: 111, column: 14, scope: !407)
!409 = !DILocation(line: 111, column: 23, scope: !407)
!410 = !DILocation(line: 111, column: 28, scope: !407)
!411 = !DILocation(line: 111, column: 34, scope: !407)
!412 = !DILocation(line: 111, column: 19, scope: !407)
!413 = !DILocation(line: 111, column: 7, scope: !407)
!414 = !DILocation(line: 112, column: 2, scope: !407)
!415 = !DILocation(line: 113, column: 23, scope: !416)
!416 = distinct !DILexicalBlock(scope: !402, file: !3, line: 112, column: 9)
!417 = !DILocation(line: 113, column: 9, scope: !416)
!418 = !DILocation(line: 113, column: 7, scope: !416)
!419 = !DILocation(line: 114, column: 12, scope: !416)
!420 = !DILocation(line: 114, column: 17, scope: !416)
!421 = !DILocation(line: 114, column: 25, scope: !416)
!422 = !DILocation(line: 114, column: 30, scope: !416)
!423 = !DILocation(line: 114, column: 22, scope: !416)
!424 = !DILocation(line: 114, column: 10, scope: !416)
!425 = !DILocation(line: 114, column: 7, scope: !416)
!426 = !DILocation(line: 116, column: 8, scope: !329)
!427 = !DILocation(line: 116, column: 15, scope: !329)
!428 = !DILocation(line: 116, column: 20, scope: !329)
!429 = !DILocation(line: 116, column: 12, scope: !329)
!430 = !DILocation(line: 116, column: 6, scope: !329)
!431 = !DILocation(line: 117, column: 9, scope: !329)
!432 = !DILocation(line: 117, column: 6, scope: !329)
!433 = !DILocation(line: 118, column: 17, scope: !329)
!434 = !DILocation(line: 118, column: 22, scope: !329)
!435 = !DILocation(line: 118, column: 2, scope: !329)
!436 = !DILocation(line: 120, column: 6, scope: !337)
!437 = !DILocation(line: 120, column: 11, scope: !337)
!438 = !DILocation(line: 120, column: 6, scope: !329)
!439 = !DILocation(line: 121, column: 26, scope: !337)
!440 = !DILocation(line: 121, column: 31, scope: !337)
!441 = !DILocation(line: 121, column: 37, scope: !337)
!442 = !DILocalVariable(name: "__dummy", scope: !443, file: !332, line: 409, type: !72)
!443 = distinct !DILexicalBlock(scope: !444, file: !332, line: 409, column: 2)
!444 = distinct !DILexicalBlock(scope: !331, file: !332, line: 409, column: 2)
!445 = !DILocation(line: 409, column: 2, scope: !443, inlinedAt: !336)
!446 = !DILocalVariable(name: "__dummy2", scope: !443, file: !332, line: 409, type: !72)
!447 = !DILocalVariable(name: "__dummy", scope: !448, file: !332, line: 409, type: !72)
!448 = distinct !DILexicalBlock(scope: !449, file: !332, line: 409, column: 2)
!449 = distinct !DILexicalBlock(scope: !450, file: !332, line: 409, column: 2)
!450 = distinct !DILexicalBlock(scope: !451, file: !332, line: 409, column: 2)
!451 = distinct !DILexicalBlock(scope: !444, file: !332, line: 409, column: 2)
!452 = !DILocation(line: 409, column: 2, scope: !448, inlinedAt: !336)
!453 = !DILocalVariable(name: "__dummy2", scope: !448, file: !332, line: 409, type: !72)
!454 = !DILocation(line: 409, column: 2, scope: !449, inlinedAt: !336)
!455 = !DILocation(line: 409, column: 2, scope: !456, inlinedAt: !336)
!456 = distinct !DILexicalBlock(scope: !451, file: !332, line: 409, column: 2)
!457 = !{i32 -2145380992}
!458 = !DILocation(line: 409, column: 2, scope: !459, inlinedAt: !336)
!459 = distinct !DILexicalBlock(scope: !456, file: !332, line: 409, column: 2)
!460 = !DILocation(line: 121, column: 3, scope: !337)
!461 = !DILocation(line: 125, column: 2, scope: !329)
!462 = distinct !DISubprogram(name: "clk_mux_get_parent", scope: !3, file: !3, line: 87, type: !102, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!463 = !DILocalVariable(name: "hw", arg: 1, scope: !462, file: !3, line: 87, type: !55)
!464 = !DILocation(line: 87, column: 45, scope: !462)
!465 = !DILocalVariable(name: "mux", scope: !462, file: !3, line: 89, type: !23)
!466 = !DILocation(line: 89, column: 18, scope: !462)
!467 = !DILocalVariable(name: "__mptr", scope: !468, file: !3, line: 89, type: !22)
!468 = distinct !DILexicalBlock(scope: !462, file: !3, line: 89, column: 24)
!469 = !DILocation(line: 89, column: 24, scope: !468)
!470 = !DILocation(line: 89, column: 24, scope: !471)
!471 = distinct !DILexicalBlock(scope: !468, file: !3, line: 89, column: 24)
!472 = !DILocalVariable(name: "val", scope: !462, file: !3, line: 90, type: !158)
!473 = !DILocation(line: 90, column: 6, scope: !462)
!474 = !DILocation(line: 92, column: 22, scope: !462)
!475 = !DILocation(line: 92, column: 8, scope: !462)
!476 = !DILocation(line: 92, column: 30, scope: !462)
!477 = !DILocation(line: 92, column: 35, scope: !462)
!478 = !DILocation(line: 92, column: 27, scope: !462)
!479 = !DILocation(line: 92, column: 6, scope: !462)
!480 = !DILocation(line: 93, column: 9, scope: !462)
!481 = !DILocation(line: 93, column: 14, scope: !462)
!482 = !DILocation(line: 93, column: 6, scope: !462)
!483 = !DILocation(line: 95, column: 30, scope: !462)
!484 = !DILocation(line: 95, column: 34, scope: !462)
!485 = !DILocation(line: 95, column: 39, scope: !462)
!486 = !DILocation(line: 95, column: 46, scope: !462)
!487 = !DILocation(line: 95, column: 51, scope: !462)
!488 = !DILocation(line: 95, column: 58, scope: !462)
!489 = !DILocation(line: 95, column: 9, scope: !462)
!490 = !DILocation(line: 95, column: 2, scope: !462)
!491 = distinct !DISubprogram(name: "__clk_hw_register_mux", scope: !3, file: !3, line: 148, type: !492, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!492 = !DISubroutineType(types: !493)
!493 = !{!55, !494, !497, !42, !95, !138, !152, !141, !72, !22, !95, !158, !95, !157, !164}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !496, line: 15, flags: DIFlagFwdDecl)
!496 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !499, line: 51, size: 1344, elements: !500)
!499 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!500 = !{!501, !502, !504, !505, !607, !1216, !1217, !1218, !1219, !1220, !1221, !1222}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !498, file: !499, line: 52, baseType: !42, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !498, file: !499, line: 53, baseType: !503, size: 32, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !499, line: 28, baseType: !158)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !498, file: !499, line: 54, baseType: !42, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !498, file: !499, line: 55, baseType: !506, size: 192, offset: 192)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !496, line: 17, size: 192, elements: !507)
!507 = !{!508, !510, !606}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !506, file: !496, line: 18, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !506, file: !496, line: 19, baseType: !511, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !496, line: 110, size: 1152, elements: !514)
!514 = !{!515, !519, !523, !531, !539, !543, !551, !556, !560, !561, !565, !569, !573, !589, !590, !591, !592, !602}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !513, file: !496, line: 111, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!509, !509}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !513, file: !496, line: 112, baseType: !520, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !509}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !513, file: !496, line: 113, baseType: !524, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!527, !529}
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !21, line: 30, baseType: !528)
!528 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !513, file: !496, line: 114, baseType: !532, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!535, !529, !537}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !513, file: !496, line: 116, baseType: !540, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!527, !529, !42}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !513, file: !496, line: 118, baseType: !544, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!54, !529, !42, !7, !22, !547}
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 55, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !549, line: 72, baseType: !550)
!549 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !549, line: 16, baseType: !72)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !513, file: !496, line: 123, baseType: !552, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!54, !529, !42, !555, !547}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !513, file: !496, line: 126, baseType: !557, size: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!42, !529}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !513, file: !496, line: 127, baseType: !557, size: 64, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !513, file: !496, line: 128, baseType: !562, size: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!509, !529}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !513, file: !496, line: 130, baseType: !566, size: 64, offset: 640)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!509, !529, !509}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !513, file: !496, line: 133, baseType: !570, size: 64, offset: 704)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!509, !529, !42}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !513, file: !496, line: 135, baseType: !574, size: 64, offset: 768)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!54, !529, !42, !42, !7, !7, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !496, line: 43, size: 640, elements: !579)
!579 = !{!580, !581, !582}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !578, file: !496, line: 44, baseType: !509, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !578, file: !496, line: 45, baseType: !7, size: 32, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !578, file: !496, line: 46, baseType: !583, size: 512, offset: 128)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 512, elements: !587)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !96, line: 23, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !98, line: 31, baseType: !586)
!586 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!587 = !{!588}
!588 = !DISubrange(count: 8)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !513, file: !496, line: 140, baseType: !566, size: 64, offset: 832)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !513, file: !496, line: 143, baseType: !562, size: 64, offset: 896)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !513, file: !496, line: 145, baseType: !516, size: 64, offset: 960)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !513, file: !496, line: 146, baseType: !593, size: 64, offset: 1024)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!54, !529, !596}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !496, line: 29, size: 128, elements: !598)
!598 = !{!599, !600, !601}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !597, file: !496, line: 30, baseType: !7, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !597, file: !496, line: 31, baseType: !7, size: 32, offset: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !597, file: !496, line: 32, baseType: !529, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !513, file: !496, line: 148, baseType: !603, size: 64, offset: 1088)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!54, !529, !494}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !506, file: !496, line: 20, baseType: !494, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !498, file: !499, line: 57, baseType: !608, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !499, line: 31, size: 704, elements: !610)
!610 = !{!611, !613, !614, !615, !616}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !609, file: !499, line: 32, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !609, file: !499, line: 33, baseType: !54, size: 32, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !609, file: !499, line: 34, baseType: !22, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !609, file: !499, line: 35, baseType: !608, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !609, file: !499, line: 43, baseType: !617, size: 448, offset: 256)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !618, line: 168, size: 448, elements: !619)
!618 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!619 = !{!620, !627, !628, !629, !1211, !1212}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !617, file: !618, line: 169, baseType: !621, size: 128)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !618, line: 30, size: 128, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !621, file: !618, line: 31, baseType: !42, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !621, file: !618, line: 32, baseType: !625, size: 16, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !21, line: 19, baseType: !626)
!626 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !617, file: !618, line: 170, baseType: !547, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !617, file: !618, line: 171, baseType: !22, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !617, file: !618, line: 172, baseType: !630, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!633, !636, !639, !734, !612, !944, !547}
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !21, line: 60, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !549, line: 73, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !549, line: 15, baseType: !77)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !638, line: 526, flags: DIFlagFwdDecl)
!638 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !641, line: 64, size: 512, elements: !642)
!641 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!642 = !{!643, !644, !650, !651, !695, !792, !1196, !1206, !1207, !1208, !1209, !1210}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !640, file: !641, line: 65, baseType: !42, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !640, file: !641, line: 66, baseType: !645, size: 128, offset: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !21, line: 178, size: 128, elements: !646)
!646 = !{!647, !649}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !645, file: !21, line: 179, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !645, file: !21, line: 179, baseType: !648, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !640, file: !641, line: 67, baseType: !639, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !640, file: !641, line: 68, baseType: !652, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !641, line: 192, size: 704, elements: !654)
!654 = !{!655, !656, !657, !658}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !653, file: !641, line: 193, baseType: !645, size: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !653, file: !641, line: 194, baseType: !165, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !653, file: !641, line: 195, baseType: !640, size: 512, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !653, file: !641, line: 196, baseType: !659, size: 64, offset: 640)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !641, line: 156, size: 192, elements: !662)
!662 = !{!663, !668, !673}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !661, file: !641, line: 157, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!54, !652, !639}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !661, file: !641, line: 158, baseType: !669, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!42, !652, !639}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !661, file: !641, line: 159, baseType: !674, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!54, !652, !639, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !641, line: 148, size: 20736, elements: !680)
!680 = !{!681, !685, !689, !690, !694}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !679, file: !641, line: 149, baseType: !682, size: 192)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 192, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 3)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !679, file: !641, line: 150, baseType: !686, size: 4096, offset: 192)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 4096, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !679, file: !641, line: 151, baseType: !54, size: 32, offset: 4288)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !679, file: !641, line: 152, baseType: !691, size: 16384, offset: 4320)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 16384, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 2048)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !679, file: !641, line: 153, baseType: !54, size: 32, offset: 20704)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !640, file: !641, line: 69, baseType: !696, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !641, line: 138, size: 448, elements: !698)
!698 = !{!699, !703, !717, !719, !738, !769, !773}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !697, file: !641, line: 139, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !639}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !697, file: !641, line: 140, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !618, line: 230, size: 128, elements: !707)
!707 = !{!708, !713}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !706, file: !618, line: 231, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!633, !639, !712, !612}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !706, file: !618, line: 232, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!633, !639, !712, !42, !547}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !697, file: !641, line: 141, baseType: !718, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !697, file: !641, line: 142, baseType: !720, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !618, line: 84, size: 320, elements: !724)
!724 = !{!725, !726, !730, !735, !736}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !723, file: !618, line: 85, baseType: !42, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !723, file: !618, line: 86, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!625, !639, !712, !54}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !723, file: !618, line: 88, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!625, !639, !734, !54}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !723, file: !618, line: 90, baseType: !718, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !723, file: !618, line: 91, baseType: !737, size: 64, offset: 256)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !697, file: !641, line: 143, baseType: !739, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!742, !639}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !745)
!745 = !{!746, !747, !751, !755, !761, !765}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !744, file: !6, line: 40, baseType: !5, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !744, file: !6, line: 41, baseType: !748, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!527}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !744, file: !6, line: 42, baseType: !752, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!22}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !744, file: !6, line: 43, baseType: !756, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!535, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !744, file: !6, line: 44, baseType: !762, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!535}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !744, file: !6, line: 45, baseType: !766, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !22}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !697, file: !641, line: 144, baseType: !770, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!535, !639}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !697, file: !641, line: 145, baseType: !774, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !639, !777, !785}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !779, line: 23, baseType: !780)
!779 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 21, size: 32, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !780, file: !779, line: 22, baseType: !783, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !21, line: 32, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !549, line: 49, baseType: !7)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !779, line: 28, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 26, size: 32, elements: !788)
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !787, file: !779, line: 27, baseType: !790, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !21, line: 33, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !549, line: 50, baseType: !7)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !640, file: !641, line: 70, baseType: !793, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !136, line: 123, size: 1024, elements: !795)
!795 = !{!796, !801, !802, !803, !804, !812, !813, !814, !1189, !1190, !1191, !1192, !1193}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !794, file: !136, line: 124, baseType: !797, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !21, line: 168, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 166, size: 32, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !798, file: !21, line: 167, baseType: !54, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !794, file: !136, line: 125, baseType: !797, size: 32, offset: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !794, file: !136, line: 135, baseType: !793, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !794, file: !136, line: 136, baseType: !42, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !794, file: !136, line: 138, baseType: !805, size: 192, align: 64, offset: 192)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !806, line: 24, size: 192, align: 64, elements: !807)
!806 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!807 = !{!808, !809, !811}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !805, file: !806, line: 25, baseType: !72, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !805, file: !806, line: 26, baseType: !810, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !805, file: !806, line: 27, baseType: !810, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !794, file: !136, line: 140, baseType: !535, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !794, file: !136, line: 141, baseType: !7, size: 32, offset: 448)
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !136, line: 142, baseType: !815, size: 256, offset: 512)
!815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !794, file: !136, line: 142, size: 256, elements: !816)
!816 = !{!817, !880, !884}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !815, file: !136, line: 143, baseType: !818, size: 192)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !136, line: 91, size: 192, elements: !819)
!819 = !{!820, !821, !825}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !818, file: !136, line: 92, baseType: !72, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !818, file: !136, line: 94, baseType: !822, size: 64, offset: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !806, line: 31, size: 64, elements: !823)
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !822, file: !806, line: 32, baseType: !810, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !818, file: !136, line: 100, baseType: !826, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !136, line: 180, size: 704, elements: !828)
!828 = !{!829, !830, !831, !844, !845, !846, !872, !873}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !827, file: !136, line: 182, baseType: !793, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !827, file: !136, line: 183, baseType: !7, size: 32, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !827, file: !136, line: 186, baseType: !832, size: 192, offset: 128)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !833, line: 19, size: 192, elements: !834)
!833 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!834 = !{!835, !842, !843}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !832, file: !833, line: 20, baseType: !836, size: 128)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !837, line: 292, size: 128, elements: !838)
!837 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!838 = !{!839, !840, !841}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !836, file: !837, line: 293, baseType: !165)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !836, file: !837, line: 295, baseType: !20, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !836, file: !837, line: 296, baseType: !22, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !832, file: !833, line: 21, baseType: !7, size: 32, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !832, file: !833, line: 22, baseType: !7, size: 32, offset: 160)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !827, file: !136, line: 187, baseType: !158, size: 32, offset: 320)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !827, file: !136, line: 188, baseType: !158, size: 32, offset: 352)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !827, file: !136, line: 189, baseType: !847, size: 64, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !136, line: 168, size: 320, elements: !849)
!849 = !{!850, !856, !860, !864, !868}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !848, file: !136, line: 169, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!54, !854, !826}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !638, line: 539, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !848, file: !136, line: 171, baseType: !857, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!54, !793, !42, !625}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !848, file: !136, line: 173, baseType: !861, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!54, !793}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !848, file: !136, line: 174, baseType: !865, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!54, !793, !793, !42}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !848, file: !136, line: 176, baseType: !869, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!54, !854, !793, !826}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !827, file: !136, line: 192, baseType: !645, size: 128, offset: 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !827, file: !136, line: 194, baseType: !874, size: 128, offset: 576)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !875, line: 40, baseType: !876)
!875 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !875, line: 36, size: 128, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !876, file: !875, line: 37, baseType: !165)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !876, file: !875, line: 38, baseType: !645, size: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !815, file: !136, line: 144, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !136, line: 103, size: 64, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !881, file: !136, line: 104, baseType: !793, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !815, file: !136, line: 145, baseType: !885, size: 256)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !136, line: 107, size: 256, elements: !886)
!886 = !{!887, !1184, !1187, !1188}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !885, file: !136, line: 108, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !136, line: 217, size: 768, elements: !891)
!891 = !{!892, !931, !935, !939, !946, !950, !954, !958, !959, !960, !961, !969}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !890, file: !136, line: 222, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!54, !896}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !136, line: 197, size: 1088, elements: !898)
!898 = !{!899, !900, !901, !902, !903, !919, !920, !921, !922, !923, !924, !925, !926}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !897, file: !136, line: 199, baseType: !793, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !897, file: !136, line: 200, baseType: !636, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !897, file: !136, line: 201, baseType: !854, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !897, file: !136, line: 202, baseType: !22, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !897, file: !136, line: 205, baseType: !904, size: 192, offset: 256)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !905, line: 53, size: 192, elements: !906)
!905 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!906 = !{!907, !917, !918}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !904, file: !905, line: 54, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !909, line: 13, baseType: !910)
!909 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !21, line: 175, baseType: !911)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 173, size: 64, elements: !912)
!912 = !{!913}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !911, file: !21, line: 174, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !96, line: 22, baseType: !915)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !98, line: 30, baseType: !916)
!916 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !904, file: !905, line: 55, baseType: !165, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !904, file: !905, line: 59, baseType: !645, size: 128, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !897, file: !136, line: 206, baseType: !904, size: 192, offset: 448)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !897, file: !136, line: 207, baseType: !54, size: 32, offset: 640)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !897, file: !136, line: 208, baseType: !645, size: 128, offset: 704)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !897, file: !136, line: 209, baseType: !612, size: 64, offset: 832)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !897, file: !136, line: 211, baseType: !547, size: 64, offset: 896)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !897, file: !136, line: 212, baseType: !527, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !897, file: !136, line: 213, baseType: !527, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !897, file: !136, line: 214, baseType: !927, size: 64, offset: 1024)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !929)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !930, line: 356, flags: DIFlagFwdDecl)
!930 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!931 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !890, file: !136, line: 223, baseType: !932, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !896}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !890, file: !136, line: 236, baseType: !936, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!54, !854, !22}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !890, file: !136, line: 238, baseType: !940, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!22, !854, !943}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !21, line: 46, baseType: !945)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !549, line: 88, baseType: !916)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !890, file: !136, line: 239, baseType: !947, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!22, !854, !22, !943}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !890, file: !136, line: 240, baseType: !951, size: 64, offset: 320)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !854, !22}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !890, file: !136, line: 242, baseType: !955, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!633, !896, !612, !547, !944}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !890, file: !136, line: 252, baseType: !547, size: 64, offset: 448)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !890, file: !136, line: 259, baseType: !527, size: 8, offset: 512)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !890, file: !136, line: 260, baseType: !955, size: 64, offset: 576)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !890, file: !136, line: 263, baseType: !962, size: 64, offset: 640)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!965, !896, !967}
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !966, line: 52, baseType: !7)
!966 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !136, line: 27, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !890, file: !136, line: 266, baseType: !970, size: 64, offset: 704)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!54, !896, !973}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !930, line: 305, size: 1472, elements: !975)
!975 = !{!976, !977, !978, !979, !980, !981, !982, !1161, !1167, !1168, !1173, !1174, !1177, !1178, !1179, !1180, !1181, !1182}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !974, file: !930, line: 308, baseType: !72, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !974, file: !930, line: 309, baseType: !72, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !974, file: !930, line: 313, baseType: !973, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !974, file: !930, line: 313, baseType: !973, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !974, file: !930, line: 315, baseType: !805, size: 192, align: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !974, file: !930, line: 323, baseType: !72, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !974, file: !930, line: 327, baseType: !983, size: 64, offset: 512)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !930, line: 388, size: 7296, elements: !985)
!985 = !{!986, !1157}
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !984, file: !930, line: 389, baseType: !987, size: 7296)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !984, file: !930, line: 389, size: 7296, elements: !988)
!988 = !{!989, !990, !991, !992, !996, !997, !998, !999, !1000, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1049, !1057, !1060, !1102, !1103, !1128, !1129, !1132, !1135, !1136, !1139, !1140, !1141, !1144, !1156}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !987, file: !930, line: 390, baseType: !973, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !987, file: !930, line: 391, baseType: !822, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !987, file: !930, line: 392, baseType: !584, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !987, file: !930, line: 394, baseType: !993, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!72, !636, !72, !72, !72, !72}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !987, file: !930, line: 398, baseType: !72, size: 64, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !987, file: !930, line: 399, baseType: !72, size: 64, offset: 320)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !987, file: !930, line: 405, baseType: !72, size: 64, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !987, file: !930, line: 406, baseType: !72, size: 64, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !987, file: !930, line: 407, baseType: !1001, size: 64, offset: 512)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !638, line: 286, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !638, line: 286, size: 64, elements: !1004)
!1004 = !{!1005}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1003, file: !638, line: 286, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1007, line: 18, baseType: !72)
!1007 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !987, file: !930, line: 416, baseType: !797, size: 32, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !987, file: !930, line: 428, baseType: !797, size: 32, offset: 608)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !987, file: !930, line: 437, baseType: !797, size: 32, offset: 640)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !987, file: !930, line: 447, baseType: !797, size: 32, offset: 672)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !987, file: !930, line: 450, baseType: !908, size: 64, offset: 704)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !987, file: !930, line: 452, baseType: !54, size: 32, offset: 768)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !987, file: !930, line: 454, baseType: !165, offset: 800)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !987, file: !930, line: 457, baseType: !1016, size: 256, offset: 832)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1017, line: 35, size: 256, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1018 = !{!1019, !1020, !1021, !1022}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1016, file: !1017, line: 36, baseType: !908, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1016, file: !1017, line: 42, baseType: !908, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1016, file: !1017, line: 46, baseType: !345, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1016, file: !1017, line: 47, baseType: !645, size: 128, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !987, file: !930, line: 459, baseType: !645, size: 128, offset: 1088)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !987, file: !930, line: 466, baseType: !72, size: 64, offset: 1216)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !987, file: !930, line: 467, baseType: !72, size: 64, offset: 1280)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !987, file: !930, line: 469, baseType: !72, size: 64, offset: 1344)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !987, file: !930, line: 470, baseType: !72, size: 64, offset: 1408)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !987, file: !930, line: 471, baseType: !910, size: 64, offset: 1472)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !987, file: !930, line: 472, baseType: !72, size: 64, offset: 1536)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !987, file: !930, line: 473, baseType: !72, size: 64, offset: 1600)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !987, file: !930, line: 474, baseType: !72, size: 64, offset: 1664)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !987, file: !930, line: 475, baseType: !72, size: 64, offset: 1728)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !987, file: !930, line: 477, baseType: !165, offset: 1792)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !987, file: !930, line: 478, baseType: !72, size: 64, offset: 1792)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !987, file: !930, line: 478, baseType: !72, size: 64, offset: 1856)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !987, file: !930, line: 478, baseType: !72, size: 64, offset: 1920)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !987, file: !930, line: 478, baseType: !72, size: 64, offset: 1984)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !987, file: !930, line: 479, baseType: !72, size: 64, offset: 2048)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !987, file: !930, line: 479, baseType: !72, size: 64, offset: 2112)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !987, file: !930, line: 479, baseType: !72, size: 64, offset: 2176)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !987, file: !930, line: 480, baseType: !72, size: 64, offset: 2240)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !987, file: !930, line: 480, baseType: !72, size: 64, offset: 2304)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !987, file: !930, line: 480, baseType: !72, size: 64, offset: 2368)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !987, file: !930, line: 480, baseType: !72, size: 64, offset: 2432)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !987, file: !930, line: 482, baseType: !1046, size: 2816, offset: 2496)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 2816, elements: !1047)
!1047 = !{!1048}
!1048 = !DISubrange(count: 44)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !987, file: !930, line: 488, baseType: !1050, size: 256, offset: 5312)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1051, line: 60, size: 256, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1050, file: !1051, line: 61, baseType: !1054, size: 256)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, size: 256, elements: !1055)
!1055 = !{!1056}
!1056 = !DISubrange(count: 4)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !987, file: !930, line: 490, baseType: !1058, size: 64, offset: 5568)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !930, line: 490, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !987, file: !930, line: 493, baseType: !1061, size: 896, offset: 5632)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1062, line: 53, baseType: !1063)
!1062 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1062, line: 13, size: 896, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1071, !1072, !1073, !1074, !1094, !1095, !1098}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1063, file: !1062, line: 18, baseType: !584, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1063, file: !1062, line: 28, baseType: !910, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1063, file: !1062, line: 31, baseType: !1016, size: 256, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1063, file: !1062, line: 32, baseType: !1069, size: 64, offset: 384)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1062, line: 32, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1063, file: !1062, line: 37, baseType: !626, size: 16, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1063, file: !1062, line: 40, baseType: !904, size: 192, offset: 512)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1063, file: !1062, line: 41, baseType: !22, size: 64, offset: 704)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1063, file: !1062, line: 42, baseType: !1075, size: 64, offset: 768)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1077)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1078, line: 13, size: 896, elements: !1079)
!1078 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1077, file: !1078, line: 14, baseType: !22, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1077, file: !1078, line: 15, baseType: !72, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1077, file: !1078, line: 17, baseType: !72, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1077, file: !1078, line: 17, baseType: !72, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1077, file: !1078, line: 19, baseType: !77, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1077, file: !1078, line: 21, baseType: !77, size: 64, offset: 320)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1077, file: !1078, line: 22, baseType: !77, size: 64, offset: 384)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1077, file: !1078, line: 23, baseType: !77, size: 64, offset: 448)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1077, file: !1078, line: 24, baseType: !77, size: 64, offset: 512)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1077, file: !1078, line: 25, baseType: !77, size: 64, offset: 576)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1077, file: !1078, line: 26, baseType: !77, size: 64, offset: 640)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1077, file: !1078, line: 27, baseType: !77, size: 64, offset: 704)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1077, file: !1078, line: 28, baseType: !77, size: 64, offset: 768)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1077, file: !1078, line: 29, baseType: !77, size: 64, offset: 832)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1063, file: !1062, line: 44, baseType: !797, size: 32, offset: 832)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1063, file: !1062, line: 50, baseType: !1096, size: 16, offset: 864)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !96, line: 19, baseType: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !98, line: 24, baseType: !626)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1063, file: !1062, line: 51, baseType: !1099, size: 16, offset: 880)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !96, line: 18, baseType: !1100)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !98, line: 23, baseType: !1101)
!1101 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !987, file: !930, line: 495, baseType: !72, size: 64, offset: 6528)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !987, file: !930, line: 497, baseType: !1104, size: 64, offset: 6592)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !930, line: 381, size: 384, elements: !1106)
!1106 = !{!1107, !1108, !1117}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1105, file: !930, line: 382, baseType: !797, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1105, file: !930, line: 383, baseType: !1109, size: 128, offset: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !930, line: 376, size: 128, elements: !1110)
!1110 = !{!1111, !1115}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1109, file: !930, line: 377, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1114, line: 9, flags: DIFlagFwdDecl)
!1114 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1109, file: !930, line: 378, baseType: !1116, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1105, file: !930, line: 384, baseType: !1118, size: 192, offset: 192)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1119, line: 26, size: 192, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1118, file: !1119, line: 27, baseType: !7, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1118, file: !1119, line: 28, baseType: !1123, size: 128, offset: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1124, line: 43, size: 128, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1123, file: !1124, line: 44, baseType: !345)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1123, file: !1124, line: 45, baseType: !645, size: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !987, file: !930, line: 500, baseType: !165, offset: 6656)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !987, file: !930, line: 501, baseType: !1130, size: 64, offset: 6656)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !930, line: 387, flags: DIFlagFwdDecl)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !987, file: !930, line: 516, baseType: !1133, size: 64, offset: 6720)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !930, line: 516, flags: DIFlagFwdDecl)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !987, file: !930, line: 519, baseType: !636, size: 64, offset: 6784)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !987, file: !930, line: 521, baseType: !1137, size: 64, offset: 6848)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !930, line: 521, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !987, file: !930, line: 545, baseType: !797, size: 32, offset: 6912)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !987, file: !930, line: 548, baseType: !527, size: 8, offset: 6944)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !987, file: !930, line: 550, baseType: !1142, offset: 6952)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1143, line: 142, elements: !179)
!1143 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !987, file: !930, line: 554, baseType: !1145, size: 256, offset: 6976)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1146, line: 102, size: 256, elements: !1147)
!1146 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1147 = !{!1148, !1149, !1150}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1145, file: !1146, line: 103, baseType: !908, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1145, file: !1146, line: 104, baseType: !645, size: 128, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1145, file: !1146, line: 105, baseType: !1151, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1146, line: 21, baseType: !1152)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !1155}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !987, file: !930, line: 557, baseType: !158, size: 32, offset: 7232)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !984, file: !930, line: 565, baseType: !1158, offset: 7296)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, elements: !1159)
!1159 = !{!1160}
!1160 = !DISubrange(count: -1)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !974, file: !930, line: 333, baseType: !1162, size: 64, offset: 576)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !638, line: 284, baseType: !1163)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !638, line: 284, size: 64, elements: !1164)
!1164 = !{!1165}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1163, file: !638, line: 284, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1007, line: 19, baseType: !72)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !974, file: !930, line: 334, baseType: !72, size: 64, offset: 640)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !974, file: !930, line: 343, baseType: !1169, size: 256, offset: 704)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !974, file: !930, line: 340, size: 256, elements: !1170)
!1170 = !{!1171, !1172}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1169, file: !930, line: 341, baseType: !805, size: 192, align: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1169, file: !930, line: 342, baseType: !72, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !974, file: !930, line: 351, baseType: !645, size: 128, offset: 960)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !974, file: !930, line: 353, baseType: !1175, size: 64, offset: 1088)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !930, line: 353, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !974, file: !930, line: 356, baseType: !927, size: 64, offset: 1152)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !974, file: !930, line: 359, baseType: !72, size: 64, offset: 1216)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !974, file: !930, line: 361, baseType: !636, size: 64, offset: 1280)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !974, file: !930, line: 362, baseType: !22, size: 64, offset: 1344)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !974, file: !930, line: 365, baseType: !908, size: 64, offset: 1408)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !974, file: !930, line: 373, baseType: !1183, offset: 1472)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !930, line: 296, elements: !179)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !885, file: !136, line: 109, baseType: !1185, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !136, line: 31, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !885, file: !136, line: 110, baseType: !944, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !885, file: !136, line: 111, baseType: !793, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !794, file: !136, line: 148, baseType: !22, size: 64, offset: 768)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !794, file: !136, line: 154, baseType: !584, size: 64, offset: 832)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !136, line: 156, baseType: !626, size: 16, offset: 896)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !794, file: !136, line: 157, baseType: !625, size: 16, offset: 912)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !794, file: !136, line: 158, baseType: !1194, size: 64, offset: 960)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !136, line: 32, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !640, file: !641, line: 71, baseType: !1197, size: 32, offset: 448)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1198, line: 19, size: 32, elements: !1199)
!1198 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1199 = !{!1200}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1197, file: !1198, line: 20, baseType: !1201, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1202, line: 113, baseType: !1203)
!1202 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1202, line: 111, size: 32, elements: !1204)
!1204 = !{!1205}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1203, file: !1202, line: 112, baseType: !797, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !640, file: !641, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !640, file: !641, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !640, file: !641, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !640, file: !641, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !640, file: !641, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !617, file: !618, line: 174, baseType: !630, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !617, file: !618, line: 176, baseType: !1213, size: 64, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!54, !636, !639, !734, !973}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !498, file: !499, line: 58, baseType: !608, size: 64, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !498, file: !499, line: 59, baseType: !497, size: 64, offset: 512)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !498, file: !499, line: 60, baseType: !497, size: 64, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !498, file: !499, line: 61, baseType: !497, size: 64, offset: 640)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !498, file: !499, line: 63, baseType: !640, size: 512, offset: 704)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !498, file: !499, line: 65, baseType: !72, size: 64, offset: 1216)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !498, file: !499, line: 66, baseType: !22, size: 64, offset: 1280)
!1223 = !DILocation(line: 283, column: 36, scope: !195, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 163, column: 23, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 162, column: 43)
!1226 = distinct !DILexicalBlock(scope: !491, file: !3, line: 162, column: 6)
!1227 = !DILocation(line: 285, column: 6, scope: !195, inlinedAt: !1224)
!1228 = !DILocalVariable(name: "x", arg: 1, scope: !1229, file: !196, line: 324, type: !7)
!1229 = distinct !DISubprogram(name: "fls", scope: !196, file: !196, line: 324, type: !1230, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!54, !7}
!1232 = !DILocation(line: 324, column: 45, scope: !1229, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 163, column: 11, scope: !1225)
!1234 = !DILocalVariable(name: "r", scope: !1229, file: !196, line: 326, type: !54)
!1235 = !DILocation(line: 326, column: 6, scope: !1229, inlinedAt: !1233)
!1236 = !DILocalVariable(name: "dev", arg: 1, scope: !491, file: !3, line: 148, type: !494)
!1237 = !DILocation(line: 148, column: 53, scope: !491)
!1238 = !DILocalVariable(name: "np", arg: 2, scope: !491, file: !3, line: 148, type: !497)
!1239 = !DILocation(line: 148, column: 78, scope: !491)
!1240 = !DILocalVariable(name: "name", arg: 3, scope: !491, file: !3, line: 149, type: !42)
!1241 = !DILocation(line: 149, column: 15, scope: !491)
!1242 = !DILocalVariable(name: "num_parents", arg: 4, scope: !491, file: !3, line: 149, type: !95)
!1243 = !DILocation(line: 149, column: 24, scope: !491)
!1244 = !DILocalVariable(name: "parent_names", arg: 5, scope: !491, file: !3, line: 150, type: !138)
!1245 = !DILocation(line: 150, column: 23, scope: !491)
!1246 = !DILocalVariable(name: "parent_hws", arg: 6, scope: !491, file: !3, line: 151, type: !152)
!1247 = !DILocation(line: 151, column: 25, scope: !491)
!1248 = !DILocalVariable(name: "parent_data", arg: 7, scope: !491, file: !3, line: 152, type: !141)
!1249 = !DILocation(line: 152, column: 33, scope: !491)
!1250 = !DILocalVariable(name: "flags", arg: 8, scope: !491, file: !3, line: 153, type: !72)
!1251 = !DILocation(line: 153, column: 17, scope: !491)
!1252 = !DILocalVariable(name: "reg", arg: 9, scope: !491, file: !3, line: 153, type: !22)
!1253 = !DILocation(line: 153, column: 38, scope: !491)
!1254 = !DILocalVariable(name: "shift", arg: 10, scope: !491, file: !3, line: 153, type: !95)
!1255 = !DILocation(line: 153, column: 46, scope: !491)
!1256 = !DILocalVariable(name: "mask", arg: 11, scope: !491, file: !3, line: 153, type: !158)
!1257 = !DILocation(line: 153, column: 57, scope: !491)
!1258 = !DILocalVariable(name: "clk_mux_flags", arg: 12, scope: !491, file: !3, line: 154, type: !95)
!1259 = !DILocation(line: 154, column: 6, scope: !491)
!1260 = !DILocalVariable(name: "table", arg: 13, scope: !491, file: !3, line: 154, type: !157)
!1261 = !DILocation(line: 154, column: 26, scope: !491)
!1262 = !DILocalVariable(name: "lock", arg: 14, scope: !491, file: !3, line: 154, type: !164)
!1263 = !DILocation(line: 154, column: 45, scope: !491)
!1264 = !DILocalVariable(name: "mux", scope: !491, file: !3, line: 156, type: !23)
!1265 = !DILocation(line: 156, column: 18, scope: !491)
!1266 = !DILocalVariable(name: "hw", scope: !491, file: !3, line: 157, type: !55)
!1267 = !DILocation(line: 157, column: 17, scope: !491)
!1268 = !DILocalVariable(name: "init", scope: !491, file: !3, line: 158, type: !39)
!1269 = !DILocation(line: 158, column: 23, scope: !491)
!1270 = !DILocalVariable(name: "width", scope: !491, file: !3, line: 159, type: !95)
!1271 = !DILocation(line: 159, column: 5, scope: !491)
!1272 = !DILocalVariable(name: "ret", scope: !491, file: !3, line: 160, type: !54)
!1273 = !DILocation(line: 160, column: 6, scope: !491)
!1274 = !DILocation(line: 162, column: 6, scope: !1226)
!1275 = !DILocation(line: 162, column: 20, scope: !1226)
!1276 = !DILocation(line: 162, column: 6, scope: !491)
!1277 = !DILocation(line: 163, column: 15, scope: !1225)
!1278 = !DILocation(line: 340, column: 14, scope: !1229, inlinedAt: !1233)
!1279 = !DILocation(line: 338, column: 2, scope: !1229, inlinedAt: !1233)
!1280 = !{i32 287276}
!1281 = !DILocation(line: 351, column: 9, scope: !1229, inlinedAt: !1233)
!1282 = !DILocation(line: 351, column: 11, scope: !1229, inlinedAt: !1233)
!1283 = !DILocation(line: 163, column: 27, scope: !1225)
!1284 = !DILocation(line: 299, column: 14, scope: !195, inlinedAt: !1224)
!1285 = !DILocation(line: 297, column: 2, scope: !195, inlinedAt: !1224)
!1286 = !DILocation(line: 310, column: 9, scope: !195, inlinedAt: !1224)
!1287 = !DILocation(line: 310, column: 11, scope: !195, inlinedAt: !1224)
!1288 = !DILocation(line: 163, column: 21, scope: !1225)
!1289 = !DILocation(line: 163, column: 33, scope: !1225)
!1290 = !DILocation(line: 163, column: 11, scope: !1225)
!1291 = !DILocation(line: 163, column: 9, scope: !1225)
!1292 = !DILocation(line: 164, column: 7, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 164, column: 7)
!1294 = !DILocation(line: 164, column: 15, scope: !1293)
!1295 = !DILocation(line: 164, column: 13, scope: !1293)
!1296 = !DILocation(line: 164, column: 21, scope: !1293)
!1297 = !DILocation(line: 164, column: 7, scope: !1225)
!1298 = !DILocation(line: 165, column: 4, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 164, column: 27)
!1300 = !DILocation(line: 166, column: 11, scope: !1299)
!1301 = !DILocation(line: 166, column: 4, scope: !1299)
!1302 = !DILocation(line: 168, column: 2, scope: !1225)
!1303 = !DILocation(line: 171, column: 8, scope: !491)
!1304 = !DILocation(line: 171, column: 6, scope: !491)
!1305 = !DILocation(line: 172, column: 7, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !491, file: !3, line: 172, column: 6)
!1307 = !DILocation(line: 172, column: 6, scope: !491)
!1308 = !DILocation(line: 173, column: 10, scope: !1306)
!1309 = !DILocation(line: 173, column: 3, scope: !1306)
!1310 = !DILocation(line: 175, column: 14, scope: !491)
!1311 = !DILocation(line: 175, column: 7, scope: !491)
!1312 = !DILocation(line: 175, column: 12, scope: !491)
!1313 = !DILocation(line: 176, column: 6, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !491, file: !3, line: 176, column: 6)
!1315 = !DILocation(line: 176, column: 20, scope: !1314)
!1316 = !DILocation(line: 176, column: 6, scope: !491)
!1317 = !DILocation(line: 177, column: 8, scope: !1314)
!1318 = !DILocation(line: 177, column: 12, scope: !1314)
!1319 = !DILocation(line: 177, column: 3, scope: !1314)
!1320 = !DILocation(line: 179, column: 8, scope: !1314)
!1321 = !DILocation(line: 179, column: 12, scope: !1314)
!1322 = !DILocation(line: 180, column: 15, scope: !491)
!1323 = !DILocation(line: 180, column: 7, scope: !491)
!1324 = !DILocation(line: 180, column: 13, scope: !491)
!1325 = !DILocation(line: 181, column: 22, scope: !491)
!1326 = !DILocation(line: 181, column: 7, scope: !491)
!1327 = !DILocation(line: 181, column: 20, scope: !491)
!1328 = !DILocation(line: 182, column: 21, scope: !491)
!1329 = !DILocation(line: 182, column: 7, scope: !491)
!1330 = !DILocation(line: 182, column: 19, scope: !491)
!1331 = !DILocation(line: 183, column: 20, scope: !491)
!1332 = !DILocation(line: 183, column: 7, scope: !491)
!1333 = !DILocation(line: 183, column: 18, scope: !491)
!1334 = !DILocation(line: 184, column: 21, scope: !491)
!1335 = !DILocation(line: 184, column: 7, scope: !491)
!1336 = !DILocation(line: 184, column: 19, scope: !491)
!1337 = !DILocation(line: 187, column: 13, scope: !491)
!1338 = !DILocation(line: 187, column: 2, scope: !491)
!1339 = !DILocation(line: 187, column: 7, scope: !491)
!1340 = !DILocation(line: 187, column: 11, scope: !491)
!1341 = !DILocation(line: 188, column: 15, scope: !491)
!1342 = !DILocation(line: 188, column: 2, scope: !491)
!1343 = !DILocation(line: 188, column: 7, scope: !491)
!1344 = !DILocation(line: 188, column: 13, scope: !491)
!1345 = !DILocation(line: 189, column: 14, scope: !491)
!1346 = !DILocation(line: 189, column: 2, scope: !491)
!1347 = !DILocation(line: 189, column: 7, scope: !491)
!1348 = !DILocation(line: 189, column: 12, scope: !491)
!1349 = !DILocation(line: 190, column: 15, scope: !491)
!1350 = !DILocation(line: 190, column: 2, scope: !491)
!1351 = !DILocation(line: 190, column: 7, scope: !491)
!1352 = !DILocation(line: 190, column: 13, scope: !491)
!1353 = !DILocation(line: 191, column: 14, scope: !491)
!1354 = !DILocation(line: 191, column: 2, scope: !491)
!1355 = !DILocation(line: 191, column: 7, scope: !491)
!1356 = !DILocation(line: 191, column: 12, scope: !491)
!1357 = !DILocation(line: 192, column: 15, scope: !491)
!1358 = !DILocation(line: 192, column: 2, scope: !491)
!1359 = !DILocation(line: 192, column: 7, scope: !491)
!1360 = !DILocation(line: 192, column: 13, scope: !491)
!1361 = !DILocation(line: 193, column: 2, scope: !491)
!1362 = !DILocation(line: 193, column: 7, scope: !491)
!1363 = !DILocation(line: 193, column: 10, scope: !491)
!1364 = !DILocation(line: 193, column: 15, scope: !491)
!1365 = !DILocation(line: 195, column: 8, scope: !491)
!1366 = !DILocation(line: 195, column: 13, scope: !491)
!1367 = !DILocation(line: 195, column: 5, scope: !491)
!1368 = !DILocation(line: 196, column: 6, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !491, file: !3, line: 196, column: 6)
!1370 = !DILocation(line: 196, column: 10, scope: !1369)
!1371 = !DILocation(line: 196, column: 14, scope: !1369)
!1372 = !DILocation(line: 196, column: 6, scope: !491)
!1373 = !DILocation(line: 197, column: 25, scope: !1369)
!1374 = !DILocation(line: 197, column: 30, scope: !1369)
!1375 = !DILocation(line: 197, column: 9, scope: !1369)
!1376 = !DILocation(line: 197, column: 7, scope: !1369)
!1377 = !DILocation(line: 197, column: 3, scope: !1369)
!1378 = !DILocation(line: 198, column: 11, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 198, column: 11)
!1380 = !DILocation(line: 198, column: 11, scope: !1369)
!1381 = !DILocation(line: 199, column: 28, scope: !1379)
!1382 = !DILocation(line: 199, column: 32, scope: !1379)
!1383 = !DILocation(line: 199, column: 9, scope: !1379)
!1384 = !DILocation(line: 199, column: 7, scope: !1379)
!1385 = !DILocation(line: 199, column: 3, scope: !1379)
!1386 = !DILocation(line: 200, column: 6, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !491, file: !3, line: 200, column: 6)
!1388 = !DILocation(line: 200, column: 6, scope: !491)
!1389 = !DILocation(line: 201, column: 9, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 200, column: 11)
!1391 = !DILocation(line: 201, column: 3, scope: !1390)
!1392 = !DILocation(line: 202, column: 16, scope: !1390)
!1393 = !DILocation(line: 202, column: 8, scope: !1390)
!1394 = !DILocation(line: 202, column: 6, scope: !1390)
!1395 = !DILocation(line: 203, column: 2, scope: !1390)
!1396 = !DILocation(line: 205, column: 9, scope: !491)
!1397 = !DILocation(line: 205, column: 2, scope: !491)
!1398 = !DILocation(line: 206, column: 1, scope: !491)
!1399 = distinct !DISubprogram(name: "ERR_PTR", scope: !1400, file: !1400, line: 24, type: !1401, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1400 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!22, !77}
!1403 = !DILocalVariable(name: "error", arg: 1, scope: !1399, file: !1400, line: 24, type: !77)
!1404 = !DILocation(line: 24, column: 48, scope: !1399)
!1405 = !DILocation(line: 26, column: 18, scope: !1399)
!1406 = !DILocation(line: 26, column: 9, scope: !1399)
!1407 = !DILocation(line: 26, column: 2, scope: !1399)
!1408 = distinct !DISubprogram(name: "kzalloc", scope: !13, file: !13, line: 662, type: !1409, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!22, !547, !20}
!1411 = !DILocalVariable(name: "s", arg: 1, scope: !1412, file: !13, line: 445, type: !1415)
!1412 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !13, file: !13, line: 445, type: !1413, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!22, !1415, !20, !547}
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !930, line: 117, flags: DIFlagFwdDecl)
!1417 = !DILocation(line: 445, column: 72, scope: !1412, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 552, column: 10, scope: !1419, inlinedAt: !1422)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !13, line: 540, column: 34)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !13, line: 540, column: 6)
!1421 = distinct !DISubprogram(name: "kmalloc", scope: !13, file: !13, line: 538, type: !1409, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1422 = distinct !DILocation(line: 664, column: 9, scope: !1408)
!1423 = !DILocalVariable(name: "flags", arg: 2, scope: !1412, file: !13, line: 446, type: !20)
!1424 = !DILocation(line: 446, column: 9, scope: !1412, inlinedAt: !1418)
!1425 = !DILocalVariable(name: "size", arg: 3, scope: !1412, file: !13, line: 446, type: !547)
!1426 = !DILocation(line: 446, column: 23, scope: !1412, inlinedAt: !1418)
!1427 = !DILocalVariable(name: "ret", scope: !1412, file: !13, line: 448, type: !22)
!1428 = !DILocation(line: 448, column: 8, scope: !1412, inlinedAt: !1418)
!1429 = !DILocalVariable(name: "flags", arg: 1, scope: !1430, file: !13, line: 318, type: !20)
!1430 = distinct !DISubprogram(name: "kmalloc_type", scope: !13, file: !13, line: 318, type: !1431, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!12, !20}
!1433 = !DILocation(line: 318, column: 67, scope: !1430, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 553, column: 20, scope: !1419, inlinedAt: !1422)
!1435 = !DILocalVariable(name: "size", arg: 1, scope: !1436, file: !13, line: 346, type: !547)
!1436 = distinct !DISubprogram(name: "kmalloc_index", scope: !13, file: !13, line: 346, type: !1437, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!7, !547}
!1439 = !DILocation(line: 346, column: 58, scope: !1436, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 547, column: 11, scope: !1419, inlinedAt: !1422)
!1441 = !DILocalVariable(name: "size", arg: 1, scope: !1442, file: !13, line: 472, type: !547)
!1442 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !13, file: !13, line: 472, type: !1443, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!22, !547, !20, !7}
!1445 = !DILocation(line: 472, column: 28, scope: !1442, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 481, column: 9, scope: !1447, inlinedAt: !1448)
!1447 = distinct !DISubprogram(name: "kmalloc_large", scope: !13, file: !13, line: 478, type: !1409, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1448 = distinct !DILocation(line: 545, column: 11, scope: !1449, inlinedAt: !1422)
!1449 = distinct !DILexicalBlock(scope: !1419, file: !13, line: 544, column: 7)
!1450 = !DILocalVariable(name: "flags", arg: 2, scope: !1442, file: !13, line: 472, type: !20)
!1451 = !DILocation(line: 472, column: 40, scope: !1442, inlinedAt: !1446)
!1452 = !DILocalVariable(name: "order", arg: 3, scope: !1442, file: !13, line: 472, type: !7)
!1453 = !DILocation(line: 472, column: 60, scope: !1442, inlinedAt: !1446)
!1454 = !DILocalVariable(name: "size", arg: 1, scope: !1447, file: !13, line: 478, type: !547)
!1455 = !DILocation(line: 478, column: 51, scope: !1447, inlinedAt: !1448)
!1456 = !DILocalVariable(name: "flags", arg: 2, scope: !1447, file: !13, line: 478, type: !20)
!1457 = !DILocation(line: 478, column: 63, scope: !1447, inlinedAt: !1448)
!1458 = !DILocalVariable(name: "order", scope: !1447, file: !13, line: 480, type: !7)
!1459 = !DILocation(line: 480, column: 15, scope: !1447, inlinedAt: !1448)
!1460 = !DILocalVariable(name: "size", arg: 1, scope: !1421, file: !13, line: 538, type: !547)
!1461 = !DILocation(line: 538, column: 45, scope: !1421, inlinedAt: !1422)
!1462 = !DILocalVariable(name: "flags", arg: 2, scope: !1421, file: !13, line: 538, type: !20)
!1463 = !DILocation(line: 538, column: 57, scope: !1421, inlinedAt: !1422)
!1464 = !DILocalVariable(name: "index", scope: !1419, file: !13, line: 542, type: !7)
!1465 = !DILocation(line: 542, column: 16, scope: !1419, inlinedAt: !1422)
!1466 = !DILocalVariable(name: "size", arg: 1, scope: !1408, file: !13, line: 662, type: !547)
!1467 = !DILocation(line: 662, column: 36, scope: !1408)
!1468 = !DILocalVariable(name: "flags", arg: 2, scope: !1408, file: !13, line: 662, type: !20)
!1469 = !DILocation(line: 662, column: 48, scope: !1408)
!1470 = !DILocation(line: 664, column: 17, scope: !1408)
!1471 = !DILocation(line: 664, column: 23, scope: !1408)
!1472 = !DILocation(line: 664, column: 29, scope: !1408)
!1473 = !DILocation(line: 540, column: 27, scope: !1420, inlinedAt: !1422)
!1474 = !DILocation(line: 540, column: 6, scope: !1420, inlinedAt: !1422)
!1475 = !DILocation(line: 540, column: 6, scope: !1421, inlinedAt: !1422)
!1476 = !DILocation(line: 544, column: 7, scope: !1449, inlinedAt: !1422)
!1477 = !DILocation(line: 544, column: 12, scope: !1449, inlinedAt: !1422)
!1478 = !DILocation(line: 544, column: 7, scope: !1419, inlinedAt: !1422)
!1479 = !DILocation(line: 545, column: 25, scope: !1449, inlinedAt: !1422)
!1480 = !DILocation(line: 545, column: 31, scope: !1449, inlinedAt: !1422)
!1481 = !DILocation(line: 480, column: 33, scope: !1447, inlinedAt: !1448)
!1482 = !DILocation(line: 480, column: 23, scope: !1447, inlinedAt: !1448)
!1483 = !DILocation(line: 481, column: 29, scope: !1447, inlinedAt: !1448)
!1484 = !DILocation(line: 481, column: 35, scope: !1447, inlinedAt: !1448)
!1485 = !DILocation(line: 481, column: 42, scope: !1447, inlinedAt: !1448)
!1486 = !DILocation(line: 474, column: 23, scope: !1442, inlinedAt: !1446)
!1487 = !DILocation(line: 474, column: 29, scope: !1442, inlinedAt: !1446)
!1488 = !DILocation(line: 474, column: 36, scope: !1442, inlinedAt: !1446)
!1489 = !DILocation(line: 474, column: 9, scope: !1442, inlinedAt: !1446)
!1490 = !DILocation(line: 545, column: 4, scope: !1449, inlinedAt: !1422)
!1491 = !DILocation(line: 547, column: 25, scope: !1419, inlinedAt: !1422)
!1492 = !DILocation(line: 348, column: 7, scope: !1493, inlinedAt: !1440)
!1493 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 348, column: 6)
!1494 = !DILocation(line: 348, column: 6, scope: !1436, inlinedAt: !1440)
!1495 = !DILocation(line: 349, column: 3, scope: !1493, inlinedAt: !1440)
!1496 = !DILocation(line: 351, column: 6, scope: !1497, inlinedAt: !1440)
!1497 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 351, column: 6)
!1498 = !DILocation(line: 351, column: 11, scope: !1497, inlinedAt: !1440)
!1499 = !DILocation(line: 351, column: 6, scope: !1436, inlinedAt: !1440)
!1500 = !DILocation(line: 352, column: 3, scope: !1497, inlinedAt: !1440)
!1501 = !DILocation(line: 354, column: 32, scope: !1502, inlinedAt: !1440)
!1502 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 354, column: 6)
!1503 = !DILocation(line: 354, column: 37, scope: !1502, inlinedAt: !1440)
!1504 = !DILocation(line: 354, column: 42, scope: !1502, inlinedAt: !1440)
!1505 = !DILocation(line: 354, column: 45, scope: !1502, inlinedAt: !1440)
!1506 = !DILocation(line: 354, column: 50, scope: !1502, inlinedAt: !1440)
!1507 = !DILocation(line: 354, column: 6, scope: !1436, inlinedAt: !1440)
!1508 = !DILocation(line: 355, column: 3, scope: !1502, inlinedAt: !1440)
!1509 = !DILocation(line: 356, column: 32, scope: !1510, inlinedAt: !1440)
!1510 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 356, column: 6)
!1511 = !DILocation(line: 356, column: 37, scope: !1510, inlinedAt: !1440)
!1512 = !DILocation(line: 356, column: 43, scope: !1510, inlinedAt: !1440)
!1513 = !DILocation(line: 356, column: 46, scope: !1510, inlinedAt: !1440)
!1514 = !DILocation(line: 356, column: 51, scope: !1510, inlinedAt: !1440)
!1515 = !DILocation(line: 356, column: 6, scope: !1436, inlinedAt: !1440)
!1516 = !DILocation(line: 357, column: 3, scope: !1510, inlinedAt: !1440)
!1517 = !DILocation(line: 358, column: 6, scope: !1518, inlinedAt: !1440)
!1518 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 358, column: 6)
!1519 = !DILocation(line: 358, column: 11, scope: !1518, inlinedAt: !1440)
!1520 = !DILocation(line: 358, column: 6, scope: !1436, inlinedAt: !1440)
!1521 = !DILocation(line: 358, column: 26, scope: !1518, inlinedAt: !1440)
!1522 = !DILocation(line: 359, column: 6, scope: !1523, inlinedAt: !1440)
!1523 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 359, column: 6)
!1524 = !DILocation(line: 359, column: 11, scope: !1523, inlinedAt: !1440)
!1525 = !DILocation(line: 359, column: 6, scope: !1436, inlinedAt: !1440)
!1526 = !DILocation(line: 359, column: 26, scope: !1523, inlinedAt: !1440)
!1527 = !DILocation(line: 360, column: 6, scope: !1528, inlinedAt: !1440)
!1528 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 360, column: 6)
!1529 = !DILocation(line: 360, column: 11, scope: !1528, inlinedAt: !1440)
!1530 = !DILocation(line: 360, column: 6, scope: !1436, inlinedAt: !1440)
!1531 = !DILocation(line: 360, column: 26, scope: !1528, inlinedAt: !1440)
!1532 = !DILocation(line: 361, column: 6, scope: !1533, inlinedAt: !1440)
!1533 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 361, column: 6)
!1534 = !DILocation(line: 361, column: 11, scope: !1533, inlinedAt: !1440)
!1535 = !DILocation(line: 361, column: 6, scope: !1436, inlinedAt: !1440)
!1536 = !DILocation(line: 361, column: 26, scope: !1533, inlinedAt: !1440)
!1537 = !DILocation(line: 362, column: 6, scope: !1538, inlinedAt: !1440)
!1538 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 362, column: 6)
!1539 = !DILocation(line: 362, column: 11, scope: !1538, inlinedAt: !1440)
!1540 = !DILocation(line: 362, column: 6, scope: !1436, inlinedAt: !1440)
!1541 = !DILocation(line: 362, column: 26, scope: !1538, inlinedAt: !1440)
!1542 = !DILocation(line: 363, column: 6, scope: !1543, inlinedAt: !1440)
!1543 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 363, column: 6)
!1544 = !DILocation(line: 363, column: 11, scope: !1543, inlinedAt: !1440)
!1545 = !DILocation(line: 363, column: 6, scope: !1436, inlinedAt: !1440)
!1546 = !DILocation(line: 363, column: 26, scope: !1543, inlinedAt: !1440)
!1547 = !DILocation(line: 364, column: 6, scope: !1548, inlinedAt: !1440)
!1548 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 364, column: 6)
!1549 = !DILocation(line: 364, column: 11, scope: !1548, inlinedAt: !1440)
!1550 = !DILocation(line: 364, column: 6, scope: !1436, inlinedAt: !1440)
!1551 = !DILocation(line: 364, column: 26, scope: !1548, inlinedAt: !1440)
!1552 = !DILocation(line: 365, column: 6, scope: !1553, inlinedAt: !1440)
!1553 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 365, column: 6)
!1554 = !DILocation(line: 365, column: 11, scope: !1553, inlinedAt: !1440)
!1555 = !DILocation(line: 365, column: 6, scope: !1436, inlinedAt: !1440)
!1556 = !DILocation(line: 365, column: 26, scope: !1553, inlinedAt: !1440)
!1557 = !DILocation(line: 366, column: 6, scope: !1558, inlinedAt: !1440)
!1558 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 366, column: 6)
!1559 = !DILocation(line: 366, column: 11, scope: !1558, inlinedAt: !1440)
!1560 = !DILocation(line: 366, column: 6, scope: !1436, inlinedAt: !1440)
!1561 = !DILocation(line: 366, column: 26, scope: !1558, inlinedAt: !1440)
!1562 = !DILocation(line: 367, column: 6, scope: !1563, inlinedAt: !1440)
!1563 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 367, column: 6)
!1564 = !DILocation(line: 367, column: 11, scope: !1563, inlinedAt: !1440)
!1565 = !DILocation(line: 367, column: 6, scope: !1436, inlinedAt: !1440)
!1566 = !DILocation(line: 367, column: 26, scope: !1563, inlinedAt: !1440)
!1567 = !DILocation(line: 368, column: 6, scope: !1568, inlinedAt: !1440)
!1568 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 368, column: 6)
!1569 = !DILocation(line: 368, column: 11, scope: !1568, inlinedAt: !1440)
!1570 = !DILocation(line: 368, column: 6, scope: !1436, inlinedAt: !1440)
!1571 = !DILocation(line: 368, column: 26, scope: !1568, inlinedAt: !1440)
!1572 = !DILocation(line: 369, column: 6, scope: !1573, inlinedAt: !1440)
!1573 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 369, column: 6)
!1574 = !DILocation(line: 369, column: 11, scope: !1573, inlinedAt: !1440)
!1575 = !DILocation(line: 369, column: 6, scope: !1436, inlinedAt: !1440)
!1576 = !DILocation(line: 369, column: 26, scope: !1573, inlinedAt: !1440)
!1577 = !DILocation(line: 370, column: 6, scope: !1578, inlinedAt: !1440)
!1578 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 370, column: 6)
!1579 = !DILocation(line: 370, column: 11, scope: !1578, inlinedAt: !1440)
!1580 = !DILocation(line: 370, column: 6, scope: !1436, inlinedAt: !1440)
!1581 = !DILocation(line: 370, column: 26, scope: !1578, inlinedAt: !1440)
!1582 = !DILocation(line: 371, column: 6, scope: !1583, inlinedAt: !1440)
!1583 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 371, column: 6)
!1584 = !DILocation(line: 371, column: 11, scope: !1583, inlinedAt: !1440)
!1585 = !DILocation(line: 371, column: 6, scope: !1436, inlinedAt: !1440)
!1586 = !DILocation(line: 371, column: 26, scope: !1583, inlinedAt: !1440)
!1587 = !DILocation(line: 372, column: 6, scope: !1588, inlinedAt: !1440)
!1588 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 372, column: 6)
!1589 = !DILocation(line: 372, column: 11, scope: !1588, inlinedAt: !1440)
!1590 = !DILocation(line: 372, column: 6, scope: !1436, inlinedAt: !1440)
!1591 = !DILocation(line: 372, column: 26, scope: !1588, inlinedAt: !1440)
!1592 = !DILocation(line: 373, column: 6, scope: !1593, inlinedAt: !1440)
!1593 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 373, column: 6)
!1594 = !DILocation(line: 373, column: 11, scope: !1593, inlinedAt: !1440)
!1595 = !DILocation(line: 373, column: 6, scope: !1436, inlinedAt: !1440)
!1596 = !DILocation(line: 373, column: 26, scope: !1593, inlinedAt: !1440)
!1597 = !DILocation(line: 374, column: 6, scope: !1598, inlinedAt: !1440)
!1598 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 374, column: 6)
!1599 = !DILocation(line: 374, column: 11, scope: !1598, inlinedAt: !1440)
!1600 = !DILocation(line: 374, column: 6, scope: !1436, inlinedAt: !1440)
!1601 = !DILocation(line: 374, column: 26, scope: !1598, inlinedAt: !1440)
!1602 = !DILocation(line: 375, column: 6, scope: !1603, inlinedAt: !1440)
!1603 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 375, column: 6)
!1604 = !DILocation(line: 375, column: 11, scope: !1603, inlinedAt: !1440)
!1605 = !DILocation(line: 375, column: 6, scope: !1436, inlinedAt: !1440)
!1606 = !DILocation(line: 375, column: 27, scope: !1603, inlinedAt: !1440)
!1607 = !DILocation(line: 376, column: 6, scope: !1608, inlinedAt: !1440)
!1608 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 376, column: 6)
!1609 = !DILocation(line: 376, column: 11, scope: !1608, inlinedAt: !1440)
!1610 = !DILocation(line: 376, column: 6, scope: !1436, inlinedAt: !1440)
!1611 = !DILocation(line: 376, column: 32, scope: !1608, inlinedAt: !1440)
!1612 = !DILocation(line: 377, column: 6, scope: !1613, inlinedAt: !1440)
!1613 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 377, column: 6)
!1614 = !DILocation(line: 377, column: 11, scope: !1613, inlinedAt: !1440)
!1615 = !DILocation(line: 377, column: 6, scope: !1436, inlinedAt: !1440)
!1616 = !DILocation(line: 377, column: 32, scope: !1613, inlinedAt: !1440)
!1617 = !DILocation(line: 378, column: 6, scope: !1618, inlinedAt: !1440)
!1618 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 378, column: 6)
!1619 = !DILocation(line: 378, column: 11, scope: !1618, inlinedAt: !1440)
!1620 = !DILocation(line: 378, column: 6, scope: !1436, inlinedAt: !1440)
!1621 = !DILocation(line: 378, column: 32, scope: !1618, inlinedAt: !1440)
!1622 = !DILocation(line: 379, column: 6, scope: !1623, inlinedAt: !1440)
!1623 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 379, column: 6)
!1624 = !DILocation(line: 379, column: 11, scope: !1623, inlinedAt: !1440)
!1625 = !DILocation(line: 379, column: 6, scope: !1436, inlinedAt: !1440)
!1626 = !DILocation(line: 379, column: 33, scope: !1623, inlinedAt: !1440)
!1627 = !DILocation(line: 380, column: 6, scope: !1628, inlinedAt: !1440)
!1628 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 380, column: 6)
!1629 = !DILocation(line: 380, column: 11, scope: !1628, inlinedAt: !1440)
!1630 = !DILocation(line: 380, column: 6, scope: !1436, inlinedAt: !1440)
!1631 = !DILocation(line: 380, column: 33, scope: !1628, inlinedAt: !1440)
!1632 = !DILocation(line: 381, column: 6, scope: !1633, inlinedAt: !1440)
!1633 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 381, column: 6)
!1634 = !DILocation(line: 381, column: 11, scope: !1633, inlinedAt: !1440)
!1635 = !DILocation(line: 381, column: 6, scope: !1436, inlinedAt: !1440)
!1636 = !DILocation(line: 381, column: 33, scope: !1633, inlinedAt: !1440)
!1637 = !DILocation(line: 382, column: 2, scope: !1638, inlinedAt: !1440)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !13, line: 382, column: 2)
!1639 = distinct !DILexicalBlock(scope: !1436, file: !13, line: 382, column: 2)
!1640 = !{i32 -2144077825, i32 -2144077796, i32 -2144077750, i32 -2144077692, i32 -2144077638, i32 -2144077584, i32 -2144077529, i32 -2144077498}
!1641 = !DILocation(line: 382, column: 2, scope: !1642, inlinedAt: !1440)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !13, line: 382, column: 2)
!1643 = distinct !DILexicalBlock(scope: !1639, file: !13, line: 382, column: 2)
!1644 = !{i32 -2144077055, i32 -2144077048, i32 -2144076994, i32 -2144076963, i32 -2144076933}
!1645 = !DILocation(line: 382, column: 2, scope: !1643, inlinedAt: !1440)
!1646 = !DILocation(line: 386, column: 1, scope: !1436, inlinedAt: !1440)
!1647 = !DILocation(line: 547, column: 9, scope: !1419, inlinedAt: !1422)
!1648 = !DILocation(line: 549, column: 8, scope: !1649, inlinedAt: !1422)
!1649 = distinct !DILexicalBlock(scope: !1419, file: !13, line: 549, column: 7)
!1650 = !DILocation(line: 549, column: 7, scope: !1419, inlinedAt: !1422)
!1651 = !DILocation(line: 550, column: 4, scope: !1649, inlinedAt: !1422)
!1652 = !DILocation(line: 553, column: 33, scope: !1419, inlinedAt: !1422)
!1653 = !DILocation(line: 325, column: 6, scope: !1654, inlinedAt: !1434)
!1654 = distinct !DILexicalBlock(scope: !1430, file: !13, line: 325, column: 6)
!1655 = !DILocation(line: 325, column: 6, scope: !1430, inlinedAt: !1434)
!1656 = !DILocation(line: 326, column: 3, scope: !1654, inlinedAt: !1434)
!1657 = !DILocation(line: 332, column: 9, scope: !1430, inlinedAt: !1434)
!1658 = !DILocation(line: 332, column: 15, scope: !1430, inlinedAt: !1434)
!1659 = !DILocation(line: 332, column: 2, scope: !1430, inlinedAt: !1434)
!1660 = !DILocation(line: 336, column: 1, scope: !1430, inlinedAt: !1434)
!1661 = !DILocation(line: 553, column: 5, scope: !1419, inlinedAt: !1422)
!1662 = !DILocation(line: 553, column: 41, scope: !1419, inlinedAt: !1422)
!1663 = !DILocation(line: 554, column: 5, scope: !1419, inlinedAt: !1422)
!1664 = !DILocation(line: 554, column: 12, scope: !1419, inlinedAt: !1422)
!1665 = !DILocation(line: 448, column: 31, scope: !1412, inlinedAt: !1418)
!1666 = !DILocation(line: 448, column: 34, scope: !1412, inlinedAt: !1418)
!1667 = !DILocation(line: 448, column: 14, scope: !1412, inlinedAt: !1418)
!1668 = !DILocation(line: 450, column: 22, scope: !1412, inlinedAt: !1418)
!1669 = !DILocation(line: 450, column: 25, scope: !1412, inlinedAt: !1418)
!1670 = !DILocation(line: 450, column: 30, scope: !1412, inlinedAt: !1418)
!1671 = !DILocation(line: 450, column: 36, scope: !1412, inlinedAt: !1418)
!1672 = !DILocation(line: 450, column: 8, scope: !1412, inlinedAt: !1418)
!1673 = !DILocation(line: 450, column: 6, scope: !1412, inlinedAt: !1418)
!1674 = !DILocation(line: 451, column: 9, scope: !1412, inlinedAt: !1418)
!1675 = !DILocation(line: 552, column: 3, scope: !1419, inlinedAt: !1422)
!1676 = !DILocation(line: 557, column: 19, scope: !1421, inlinedAt: !1422)
!1677 = !DILocation(line: 557, column: 25, scope: !1421, inlinedAt: !1422)
!1678 = !DILocation(line: 557, column: 9, scope: !1421, inlinedAt: !1422)
!1679 = !DILocation(line: 557, column: 2, scope: !1421, inlinedAt: !1422)
!1680 = !DILocation(line: 558, column: 1, scope: !1421, inlinedAt: !1422)
!1681 = !DILocation(line: 664, column: 2, scope: !1408)
!1682 = distinct !DISubprogram(name: "clk_register_mux_table", scope: !3, file: !3, line: 209, type: !1683, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!34, !494, !42, !138, !95, !72, !22, !95, !158, !95, !157, !164}
!1685 = !DILocalVariable(name: "dev", arg: 1, scope: !1682, file: !3, line: 209, type: !494)
!1686 = !DILocation(line: 209, column: 51, scope: !1682)
!1687 = !DILocalVariable(name: "name", arg: 2, scope: !1682, file: !3, line: 209, type: !42)
!1688 = !DILocation(line: 209, column: 68, scope: !1682)
!1689 = !DILocalVariable(name: "parent_names", arg: 3, scope: !1682, file: !3, line: 210, type: !138)
!1690 = !DILocation(line: 210, column: 23, scope: !1682)
!1691 = !DILocalVariable(name: "num_parents", arg: 4, scope: !1682, file: !3, line: 210, type: !95)
!1692 = !DILocation(line: 210, column: 40, scope: !1682)
!1693 = !DILocalVariable(name: "flags", arg: 5, scope: !1682, file: !3, line: 211, type: !72)
!1694 = !DILocation(line: 211, column: 17, scope: !1682)
!1695 = !DILocalVariable(name: "reg", arg: 6, scope: !1682, file: !3, line: 211, type: !22)
!1696 = !DILocation(line: 211, column: 38, scope: !1682)
!1697 = !DILocalVariable(name: "shift", arg: 7, scope: !1682, file: !3, line: 211, type: !95)
!1698 = !DILocation(line: 211, column: 46, scope: !1682)
!1699 = !DILocalVariable(name: "mask", arg: 8, scope: !1682, file: !3, line: 211, type: !158)
!1700 = !DILocation(line: 211, column: 57, scope: !1682)
!1701 = !DILocalVariable(name: "clk_mux_flags", arg: 9, scope: !1682, file: !3, line: 212, type: !95)
!1702 = !DILocation(line: 212, column: 6, scope: !1682)
!1703 = !DILocalVariable(name: "table", arg: 10, scope: !1682, file: !3, line: 212, type: !157)
!1704 = !DILocation(line: 212, column: 26, scope: !1682)
!1705 = !DILocalVariable(name: "lock", arg: 11, scope: !1682, file: !3, line: 212, type: !164)
!1706 = !DILocation(line: 212, column: 45, scope: !1682)
!1707 = !DILocalVariable(name: "hw", scope: !1682, file: !3, line: 214, type: !55)
!1708 = !DILocation(line: 214, column: 17, scope: !1682)
!1709 = !DILocation(line: 216, column: 7, scope: !1682)
!1710 = !DILocation(line: 216, column: 5, scope: !1682)
!1711 = !DILocation(line: 219, column: 13, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 219, column: 6)
!1713 = !DILocation(line: 219, column: 6, scope: !1712)
!1714 = !DILocation(line: 219, column: 6, scope: !1682)
!1715 = !DILocation(line: 220, column: 19, scope: !1712)
!1716 = !DILocation(line: 220, column: 10, scope: !1712)
!1717 = !DILocation(line: 220, column: 3, scope: !1712)
!1718 = !DILocation(line: 221, column: 9, scope: !1682)
!1719 = !DILocation(line: 221, column: 13, scope: !1682)
!1720 = !DILocation(line: 221, column: 2, scope: !1682)
!1721 = !DILocation(line: 222, column: 1, scope: !1682)
!1722 = distinct !DISubprogram(name: "IS_ERR", scope: !1400, file: !1400, line: 34, type: !1723, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!527, !535}
!1725 = !DILocalVariable(name: "ptr", arg: 1, scope: !1722, file: !1400, line: 34, type: !535)
!1726 = !DILocation(line: 34, column: 60, scope: !1722)
!1727 = !DILocation(line: 36, column: 9, scope: !1722)
!1728 = !DILocation(line: 36, column: 2, scope: !1722)
!1729 = distinct !DISubprogram(name: "ERR_CAST", scope: !1400, file: !1400, line: 51, type: !1730, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!22, !535}
!1732 = !DILocalVariable(name: "ptr", arg: 1, scope: !1729, file: !1400, line: 51, type: !535)
!1733 = !DILocation(line: 51, column: 64, scope: !1729)
!1734 = !DILocation(line: 54, column: 18, scope: !1729)
!1735 = !DILocation(line: 54, column: 2, scope: !1729)
!1736 = distinct !DISubprogram(name: "clk_unregister_mux", scope: !3, file: !3, line: 225, type: !1737, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !34}
!1739 = !DILocalVariable(name: "clk", arg: 1, scope: !1736, file: !3, line: 225, type: !34)
!1740 = !DILocation(line: 225, column: 37, scope: !1736)
!1741 = !DILocalVariable(name: "mux", scope: !1736, file: !3, line: 227, type: !23)
!1742 = !DILocation(line: 227, column: 18, scope: !1736)
!1743 = !DILocalVariable(name: "hw", scope: !1736, file: !3, line: 228, type: !55)
!1744 = !DILocation(line: 228, column: 17, scope: !1736)
!1745 = !DILocation(line: 230, column: 20, scope: !1736)
!1746 = !DILocation(line: 230, column: 7, scope: !1736)
!1747 = !DILocation(line: 230, column: 5, scope: !1736)
!1748 = !DILocation(line: 231, column: 7, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 231, column: 6)
!1750 = !DILocation(line: 231, column: 6, scope: !1736)
!1751 = !DILocation(line: 232, column: 3, scope: !1749)
!1752 = !DILocalVariable(name: "__mptr", scope: !1753, file: !3, line: 234, type: !22)
!1753 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 234, column: 8)
!1754 = !DILocation(line: 234, column: 8, scope: !1753)
!1755 = !DILocation(line: 234, column: 8, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 234, column: 8)
!1757 = !DILocation(line: 234, column: 6, scope: !1736)
!1758 = !DILocation(line: 236, column: 17, scope: !1736)
!1759 = !DILocation(line: 236, column: 2, scope: !1736)
!1760 = !DILocation(line: 237, column: 8, scope: !1736)
!1761 = !DILocation(line: 237, column: 2, scope: !1736)
!1762 = !DILocation(line: 238, column: 1, scope: !1736)
!1763 = distinct !DISubprogram(name: "clk_hw_unregister_mux", scope: !3, file: !3, line: 241, type: !58, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1764 = !DILocalVariable(name: "hw", arg: 1, scope: !1763, file: !3, line: 241, type: !55)
!1765 = !DILocation(line: 241, column: 43, scope: !1763)
!1766 = !DILocalVariable(name: "mux", scope: !1763, file: !3, line: 243, type: !23)
!1767 = !DILocation(line: 243, column: 18, scope: !1763)
!1768 = !DILocalVariable(name: "__mptr", scope: !1769, file: !3, line: 245, type: !22)
!1769 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 245, column: 8)
!1770 = !DILocation(line: 245, column: 8, scope: !1769)
!1771 = !DILocation(line: 245, column: 8, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 245, column: 8)
!1773 = !DILocation(line: 245, column: 6, scope: !1763)
!1774 = !DILocation(line: 247, column: 20, scope: !1763)
!1775 = !DILocation(line: 247, column: 2, scope: !1763)
!1776 = !DILocation(line: 248, column: 8, scope: !1763)
!1777 = !DILocation(line: 248, column: 2, scope: !1763)
!1778 = !DILocation(line: 249, column: 1, scope: !1763)
!1779 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !1780, file: !1780, line: 666, type: !1781, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1780 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!72}
!1783 = !DILocalVariable(name: "f", scope: !1779, file: !1780, line: 668, type: !72)
!1784 = !DILocation(line: 668, column: 16, scope: !1779)
!1785 = !DILocation(line: 670, column: 6, scope: !1779)
!1786 = !DILocation(line: 670, column: 4, scope: !1779)
!1787 = !DILocation(line: 671, column: 2, scope: !1779)
!1788 = !DILocation(line: 672, column: 9, scope: !1779)
!1789 = !DILocation(line: 672, column: 2, scope: !1779)
!1790 = distinct !DISubprogram(name: "clk_mux_readl", scope: !3, file: !3, line: 26, type: !1791, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!158, !23}
!1793 = !DILocalVariable(name: "mux", arg: 1, scope: !1790, file: !3, line: 26, type: !23)
!1794 = !DILocation(line: 26, column: 49, scope: !1790)
!1795 = !DILocation(line: 28, column: 6, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 28, column: 6)
!1797 = !DILocation(line: 28, column: 11, scope: !1796)
!1798 = !DILocation(line: 28, column: 17, scope: !1796)
!1799 = !DILocation(line: 28, column: 6, scope: !1790)
!1800 = !DILocation(line: 29, column: 21, scope: !1796)
!1801 = !DILocation(line: 29, column: 26, scope: !1796)
!1802 = !DILocation(line: 29, column: 10, scope: !1796)
!1803 = !DILocation(line: 29, column: 3, scope: !1796)
!1804 = !DILocation(line: 31, column: 15, scope: !1790)
!1805 = !DILocation(line: 31, column: 20, scope: !1790)
!1806 = !DILocation(line: 31, column: 9, scope: !1790)
!1807 = !DILocation(line: 31, column: 2, scope: !1790)
!1808 = !DILocation(line: 32, column: 1, scope: !1790)
!1809 = distinct !DISubprogram(name: "clk_mux_writel", scope: !3, file: !3, line: 34, type: !1810, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !23, !158}
!1812 = !DILocalVariable(name: "mux", arg: 1, scope: !1809, file: !3, line: 34, type: !23)
!1813 = !DILocation(line: 34, column: 51, scope: !1809)
!1814 = !DILocalVariable(name: "val", arg: 2, scope: !1809, file: !3, line: 34, type: !158)
!1815 = !DILocation(line: 34, column: 60, scope: !1809)
!1816 = !DILocation(line: 36, column: 6, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 36, column: 6)
!1818 = !DILocation(line: 36, column: 11, scope: !1817)
!1819 = !DILocation(line: 36, column: 17, scope: !1817)
!1820 = !DILocation(line: 36, column: 6, scope: !1809)
!1821 = !DILocation(line: 37, column: 15, scope: !1817)
!1822 = !DILocation(line: 37, column: 20, scope: !1817)
!1823 = !DILocation(line: 37, column: 25, scope: !1817)
!1824 = !DILocation(line: 37, column: 3, scope: !1817)
!1825 = !DILocation(line: 39, column: 10, scope: !1817)
!1826 = !DILocation(line: 39, column: 15, scope: !1817)
!1827 = !DILocation(line: 39, column: 20, scope: !1817)
!1828 = !DILocation(line: 39, column: 3, scope: !1817)
!1829 = !DILocation(line: 40, column: 1, scope: !1809)
!1830 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1780, file: !1780, line: 646, type: !1781, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1831 = !DILocalVariable(name: "__ret", scope: !1832, file: !1780, line: 648, type: !72)
!1832 = distinct !DILexicalBlock(scope: !1830, file: !1780, line: 648, column: 9)
!1833 = !DILocation(line: 648, column: 9, scope: !1832)
!1834 = !DILocalVariable(name: "__edi", scope: !1832, file: !1780, line: 648, type: !72)
!1835 = !DILocalVariable(name: "__esi", scope: !1832, file: !1780, line: 648, type: !72)
!1836 = !DILocalVariable(name: "__edx", scope: !1832, file: !1780, line: 648, type: !72)
!1837 = !DILocalVariable(name: "__ecx", scope: !1832, file: !1780, line: 648, type: !72)
!1838 = !DILocalVariable(name: "__eax", scope: !1832, file: !1780, line: 648, type: !72)
!1839 = !DILocation(line: 648, column: 9, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !1780, line: 648, column: 9)
!1841 = distinct !DILexicalBlock(scope: !1832, file: !1780, line: 648, column: 9)
!1842 = !{i32 -2145667636, i32 -2145665321, i32 -2145665087, i32 -2145665036, i32 -2145665008, i32 -2145664983, i32 -2145665299, i32 -2145665286, i32 -2145664848, i32 -2145664729, i32 -2145665194, i32 -2145665167, i32 -2145665139, i32 -2145665109}
!1843 = !DILocalVariable(name: "__mask", scope: !1844, file: !1780, line: 648, type: !72)
!1844 = distinct !DILexicalBlock(scope: !1840, file: !1780, line: 648, column: 9)
!1845 = !DILocation(line: 648, column: 9, scope: !1844)
!1846 = !DILocation(line: 648, column: 9, scope: !1841)
!1847 = !DILocation(line: 648, column: 2, scope: !1830)
!1848 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !1780, file: !1780, line: 656, type: !1849, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null}
!1851 = !DILocalVariable(name: "__edi", scope: !1852, file: !1780, line: 658, type: !72)
!1852 = distinct !DILexicalBlock(scope: !1848, file: !1780, line: 658, column: 2)
!1853 = !DILocation(line: 658, column: 2, scope: !1852)
!1854 = !DILocalVariable(name: "__esi", scope: !1852, file: !1780, line: 658, type: !72)
!1855 = !DILocalVariable(name: "__edx", scope: !1852, file: !1780, line: 658, type: !72)
!1856 = !DILocalVariable(name: "__ecx", scope: !1852, file: !1780, line: 658, type: !72)
!1857 = !DILocalVariable(name: "__eax", scope: !1852, file: !1780, line: 658, type: !72)
!1858 = !{i32 -2145660542, i32 -2145659810, i32 -2145659576, i32 -2145659525, i32 -2145659497, i32 -2145659472, i32 -2145659788, i32 -2145659775, i32 -2145659337, i32 -2145659218, i32 -2145659683, i32 -2145659656, i32 -2145659628, i32 -2145659598}
!1859 = !DILocation(line: 659, column: 1, scope: !1848)
!1860 = distinct !DISubprogram(name: "readl", scope: !1861, file: !1861, line: 59, type: !1862, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1861 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!7, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1866)
!1866 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1867 = !DILocalVariable(name: "addr", arg: 1, scope: !1860, file: !1861, line: 59, type: !1864)
!1868 = !DILocation(line: 59, column: 1, scope: !1860)
!1869 = !DILocalVariable(name: "ret", scope: !1860, file: !1861, line: 59, type: !7)
!1870 = !{i32 -2144051262}
!1871 = distinct !DISubprogram(name: "writel", scope: !1861, file: !1861, line: 67, type: !1872, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{null, !7, !1874}
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1875 = !DILocalVariable(name: "val", arg: 1, scope: !1871, file: !1861, line: 67, type: !7)
!1876 = !DILocation(line: 67, column: 1, scope: !1871)
!1877 = !DILocalVariable(name: "addr", arg: 2, scope: !1871, file: !1861, line: 67, type: !1874)
!1878 = !{i32 -2144048869}
!1879 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !1780, file: !1780, line: 651, type: !1880, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !72}
!1882 = !DILocalVariable(name: "f", arg: 1, scope: !1879, file: !1780, line: 651, type: !72)
!1883 = !DILocation(line: 651, column: 65, scope: !1879)
!1884 = !DILocalVariable(name: "__edi", scope: !1885, file: !1780, line: 653, type: !72)
!1885 = distinct !DILexicalBlock(scope: !1879, file: !1780, line: 653, column: 2)
!1886 = !DILocation(line: 653, column: 2, scope: !1885)
!1887 = !DILocalVariable(name: "__esi", scope: !1885, file: !1780, line: 653, type: !72)
!1888 = !DILocalVariable(name: "__edx", scope: !1885, file: !1780, line: 653, type: !72)
!1889 = !DILocalVariable(name: "__ecx", scope: !1885, file: !1780, line: 653, type: !72)
!1890 = !DILocalVariable(name: "__eax", scope: !1885, file: !1780, line: 653, type: !72)
!1891 = !{i32 -2145663169, i32 -2145662419, i32 -2145662185, i32 -2145662134, i32 -2145662106, i32 -2145662081, i32 -2145662397, i32 -2145662384, i32 -2145661946, i32 -2145661827, i32 -2145662292, i32 -2145662265, i32 -2145662237, i32 -2145662207}
!1892 = !DILocation(line: 654, column: 1, scope: !1879)
!1893 = distinct !DISubprogram(name: "get_order", scope: !1894, file: !1894, line: 29, type: !1895, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1894 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!54, !72}
!1897 = !DILocalVariable(name: "x", arg: 1, scope: !1898, file: !196, line: 366, type: !585)
!1898 = distinct !DISubprogram(name: "fls64", scope: !196, file: !196, line: 366, type: !1899, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!54, !585}
!1901 = !DILocation(line: 366, column: 40, scope: !1898, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 46, column: 9, scope: !1893)
!1903 = !DILocalVariable(name: "bitpos", scope: !1898, file: !196, line: 368, type: !54)
!1904 = !DILocation(line: 368, column: 6, scope: !1898, inlinedAt: !1902)
!1905 = !DILocalVariable(name: "size", arg: 1, scope: !1893, file: !1894, line: 29, type: !72)
!1906 = !DILocation(line: 29, column: 63, scope: !1893)
!1907 = !DILocation(line: 31, column: 27, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1893, file: !1894, line: 31, column: 6)
!1909 = !DILocation(line: 31, column: 6, scope: !1908)
!1910 = !DILocation(line: 31, column: 6, scope: !1893)
!1911 = !DILocation(line: 32, column: 8, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !1894, line: 32, column: 7)
!1913 = distinct !DILexicalBlock(scope: !1908, file: !1894, line: 31, column: 34)
!1914 = !DILocation(line: 32, column: 7, scope: !1913)
!1915 = !DILocation(line: 33, column: 4, scope: !1912)
!1916 = !DILocation(line: 35, column: 7, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !1894, line: 35, column: 7)
!1918 = !DILocation(line: 35, column: 12, scope: !1917)
!1919 = !DILocation(line: 35, column: 7, scope: !1913)
!1920 = !DILocation(line: 36, column: 4, scope: !1917)
!1921 = !DILocation(line: 38, column: 10, scope: !1913)
!1922 = !DILocation(line: 38, column: 28, scope: !1913)
!1923 = !DILocation(line: 38, column: 41, scope: !1913)
!1924 = !DILocation(line: 38, column: 3, scope: !1913)
!1925 = !DILocation(line: 41, column: 6, scope: !1893)
!1926 = !DILocation(line: 42, column: 7, scope: !1893)
!1927 = !DILocation(line: 46, column: 15, scope: !1893)
!1928 = !DILocation(line: 374, column: 2, scope: !1898, inlinedAt: !1902)
!1929 = !DILocation(line: 376, column: 14, scope: !1898, inlinedAt: !1902)
!1930 = !{i32 288242}
!1931 = !DILocation(line: 377, column: 9, scope: !1898, inlinedAt: !1902)
!1932 = !DILocation(line: 377, column: 16, scope: !1898, inlinedAt: !1902)
!1933 = !DILocation(line: 46, column: 2, scope: !1893)
!1934 = !DILocation(line: 48, column: 1, scope: !1893)
!1935 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1936, file: !1936, line: 30, type: !1937, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1936 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!54, !584}
!1939 = !DILocation(line: 366, column: 40, scope: !1898, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 32, column: 9, scope: !1935)
!1941 = !DILocation(line: 368, column: 6, scope: !1898, inlinedAt: !1940)
!1942 = !DILocalVariable(name: "n", arg: 1, scope: !1935, file: !1936, line: 30, type: !584)
!1943 = !DILocation(line: 30, column: 21, scope: !1935)
!1944 = !DILocation(line: 32, column: 15, scope: !1935)
!1945 = !DILocation(line: 374, column: 2, scope: !1898, inlinedAt: !1940)
!1946 = !DILocation(line: 376, column: 14, scope: !1898, inlinedAt: !1940)
!1947 = !DILocation(line: 377, column: 9, scope: !1898, inlinedAt: !1940)
!1948 = !DILocation(line: 377, column: 16, scope: !1898, inlinedAt: !1940)
!1949 = !DILocation(line: 32, column: 18, scope: !1935)
!1950 = !DILocation(line: 32, column: 2, scope: !1935)
!1951 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1952, file: !1952, line: 137, type: !1953, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!1952 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!22, !1415, !535, !547, !20}
!1955 = !DILocalVariable(name: "s", arg: 1, scope: !1951, file: !1952, line: 137, type: !1415)
!1956 = !DILocation(line: 137, column: 54, scope: !1951)
!1957 = !DILocalVariable(name: "object", arg: 2, scope: !1951, file: !1952, line: 137, type: !535)
!1958 = !DILocation(line: 137, column: 69, scope: !1951)
!1959 = !DILocalVariable(name: "size", arg: 3, scope: !1951, file: !1952, line: 138, type: !547)
!1960 = !DILocation(line: 138, column: 12, scope: !1951)
!1961 = !DILocalVariable(name: "flags", arg: 4, scope: !1951, file: !1952, line: 138, type: !20)
!1962 = !DILocation(line: 138, column: 24, scope: !1951)
!1963 = !DILocation(line: 140, column: 17, scope: !1951)
!1964 = !DILocation(line: 140, column: 2, scope: !1951)
