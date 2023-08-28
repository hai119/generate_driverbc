; ModuleID = '../bcout/drivers/hwmon/hwmon-vid.llvm.bc'
source_filename = "drivers/hwmon/hwmon-vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.cpuinfo_x86 = type { i8, i8, i8, i8, i32, [3 x i32], i8, i8, i8, i8, i32, i32, %union.anon, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon = type { i64, [72 x i8] }
%struct.vrm_model = type { i8, i8, i8, i8, i8, i8 }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.0, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.2 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i64, i64 }
%union.anon.2 = type { [12 x i32] }
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
%struct.mm_struct = type { %struct.anon.3, [0 x i64] }
%struct.anon.3 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.4, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.pgprot = type { i64 }
%struct.anon.4 = type { %struct.rb_node, i64 }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
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

@.str = private unnamed_addr constant [53 x i8] c"\014hwmon_vid: Requested unsupported VRM version (%u)\0A\00", align 1
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"\016hwmon_vid: Unknown VRM version of your x86 CPU\0A\00", align 1
@__UNIQUE_ID_author104 = internal constant [53 x i8] c"hwmon_vid.author=Rudolf Marek <r.marek@assembler.cz>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description105 = internal constant [39 x i8] c"hwmon_vid.description=hwmon-vid driver\00", section ".modinfo", align 1, !dbg !17
@__UNIQUE_ID_file106 = internal constant [39 x i8] c"hwmon_vid.file=drivers/hwmon/hwmon-vid\00", section ".modinfo", align 1, !dbg !24
@__UNIQUE_ID_license107 = internal constant [22 x i8] c"hwmon_vid.license=GPL\00", section ".modinfo", align 1, !dbg !26
@vrm_models = internal global [29 x %struct.vrm_model] [%struct.vrm_model { i8 2, i8 6, i8 0, i8 -1, i8 -1, i8 90 }, %struct.vrm_model { i8 2, i8 15, i8 0, i8 63, i8 -1, i8 24 }, %struct.vrm_model { i8 2, i8 15, i8 64, i8 127, i8 -1, i8 24 }, %struct.vrm_model { i8 2, i8 15, i8 -128, i8 -1, i8 -1, i8 25 }, %struct.vrm_model { i8 2, i8 16, i8 0, i8 -1, i8 -1, i8 25 }, %struct.vrm_model { i8 2, i8 17, i8 0, i8 -1, i8 -1, i8 26 }, %struct.vrm_model { i8 2, i8 18, i8 0, i8 -1, i8 -1, i8 26 }, %struct.vrm_model { i8 2, i8 20, i8 0, i8 -1, i8 -1, i8 26 }, %struct.vrm_model { i8 2, i8 21, i8 0, i8 -1, i8 -1, i8 26 }, %struct.vrm_model { i8 0, i8 6, i8 0, i8 6, i8 -1, i8 82 }, %struct.vrm_model { i8 0, i8 6, i8 7, i8 7, i8 -1, i8 84 }, %struct.vrm_model { i8 0, i8 6, i8 8, i8 8, i8 -1, i8 82 }, %struct.vrm_model { i8 0, i8 6, i8 9, i8 9, i8 -1, i8 13 }, %struct.vrm_model { i8 0, i8 6, i8 10, i8 10, i8 -1, i8 82 }, %struct.vrm_model { i8 0, i8 6, i8 11, i8 11, i8 -1, i8 85 }, %struct.vrm_model { i8 0, i8 6, i8 13, i8 13, i8 -1, i8 13 }, %struct.vrm_model { i8 0, i8 6, i8 14, i8 14, i8 -1, i8 14 }, %struct.vrm_model { i8 0, i8 6, i8 15, i8 -1, i8 -1, i8 110 }, %struct.vrm_model { i8 0, i8 15, i8 0, i8 0, i8 -1, i8 90 }, %struct.vrm_model { i8 0, i8 15, i8 1, i8 1, i8 -1, i8 90 }, %struct.vrm_model { i8 0, i8 15, i8 2, i8 2, i8 -1, i8 90 }, %struct.vrm_model { i8 0, i8 15, i8 3, i8 -1, i8 -1, i8 100 }, %struct.vrm_model { i8 5, i8 6, i8 7, i8 7, i8 -1, i8 85 }, %struct.vrm_model { i8 5, i8 6, i8 8, i8 8, i8 7, i8 85 }, %struct.vrm_model { i8 5, i8 6, i8 9, i8 9, i8 7, i8 85 }, %struct.vrm_model { i8 5, i8 6, i8 9, i8 9, i8 -1, i8 17 }, %struct.vrm_model { i8 5, i8 6, i8 10, i8 10, i8 7, i8 0 }, %struct.vrm_model { i8 5, i8 6, i8 10, i8 10, i8 -1, i8 13 }, %struct.vrm_model { i8 5, i8 6, i8 13, i8 13, i8 -1, i8 -122 }], align 16, !dbg !31
@get_via_model_d_vrm.brands = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)], align 16, !dbg !47
@.str.2 = private unnamed_addr constant [5 x i8] c"C7-M\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"C7\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Eden\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"C7-D\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"\016hwmon_vid: Using %d-bit VID table for VIA %s CPU\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__UNIQUE_ID_author104, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_description105, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_file106, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license107, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @vid_from_reg(i32 %val, i8 zeroext %vrm) #0 !dbg !65 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %vrm.addr = alloca i8, align 1
  %vid = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !68, metadata !DIExpression()), !dbg !69
  store i8 %vrm, i8* %vrm.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %vrm.addr, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %vid, metadata !72, metadata !DIExpression()), !dbg !73
  %0 = load i8, i8* %vrm.addr, align 1, !dbg !74
  %conv = zext i8 %0 to i32, !dbg !74
  switch i32 %conv, label %sw.default [
    i32 100, label %sw.bb
    i32 110, label %sw.bb18
    i32 24, label %sw.bb32
    i32 25, label %sw.bb38
    i32 26, label %sw.bb48
    i32 91, label %sw.bb72
    i32 90, label %sw.bb72
    i32 85, label %sw.bb82
    i32 84, label %sw.bb95
    i32 82, label %sw.bb97
    i32 17, label %sw.bb115
    i32 13, label %sw.bb128
    i32 131, label %sw.bb128
    i32 14, label %sw.bb139
  ], !dbg !75

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %val.addr, align 4, !dbg !76
  %and = and i32 %1, 63, !dbg !76
  store i32 %and, i32* %val.addr, align 4, !dbg !76
  %2 = load i32, i32* %val.addr, align 4, !dbg !78
  %and1 = and i32 %2, 31, !dbg !80
  %cmp = icmp eq i32 %and1, 31, !dbg !81
  br i1 %cmp, label %if.then, label %if.end, !dbg !82

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !83
  br label %return, !dbg !83

if.end:                                           ; preds = %sw.bb
  %3 = load i32, i32* %val.addr, align 4, !dbg !84
  %and3 = and i32 %3, 31, !dbg !86
  %cmp4 = icmp sle i32 %and3, 9, !dbg !87
  br i1 %cmp4, label %if.then8, label %lor.lhs.false, !dbg !88

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %val.addr, align 4, !dbg !89
  %cmp6 = icmp eq i32 %4, 10, !dbg !90
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !91

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load i32, i32* %val.addr, align 4, !dbg !92
  %and9 = and i32 %5, 31, !dbg !93
  %mul = mul i32 %and9, 25000, !dbg !94
  %sub = sub i32 1087500, %mul, !dbg !95
  store i32 %sub, i32* %vid, align 4, !dbg !96
  br label %if.end13, !dbg !97

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %val.addr, align 4, !dbg !98
  %and10 = and i32 %6, 31, !dbg !99
  %mul11 = mul i32 %and10, 25000, !dbg !100
  %sub12 = sub i32 1862500, %mul11, !dbg !101
  store i32 %sub12, i32* %vid, align 4, !dbg !102
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  %7 = load i32, i32* %val.addr, align 4, !dbg !103
  %and14 = and i32 %7, 32, !dbg !105
  %tobool = icmp ne i32 %and14, 0, !dbg !105
  br i1 %tobool, label %if.then15, label %if.end17, !dbg !106

if.then15:                                        ; preds = %if.end13
  %8 = load i32, i32* %vid, align 4, !dbg !107
  %sub16 = sub i32 %8, 12500, !dbg !107
  store i32 %sub16, i32* %vid, align 4, !dbg !107
  br label %if.end17, !dbg !108

if.end17:                                         ; preds = %if.then15, %if.end13
  %9 = load i32, i32* %vid, align 4, !dbg !109
  %add = add i32 %9, 500, !dbg !110
  %div = sdiv i32 %add, 1000, !dbg !111
  store i32 %div, i32* %retval, align 4, !dbg !112
  br label %return, !dbg !112

sw.bb18:                                          ; preds = %entry
  %10 = load i32, i32* %val.addr, align 4, !dbg !113
  %and19 = and i32 %10, 255, !dbg !113
  store i32 %and19, i32* %val.addr, align 4, !dbg !113
  %11 = load i32, i32* %val.addr, align 4, !dbg !114
  %cmp20 = icmp slt i32 %11, 2, !dbg !116
  br i1 %cmp20, label %if.then25, label %lor.lhs.false22, !dbg !117

lor.lhs.false22:                                  ; preds = %sw.bb18
  %12 = load i32, i32* %val.addr, align 4, !dbg !118
  %cmp23 = icmp sgt i32 %12, 178, !dbg !119
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !120

if.then25:                                        ; preds = %lor.lhs.false22, %sw.bb18
  store i32 0, i32* %retval, align 4, !dbg !121
  br label %return, !dbg !121

if.end26:                                         ; preds = %lor.lhs.false22
  %13 = load i32, i32* %val.addr, align 4, !dbg !122
  %sub27 = sub i32 %13, 2, !dbg !123
  %mul28 = mul i32 %sub27, 6250, !dbg !124
  %sub29 = sub i32 1600000, %mul28, !dbg !125
  %add30 = add i32 %sub29, 500, !dbg !126
  %div31 = sdiv i32 %add30, 1000, !dbg !127
  store i32 %div31, i32* %retval, align 4, !dbg !128
  br label %return, !dbg !128

sw.bb32:                                          ; preds = %entry
  %14 = load i32, i32* %val.addr, align 4, !dbg !129
  %and33 = and i32 %14, 31, !dbg !129
  store i32 %and33, i32* %val.addr, align 4, !dbg !129
  %15 = load i32, i32* %val.addr, align 4, !dbg !130
  %cmp34 = icmp eq i32 %15, 31, !dbg !132
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !133

if.then36:                                        ; preds = %sw.bb32
  store i32 0, i32* %retval, align 4, !dbg !134
  br label %return, !dbg !134

if.end37:                                         ; preds = %sw.bb32
  br label %sw.bb38, !dbg !135

sw.bb38:                                          ; preds = %entry, %if.end37
  %16 = load i32, i32* %val.addr, align 4, !dbg !136
  %and39 = and i32 %16, 63, !dbg !136
  store i32 %and39, i32* %val.addr, align 4, !dbg !136
  %17 = load i32, i32* %val.addr, align 4, !dbg !137
  %cmp40 = icmp slt i32 %17, 32, !dbg !138
  br i1 %cmp40, label %cond.true, label %cond.false, !dbg !139

cond.true:                                        ; preds = %sw.bb38
  %18 = load i32, i32* %val.addr, align 4, !dbg !140
  %mul42 = mul i32 25, %18, !dbg !141
  %sub43 = sub i32 1550, %mul42, !dbg !142
  br label %cond.end, !dbg !139

cond.false:                                       ; preds = %sw.bb38
  %19 = load i32, i32* %val.addr, align 4, !dbg !143
  %sub44 = sub i32 %19, 31, !dbg !144
  %mul45 = mul i32 25, %sub44, !dbg !145
  %div46 = sdiv i32 %mul45, 2, !dbg !146
  %sub47 = sub i32 775, %div46, !dbg !147
  br label %cond.end, !dbg !139

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub43, %cond.true ], [ %sub47, %cond.false ], !dbg !139
  store i32 %cond, i32* %retval, align 4, !dbg !148
  br label %return, !dbg !148

sw.bb48:                                          ; preds = %entry
  %20 = load i32, i32* %val.addr, align 4, !dbg !149
  %and49 = and i32 %20, 127, !dbg !149
  store i32 %and49, i32* %val.addr, align 4, !dbg !149
  %21 = load i32, i32* %val.addr, align 4, !dbg !150
  %cmp50 = icmp sge i32 %21, 124, !dbg !152
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !153

if.then52:                                        ; preds = %sw.bb48
  store i32 0, i32* %retval, align 4, !dbg !154
  br label %return, !dbg !154

if.end53:                                         ; preds = %sw.bb48
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !155, metadata !DIExpression()), !dbg !157
  %22 = load i32, i32* %val.addr, align 4, !dbg !157
  %mul54 = mul i32 125, %22, !dbg !157
  %sub55 = sub i32 15500, %mul54, !dbg !157
  store i32 %sub55, i32* %__x, align 4, !dbg !157
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !158, metadata !DIExpression()), !dbg !157
  store i32 10, i32* %__d, align 4, !dbg !157
  %23 = load i32, i32* %__x, align 4, !dbg !157
  %cmp56 = icmp sgt i32 %23, 0, !dbg !157
  %conv57 = zext i1 %cmp56 to i32, !dbg !157
  %24 = load i32, i32* %__d, align 4, !dbg !157
  %cmp58 = icmp sgt i32 %24, 0, !dbg !157
  %conv59 = zext i1 %cmp58 to i32, !dbg !157
  %cmp60 = icmp eq i32 %conv57, %conv59, !dbg !157
  br i1 %cmp60, label %cond.true62, label %cond.false66, !dbg !157

cond.true62:                                      ; preds = %if.end53
  %25 = load i32, i32* %__x, align 4, !dbg !157
  %26 = load i32, i32* %__d, align 4, !dbg !157
  %div63 = sdiv i32 %26, 2, !dbg !157
  %add64 = add i32 %25, %div63, !dbg !157
  %27 = load i32, i32* %__d, align 4, !dbg !157
  %div65 = sdiv i32 %add64, %27, !dbg !157
  br label %cond.end70, !dbg !157

cond.false66:                                     ; preds = %if.end53
  %28 = load i32, i32* %__x, align 4, !dbg !157
  %29 = load i32, i32* %__d, align 4, !dbg !157
  %div67 = sdiv i32 %29, 2, !dbg !157
  %sub68 = sub i32 %28, %div67, !dbg !157
  %30 = load i32, i32* %__d, align 4, !dbg !157
  %div69 = sdiv i32 %sub68, %30, !dbg !157
  br label %cond.end70, !dbg !157

cond.end70:                                       ; preds = %cond.false66, %cond.true62
  %cond71 = phi i32 [ %div65, %cond.true62 ], [ %div69, %cond.false66 ], !dbg !157
  store i32 %cond71, i32* %tmp, align 4, !dbg !157
  %31 = load i32, i32* %tmp, align 4, !dbg !157
  store i32 %31, i32* %retval, align 4, !dbg !159
  br label %return, !dbg !159

sw.bb72:                                          ; preds = %entry, %entry
  %32 = load i32, i32* %val.addr, align 4, !dbg !160
  %and73 = and i32 %32, 31, !dbg !160
  store i32 %and73, i32* %val.addr, align 4, !dbg !160
  %33 = load i32, i32* %val.addr, align 4, !dbg !161
  %cmp74 = icmp eq i32 %33, 31, !dbg !162
  br i1 %cmp74, label %cond.true76, label %cond.false77, !dbg !161

cond.true76:                                      ; preds = %sw.bb72
  br label %cond.end80, !dbg !161

cond.false77:                                     ; preds = %sw.bb72
  %34 = load i32, i32* %val.addr, align 4, !dbg !163
  %mul78 = mul i32 %34, 25, !dbg !164
  %sub79 = sub i32 1850, %mul78, !dbg !165
  br label %cond.end80, !dbg !161

cond.end80:                                       ; preds = %cond.false77, %cond.true76
  %cond81 = phi i32 [ 0, %cond.true76 ], [ %sub79, %cond.false77 ], !dbg !161
  store i32 %cond81, i32* %retval, align 4, !dbg !166
  br label %return, !dbg !166

sw.bb82:                                          ; preds = %entry
  %35 = load i32, i32* %val.addr, align 4, !dbg !167
  %and83 = and i32 %35, 31, !dbg !167
  store i32 %and83, i32* %val.addr, align 4, !dbg !167
  %36 = load i32, i32* %val.addr, align 4, !dbg !168
  %and84 = and i32 %36, 16, !dbg !169
  %tobool85 = icmp ne i32 %and84, 0, !dbg !168
  %37 = zext i1 %tobool85 to i64, !dbg !168
  %cond86 = select i1 %tobool85, i32 25, i32 0, !dbg !168
  %38 = load i32, i32* %val.addr, align 4, !dbg !170
  %and87 = and i32 %38, 15, !dbg !171
  %cmp88 = icmp sgt i32 %and87, 4, !dbg !172
  %39 = zext i1 %cmp88 to i64, !dbg !173
  %cond90 = select i1 %cmp88, i32 2050, i32 1250, !dbg !173
  %add91 = add i32 %cond86, %cond90, !dbg !174
  %40 = load i32, i32* %val.addr, align 4, !dbg !175
  %and92 = and i32 %40, 15, !dbg !176
  %mul93 = mul i32 %and92, 50, !dbg !177
  %sub94 = sub i32 %add91, %mul93, !dbg !178
  store i32 %sub94, i32* %retval, align 4, !dbg !179
  br label %return, !dbg !179

sw.bb95:                                          ; preds = %entry
  %41 = load i32, i32* %val.addr, align 4, !dbg !180
  %and96 = and i32 %41, 15, !dbg !180
  store i32 %and96, i32* %val.addr, align 4, !dbg !180
  br label %sw.bb97, !dbg !181

sw.bb97:                                          ; preds = %entry, %sw.bb95
  %42 = load i32, i32* %val.addr, align 4, !dbg !182
  %and98 = and i32 %42, 31, !dbg !182
  store i32 %and98, i32* %val.addr, align 4, !dbg !182
  %43 = load i32, i32* %val.addr, align 4, !dbg !183
  %cmp99 = icmp eq i32 %43, 31, !dbg !184
  br i1 %cmp99, label %cond.true101, label %cond.false102, !dbg !183

cond.true101:                                     ; preds = %sw.bb97
  br label %cond.end113, !dbg !183

cond.false102:                                    ; preds = %sw.bb97
  %44 = load i32, i32* %val.addr, align 4, !dbg !185
  %and103 = and i32 %44, 16, !dbg !186
  %tobool104 = icmp ne i32 %and103, 0, !dbg !186
  br i1 %tobool104, label %cond.true105, label %cond.false108, !dbg !185

cond.true105:                                     ; preds = %cond.false102
  %45 = load i32, i32* %val.addr, align 4, !dbg !187
  %mul106 = mul i32 %45, 100, !dbg !188
  %sub107 = sub i32 5100, %mul106, !dbg !189
  br label %cond.end111, !dbg !185

cond.false108:                                    ; preds = %cond.false102
  %46 = load i32, i32* %val.addr, align 4, !dbg !190
  %mul109 = mul i32 %46, 50, !dbg !191
  %sub110 = sub i32 2050, %mul109, !dbg !192
  br label %cond.end111, !dbg !185

cond.end111:                                      ; preds = %cond.false108, %cond.true105
  %cond112 = phi i32 [ %sub107, %cond.true105 ], [ %sub110, %cond.false108 ], !dbg !185
  br label %cond.end113, !dbg !183

cond.end113:                                      ; preds = %cond.end111, %cond.true101
  %cond114 = phi i32 [ 0, %cond.true101 ], [ %cond112, %cond.end111 ], !dbg !183
  store i32 %cond114, i32* %retval, align 4, !dbg !193
  br label %return, !dbg !193

sw.bb115:                                         ; preds = %entry
  %47 = load i32, i32* %val.addr, align 4, !dbg !194
  %and116 = and i32 %47, 31, !dbg !194
  store i32 %and116, i32* %val.addr, align 4, !dbg !194
  %48 = load i32, i32* %val.addr, align 4, !dbg !195
  %and117 = and i32 %48, 16, !dbg !196
  %tobool118 = icmp ne i32 %and117, 0, !dbg !196
  br i1 %tobool118, label %cond.true119, label %cond.false123, !dbg !195

cond.true119:                                     ; preds = %sw.bb115
  %49 = load i32, i32* %val.addr, align 4, !dbg !197
  %and120 = and i32 %49, 15, !dbg !198
  %mul121 = mul i32 %and120, 25, !dbg !199
  %sub122 = sub i32 975, %mul121, !dbg !200
  br label %cond.end126, !dbg !195

cond.false123:                                    ; preds = %sw.bb115
  %50 = load i32, i32* %val.addr, align 4, !dbg !201
  %mul124 = mul i32 %50, 50, !dbg !202
  %sub125 = sub i32 1750, %mul124, !dbg !203
  br label %cond.end126, !dbg !195

cond.end126:                                      ; preds = %cond.false123, %cond.true119
  %cond127 = phi i32 [ %sub122, %cond.true119 ], [ %sub125, %cond.false123 ], !dbg !195
  store i32 %cond127, i32* %retval, align 4, !dbg !204
  br label %return, !dbg !204

sw.bb128:                                         ; preds = %entry, %entry
  %51 = load i32, i32* %val.addr, align 4, !dbg !205
  %and129 = and i32 %51, 63, !dbg !205
  store i32 %and129, i32* %val.addr, align 4, !dbg !205
  %52 = load i8, i8* %vrm.addr, align 1, !dbg !206
  %conv130 = zext i8 %52 to i32, !dbg !206
  %cmp131 = icmp eq i32 %conv130, 131, !dbg !208
  br i1 %cmp131, label %land.lhs.true, label %if.end136, !dbg !209

land.lhs.true:                                    ; preds = %sw.bb128
  %53 = load i32, i32* %val.addr, align 4, !dbg !210
  %cmp133 = icmp eq i32 %53, 63, !dbg !211
  br i1 %cmp133, label %if.then135, label %if.end136, !dbg !212

if.then135:                                       ; preds = %land.lhs.true
  %54 = load i32, i32* %val.addr, align 4, !dbg !213
  %inc = add i32 %54, 1, !dbg !213
  store i32 %inc, i32* %val.addr, align 4, !dbg !213
  br label %if.end136, !dbg !214

if.end136:                                        ; preds = %if.then135, %land.lhs.true, %sw.bb128
  %55 = load i32, i32* %val.addr, align 4, !dbg !215
  %mul137 = mul i32 %55, 16, !dbg !216
  %sub138 = sub i32 1708, %mul137, !dbg !217
  store i32 %sub138, i32* %retval, align 4, !dbg !218
  br label %return, !dbg !218

sw.bb139:                                         ; preds = %entry
  %56 = load i32, i32* %val.addr, align 4, !dbg !219
  %and140 = and i32 %56, 127, !dbg !219
  store i32 %and140, i32* %val.addr, align 4, !dbg !219
  %57 = load i32, i32* %val.addr, align 4, !dbg !220
  %cmp141 = icmp sgt i32 %57, 119, !dbg !221
  br i1 %cmp141, label %cond.true143, label %cond.false144, !dbg !220

cond.true143:                                     ; preds = %sw.bb139
  br label %cond.end149, !dbg !220

cond.false144:                                    ; preds = %sw.bb139
  %58 = load i32, i32* %val.addr, align 4, !dbg !222
  %mul145 = mul i32 %58, 12500, !dbg !223
  %sub146 = sub i32 1500000, %mul145, !dbg !224
  %add147 = add i32 %sub146, 500, !dbg !225
  %div148 = sdiv i32 %add147, 1000, !dbg !226
  br label %cond.end149, !dbg !220

cond.end149:                                      ; preds = %cond.false144, %cond.true143
  %cond150 = phi i32 [ 0, %cond.true143 ], [ %div148, %cond.false144 ], !dbg !220
  store i32 %cond150, i32* %retval, align 4, !dbg !227
  br label %return, !dbg !227

sw.default:                                       ; preds = %entry
  %59 = load i8, i8* %vrm.addr, align 1, !dbg !228
  %tobool151 = icmp ne i8 %59, 0, !dbg !228
  br i1 %tobool151, label %if.then152, label %if.end154, !dbg !230

if.then152:                                       ; preds = %sw.default
  %60 = load i8, i8* %vrm.addr, align 1, !dbg !231
  %conv153 = zext i8 %60 to i32, !dbg !231
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %conv153) #5, !dbg !231
  br label %if.end154, !dbg !231

if.end154:                                        ; preds = %if.then152, %sw.default
  store i32 0, i32* %retval, align 4, !dbg !232
  br label %return, !dbg !232

return:                                           ; preds = %if.end154, %cond.end149, %if.end136, %cond.end126, %cond.end113, %sw.bb82, %cond.end80, %cond.end70, %if.then52, %cond.end, %if.then36, %if.end26, %if.then25, %if.end17, %if.then
  %61 = load i32, i32* %retval, align 4, !dbg !233
  ret i32 %61, !dbg !233
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @vid_which_vrm() #0 !dbg !234 {
entry:
  %retval = alloca i8, align 1
  %c = alloca %struct.cpuinfo_x86*, align 8
  %vrm_ret = alloca i8, align 1
  call void @llvm.dbg.declare(metadata %struct.cpuinfo_x86** %c, metadata !235, metadata !DIExpression()), !dbg !295
  store %struct.cpuinfo_x86* @boot_cpu_data, %struct.cpuinfo_x86** %c, align 8, !dbg !295
  call void @llvm.dbg.declare(metadata i8* %vrm_ret, metadata !296, metadata !DIExpression()), !dbg !297
  %0 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !298
  %x86 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %0, i32 0, i32 0, !dbg !300
  %1 = load i8, i8* %x86, align 8, !dbg !300
  %conv = zext i8 %1 to i32, !dbg !298
  %cmp = icmp slt i32 %conv, 6, !dbg !301
  br i1 %cmp, label %if.then, label %if.end, !dbg !302

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !303
  br label %return, !dbg !303

if.end:                                           ; preds = %entry
  %2 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !304
  %x862 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %2, i32 0, i32 0, !dbg !305
  %3 = load i8, i8* %x862, align 8, !dbg !305
  %4 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !306
  %x86_model = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %4, i32 0, i32 2, !dbg !307
  %5 = load i8, i8* %x86_model, align 2, !dbg !307
  %6 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !308
  %x86_stepping = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %6, i32 0, i32 3, !dbg !309
  %7 = load i8, i8* %x86_stepping, align 1, !dbg !309
  %8 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !310
  %x86_vendor = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %8, i32 0, i32 1, !dbg !311
  %9 = load i8, i8* %x86_vendor, align 1, !dbg !311
  %call = call zeroext i8 @find_vrm(i8 zeroext %3, i8 zeroext %5, i8 zeroext %7, i8 zeroext %9) #6, !dbg !312
  store i8 %call, i8* %vrm_ret, align 1, !dbg !313
  %10 = load i8, i8* %vrm_ret, align 1, !dbg !314
  %conv3 = zext i8 %10 to i32, !dbg !314
  %cmp4 = icmp eq i32 %conv3, 134, !dbg !316
  br i1 %cmp4, label %if.then6, label %if.end8, !dbg !317

if.then6:                                         ; preds = %if.end
  %call7 = call zeroext i8 @get_via_model_d_vrm() #6, !dbg !318
  store i8 %call7, i8* %vrm_ret, align 1, !dbg !319
  br label %if.end8, !dbg !320

if.end8:                                          ; preds = %if.then6, %if.end
  %11 = load i8, i8* %vrm_ret, align 1, !dbg !321
  %conv9 = zext i8 %11 to i32, !dbg !321
  %cmp10 = icmp eq i32 %conv9, 0, !dbg !323
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !324

if.then12:                                        ; preds = %if.end8
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !325
  br label %if.end14, !dbg !325

if.end14:                                         ; preds = %if.then12, %if.end8
  %12 = load i8, i8* %vrm_ret, align 1, !dbg !326
  store i8 %12, i8* %retval, align 1, !dbg !327
  br label %return, !dbg !327

return:                                           ; preds = %if.end14, %if.then
  %13 = load i8, i8* %retval, align 1, !dbg !328
  ret i8 %13, !dbg !328
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @find_vrm(i8 zeroext %family, i8 zeroext %model, i8 zeroext %stepping, i8 zeroext %vendor) #0 !dbg !329 {
entry:
  %retval = alloca i8, align 1
  %family.addr = alloca i8, align 1
  %model.addr = alloca i8, align 1
  %stepping.addr = alloca i8, align 1
  %vendor.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store i8 %family, i8* %family.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %family.addr, metadata !332, metadata !DIExpression()), !dbg !333
  store i8 %model, i8* %model.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %model.addr, metadata !334, metadata !DIExpression()), !dbg !335
  store i8 %stepping, i8* %stepping.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %stepping.addr, metadata !336, metadata !DIExpression()), !dbg !337
  store i8 %vendor, i8* %vendor.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %vendor.addr, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata i32* %i, metadata !340, metadata !DIExpression()), !dbg !341
  store i32 0, i32* %i, align 4, !dbg !342
  br label %for.cond, !dbg !344

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !345
  %conv = sext i32 %0 to i64, !dbg !345
  %cmp = icmp ult i64 %conv, 29, !dbg !347
  br i1 %cmp, label %for.body, label %for.end, !dbg !348

for.body:                                         ; preds = %for.cond
  %1 = load i8, i8* %vendor.addr, align 1, !dbg !349
  %conv2 = zext i8 %1 to i32, !dbg !349
  %2 = load i32, i32* %i, align 4, !dbg !352
  %idxprom = sext i32 %2 to i64, !dbg !353
  %arrayidx = getelementptr [29 x %struct.vrm_model], [29 x %struct.vrm_model]* @vrm_models, i64 0, i64 %idxprom, !dbg !353
  %vendor3 = getelementptr inbounds %struct.vrm_model, %struct.vrm_model* %arrayidx, i32 0, i32 0, !dbg !354
  %3 = load i8, i8* %vendor3, align 2, !dbg !354
  %conv4 = zext i8 %3 to i32, !dbg !353
  %cmp5 = icmp eq i32 %conv2, %conv4, !dbg !355
  br i1 %cmp5, label %land.lhs.true, label %if.end, !dbg !356

land.lhs.true:                                    ; preds = %for.body
  %4 = load i8, i8* %family.addr, align 1, !dbg !357
  %conv7 = zext i8 %4 to i32, !dbg !357
  %5 = load i32, i32* %i, align 4, !dbg !358
  %idxprom8 = sext i32 %5 to i64, !dbg !359
  %arrayidx9 = getelementptr [29 x %struct.vrm_model], [29 x %struct.vrm_model]* @vrm_models, i64 0, i64 %idxprom8, !dbg !359
  %family10 = getelementptr inbounds %struct.vrm_model, %struct.vrm_model* %arrayidx9, i32 0, i32 1, !dbg !360
  %6 = load i8, i8* %family10, align 1, !dbg !360
  %conv11 = zext i8 %6 to i32, !dbg !359
  %cmp12 = icmp eq i32 %conv7, %conv11, !dbg !361
  br i1 %cmp12, label %land.lhs.true14, label %if.end, !dbg !362

land.lhs.true14:                                  ; preds = %land.lhs.true
  %7 = load i8, i8* %model.addr, align 1, !dbg !363
  %conv15 = zext i8 %7 to i32, !dbg !363
  %8 = load i32, i32* %i, align 4, !dbg !364
  %idxprom16 = sext i32 %8 to i64, !dbg !365
  %arrayidx17 = getelementptr [29 x %struct.vrm_model], [29 x %struct.vrm_model]* @vrm_models, i64 0, i64 %idxprom16, !dbg !365
  %model_from = getelementptr inbounds %struct.vrm_model, %struct.vrm_model* %arrayidx17, i32 0, i32 2, !dbg !366
  %9 = load i8, i8* %model_from, align 2, !dbg !366
  %conv18 = zext i8 %9 to i32, !dbg !365
  %cmp19 = icmp sge i32 %conv15, %conv18, !dbg !367
  br i1 %cmp19, label %land.lhs.true21, label %if.end, !dbg !368

land.lhs.true21:                                  ; preds = %land.lhs.true14
  %10 = load i8, i8* %model.addr, align 1, !dbg !369
  %conv22 = zext i8 %10 to i32, !dbg !369
  %11 = load i32, i32* %i, align 4, !dbg !370
  %idxprom23 = sext i32 %11 to i64, !dbg !371
  %arrayidx24 = getelementptr [29 x %struct.vrm_model], [29 x %struct.vrm_model]* @vrm_models, i64 0, i64 %idxprom23, !dbg !371
  %model_to = getelementptr inbounds %struct.vrm_model, %struct.vrm_model* %arrayidx24, i32 0, i32 3, !dbg !372
  %12 = load i8, i8* %model_to, align 1, !dbg !372
  %conv25 = zext i8 %12 to i32, !dbg !371
  %cmp26 = icmp sle i32 %conv22, %conv25, !dbg !373
  br i1 %cmp26, label %land.lhs.true28, label %if.end, !dbg !374

land.lhs.true28:                                  ; preds = %land.lhs.true21
  %13 = load i8, i8* %stepping.addr, align 1, !dbg !375
  %conv29 = zext i8 %13 to i32, !dbg !375
  %14 = load i32, i32* %i, align 4, !dbg !376
  %idxprom30 = sext i32 %14 to i64, !dbg !377
  %arrayidx31 = getelementptr [29 x %struct.vrm_model], [29 x %struct.vrm_model]* @vrm_models, i64 0, i64 %idxprom30, !dbg !377
  %stepping_to = getelementptr inbounds %struct.vrm_model, %struct.vrm_model* %arrayidx31, i32 0, i32 4, !dbg !378
  %15 = load i8, i8* %stepping_to, align 2, !dbg !378
  %conv32 = zext i8 %15 to i32, !dbg !377
  %cmp33 = icmp sle i32 %conv29, %conv32, !dbg !379
  br i1 %cmp33, label %if.then, label %if.end, !dbg !380

if.then:                                          ; preds = %land.lhs.true28
  %16 = load i32, i32* %i, align 4, !dbg !381
  %idxprom35 = sext i32 %16 to i64, !dbg !382
  %arrayidx36 = getelementptr [29 x %struct.vrm_model], [29 x %struct.vrm_model]* @vrm_models, i64 0, i64 %idxprom35, !dbg !382
  %vrm_type = getelementptr inbounds %struct.vrm_model, %struct.vrm_model* %arrayidx36, i32 0, i32 5, !dbg !383
  %17 = load i8, i8* %vrm_type, align 1, !dbg !383
  store i8 %17, i8* %retval, align 1, !dbg !384
  br label %return, !dbg !384

if.end:                                           ; preds = %land.lhs.true28, %land.lhs.true21, %land.lhs.true14, %land.lhs.true, %for.body
  br label %for.inc, !dbg !385

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4, !dbg !386
  %inc = add i32 %18, 1, !dbg !386
  store i32 %inc, i32* %i, align 4, !dbg !386
  br label %for.cond, !dbg !387, !llvm.loop !388

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %retval, align 1, !dbg !390
  br label %return, !dbg !390

return:                                           ; preds = %for.end, %if.then
  %19 = load i8, i8* %retval, align 1, !dbg !391
  ret i8 %19, !dbg !391
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @get_via_model_d_vrm() #0 !dbg !49 {
entry:
  %retval = alloca i8, align 1
  %vid = alloca i32, align 4
  %brand = alloca i32, align 4
  %dummy = alloca i32, align 4
  %_l = alloca i64, align 8
  %_l3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %vid, metadata !392, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.declare(metadata i32* %brand, metadata !394, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.declare(metadata i32* %dummy, metadata !396, metadata !DIExpression()), !dbg !397
  br label %do.body, !dbg !398

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_l, metadata !399, metadata !DIExpression()), !dbg !401
  %call = call i64 @paravirt_read_msr(i32 408) #6, !dbg !401
  store i64 %call, i64* %_l, align 8, !dbg !401
  %0 = load i64, i64* %_l, align 8, !dbg !401
  %conv = trunc i64 %0 to i32, !dbg !401
  store i32 %conv, i32* %dummy, align 4, !dbg !401
  %1 = load i64, i64* %_l, align 8, !dbg !401
  %shr = lshr i64 %1, 32, !dbg !401
  %conv1 = trunc i64 %shr to i32, !dbg !401
  store i32 %conv1, i32* %vid, align 4, !dbg !401
  br label %do.end, !dbg !401

do.end:                                           ; preds = %do.body
  %2 = load i32, i32* %vid, align 4, !dbg !402
  %and = and i32 %2, 255, !dbg !402
  store i32 %and, i32* %vid, align 4, !dbg !402
  br label %do.body2, !dbg !403

do.body2:                                         ; preds = %do.end
  call void @llvm.dbg.declare(metadata i64* %_l3, metadata !404, metadata !DIExpression()), !dbg !406
  %call4 = call i64 @paravirt_read_msr(i32 4436) #6, !dbg !406
  store i64 %call4, i64* %_l3, align 8, !dbg !406
  %3 = load i64, i64* %_l3, align 8, !dbg !406
  %conv5 = trunc i64 %3 to i32, !dbg !406
  store i32 %conv5, i32* %brand, align 4, !dbg !406
  %4 = load i64, i64* %_l3, align 8, !dbg !406
  %shr6 = lshr i64 %4, 32, !dbg !406
  %conv7 = trunc i64 %shr6 to i32, !dbg !406
  store i32 %conv7, i32* %dummy, align 4, !dbg !406
  br label %do.end8, !dbg !406

do.end8:                                          ; preds = %do.body2
  %5 = load i32, i32* %brand, align 4, !dbg !407
  %shr9 = lshr i32 %5, 4, !dbg !408
  %6 = load i32, i32* %brand, align 4, !dbg !409
  %shr10 = lshr i32 %6, 2, !dbg !410
  %xor = xor i32 %shr9, %shr10, !dbg !411
  %and11 = and i32 %xor, 3, !dbg !412
  store i32 %and11, i32* %brand, align 4, !dbg !413
  %7 = load i32, i32* %vid, align 4, !dbg !414
  %cmp = icmp ugt i32 %7, 63, !dbg !416
  br i1 %cmp, label %if.then, label %if.else, !dbg !417

if.then:                                          ; preds = %do.end8
  %8 = load i32, i32* %brand, align 4, !dbg !418
  %idxprom = zext i32 %8 to i64, !dbg !418
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @get_via_model_d_vrm.brands, i64 0, i64 %idxprom, !dbg !418
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !418
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 7, i8* %9) #5, !dbg !418
  store i8 14, i8* %retval, align 1, !dbg !420
  br label %return, !dbg !420

if.else:                                          ; preds = %do.end8
  %10 = load i32, i32* %brand, align 4, !dbg !421
  %idxprom14 = zext i32 %10 to i64, !dbg !421
  %arrayidx15 = getelementptr [4 x i8*], [4 x i8*]* @get_via_model_d_vrm.brands, i64 0, i64 %idxprom14, !dbg !421
  %11 = load i8*, i8** %arrayidx15, align 8, !dbg !421
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 6, i8* %11) #5, !dbg !421
  %12 = load i32, i32* %brand, align 4, !dbg !423
  %cmp17 = icmp eq i32 %12, 2, !dbg !424
  %13 = zext i1 %cmp17 to i64, !dbg !423
  %cond = select i1 %cmp17, i32 131, i32 13, !dbg !423
  %conv19 = trunc i32 %cond to i8, !dbg !423
  store i8 %conv19, i8* %retval, align 1, !dbg !425
  br label %return, !dbg !425

return:                                           ; preds = %if.else, %if.then
  %14 = load i8, i8* %retval, align 1, !dbg !426
  ret i8 %14, !dbg !426
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @paravirt_read_msr(i32 %msr) #0 !dbg !427 {
entry:
  %msr.addr = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !431, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !433, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !436, metadata !DIExpression()), !dbg !435
  %0 = load i64, i64* %__edi, align 8, !dbg !435
  store i64 %0, i64* %__edi, align 8, !dbg !435
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !437, metadata !DIExpression()), !dbg !435
  %1 = load i64, i64* %__esi, align 8, !dbg !435
  store i64 %1, i64* %__esi, align 8, !dbg !435
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !438, metadata !DIExpression()), !dbg !435
  %2 = load i64, i64* %__edx, align 8, !dbg !435
  store i64 %2, i64* %__edx, align 8, !dbg !435
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !439, metadata !DIExpression()), !dbg !435
  %3 = load i64, i64* %__ecx, align 8, !dbg !435
  store i64 %3, i64* %__ecx, align 8, !dbg !435
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !440, metadata !DIExpression()), !dbg !435
  %4 = load i64, i64* %__eax, align 8, !dbg !435
  store i64 %4, i64* %__eax, align 8, !dbg !435
  %5 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 23), align 8, !dbg !435
  %6 = call i64 @llvm.read_register.i64(metadata !59), !dbg !441
  %7 = load i32, i32* %msr.addr, align 4, !dbg !441
  %conv = zext i32 %7 to i64, !dbg !441
  %8 = call { i64, i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${7:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${6:c}\0A  .byte 772b-771b\0A  .short ${8:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={ax},={rsp},i,i,i,{di},5,~{memory},~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 26, i64 (i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 23), i32 511, i64 %conv, i64 %6) #4, !dbg !441, !srcloc !444
  %asmresult = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 0, !dbg !441
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 1, !dbg !441
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 2, !dbg !441
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 3, !dbg !441
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 4, !dbg !441
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 5, !dbg !441
  store i64 %asmresult, i64* %__edi, align 8, !dbg !441
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !441
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !441
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !441
  store i64 %asmresult4, i64* %__eax, align 8, !dbg !441
  call void @llvm.write_register.i64(metadata !59, i64 %asmresult5), !dbg !441
  %9 = load i64, i64* %__eax, align 8, !dbg !441
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !445, metadata !DIExpression()), !dbg !447
  store i64 -1, i64* %__mask, align 8, !dbg !447
  %10 = load i64, i64* %__mask, align 8, !dbg !447
  store i64 %10, i64* %tmp, align 8, !dbg !447
  %11 = load i64, i64* %tmp, align 8, !dbg !447
  %and = and i64 %9, %11, !dbg !441
  store i64 %and, i64* %__ret, align 8, !dbg !441
  %12 = load i64, i64* %__ret, align 8, !dbg !435
  store i64 %12, i64* %tmp6, align 8, !dbg !448
  %13 = load i64, i64* %tmp6, align 8, !dbg !435
  ret i64 %13, !dbg !449
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { cold noredzone }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author104", scope: !2, file: !3, line: 301, type: !56, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/hwmon/hwmon-vid.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !7, !8, !12, !13}
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !6)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !15)
!15 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !{!0, !17, !24, !26, !31, !47}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description105", scope: !2, file: !3, line: 303, type: !19, isLocal: true, isDefinition: true, align: 8)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 312, elements: !22)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{!23}
!23 = !DISubrange(count: 39)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file106", scope: !2, file: !3, line: 304, type: !19, isLocal: true, isDefinition: true, align: 8)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license107", scope: !2, file: !3, line: 304, type: !28, isLocal: true, isDefinition: true, align: 8)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 176, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 22)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "vrm_models", scope: !2, file: !3, line: 179, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 1392, elements: !45)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vrm_model", file: !3, line: 160, size: 48, elements: !35)
!35 = !{!36, !40, !41, !42, !43, !44}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !34, file: !3, line: 161, baseType: !37, size: 8)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !34, file: !3, line: 162, baseType: !37, size: 8, offset: 8)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "model_from", scope: !34, file: !3, line: 163, baseType: !37, size: 8, offset: 16)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "model_to", scope: !34, file: !3, line: 164, baseType: !37, size: 8, offset: 24)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "stepping_to", scope: !34, file: !3, line: 165, baseType: !37, size: 8, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "vrm_type", scope: !34, file: !3, line: 166, baseType: !37, size: 8, offset: 40)
!45 = !{!46}
!46 = !DISubrange(count: 29)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "brands", scope: !49, file: !3, line: 237, type: !52, isLocal: true, isDefinition: true)
!49 = distinct !DISubprogram(name: "get_via_model_d_vrm", scope: !3, file: !3, line: 234, type: !50, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!50 = !DISubroutineType(types: !51)
!51 = !{!37}
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 256, elements: !54)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!54 = !{!55}
!55 = !DISubrange(count: 4)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 424, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 53)
!59 = !{!"rsp"}
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"Code Model", i32 2}
!64 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!65 = distinct !DISubprogram(name: "vid_from_reg", scope: !3, file: !3, line: 69, type: !66, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!66 = !DISubroutineType(types: !67)
!67 = !{!7, !7, !37}
!68 = !DILocalVariable(name: "val", arg: 1, scope: !65, file: !3, line: 69, type: !7)
!69 = !DILocation(line: 69, column: 22, scope: !65)
!70 = !DILocalVariable(name: "vrm", arg: 2, scope: !65, file: !3, line: 69, type: !37)
!71 = !DILocation(line: 69, column: 30, scope: !65)
!72 = !DILocalVariable(name: "vid", scope: !65, file: !3, line: 71, type: !7)
!73 = !DILocation(line: 71, column: 6, scope: !65)
!74 = !DILocation(line: 73, column: 10, scope: !65)
!75 = !DILocation(line: 73, column: 2, scope: !65)
!76 = !DILocation(line: 77, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !65, file: !3, line: 73, column: 15)
!78 = !DILocation(line: 78, column: 8, scope: !79)
!79 = distinct !DILexicalBlock(scope: !77, file: !3, line: 78, column: 7)
!80 = !DILocation(line: 78, column: 12, scope: !79)
!81 = !DILocation(line: 78, column: 20, scope: !79)
!82 = !DILocation(line: 78, column: 7, scope: !77)
!83 = !DILocation(line: 79, column: 4, scope: !79)
!84 = !DILocation(line: 80, column: 8, scope: !85)
!85 = distinct !DILexicalBlock(scope: !77, file: !3, line: 80, column: 7)
!86 = !DILocation(line: 80, column: 12, scope: !85)
!87 = !DILocation(line: 80, column: 20, scope: !85)
!88 = !DILocation(line: 80, column: 28, scope: !85)
!89 = !DILocation(line: 80, column: 31, scope: !85)
!90 = !DILocation(line: 80, column: 35, scope: !85)
!91 = !DILocation(line: 80, column: 7, scope: !77)
!92 = !DILocation(line: 81, column: 21, scope: !85)
!93 = !DILocation(line: 81, column: 25, scope: !85)
!94 = !DILocation(line: 81, column: 33, scope: !85)
!95 = !DILocation(line: 81, column: 18, scope: !85)
!96 = !DILocation(line: 81, column: 8, scope: !85)
!97 = !DILocation(line: 81, column: 4, scope: !85)
!98 = !DILocation(line: 83, column: 21, scope: !85)
!99 = !DILocation(line: 83, column: 25, scope: !85)
!100 = !DILocation(line: 83, column: 33, scope: !85)
!101 = !DILocation(line: 83, column: 18, scope: !85)
!102 = !DILocation(line: 83, column: 8, scope: !85)
!103 = !DILocation(line: 84, column: 7, scope: !104)
!104 = distinct !DILexicalBlock(scope: !77, file: !3, line: 84, column: 7)
!105 = !DILocation(line: 84, column: 11, scope: !104)
!106 = !DILocation(line: 84, column: 7, scope: !77)
!107 = !DILocation(line: 85, column: 8, scope: !104)
!108 = !DILocation(line: 85, column: 4, scope: !104)
!109 = !DILocation(line: 86, column: 11, scope: !77)
!110 = !DILocation(line: 86, column: 15, scope: !77)
!111 = !DILocation(line: 86, column: 22, scope: !77)
!112 = !DILocation(line: 86, column: 3, scope: !77)
!113 = !DILocation(line: 90, column: 7, scope: !77)
!114 = !DILocation(line: 91, column: 7, scope: !115)
!115 = distinct !DILexicalBlock(scope: !77, file: !3, line: 91, column: 7)
!116 = !DILocation(line: 91, column: 11, scope: !115)
!117 = !DILocation(line: 91, column: 18, scope: !115)
!118 = !DILocation(line: 91, column: 21, scope: !115)
!119 = !DILocation(line: 91, column: 25, scope: !115)
!120 = !DILocation(line: 91, column: 7, scope: !77)
!121 = !DILocation(line: 92, column: 4, scope: !115)
!122 = !DILocation(line: 93, column: 22, scope: !77)
!123 = !DILocation(line: 93, column: 26, scope: !77)
!124 = !DILocation(line: 93, column: 31, scope: !77)
!125 = !DILocation(line: 93, column: 19, scope: !77)
!126 = !DILocation(line: 93, column: 38, scope: !77)
!127 = !DILocation(line: 93, column: 45, scope: !77)
!128 = !DILocation(line: 93, column: 3, scope: !77)
!129 = !DILocation(line: 96, column: 7, scope: !77)
!130 = !DILocation(line: 97, column: 7, scope: !131)
!131 = distinct !DILexicalBlock(scope: !77, file: !3, line: 97, column: 7)
!132 = !DILocation(line: 97, column: 11, scope: !131)
!133 = !DILocation(line: 97, column: 7, scope: !77)
!134 = !DILocation(line: 98, column: 4, scope: !131)
!135 = !DILocation(line: 97, column: 14, scope: !131)
!136 = !DILocation(line: 101, column: 7, scope: !77)
!137 = !DILocation(line: 102, column: 11, scope: !77)
!138 = !DILocation(line: 102, column: 15, scope: !77)
!139 = !DILocation(line: 102, column: 10, scope: !77)
!140 = !DILocation(line: 102, column: 35, scope: !77)
!141 = !DILocation(line: 102, column: 33, scope: !77)
!142 = !DILocation(line: 102, column: 28, scope: !77)
!143 = !DILocation(line: 103, column: 19, scope: !77)
!144 = !DILocation(line: 103, column: 23, scope: !77)
!145 = !DILocation(line: 103, column: 16, scope: !77)
!146 = !DILocation(line: 103, column: 30, scope: !77)
!147 = !DILocation(line: 103, column: 10, scope: !77)
!148 = !DILocation(line: 102, column: 3, scope: !77)
!149 = !DILocation(line: 106, column: 7, scope: !77)
!150 = !DILocation(line: 107, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !77, file: !3, line: 107, column: 7)
!152 = !DILocation(line: 107, column: 11, scope: !151)
!153 = !DILocation(line: 107, column: 7, scope: !77)
!154 = !DILocation(line: 108, column: 4, scope: !151)
!155 = !DILocalVariable(name: "__x", scope: !156, file: !3, line: 109, type: !7)
!156 = distinct !DILexicalBlock(scope: !77, file: !3, line: 109, column: 10)
!157 = !DILocation(line: 109, column: 10, scope: !156)
!158 = !DILocalVariable(name: "__d", scope: !156, file: !3, line: 109, type: !7)
!159 = !DILocation(line: 109, column: 3, scope: !77)
!160 = !DILocation(line: 113, column: 7, scope: !77)
!161 = !DILocation(line: 114, column: 10, scope: !77)
!162 = !DILocation(line: 114, column: 14, scope: !77)
!163 = !DILocation(line: 115, column: 17, scope: !77)
!164 = !DILocation(line: 115, column: 21, scope: !77)
!165 = !DILocation(line: 115, column: 15, scope: !77)
!166 = !DILocation(line: 114, column: 3, scope: !77)
!167 = !DILocation(line: 118, column: 7, scope: !77)
!168 = !DILocation(line: 119, column: 11, scope: !77)
!169 = !DILocation(line: 119, column: 15, scope: !77)
!170 = !DILocation(line: 120, column: 12, scope: !77)
!171 = !DILocation(line: 120, column: 16, scope: !77)
!172 = !DILocation(line: 120, column: 24, scope: !77)
!173 = !DILocation(line: 120, column: 11, scope: !77)
!174 = !DILocation(line: 119, column: 33, scope: !77)
!175 = !DILocation(line: 121, column: 12, scope: !77)
!176 = !DILocation(line: 121, column: 16, scope: !77)
!177 = !DILocation(line: 121, column: 24, scope: !77)
!178 = !DILocation(line: 120, column: 46, scope: !77)
!179 = !DILocation(line: 119, column: 3, scope: !77)
!180 = !DILocation(line: 124, column: 7, scope: !77)
!181 = !DILocation(line: 124, column: 3, scope: !77)
!182 = !DILocation(line: 127, column: 7, scope: !77)
!183 = !DILocation(line: 128, column: 10, scope: !77)
!184 = !DILocation(line: 128, column: 14, scope: !77)
!185 = !DILocation(line: 129, column: 10, scope: !77)
!186 = !DILocation(line: 129, column: 14, scope: !77)
!187 = !DILocation(line: 129, column: 32, scope: !77)
!188 = !DILocation(line: 129, column: 37, scope: !77)
!189 = !DILocation(line: 129, column: 29, scope: !77)
!190 = !DILocation(line: 130, column: 18, scope: !77)
!191 = !DILocation(line: 130, column: 23, scope: !77)
!192 = !DILocation(line: 130, column: 15, scope: !77)
!193 = !DILocation(line: 128, column: 3, scope: !77)
!194 = !DILocation(line: 132, column: 7, scope: !77)
!195 = !DILocation(line: 133, column: 10, scope: !77)
!196 = !DILocation(line: 133, column: 14, scope: !77)
!197 = !DILocation(line: 133, column: 30, scope: !77)
!198 = !DILocation(line: 133, column: 34, scope: !77)
!199 = !DILocation(line: 133, column: 41, scope: !77)
!200 = !DILocation(line: 133, column: 27, scope: !77)
!201 = !DILocation(line: 134, column: 16, scope: !77)
!202 = !DILocation(line: 134, column: 20, scope: !77)
!203 = !DILocation(line: 134, column: 14, scope: !77)
!204 = !DILocation(line: 133, column: 3, scope: !77)
!205 = !DILocation(line: 137, column: 7, scope: !77)
!206 = !DILocation(line: 139, column: 7, scope: !207)
!207 = distinct !DILexicalBlock(scope: !77, file: !3, line: 139, column: 7)
!208 = !DILocation(line: 139, column: 11, scope: !207)
!209 = !DILocation(line: 139, column: 18, scope: !207)
!210 = !DILocation(line: 139, column: 21, scope: !207)
!211 = !DILocation(line: 139, column: 25, scope: !207)
!212 = !DILocation(line: 139, column: 7, scope: !77)
!213 = !DILocation(line: 140, column: 7, scope: !207)
!214 = !DILocation(line: 140, column: 4, scope: !207)
!215 = !DILocation(line: 141, column: 17, scope: !77)
!216 = !DILocation(line: 141, column: 21, scope: !77)
!217 = !DILocation(line: 141, column: 15, scope: !77)
!218 = !DILocation(line: 141, column: 3, scope: !77)
!219 = !DILocation(line: 144, column: 7, scope: !77)
!220 = !DILocation(line: 145, column: 10, scope: !77)
!221 = !DILocation(line: 145, column: 14, scope: !77)
!222 = !DILocation(line: 145, column: 39, scope: !77)
!223 = !DILocation(line: 145, column: 43, scope: !77)
!224 = !DILocation(line: 145, column: 36, scope: !77)
!225 = !DILocation(line: 145, column: 52, scope: !77)
!226 = !DILocation(line: 145, column: 59, scope: !77)
!227 = !DILocation(line: 145, column: 3, scope: !77)
!228 = !DILocation(line: 147, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !77, file: !3, line: 147, column: 7)
!230 = !DILocation(line: 147, column: 7, scope: !77)
!231 = !DILocation(line: 148, column: 4, scope: !229)
!232 = !DILocation(line: 150, column: 3, scope: !77)
!233 = !DILocation(line: 152, column: 1, scope: !65)
!234 = distinct !DISubprogram(name: "vid_which_vrm", scope: !3, file: !3, line: 275, type: !50, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!235 = !DILocalVariable(name: "c", scope: !234, file: !3, line: 277, type: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !238, line: 81, size: 2048, elements: !239)
!238 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!239 = !{!240, !241, !242, !243, !244, !245, !249, !250, !251, !252, !253, !254, !255, !263, !267, !271, !272, !273, !274, !275, !276, !277, !278, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !237, file: !238, line: 82, baseType: !38, size: 8)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !237, file: !238, line: 83, baseType: !38, size: 8, offset: 8)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !237, file: !238, line: 84, baseType: !38, size: 8, offset: 16)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !237, file: !238, line: 85, baseType: !38, size: 8, offset: 24)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !237, file: !238, line: 88, baseType: !7, size: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !237, file: !238, line: 91, baseType: !246, size: 96, offset: 64)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 96, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 3)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !237, file: !238, line: 93, baseType: !38, size: 8, offset: 160)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !237, file: !238, line: 94, baseType: !38, size: 8, offset: 168)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !237, file: !238, line: 96, baseType: !38, size: 8, offset: 176)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !237, file: !238, line: 97, baseType: !38, size: 8, offset: 184)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !237, file: !238, line: 99, baseType: !10, size: 32, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !237, file: !238, line: 101, baseType: !7, size: 32, offset: 224)
!255 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !238, line: 107, baseType: !256, size: 640, offset: 256)
!256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !237, file: !238, line: 107, size: 640, elements: !257)
!257 = !{!258, !262}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !256, file: !238, line: 108, baseType: !259, size: 640)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 640, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 20)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !256, file: !238, line: 109, baseType: !12, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !237, file: !238, line: 111, baseType: !264, size: 128, offset: 896)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 16)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !237, file: !238, line: 112, baseType: !268, size: 512, offset: 1024)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 512, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !237, file: !238, line: 114, baseType: !6, size: 32, offset: 1536)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !237, file: !238, line: 115, baseType: !7, size: 32, offset: 1568)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !237, file: !238, line: 117, baseType: !7, size: 32, offset: 1600)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !237, file: !238, line: 118, baseType: !7, size: 32, offset: 1632)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !237, file: !238, line: 119, baseType: !7, size: 32, offset: 1664)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !237, file: !238, line: 120, baseType: !7, size: 32, offset: 1696)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !237, file: !238, line: 121, baseType: !12, size: 64, offset: 1728)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !237, file: !238, line: 123, baseType: !279, size: 16, offset: 1792)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !281)
!281 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !237, file: !238, line: 124, baseType: !279, size: 16, offset: 1808)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !237, file: !238, line: 125, baseType: !279, size: 16, offset: 1824)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !237, file: !238, line: 126, baseType: !279, size: 16, offset: 1840)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !237, file: !238, line: 128, baseType: !279, size: 16, offset: 1856)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !237, file: !238, line: 130, baseType: !279, size: 16, offset: 1872)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !237, file: !238, line: 132, baseType: !279, size: 16, offset: 1888)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !237, file: !238, line: 134, baseType: !279, size: 16, offset: 1904)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !237, file: !238, line: 135, baseType: !279, size: 16, offset: 1920)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !237, file: !238, line: 136, baseType: !279, size: 16, offset: 1936)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !237, file: !238, line: 138, baseType: !279, size: 16, offset: 1952)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !237, file: !238, line: 139, baseType: !8, size: 32, offset: 1984)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !237, file: !238, line: 141, baseType: !37, size: 8, offset: 2016)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !237, file: !238, line: 142, baseType: !6, size: 1, offset: 2024, flags: DIFlagBitField, extraData: i64 2024)
!295 = !DILocation(line: 277, column: 22, scope: !234)
!296 = !DILocalVariable(name: "vrm_ret", scope: !234, file: !3, line: 278, type: !37)
!297 = !DILocation(line: 278, column: 5, scope: !234)
!298 = !DILocation(line: 280, column: 6, scope: !299)
!299 = distinct !DILexicalBlock(scope: !234, file: !3, line: 280, column: 6)
!300 = !DILocation(line: 280, column: 9, scope: !299)
!301 = !DILocation(line: 280, column: 13, scope: !299)
!302 = !DILocation(line: 280, column: 6, scope: !234)
!303 = !DILocation(line: 281, column: 3, scope: !299)
!304 = !DILocation(line: 283, column: 21, scope: !234)
!305 = !DILocation(line: 283, column: 24, scope: !234)
!306 = !DILocation(line: 283, column: 29, scope: !234)
!307 = !DILocation(line: 283, column: 32, scope: !234)
!308 = !DILocation(line: 283, column: 43, scope: !234)
!309 = !DILocation(line: 283, column: 46, scope: !234)
!310 = !DILocation(line: 283, column: 60, scope: !234)
!311 = !DILocation(line: 283, column: 63, scope: !234)
!312 = !DILocation(line: 283, column: 12, scope: !234)
!313 = !DILocation(line: 283, column: 10, scope: !234)
!314 = !DILocation(line: 284, column: 6, scope: !315)
!315 = distinct !DILexicalBlock(scope: !234, file: !3, line: 284, column: 6)
!316 = !DILocation(line: 284, column: 14, scope: !315)
!317 = !DILocation(line: 284, column: 6, scope: !234)
!318 = !DILocation(line: 285, column: 13, scope: !315)
!319 = !DILocation(line: 285, column: 11, scope: !315)
!320 = !DILocation(line: 285, column: 3, scope: !315)
!321 = !DILocation(line: 286, column: 6, scope: !322)
!322 = distinct !DILexicalBlock(scope: !234, file: !3, line: 286, column: 6)
!323 = !DILocation(line: 286, column: 14, scope: !322)
!324 = !DILocation(line: 286, column: 6, scope: !234)
!325 = !DILocation(line: 287, column: 3, scope: !322)
!326 = !DILocation(line: 288, column: 9, scope: !234)
!327 = !DILocation(line: 288, column: 2, scope: !234)
!328 = !DILocation(line: 289, column: 1, scope: !234)
!329 = distinct !DISubprogram(name: "find_vrm", scope: !3, file: !3, line: 259, type: !330, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!330 = !DISubroutineType(types: !331)
!331 = !{!37, !37, !37, !37, !37}
!332 = !DILocalVariable(name: "family", arg: 1, scope: !329, file: !3, line: 259, type: !37)
!333 = !DILocation(line: 259, column: 23, scope: !329)
!334 = !DILocalVariable(name: "model", arg: 2, scope: !329, file: !3, line: 259, type: !37)
!335 = !DILocation(line: 259, column: 34, scope: !329)
!336 = !DILocalVariable(name: "stepping", arg: 3, scope: !329, file: !3, line: 259, type: !37)
!337 = !DILocation(line: 259, column: 44, scope: !329)
!338 = !DILocalVariable(name: "vendor", arg: 4, scope: !329, file: !3, line: 259, type: !37)
!339 = !DILocation(line: 259, column: 57, scope: !329)
!340 = !DILocalVariable(name: "i", scope: !329, file: !3, line: 261, type: !7)
!341 = !DILocation(line: 261, column: 6, scope: !329)
!342 = !DILocation(line: 263, column: 9, scope: !343)
!343 = distinct !DILexicalBlock(scope: !329, file: !3, line: 263, column: 2)
!344 = !DILocation(line: 263, column: 7, scope: !343)
!345 = !DILocation(line: 263, column: 14, scope: !346)
!346 = distinct !DILexicalBlock(scope: !343, file: !3, line: 263, column: 2)
!347 = !DILocation(line: 263, column: 16, scope: !346)
!348 = !DILocation(line: 263, column: 2, scope: !343)
!349 = !DILocation(line: 264, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 264, column: 7)
!351 = distinct !DILexicalBlock(scope: !346, file: !3, line: 263, column: 47)
!352 = !DILocation(line: 264, column: 28, scope: !350)
!353 = !DILocation(line: 264, column: 17, scope: !350)
!354 = !DILocation(line: 264, column: 31, scope: !350)
!355 = !DILocation(line: 264, column: 14, scope: !350)
!356 = !DILocation(line: 264, column: 38, scope: !350)
!357 = !DILocation(line: 265, column: 7, scope: !350)
!358 = !DILocation(line: 265, column: 28, scope: !350)
!359 = !DILocation(line: 265, column: 17, scope: !350)
!360 = !DILocation(line: 265, column: 31, scope: !350)
!361 = !DILocation(line: 265, column: 14, scope: !350)
!362 = !DILocation(line: 265, column: 38, scope: !350)
!363 = !DILocation(line: 266, column: 7, scope: !350)
!364 = !DILocation(line: 266, column: 27, scope: !350)
!365 = !DILocation(line: 266, column: 16, scope: !350)
!366 = !DILocation(line: 266, column: 30, scope: !350)
!367 = !DILocation(line: 266, column: 13, scope: !350)
!368 = !DILocation(line: 266, column: 41, scope: !350)
!369 = !DILocation(line: 267, column: 7, scope: !350)
!370 = !DILocation(line: 267, column: 27, scope: !350)
!371 = !DILocation(line: 267, column: 16, scope: !350)
!372 = !DILocation(line: 267, column: 30, scope: !350)
!373 = !DILocation(line: 267, column: 13, scope: !350)
!374 = !DILocation(line: 267, column: 39, scope: !350)
!375 = !DILocation(line: 268, column: 7, scope: !350)
!376 = !DILocation(line: 268, column: 30, scope: !350)
!377 = !DILocation(line: 268, column: 19, scope: !350)
!378 = !DILocation(line: 268, column: 33, scope: !350)
!379 = !DILocation(line: 268, column: 16, scope: !350)
!380 = !DILocation(line: 264, column: 7, scope: !351)
!381 = !DILocation(line: 269, column: 22, scope: !350)
!382 = !DILocation(line: 269, column: 11, scope: !350)
!383 = !DILocation(line: 269, column: 25, scope: !350)
!384 = !DILocation(line: 269, column: 4, scope: !350)
!385 = !DILocation(line: 270, column: 2, scope: !351)
!386 = !DILocation(line: 263, column: 43, scope: !346)
!387 = !DILocation(line: 263, column: 2, scope: !346)
!388 = distinct !{!388, !348, !389}
!389 = !DILocation(line: 270, column: 2, scope: !343)
!390 = !DILocation(line: 272, column: 2, scope: !329)
!391 = !DILocation(line: 273, column: 1, scope: !329)
!392 = !DILocalVariable(name: "vid", scope: !49, file: !3, line: 236, type: !6)
!393 = !DILocation(line: 236, column: 15, scope: !49)
!394 = !DILocalVariable(name: "brand", scope: !49, file: !3, line: 236, type: !6)
!395 = !DILocation(line: 236, column: 20, scope: !49)
!396 = !DILocalVariable(name: "dummy", scope: !49, file: !3, line: 236, type: !6)
!397 = !DILocation(line: 236, column: 42, scope: !49)
!398 = !DILocation(line: 241, column: 2, scope: !49)
!399 = !DILocalVariable(name: "_l", scope: !400, file: !3, line: 241, type: !13)
!400 = distinct !DILexicalBlock(scope: !49, file: !3, line: 241, column: 2)
!401 = !DILocation(line: 241, column: 2, scope: !400)
!402 = !DILocation(line: 242, column: 6, scope: !49)
!403 = !DILocation(line: 244, column: 2, scope: !49)
!404 = !DILocalVariable(name: "_l", scope: !405, file: !3, line: 244, type: !13)
!405 = distinct !DILexicalBlock(scope: !49, file: !3, line: 244, column: 2)
!406 = !DILocation(line: 244, column: 2, scope: !405)
!407 = !DILocation(line: 245, column: 12, scope: !49)
!408 = !DILocation(line: 245, column: 18, scope: !49)
!409 = !DILocation(line: 245, column: 27, scope: !49)
!410 = !DILocation(line: 245, column: 33, scope: !49)
!411 = !DILocation(line: 245, column: 24, scope: !49)
!412 = !DILocation(line: 245, column: 40, scope: !49)
!413 = !DILocation(line: 245, column: 8, scope: !49)
!414 = !DILocation(line: 247, column: 6, scope: !415)
!415 = distinct !DILexicalBlock(scope: !49, file: !3, line: 247, column: 6)
!416 = !DILocation(line: 247, column: 10, scope: !415)
!417 = !DILocation(line: 247, column: 6, scope: !49)
!418 = !DILocation(line: 248, column: 3, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !3, line: 247, column: 18)
!420 = !DILocation(line: 250, column: 3, scope: !419)
!421 = !DILocation(line: 252, column: 3, scope: !422)
!422 = distinct !DILexicalBlock(scope: !415, file: !3, line: 251, column: 9)
!423 = !DILocation(line: 255, column: 10, scope: !422)
!424 = !DILocation(line: 255, column: 16, scope: !422)
!425 = !DILocation(line: 255, column: 3, scope: !422)
!426 = !DILocation(line: 257, column: 1, scope: !49)
!427 = distinct !DISubprogram(name: "paravirt_read_msr", scope: !428, file: !428, line: 163, type: !429, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!428 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!429 = !DISubroutineType(types: !430)
!430 = !{!13, !6}
!431 = !DILocalVariable(name: "msr", arg: 1, scope: !427, file: !428, line: 163, type: !6)
!432 = !DILocation(line: 163, column: 46, scope: !427)
!433 = !DILocalVariable(name: "__ret", scope: !434, file: !428, line: 165, type: !13)
!434 = distinct !DILexicalBlock(scope: !427, file: !428, line: 165, column: 9)
!435 = !DILocation(line: 165, column: 9, scope: !434)
!436 = !DILocalVariable(name: "__edi", scope: !434, file: !428, line: 165, type: !12)
!437 = !DILocalVariable(name: "__esi", scope: !434, file: !428, line: 165, type: !12)
!438 = !DILocalVariable(name: "__edx", scope: !434, file: !428, line: 165, type: !12)
!439 = !DILocalVariable(name: "__ecx", scope: !434, file: !428, line: 165, type: !12)
!440 = !DILocalVariable(name: "__eax", scope: !434, file: !428, line: 165, type: !12)
!441 = !DILocation(line: 165, column: 9, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !428, line: 165, column: 9)
!443 = distinct !DILexicalBlock(scope: !434, file: !428, line: 165, column: 9)
!444 = !{i32 -2145982718, i32 -2145980303, i32 -2145980069, i32 -2145980018, i32 -2145979990, i32 -2145979965, i32 -2145980281, i32 -2145980268, i32 -2145979830, i32 -2145979711, i32 -2145980176, i32 -2145980149, i32 -2145980121, i32 -2145980091}
!445 = !DILocalVariable(name: "__mask", scope: !446, file: !428, line: 165, type: !12)
!446 = distinct !DILexicalBlock(scope: !442, file: !428, line: 165, column: 9)
!447 = !DILocation(line: 165, column: 9, scope: !446)
!448 = !DILocation(line: 165, column: 9, scope: !443)
!449 = !DILocation(line: 165, column: 2, scope: !427)
