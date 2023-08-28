; ModuleID = '../bcout/drivers/clocksource/i8253.llvm.bc'
source_filename = "drivers/clocksource/i8253.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.clock_event_device = type { {}*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, {}*, {}*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] }
%struct.cpumask = type { [1 x i64] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.1 }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, i64 }
%union.anon.1 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type opaque
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.mm_struct = type { %struct.anon.2, [0 x i64] }
%struct.anon.2 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.3, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.pgprot = type { i64 }
%struct.anon.3 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
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

@i8253_lock = dso_local global %struct.raw_spinlock undef, align 1, !dbg !0
@i8253_clear_counter_on_shutdown = dso_local global i8 1, section ".data..ro_after_init", align 1, !dbg !25
@.str = private unnamed_addr constant [4 x i8] c"pit\00", align 1
@i8253_clockevent = dso_local global { void (%struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] } { void (%struct.clock_event_device*)* null, i32 (i64, %struct.clock_event_device*)* @pit_next_event, i32 (i64, %struct.clock_event_device*)* null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 1, i64 0, i32 (%struct.clock_event_device*)* @pit_set_periodic, i32 (%struct.clock_event_device*)* null, i32 (%struct.clock_event_device*)* null, i32 (%struct.clock_event_device*)* @pit_shutdown, i32 (%struct.clock_event_device*)* null, void (%struct.cpumask*)* null, void (%struct.clock_event_device*)* null, void (%struct.clock_event_device*)* null, i64 0, i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, %struct.cpumask* null, %struct.list_head zeroinitializer, %struct.module* null, [48 x i8] undef }, align 64, !dbg !30
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@cpu_bit_bitmap = external dso_local constant [65 x [1 x i64]], align 16

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pit_next_event(i64 %delta, %struct.clock_event_device* %evt) #0 !dbg !118 {
entry:
  %delta.addr = alloca i64, align 8
  %evt.addr = alloca %struct.clock_event_device*, align 8
  store i64 %delta, i64* %delta.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delta.addr, metadata !119, metadata !DIExpression()), !dbg !120
  store %struct.clock_event_device* %evt, %struct.clock_event_device** %evt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %evt.addr, metadata !121, metadata !DIExpression()), !dbg !122
  br label %do.body, !dbg !123

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !124, !srcloc !126
  br label %do.body1, !dbg !124

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !127

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !124

do.end2:                                          ; preds = %do.end
  %0 = load i64, i64* %delta.addr, align 8, !dbg !129
  %and = and i64 %0, 255, !dbg !130
  %conv = trunc i64 %and to i8, !dbg !129
  call void @outb_p(i8 zeroext %conv, i32 64) #5, !dbg !131
  %1 = load i64, i64* %delta.addr, align 8, !dbg !132
  %shr = lshr i64 %1, 8, !dbg !133
  %conv3 = trunc i64 %shr to i8, !dbg !132
  call void @outb_p(i8 zeroext %conv3, i32 64) #5, !dbg !134
  br label %do.body4, !dbg !135

do.body4:                                         ; preds = %do.end2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !136, !srcloc !138
  br label %do.body5, !dbg !136

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !139

do.end6:                                          ; preds = %do.body5
  br label %do.end7, !dbg !136

do.end7:                                          ; preds = %do.end6
  ret i32 0, !dbg !141
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pit_set_periodic(%struct.clock_event_device* %evt) #0 !dbg !142 {
entry:
  %evt.addr = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %evt, %struct.clock_event_device** %evt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %evt.addr, metadata !143, metadata !DIExpression()), !dbg !144
  br label %do.body, !dbg !145

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !146, !srcloc !148
  br label %do.body1, !dbg !146

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !149

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !146

do.end2:                                          ; preds = %do.end
  call void @outb_p(i8 zeroext 52, i32 67) #5, !dbg !151
  call void @outb_p(i8 zeroext -91, i32 64) #5, !dbg !152
  call void @outb_p(i8 zeroext 18, i32 64) #5, !dbg !153
  br label %do.body3, !dbg !154

do.body3:                                         ; preds = %do.end2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !155, !srcloc !157
  br label %do.body4, !dbg !155

do.body4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !158

do.end5:                                          ; preds = %do.body4
  br label %do.end6, !dbg !155

do.end6:                                          ; preds = %do.end5
  ret i32 0, !dbg !160
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pit_shutdown(%struct.clock_event_device* %evt) #0 !dbg !161 {
entry:
  %retval = alloca i32, align 4
  %evt.addr = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %evt, %struct.clock_event_device** %evt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %evt.addr, metadata !162, metadata !DIExpression()), !dbg !163
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** %evt.addr, align 8, !dbg !164
  %call = call zeroext i1 @clockevent_state_oneshot(%struct.clock_event_device* %0) #5, !dbg !166
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !167

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.clock_event_device*, %struct.clock_event_device** %evt.addr, align 8, !dbg !168
  %call1 = call zeroext i1 @clockevent_state_periodic(%struct.clock_event_device* %1) #5, !dbg !169
  br i1 %call1, label %if.end, label %if.then, !dbg !170

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !171
  br label %return, !dbg !171

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %do.body, !dbg !172

do.body:                                          ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !173, !srcloc !175
  br label %do.body2, !dbg !173

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !176

do.end:                                           ; preds = %do.body2
  br label %do.end3, !dbg !173

do.end3:                                          ; preds = %do.end
  call void @outb_p(i8 zeroext 48, i32 67) #5, !dbg !178
  %2 = load i8, i8* @i8253_clear_counter_on_shutdown, align 1, !dbg !179
  %tobool = trunc i8 %2 to i1, !dbg !179
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !181

if.then4:                                         ; preds = %do.end3
  call void @outb_p(i8 zeroext 0, i32 64) #5, !dbg !182
  call void @outb_p(i8 zeroext 0, i32 64) #5, !dbg !184
  br label %if.end5, !dbg !185

if.end5:                                          ; preds = %if.then4, %do.end3
  br label %do.body6, !dbg !186

do.body6:                                         ; preds = %if.end5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !187, !srcloc !189
  br label %do.body7, !dbg !187

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !190

do.end8:                                          ; preds = %do.body7
  br label %do.end9, !dbg !187

do.end9:                                          ; preds = %do.end8
  store i32 0, i32* %retval, align 4, !dbg !192
  br label %return, !dbg !192

return:                                           ; preds = %do.end9, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !193
  ret i32 %3, !dbg !193
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @clockevent_i8253_init(i1 zeroext %oneshot) #1 section ".init.text" !dbg !194 {
entry:
  %oneshot.addr = alloca i8, align 1
  %frombool = zext i1 %oneshot to i8
  store i8 %frombool, i8* %oneshot.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %oneshot.addr, metadata !197, metadata !DIExpression()), !dbg !198
  %0 = load i8, i8* %oneshot.addr, align 1, !dbg !199
  %tobool = trunc i8 %0 to i1, !dbg !199
  br i1 %tobool, label %if.then, label %if.end, !dbg !201

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.clock_event_device, %struct.clock_event_device* bitcast ({ void (%struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] }* @i8253_clockevent to %struct.clock_event_device*), i32 0, i32 9), align 4, !dbg !202
  %or = or i32 %1, 2, !dbg !202
  store i32 %or, i32* getelementptr inbounds (%struct.clock_event_device, %struct.clock_event_device* bitcast ({ void (%struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] }* @i8253_clockevent to %struct.clock_event_device*), i32 0, i32 9), align 4, !dbg !202
  store i32 (%struct.clock_event_device*)* @pit_set_oneshot, i32 (%struct.clock_event_device*)** getelementptr inbounds (%struct.clock_event_device, %struct.clock_event_device* bitcast ({ void (%struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] }* @i8253_clockevent to %struct.clock_event_device*), i32 0, i32 12), align 16, !dbg !204
  br label %if.end, !dbg !205

if.end:                                           ; preds = %if.then, %entry
  %call = call %struct.cpumask* @get_cpu_mask(i32 0) #5, !dbg !206
  store %struct.cpumask* %call, %struct.cpumask** getelementptr inbounds (%struct.clock_event_device, %struct.clock_event_device* bitcast ({ void (%struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] }* @i8253_clockevent to %struct.clock_event_device*), i32 0, i32 25), align 16, !dbg !207
  call void @clockevents_config_and_register(%struct.clock_event_device* bitcast ({ void (%struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] }* @i8253_clockevent to %struct.clock_event_device*), i32 1193182, i64 15, i64 32767) #5, !dbg !208
  ret void, !dbg !209
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pit_set_oneshot(%struct.clock_event_device* %evt) #0 !dbg !210 {
entry:
  %evt.addr = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %evt, %struct.clock_event_device** %evt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %evt.addr, metadata !211, metadata !DIExpression()), !dbg !212
  br label %do.body, !dbg !213

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !214, !srcloc !216
  br label %do.body1, !dbg !214

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !217

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !214

do.end2:                                          ; preds = %do.end
  call void @outb_p(i8 zeroext 56, i32 67) #5, !dbg !219
  br label %do.body3, !dbg !220

do.body3:                                         ; preds = %do.end2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !221, !srcloc !223
  br label %do.body4, !dbg !221

do.body4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !224

do.end5:                                          ; preds = %do.body4
  br label %do.end6, !dbg !221

do.end6:                                          ; preds = %do.end5
  ret i32 0, !dbg !226
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.cpumask* @get_cpu_mask(i32 %cpu) #0 !dbg !227 {
entry:
  %cpu.addr = alloca i32, align 4
  %p = alloca i64*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata i64** %p, metadata !232, metadata !DIExpression()), !dbg !235
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !236
  %rem = urem i32 %0, 64, !dbg !237
  %add = add i32 1, %rem, !dbg !238
  %idxprom = zext i32 %add to i64, !dbg !239
  %arrayidx = getelementptr [65 x [1 x i64]], [65 x [1 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, !dbg !239
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %arrayidx, i64 0, i64 0, !dbg !239
  store i64* %arraydecay, i64** %p, align 8, !dbg !235
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !240
  %div = udiv i32 %1, 64, !dbg !241
  %2 = load i64*, i64** %p, align 8, !dbg !242
  %idx.ext = zext i32 %div to i64, !dbg !242
  %idx.neg = sub i64 0, %idx.ext, !dbg !242
  %add.ptr = getelementptr i64, i64* %2, i64 %idx.neg, !dbg !242
  store i64* %add.ptr, i64** %p, align 8, !dbg !242
  %3 = load i64*, i64** %p, align 8, !dbg !243
  %4 = bitcast i64* %3 to i8*, !dbg !243
  %5 = bitcast i8* %4 to %struct.cpumask*, !dbg !243
  ret %struct.cpumask* %5, !dbg !244
}

; Function Attrs: noredzone
declare dso_local void @clockevents_config_and_register(%struct.clock_event_device*, i32, i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb_p(i8 zeroext %value, i32 %port) #0 !dbg !245 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !250, metadata !DIExpression()), !dbg !251
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !252, metadata !DIExpression()), !dbg !251
  %0 = load i8, i8* %value.addr, align 1, !dbg !251
  %1 = load i32, i32* %port.addr, align 4, !dbg !251
  call void @outb(i8 zeroext %0, i32 %1) #5, !dbg !251
  call void @slow_down_io() #5, !dbg !251
  ret void, !dbg !251
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #0 !dbg !253 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !254, metadata !DIExpression()), !dbg !255
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !256, metadata !DIExpression()), !dbg !255
  %0 = load i8, i8* %value.addr, align 1, !dbg !255
  %1 = load i32, i32* %port.addr, align 4, !dbg !255
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #4, !dbg !255, !srcloc !257
  ret void, !dbg !255
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @slow_down_io() #0 !dbg !258 {
entry:
  %0 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 0), align 8, !dbg !262
  call void %0() #5, !dbg !263
  ret void, !dbg !264
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @clockevent_state_oneshot(%struct.clock_event_device* %dev) #0 !dbg !265 {
entry:
  %dev.addr = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %dev, %struct.clock_event_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %dev.addr, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** %dev.addr, align 8, !dbg !270
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i32 0, i32 8, !dbg !271
  %1 = load i32, i32* %state_use_accessors, align 8, !dbg !271
  %cmp = icmp eq i32 %1, 3, !dbg !272
  ret i1 %cmp, !dbg !273
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @clockevent_state_periodic(%struct.clock_event_device* %dev) #0 !dbg !274 {
entry:
  %dev.addr = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %dev, %struct.clock_event_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %dev.addr, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** %dev.addr, align 8, !dbg !277
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %0, i32 0, i32 8, !dbg !278
  %1 = load i32, i32* %state_use_accessors, align 8, !dbg !278
  %cmp = icmp eq i32 %1, 2, !dbg !279
  ret i1 %cmp, !dbg !280
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "i8253_lock", scope: !2, file: !3, line: 20, type: !104, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !14, globals: !24, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/clocksource/i8253.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clock_event_state", file: !6, line: 35, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/clockchips.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "CLOCK_EVT_STATE_DETACHED", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "CLOCK_EVT_STATE_SHUTDOWN", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "CLOCK_EVT_STATE_PERIODIC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT_STOPPED", value: 4, isUnsigned: true)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !17, line: 17, size: 64, elements: !18)
!17 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !16, file: !17, line: 17, baseType: !20, size: 64)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !22)
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !{!23}
!23 = !DISubrange(count: 1)
!24 = !{!0, !25, !30}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "i8253_clear_counter_on_shutdown", scope: !2, file: !3, line: 28, type: !27, isLocal: false, isDefinition: true)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !28, line: 30, baseType: !29)
!28 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!29 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "i8253_clockevent", scope: !2, file: !3, line: 169, type: !32, isLocal: false, isDefinition: true)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clock_event_device", file: !6, line: 100, size: 2048, align: 512, elements: !33)
!33 = !{!34, !39, !44, !55, !56, !60, !61, !64, !65, !66, !67, !68, !72, !73, !74, !75, !76, !82, !83, !84, !85, !86, !90, !91, !92, !93, !94, !100}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "event_handler", scope: !32, file: !6, line: 101, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_event", scope: !32, file: !6, line: 102, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !21, !38}
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_ktime", scope: !32, file: !6, line: 103, baseType: !45, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!43, !48, !38}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !49, line: 29, baseType: !50)
!49 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !51, line: 22, baseType: !52)
!51 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !53, line: 30, baseType: !54)
!53 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!54 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next_event", scope: !32, file: !6, line: 104, baseType: !48, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ns", scope: !32, file: !6, line: 105, baseType: !57, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !51, line: 23, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !53, line: 31, baseType: !59)
!59 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ns", scope: !32, file: !6, line: 106, baseType: !57, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !32, file: !6, line: 107, baseType: !62, size: 32, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !51, line: 21, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !53, line: 27, baseType: !7)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !32, file: !6, line: 108, baseType: !62, size: 32, offset: 416)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !32, file: !6, line: 109, baseType: !5, size: 32, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !32, file: !6, line: 110, baseType: !7, size: 32, offset: 480)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !32, file: !6, line: 111, baseType: !21, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_periodic", scope: !32, file: !6, line: 113, baseType: !69, size: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!43, !38}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot", scope: !32, file: !6, line: 114, baseType: !69, size: 64, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot_stopped", scope: !32, file: !6, line: 115, baseType: !69, size: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_shutdown", scope: !32, file: !6, line: 116, baseType: !69, size: 64, offset: 768)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "tick_resume", scope: !32, file: !6, line: 117, baseType: !69, size: 64, offset: 832)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast", scope: !32, file: !6, line: 119, baseType: !77, size: 64, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !32, file: !6, line: 120, baseType: !35, size: 64, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !32, file: !6, line: 121, baseType: !35, size: 64, offset: 1024)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ticks", scope: !32, file: !6, line: 122, baseType: !21, size: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ticks", scope: !32, file: !6, line: 123, baseType: !21, size: 64, offset: 1152)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !32, file: !6, line: 125, baseType: !87, size: 64, offset: 1216)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !32, file: !6, line: 126, baseType: !43, size: 32, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !32, file: !6, line: 127, baseType: !43, size: 32, offset: 1312)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "bound_on", scope: !32, file: !6, line: 128, baseType: !43, size: 32, offset: 1344)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !32, file: !6, line: 129, baseType: !80, size: 64, offset: 1408)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !32, file: !6, line: 130, baseType: !95, size: 128, offset: 1472)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !28, line: 178, size: 128, elements: !96)
!96 = !{!97, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !95, file: !28, line: 179, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !95, file: !28, line: 179, baseType: !98, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !32, file: !6, line: 131, baseType: !101, size: 64, offset: 1600)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !103, line: 76, flags: DIFlagFwdDecl)
!103 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !105, line: 29, baseType: !106)
!105 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !105, line: 20, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !106, file: !105, line: 21, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !110, line: 25, baseType: !111)
!110 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 25, elements: !112)
!112 = !{}
!113 = !{i32 7, !"Dwarf Version", i32 4}
!114 = !{i32 2, !"Debug Info Version", i32 3}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"Code Model", i32 2}
!117 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!118 = distinct !DISubprogram(name: "pit_next_event", scope: !3, file: !3, line: 155, type: !41, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!119 = !DILocalVariable(name: "delta", arg: 1, scope: !118, file: !3, line: 155, type: !21)
!120 = !DILocation(line: 155, column: 41, scope: !118)
!121 = !DILocalVariable(name: "evt", arg: 2, scope: !118, file: !3, line: 155, type: !38)
!122 = !DILocation(line: 155, column: 75, scope: !118)
!123 = !DILocation(line: 157, column: 2, scope: !118)
!124 = !DILocation(line: 157, column: 2, scope: !125)
!125 = distinct !DILexicalBlock(scope: !118, file: !3, line: 157, column: 2)
!126 = !{i32 -2144105779}
!127 = !DILocation(line: 157, column: 2, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !3, line: 157, column: 2)
!129 = !DILocation(line: 158, column: 9, scope: !118)
!130 = !DILocation(line: 158, column: 15, scope: !118)
!131 = !DILocation(line: 158, column: 2, scope: !118)
!132 = !DILocation(line: 159, column: 9, scope: !118)
!133 = !DILocation(line: 159, column: 15, scope: !118)
!134 = !DILocation(line: 159, column: 2, scope: !118)
!135 = !DILocation(line: 160, column: 2, scope: !118)
!136 = !DILocation(line: 160, column: 2, scope: !137)
!137 = distinct !DILexicalBlock(scope: !118, file: !3, line: 160, column: 2)
!138 = !{i32 -2144105501}
!139 = !DILocation(line: 160, column: 2, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !3, line: 160, column: 2)
!141 = !DILocation(line: 162, column: 2, scope: !118)
!142 = distinct !DISubprogram(name: "pit_set_periodic", scope: !3, file: !3, line: 137, type: !70, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!143 = !DILocalVariable(name: "evt", arg: 1, scope: !142, file: !3, line: 137, type: !38)
!144 = !DILocation(line: 137, column: 56, scope: !142)
!145 = !DILocation(line: 139, column: 2, scope: !142)
!146 = !DILocation(line: 139, column: 2, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !3, line: 139, column: 2)
!148 = !{i32 -2144106454}
!149 = !DILocation(line: 139, column: 2, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !3, line: 139, column: 2)
!151 = !DILocation(line: 142, column: 2, scope: !142)
!152 = !DILocation(line: 143, column: 2, scope: !142)
!153 = !DILocation(line: 144, column: 2, scope: !142)
!154 = !DILocation(line: 146, column: 2, scope: !142)
!155 = !DILocation(line: 146, column: 2, scope: !156)
!156 = distinct !DILexicalBlock(scope: !142, file: !3, line: 146, column: 2)
!157 = !{i32 -2144106028}
!158 = !DILocation(line: 146, column: 2, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !3, line: 146, column: 2)
!160 = !DILocation(line: 147, column: 2, scope: !142)
!161 = distinct !DISubprogram(name: "pit_shutdown", scope: !3, file: !3, line: 111, type: !70, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!162 = !DILocalVariable(name: "evt", arg: 1, scope: !161, file: !3, line: 111, type: !38)
!163 = !DILocation(line: 111, column: 52, scope: !161)
!164 = !DILocation(line: 113, column: 32, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !3, line: 113, column: 6)
!166 = !DILocation(line: 113, column: 7, scope: !165)
!167 = !DILocation(line: 113, column: 37, scope: !165)
!168 = !DILocation(line: 113, column: 67, scope: !165)
!169 = !DILocation(line: 113, column: 41, scope: !165)
!170 = !DILocation(line: 113, column: 6, scope: !161)
!171 = !DILocation(line: 114, column: 3, scope: !165)
!172 = !DILocation(line: 116, column: 2, scope: !161)
!173 = !DILocation(line: 116, column: 2, scope: !174)
!174 = distinct !DILexicalBlock(scope: !161, file: !3, line: 116, column: 2)
!175 = !{i32 -2144107508}
!176 = !DILocation(line: 116, column: 2, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !3, line: 116, column: 2)
!178 = !DILocation(line: 118, column: 2, scope: !161)
!179 = !DILocation(line: 120, column: 6, scope: !180)
!180 = distinct !DILexicalBlock(scope: !161, file: !3, line: 120, column: 6)
!181 = !DILocation(line: 120, column: 6, scope: !161)
!182 = !DILocation(line: 121, column: 3, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !3, line: 120, column: 39)
!184 = !DILocation(line: 122, column: 3, scope: !183)
!185 = !DILocation(line: 123, column: 2, scope: !183)
!186 = !DILocation(line: 125, column: 2, scope: !161)
!187 = !DILocation(line: 125, column: 2, scope: !188)
!188 = distinct !DILexicalBlock(scope: !161, file: !3, line: 125, column: 2)
!189 = !{i32 -2144107218}
!190 = !DILocation(line: 125, column: 2, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 125, column: 2)
!192 = !DILocation(line: 126, column: 2, scope: !161)
!193 = !DILocation(line: 127, column: 1, scope: !161)
!194 = distinct !DISubprogram(name: "clockevent_i8253_init", scope: !3, file: !3, line: 181, type: !195, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !27}
!197 = !DILocalVariable(name: "oneshot", arg: 1, scope: !194, file: !3, line: 181, type: !27)
!198 = !DILocation(line: 181, column: 40, scope: !194)
!199 = !DILocation(line: 183, column: 6, scope: !200)
!200 = distinct !DILexicalBlock(scope: !194, file: !3, line: 183, column: 6)
!201 = !DILocation(line: 183, column: 6, scope: !194)
!202 = !DILocation(line: 184, column: 29, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !3, line: 183, column: 15)
!204 = !DILocation(line: 185, column: 38, scope: !203)
!205 = !DILocation(line: 186, column: 2, scope: !203)
!206 = !DILocation(line: 191, column: 29, scope: !194)
!207 = !DILocation(line: 191, column: 27, scope: !194)
!208 = !DILocation(line: 193, column: 2, scope: !194)
!209 = !DILocation(line: 195, column: 1, scope: !194)
!210 = distinct !DISubprogram(name: "pit_set_oneshot", scope: !3, file: !3, line: 129, type: !70, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!211 = !DILocalVariable(name: "evt", arg: 1, scope: !210, file: !3, line: 129, type: !38)
!212 = !DILocation(line: 129, column: 55, scope: !210)
!213 = !DILocation(line: 131, column: 2, scope: !210)
!214 = !DILocation(line: 131, column: 2, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !3, line: 131, column: 2)
!216 = !{i32 -2144106969}
!217 = !DILocation(line: 131, column: 2, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !3, line: 131, column: 2)
!219 = !DILocation(line: 132, column: 2, scope: !210)
!220 = !DILocation(line: 133, column: 2, scope: !210)
!221 = !DILocation(line: 133, column: 2, scope: !222)
!222 = distinct !DILexicalBlock(scope: !210, file: !3, line: 133, column: 2)
!223 = !{i32 -2144106703}
!224 = !DILocation(line: 133, column: 2, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !3, line: 133, column: 2)
!226 = !DILocation(line: 134, column: 2, scope: !210)
!227 = distinct !DISubprogram(name: "get_cpu_mask", scope: !17, file: !17, line: 884, type: !228, scopeLine: 885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!228 = !DISubroutineType(types: !229)
!229 = !{!80, !7}
!230 = !DILocalVariable(name: "cpu", arg: 1, scope: !227, file: !17, line: 884, type: !7)
!231 = !DILocation(line: 884, column: 63, scope: !227)
!232 = !DILocalVariable(name: "p", scope: !227, file: !17, line: 886, type: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!235 = !DILocation(line: 886, column: 23, scope: !227)
!236 = !DILocation(line: 886, column: 46, scope: !227)
!237 = !DILocation(line: 886, column: 50, scope: !227)
!238 = !DILocation(line: 886, column: 44, scope: !227)
!239 = !DILocation(line: 886, column: 27, scope: !227)
!240 = !DILocation(line: 887, column: 7, scope: !227)
!241 = !DILocation(line: 887, column: 11, scope: !227)
!242 = !DILocation(line: 887, column: 4, scope: !227)
!243 = !DILocation(line: 888, column: 9, scope: !227)
!244 = !DILocation(line: 888, column: 2, scope: !227)
!245 = distinct !DISubprogram(name: "outb_p", scope: !246, file: !246, line: 334, type: !247, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!246 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!247 = !DISubroutineType(types: !248)
!248 = !{null, !249, !43}
!249 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!250 = !DILocalVariable(name: "value", arg: 1, scope: !245, file: !246, line: 334, type: !249)
!251 = !DILocation(line: 334, column: 1, scope: !245)
!252 = !DILocalVariable(name: "port", arg: 2, scope: !245, file: !246, line: 334, type: !43)
!253 = distinct !DISubprogram(name: "outb", scope: !246, file: !246, line: 334, type: !247, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!254 = !DILocalVariable(name: "value", arg: 1, scope: !253, file: !246, line: 334, type: !249)
!255 = !DILocation(line: 334, column: 1, scope: !253)
!256 = !DILocalVariable(name: "port", arg: 2, scope: !253, file: !246, line: 334, type: !43)
!257 = !{i32 -2144353703}
!258 = distinct !DISubprogram(name: "slow_down_io", scope: !259, file: !259, line: 40, type: !260, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!259 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!260 = !DISubroutineType(types: !261)
!261 = !{null}
!262 = !DILocation(line: 42, column: 13, scope: !258)
!263 = !DILocation(line: 42, column: 2, scope: !258)
!264 = !DILocation(line: 48, column: 1, scope: !258)
!265 = distinct !DISubprogram(name: "clockevent_state_oneshot", scope: !6, file: !6, line: 150, type: !266, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!266 = !DISubroutineType(types: !267)
!267 = !{!27, !38}
!268 = !DILocalVariable(name: "dev", arg: 1, scope: !265, file: !6, line: 150, type: !38)
!269 = !DILocation(line: 150, column: 72, scope: !265)
!270 = !DILocation(line: 152, column: 9, scope: !265)
!271 = !DILocation(line: 152, column: 14, scope: !265)
!272 = !DILocation(line: 152, column: 34, scope: !265)
!273 = !DILocation(line: 152, column: 2, scope: !265)
!274 = distinct !DISubprogram(name: "clockevent_state_periodic", scope: !6, file: !6, line: 145, type: !266, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!275 = !DILocalVariable(name: "dev", arg: 1, scope: !274, file: !6, line: 145, type: !38)
!276 = !DILocation(line: 145, column: 73, scope: !274)
!277 = !DILocation(line: 147, column: 9, scope: !274)
!278 = !DILocation(line: 147, column: 14, scope: !274)
!279 = !DILocation(line: 147, column: 34, scope: !274)
!280 = !DILocation(line: 147, column: 2, scope: !274)
