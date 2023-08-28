; ModuleID = '../bcout/drivers/acpi/acpica/hwsleep.llvm.bc'
source_filename = "drivers/acpi/acpica/hwsleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_fixed_event_info = type { i8, i8, i16, i16 }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.22, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.sched_statistics = type {}
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [16 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.2, [0 x i64] }
%struct.anon.2 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.3, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
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
%struct.vdso_image = type opaque
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type opaque
%struct.key = type opaque
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type opaque
%struct.sighand_struct = type opaque
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, %struct.seccomp_filter* }
%struct.seccomp_filter = type opaque
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.14 }
%struct.anon.14 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.21, i32, [12 x i8] }
%union.anon.21 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.22 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.23, %union.anon.36, %struct.atomic_t, [8 x i8] }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.36 = type { %struct.atomic_t }
%struct.vm_struct = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.acpi_bit_register_info = type { i8, i8, i16 }

@acpi_gbl_system_awake_and_running = external dso_local global i8, align 1
@acpi_gbl_sleep_type_a = external dso_local global i8, align 1
@acpi_gbl_sleep_type_b = external dso_local global i8, align 1
@.str = private unnamed_addr constant [10 x i8] c"\\_SI._SST\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\\_WAK\00", align 1
@acpi_gbl_fixed_event_info = external dso_local global [5 x %struct.acpi_fixed_event_info], align 16
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_legacy_sleep(i8 zeroext %sleep_state) #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %sleep_state.addr = alloca i8, align 1
  %sleep_type_reg_info = alloca %struct.acpi_bit_register_info*, align 8
  %sleep_enable_reg_info = alloca %struct.acpi_bit_register_info*, align 8
  %pm1a_control = alloca i32, align 4
  %pm1b_control = alloca i32, align 4
  %in_value = alloca i32, align 4
  %status = alloca i32, align 4
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata %struct.acpi_bit_register_info** %sleep_type_reg_info, metadata !24, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata %struct.acpi_bit_register_info** %sleep_enable_reg_info, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %pm1a_control, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %pm1b_control, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %in_value, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %status, metadata !44, metadata !DIExpression()), !dbg !45
  %call = call %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i32 17) #5, !dbg !46
  store %struct.acpi_bit_register_info* %call, %struct.acpi_bit_register_info** %sleep_type_reg_info, align 8, !dbg !47
  %call1 = call %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i32 18) #5, !dbg !48
  store %struct.acpi_bit_register_info* %call1, %struct.acpi_bit_register_info** %sleep_enable_reg_info, align 8, !dbg !49
  %call2 = call i32 @acpi_write_bit_register(i32 6, i32 1) #5, !dbg !50
  store i32 %call2, i32* %status, align 4, !dbg !51
  %0 = load i32, i32* %status, align 4, !dbg !52
  %tobool = icmp ne i32 %0, 0, !dbg !52
  br i1 %tobool, label %if.then, label %if.end, !dbg !54

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !55
  store i32 %1, i32* %retval, align 4, !dbg !55
  br label %return, !dbg !55

if.end:                                           ; preds = %entry
  %call3 = call i32 @acpi_hw_disable_all_gpes() #5, !dbg !57
  store i32 %call3, i32* %status, align 4, !dbg !58
  %2 = load i32, i32* %status, align 4, !dbg !59
  %tobool4 = icmp ne i32 %2, 0, !dbg !59
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !61

if.then5:                                         ; preds = %if.end
  %3 = load i32, i32* %status, align 4, !dbg !62
  store i32 %3, i32* %retval, align 4, !dbg !62
  br label %return, !dbg !62

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @acpi_hw_clear_acpi_status() #5, !dbg !64
  store i32 %call7, i32* %status, align 4, !dbg !65
  %4 = load i32, i32* %status, align 4, !dbg !66
  %tobool8 = icmp ne i32 %4, 0, !dbg !66
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !68

if.then9:                                         ; preds = %if.end6
  %5 = load i32, i32* %status, align 4, !dbg !69
  store i32 %5, i32* %retval, align 4, !dbg !69
  br label %return, !dbg !69

if.end10:                                         ; preds = %if.end6
  store i8 0, i8* @acpi_gbl_system_awake_and_running, align 1, !dbg !71
  %call11 = call i32 @acpi_hw_enable_all_wakeup_gpes() #5, !dbg !72
  store i32 %call11, i32* %status, align 4, !dbg !73
  %6 = load i32, i32* %status, align 4, !dbg !74
  %tobool12 = icmp ne i32 %6, 0, !dbg !74
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !76

if.then13:                                        ; preds = %if.end10
  %7 = load i32, i32* %status, align 4, !dbg !77
  store i32 %7, i32* %retval, align 4, !dbg !77
  br label %return, !dbg !77

if.end14:                                         ; preds = %if.end10
  %call15 = call i32 @acpi_hw_register_read(i32 3, i32* %pm1a_control) #5, !dbg !79
  store i32 %call15, i32* %status, align 4, !dbg !80
  %8 = load i32, i32* %status, align 4, !dbg !81
  %tobool16 = icmp ne i32 %8, 0, !dbg !81
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !83

if.then17:                                        ; preds = %if.end14
  %9 = load i32, i32* %status, align 4, !dbg !84
  store i32 %9, i32* %retval, align 4, !dbg !84
  br label %return, !dbg !84

if.end18:                                         ; preds = %if.end14
  %10 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %sleep_type_reg_info, align 8, !dbg !86
  %access_bit_mask = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %10, i32 0, i32 2, !dbg !87
  %11 = load i16, i16* %access_bit_mask, align 2, !dbg !87
  %conv = zext i16 %11 to i32, !dbg !86
  %12 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %sleep_enable_reg_info, align 8, !dbg !88
  %access_bit_mask19 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %12, i32 0, i32 2, !dbg !89
  %13 = load i16, i16* %access_bit_mask19, align 2, !dbg !89
  %conv20 = zext i16 %13 to i32, !dbg !88
  %or = or i32 %conv, %conv20, !dbg !90
  %neg = xor i32 %or, -1, !dbg !91
  %14 = load i32, i32* %pm1a_control, align 4, !dbg !92
  %and = and i32 %14, %neg, !dbg !92
  store i32 %and, i32* %pm1a_control, align 4, !dbg !92
  %15 = load i32, i32* %pm1a_control, align 4, !dbg !93
  store i32 %15, i32* %pm1b_control, align 4, !dbg !94
  %16 = load i8, i8* @acpi_gbl_sleep_type_a, align 1, !dbg !95
  %conv21 = zext i8 %16 to i32, !dbg !95
  %17 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %sleep_type_reg_info, align 8, !dbg !96
  %bit_position = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %17, i32 0, i32 1, !dbg !97
  %18 = load i8, i8* %bit_position, align 1, !dbg !97
  %conv22 = zext i8 %18 to i32, !dbg !96
  %shl = shl i32 %conv21, %conv22, !dbg !98
  %19 = load i32, i32* %pm1a_control, align 4, !dbg !99
  %or23 = or i32 %19, %shl, !dbg !99
  store i32 %or23, i32* %pm1a_control, align 4, !dbg !99
  %20 = load i8, i8* @acpi_gbl_sleep_type_b, align 1, !dbg !100
  %conv24 = zext i8 %20 to i32, !dbg !100
  %21 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %sleep_type_reg_info, align 8, !dbg !101
  %bit_position25 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %21, i32 0, i32 1, !dbg !102
  %22 = load i8, i8* %bit_position25, align 1, !dbg !102
  %conv26 = zext i8 %22 to i32, !dbg !101
  %shl27 = shl i32 %conv24, %conv26, !dbg !103
  %23 = load i32, i32* %pm1b_control, align 4, !dbg !104
  %or28 = or i32 %23, %shl27, !dbg !104
  store i32 %or28, i32* %pm1b_control, align 4, !dbg !104
  %24 = load i32, i32* %pm1a_control, align 4, !dbg !105
  %25 = load i32, i32* %pm1b_control, align 4, !dbg !106
  %call29 = call i32 @acpi_hw_write_pm1_control(i32 %24, i32 %25) #5, !dbg !107
  store i32 %call29, i32* %status, align 4, !dbg !108
  %26 = load i32, i32* %status, align 4, !dbg !109
  %tobool30 = icmp ne i32 %26, 0, !dbg !109
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !111

if.then31:                                        ; preds = %if.end18
  %27 = load i32, i32* %status, align 4, !dbg !112
  store i32 %27, i32* %retval, align 4, !dbg !112
  br label %return, !dbg !112

if.end32:                                         ; preds = %if.end18
  %28 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %sleep_enable_reg_info, align 8, !dbg !114
  %access_bit_mask33 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %28, i32 0, i32 2, !dbg !115
  %29 = load i16, i16* %access_bit_mask33, align 2, !dbg !115
  %conv34 = zext i16 %29 to i32, !dbg !114
  %30 = load i32, i32* %pm1a_control, align 4, !dbg !116
  %or35 = or i32 %30, %conv34, !dbg !116
  store i32 %or35, i32* %pm1a_control, align 4, !dbg !116
  %31 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %sleep_enable_reg_info, align 8, !dbg !117
  %access_bit_mask36 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %31, i32 0, i32 2, !dbg !118
  %32 = load i16, i16* %access_bit_mask36, align 2, !dbg !118
  %conv37 = zext i16 %32 to i32, !dbg !117
  %33 = load i32, i32* %pm1b_control, align 4, !dbg !119
  %or38 = or i32 %33, %conv37, !dbg !119
  store i32 %or38, i32* %pm1b_control, align 4, !dbg !119
  call void @wbinvd() #5, !dbg !120
  %34 = load i8, i8* %sleep_state.addr, align 1, !dbg !121
  %35 = load i32, i32* %pm1a_control, align 4, !dbg !122
  %36 = load i32, i32* %pm1b_control, align 4, !dbg !123
  %call39 = call i32 @acpi_os_enter_sleep(i8 zeroext %34, i32 %35, i32 %36) #5, !dbg !124
  store i32 %call39, i32* %status, align 4, !dbg !125
  %37 = load i32, i32* %status, align 4, !dbg !126
  %cmp = icmp eq i32 %37, 16387, !dbg !128
  br i1 %cmp, label %if.then41, label %if.end42, !dbg !129

if.then41:                                        ; preds = %if.end32
  store i32 0, i32* %retval, align 4, !dbg !130
  br label %return, !dbg !130

if.end42:                                         ; preds = %if.end32
  %38 = load i32, i32* %status, align 4, !dbg !132
  %tobool43 = icmp ne i32 %38, 0, !dbg !132
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !134

if.then44:                                        ; preds = %if.end42
  %39 = load i32, i32* %status, align 4, !dbg !135
  store i32 %39, i32* %retval, align 4, !dbg !135
  br label %return, !dbg !135

if.end45:                                         ; preds = %if.end42
  %40 = load i32, i32* %pm1a_control, align 4, !dbg !137
  %41 = load i32, i32* %pm1b_control, align 4, !dbg !138
  %call46 = call i32 @acpi_hw_write_pm1_control(i32 %40, i32 %41) #5, !dbg !139
  store i32 %call46, i32* %status, align 4, !dbg !140
  %42 = load i32, i32* %status, align 4, !dbg !141
  %tobool47 = icmp ne i32 %42, 0, !dbg !141
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !143

if.then48:                                        ; preds = %if.end45
  %43 = load i32, i32* %status, align 4, !dbg !144
  store i32 %43, i32* %retval, align 4, !dbg !144
  br label %return, !dbg !144

if.end49:                                         ; preds = %if.end45
  %44 = load i8, i8* %sleep_state.addr, align 1, !dbg !146
  %conv50 = zext i8 %44 to i32, !dbg !146
  %cmp51 = icmp sgt i32 %conv50, 3, !dbg !148
  br i1 %cmp51, label %if.then53, label %if.end60, !dbg !149

if.then53:                                        ; preds = %if.end49
  call void @acpi_os_stall(i32 10000000) #5, !dbg !150
  %45 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %sleep_enable_reg_info, align 8, !dbg !152
  %access_bit_mask54 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %45, i32 0, i32 2, !dbg !153
  %46 = load i16, i16* %access_bit_mask54, align 2, !dbg !153
  %conv55 = zext i16 %46 to i32, !dbg !152
  %call56 = call i32 @acpi_hw_register_write(i32 3, i32 %conv55) #5, !dbg !154
  store i32 %call56, i32* %status, align 4, !dbg !155
  %47 = load i32, i32* %status, align 4, !dbg !156
  %tobool57 = icmp ne i32 %47, 0, !dbg !156
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !158

if.then58:                                        ; preds = %if.then53
  %48 = load i32, i32* %status, align 4, !dbg !159
  store i32 %48, i32* %retval, align 4, !dbg !159
  br label %return, !dbg !159

if.end59:                                         ; preds = %if.then53
  br label %if.end60, !dbg !161

if.end60:                                         ; preds = %if.end59, %if.end49
  br label %do.body, !dbg !162

do.body:                                          ; preds = %do.cond, %if.end60
  %call61 = call i32 @acpi_read_bit_register(i32 6, i32* %in_value) #5, !dbg !163
  store i32 %call61, i32* %status, align 4, !dbg !165
  %49 = load i32, i32* %status, align 4, !dbg !166
  %tobool62 = icmp ne i32 %49, 0, !dbg !166
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !168

if.then63:                                        ; preds = %do.body
  %50 = load i32, i32* %status, align 4, !dbg !169
  store i32 %50, i32* %retval, align 4, !dbg !169
  br label %return, !dbg !169

if.end64:                                         ; preds = %do.body
  br label %do.cond, !dbg !171

do.cond:                                          ; preds = %if.end64
  %51 = load i32, i32* %in_value, align 4, !dbg !172
  %tobool65 = icmp ne i32 %51, 0, !dbg !173
  %lnot = xor i1 %tobool65, true, !dbg !173
  br i1 %lnot, label %do.body, label %do.end, !dbg !171, !llvm.loop !174

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, align 4, !dbg !176
  br label %return, !dbg !176

return:                                           ; preds = %do.end, %if.then63, %if.then58, %if.then48, %if.then44, %if.then41, %if.then31, %if.then17, %if.then13, %if.then9, %if.then5, %if.then
  %52 = load i32, i32* %retval, align 4, !dbg !177
  ret i32 %52, !dbg !177
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_write_bit_register(i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_disable_all_gpes() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_clear_acpi_status() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_enable_all_wakeup_gpes() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_register_read(i32, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_write_pm1_control(i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @wbinvd() #0 !dbg !178 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !182, metadata !DIExpression()), !dbg !185
  %0 = load i64, i64* %__edi, align 8, !dbg !185
  store i64 %0, i64* %__edi, align 8, !dbg !185
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !186, metadata !DIExpression()), !dbg !185
  %1 = load i64, i64* %__esi, align 8, !dbg !185
  store i64 %1, i64* %__esi, align 8, !dbg !185
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !187, metadata !DIExpression()), !dbg !185
  %2 = load i64, i64* %__edx, align 8, !dbg !185
  store i64 %2, i64* %__edx, align 8, !dbg !185
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !188, metadata !DIExpression()), !dbg !185
  %3 = load i64, i64* %__ecx, align 8, !dbg !185
  store i64 %3, i64* %__ecx, align 8, !dbg !185
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !189, metadata !DIExpression()), !dbg !185
  %4 = load i64, i64* %__eax, align 8, !dbg !185
  store i64 %4, i64* %__eax, align 8, !dbg !185
  %5 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 21), align 8, !dbg !185
  %6 = call i64 @llvm.read_register.i64(metadata !14), !dbg !185
  %7 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 24, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 21), i32 511, i64 %6) #4, !dbg !185, !srcloc !190
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %7, 0, !dbg !185
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64 } %7, 1, !dbg !185
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %7, 2, !dbg !185
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %7, 3, !dbg !185
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %7, 4, !dbg !185
  store i64 %asmresult, i64* %__edi, align 8, !dbg !185
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !185
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !185
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !185
  call void @llvm.write_register.i64(metadata !14, i64 %asmresult4), !dbg !185
  ret void, !dbg !191
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_enter_sleep(i8 zeroext, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_stall(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_register_write(i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_read_bit_register(i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_legacy_wake_prep(i8 zeroext %sleep_state) #0 !dbg !192 {
entry:
  %sleep_state.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %sleep_type_reg_info = alloca %struct.acpi_bit_register_info*, align 8
  %sleep_enable_reg_info = alloca %struct.acpi_bit_register_info*, align 8
  %pm1a_control = alloca i32, align 4
  %pm1b_control = alloca i32, align 4
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata i32* %status, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata %struct.acpi_bit_register_info** %sleep_type_reg_info, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata %struct.acpi_bit_register_info** %sleep_enable_reg_info, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata i32* %pm1a_control, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata i32* %pm1b_control, metadata !203, metadata !DIExpression()), !dbg !204
  %call = call i32 @acpi_get_sleep_type_data(i8 zeroext 0, i8* @acpi_gbl_sleep_type_a, i8* @acpi_gbl_sleep_type_b) #5, !dbg !205
  store i32 %call, i32* %status, align 4, !dbg !206
  %0 = load i32, i32* %status, align 4, !dbg !207
  %tobool = icmp ne i32 %0, 0, !dbg !207
  br i1 %tobool, label %if.end17, label %if.then, !dbg !209

if.then:                                          ; preds = %entry
  %call1 = call %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i32 17) #5, !dbg !210
  store %struct.acpi_bit_register_info* %call1, %struct.acpi_bit_register_info** %sleep_type_reg_info, align 8, !dbg !212
  %call2 = call %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i32 18) #5, !dbg !213
  store %struct.acpi_bit_register_info* %call2, %struct.acpi_bit_register_info** %sleep_enable_reg_info, align 8, !dbg !214
  %call3 = call i32 @acpi_hw_register_read(i32 3, i32* %pm1a_control) #5, !dbg !215
  store i32 %call3, i32* %status, align 4, !dbg !216
  %1 = load i32, i32* %status, align 4, !dbg !217
  %tobool4 = icmp ne i32 %1, 0, !dbg !217
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !219

if.then5:                                         ; preds = %if.then
  %2 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %sleep_type_reg_info, align 8, !dbg !220
  %access_bit_mask = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %2, i32 0, i32 2, !dbg !222
  %3 = load i16, i16* %access_bit_mask, align 2, !dbg !222
  %conv = zext i16 %3 to i32, !dbg !220
  %4 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %sleep_enable_reg_info, align 8, !dbg !223
  %access_bit_mask6 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %4, i32 0, i32 2, !dbg !224
  %5 = load i16, i16* %access_bit_mask6, align 2, !dbg !224
  %conv7 = zext i16 %5 to i32, !dbg !223
  %or = or i32 %conv, %conv7, !dbg !225
  %neg = xor i32 %or, -1, !dbg !226
  %6 = load i32, i32* %pm1a_control, align 4, !dbg !227
  %and = and i32 %6, %neg, !dbg !227
  store i32 %and, i32* %pm1a_control, align 4, !dbg !227
  %7 = load i32, i32* %pm1a_control, align 4, !dbg !228
  store i32 %7, i32* %pm1b_control, align 4, !dbg !229
  %8 = load i8, i8* @acpi_gbl_sleep_type_a, align 1, !dbg !230
  %conv8 = zext i8 %8 to i32, !dbg !230
  %9 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %sleep_type_reg_info, align 8, !dbg !231
  %bit_position = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %9, i32 0, i32 1, !dbg !232
  %10 = load i8, i8* %bit_position, align 1, !dbg !232
  %conv9 = zext i8 %10 to i32, !dbg !231
  %shl = shl i32 %conv8, %conv9, !dbg !233
  %11 = load i32, i32* %pm1a_control, align 4, !dbg !234
  %or10 = or i32 %11, %shl, !dbg !234
  store i32 %or10, i32* %pm1a_control, align 4, !dbg !234
  %12 = load i8, i8* @acpi_gbl_sleep_type_b, align 1, !dbg !235
  %conv11 = zext i8 %12 to i32, !dbg !235
  %13 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %sleep_type_reg_info, align 8, !dbg !236
  %bit_position12 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %13, i32 0, i32 1, !dbg !237
  %14 = load i8, i8* %bit_position12, align 1, !dbg !237
  %conv13 = zext i8 %14 to i32, !dbg !236
  %shl14 = shl i32 %conv11, %conv13, !dbg !238
  %15 = load i32, i32* %pm1b_control, align 4, !dbg !239
  %or15 = or i32 %15, %shl14, !dbg !239
  store i32 %or15, i32* %pm1b_control, align 4, !dbg !239
  %16 = load i32, i32* %pm1a_control, align 4, !dbg !240
  %17 = load i32, i32* %pm1b_control, align 4, !dbg !241
  %call16 = call i32 @acpi_hw_write_pm1_control(i32 %16, i32 %17) #5, !dbg !242
  br label %if.end, !dbg !243

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end17, !dbg !244

if.end17:                                         ; preds = %if.end, %entry
  %18 = load i32, i32* %status, align 4, !dbg !245
  ret i32 %18, !dbg !245
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_sleep_type_data(i8 zeroext, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_legacy_wake(i8 zeroext %sleep_state) #0 !dbg !246 {
entry:
  %retval = alloca i32, align 4
  %sleep_state.addr = alloca i8, align 1
  %status = alloca i32, align 4
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %status, metadata !249, metadata !DIExpression()), !dbg !250
  store i8 -1, i8* @acpi_gbl_sleep_type_a, align 1, !dbg !251
  call void @acpi_hw_execute_sleep_method(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 2) #5, !dbg !252
  %call = call i32 @acpi_hw_disable_all_gpes() #5, !dbg !253
  store i32 %call, i32* %status, align 4, !dbg !254
  %0 = load i32, i32* %status, align 4, !dbg !255
  %tobool = icmp ne i32 %0, 0, !dbg !255
  br i1 %tobool, label %if.then, label %if.end, !dbg !257

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !258
  store i32 %1, i32* %retval, align 4, !dbg !258
  br label %return, !dbg !258

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_hw_enable_all_runtime_gpes() #5, !dbg !260
  store i32 %call1, i32* %status, align 4, !dbg !261
  %2 = load i32, i32* %status, align 4, !dbg !262
  %tobool2 = icmp ne i32 %2, 0, !dbg !262
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !264

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %status, align 4, !dbg !265
  store i32 %3, i32* %retval, align 4, !dbg !265
  br label %return, !dbg !265

if.end4:                                          ; preds = %if.end
  %4 = load i8, i8* %sleep_state.addr, align 1, !dbg !267
  %conv = zext i8 %4 to i32, !dbg !267
  call void @acpi_hw_execute_sleep_method(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %conv) #5, !dbg !268
  %call5 = call i32 @acpi_write_bit_register(i32 6, i32 1) #5, !dbg !269
  store i8 1, i8* @acpi_gbl_system_awake_and_running, align 1, !dbg !270
  %5 = load i8, i8* getelementptr inbounds ([5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 2, i32 1), align 1, !dbg !271
  %conv6 = zext i8 %5 to i32, !dbg !272
  %call7 = call i32 @acpi_write_bit_register(i32 %conv6, i32 1) #5, !dbg !273
  %6 = load i8, i8* getelementptr inbounds ([5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 2, i32 0), align 4, !dbg !274
  %conv8 = zext i8 %6 to i32, !dbg !275
  %call9 = call i32 @acpi_write_bit_register(i32 %conv8, i32 1) #5, !dbg !276
  %7 = load i8, i8* getelementptr inbounds ([5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 3, i32 1), align 1, !dbg !277
  %conv10 = zext i8 %7 to i32, !dbg !278
  %call11 = call i32 @acpi_write_bit_register(i32 %conv10, i32 1) #5, !dbg !279
  %8 = load i8, i8* getelementptr inbounds ([5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 3, i32 0), align 2, !dbg !280
  %conv12 = zext i8 %8 to i32, !dbg !281
  %call13 = call i32 @acpi_write_bit_register(i32 %conv12, i32 1) #5, !dbg !282
  call void @acpi_hw_execute_sleep_method(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1) #5, !dbg !283
  %9 = load i32, i32* %status, align 4, !dbg !284
  store i32 %9, i32* %retval, align 4, !dbg !284
  br label %return, !dbg !284

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !285
  ret i32 %10, !dbg !285
}

; Function Attrs: noredzone
declare dso_local void @acpi_hw_execute_sleep_method(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_enable_all_runtime_gpes() #2

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/hwsleep.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4, !11}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !5, line: 421, baseType: !6)
!5 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !13)
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !{!"rsp"}
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"Code Model", i32 2}
!19 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!20 = distinct !DISubprogram(name: "acpi_hw_legacy_sleep", scope: !1, file: !1, line: 30, type: !21, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!21 = !DISubroutineType(types: !3)
!22 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !20, file: !1, line: 30, type: !11)
!23 = !DILocation(line: 30, column: 37, scope: !20)
!24 = !DILocalVariable(name: "sleep_type_reg_info", scope: !20, file: !1, line: 32, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_bit_register_info", file: !27, line: 934, size: 32, elements: !28)
!27 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!28 = !{!29, !30, !31}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "parent_register", scope: !26, file: !27, line: 935, baseType: !11, size: 8)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "bit_position", scope: !26, file: !27, line: 936, baseType: !11, size: 8, offset: 8)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "access_bit_mask", scope: !26, file: !27, line: 937, baseType: !32, size: 16, offset: 16)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !34)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DILocation(line: 32, column: 33, scope: !20)
!36 = !DILocalVariable(name: "sleep_enable_reg_info", scope: !20, file: !1, line: 33, type: !25)
!37 = !DILocation(line: 33, column: 33, scope: !20)
!38 = !DILocalVariable(name: "pm1a_control", scope: !20, file: !1, line: 34, type: !6)
!39 = !DILocation(line: 34, column: 6, scope: !20)
!40 = !DILocalVariable(name: "pm1b_control", scope: !20, file: !1, line: 35, type: !6)
!41 = !DILocation(line: 35, column: 6, scope: !20)
!42 = !DILocalVariable(name: "in_value", scope: !20, file: !1, line: 36, type: !6)
!43 = !DILocation(line: 36, column: 6, scope: !20)
!44 = !DILocalVariable(name: "status", scope: !20, file: !1, line: 37, type: !4)
!45 = !DILocation(line: 37, column: 14, scope: !20)
!46 = !DILocation(line: 42, column: 6, scope: !20)
!47 = !DILocation(line: 41, column: 22, scope: !20)
!48 = !DILocation(line: 44, column: 6, scope: !20)
!49 = !DILocation(line: 43, column: 24, scope: !20)
!50 = !DILocation(line: 48, column: 11, scope: !20)
!51 = !DILocation(line: 48, column: 9, scope: !20)
!52 = !DILocation(line: 50, column: 6, scope: !53)
!53 = distinct !DILexicalBlock(scope: !20, file: !1, line: 50, column: 6)
!54 = !DILocation(line: 50, column: 6, scope: !20)
!55 = !DILocation(line: 51, column: 3, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 50, column: 28)
!57 = !DILocation(line: 55, column: 11, scope: !20)
!58 = !DILocation(line: 55, column: 9, scope: !20)
!59 = !DILocation(line: 56, column: 6, scope: !60)
!60 = distinct !DILexicalBlock(scope: !20, file: !1, line: 56, column: 6)
!61 = !DILocation(line: 56, column: 6, scope: !20)
!62 = !DILocation(line: 57, column: 3, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 56, column: 28)
!64 = !DILocation(line: 59, column: 11, scope: !20)
!65 = !DILocation(line: 59, column: 9, scope: !20)
!66 = !DILocation(line: 60, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !20, file: !1, line: 60, column: 6)
!68 = !DILocation(line: 60, column: 6, scope: !20)
!69 = !DILocation(line: 61, column: 3, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 60, column: 28)
!71 = !DILocation(line: 63, column: 36, scope: !20)
!72 = !DILocation(line: 66, column: 11, scope: !20)
!73 = !DILocation(line: 66, column: 9, scope: !20)
!74 = !DILocation(line: 67, column: 6, scope: !75)
!75 = distinct !DILexicalBlock(scope: !20, file: !1, line: 67, column: 6)
!76 = !DILocation(line: 67, column: 6, scope: !20)
!77 = !DILocation(line: 68, column: 3, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !1, line: 67, column: 28)
!79 = !DILocation(line: 73, column: 11, scope: !20)
!80 = !DILocation(line: 73, column: 9, scope: !20)
!81 = !DILocation(line: 75, column: 6, scope: !82)
!82 = distinct !DILexicalBlock(scope: !20, file: !1, line: 75, column: 6)
!83 = !DILocation(line: 75, column: 6, scope: !20)
!84 = !DILocation(line: 76, column: 3, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !1, line: 75, column: 28)
!86 = !DILocation(line: 83, column: 20, scope: !20)
!87 = !DILocation(line: 83, column: 41, scope: !20)
!88 = !DILocation(line: 84, column: 6, scope: !20)
!89 = !DILocation(line: 84, column: 29, scope: !20)
!90 = !DILocation(line: 83, column: 57, scope: !20)
!91 = !DILocation(line: 83, column: 18, scope: !20)
!92 = !DILocation(line: 83, column: 15, scope: !20)
!93 = !DILocation(line: 85, column: 17, scope: !20)
!94 = !DILocation(line: 85, column: 15, scope: !20)
!95 = !DILocation(line: 90, column: 7, scope: !20)
!96 = !DILocation(line: 90, column: 32, scope: !20)
!97 = !DILocation(line: 90, column: 53, scope: !20)
!98 = !DILocation(line: 90, column: 29, scope: !20)
!99 = !DILocation(line: 89, column: 15, scope: !20)
!100 = !DILocation(line: 92, column: 7, scope: !20)
!101 = !DILocation(line: 92, column: 32, scope: !20)
!102 = !DILocation(line: 92, column: 53, scope: !20)
!103 = !DILocation(line: 92, column: 29, scope: !20)
!104 = !DILocation(line: 91, column: 15, scope: !20)
!105 = !DILocation(line: 101, column: 37, scope: !20)
!106 = !DILocation(line: 101, column: 51, scope: !20)
!107 = !DILocation(line: 101, column: 11, scope: !20)
!108 = !DILocation(line: 101, column: 9, scope: !20)
!109 = !DILocation(line: 102, column: 6, scope: !110)
!110 = distinct !DILexicalBlock(scope: !20, file: !1, line: 102, column: 6)
!111 = !DILocation(line: 102, column: 6, scope: !20)
!112 = !DILocation(line: 103, column: 3, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 102, column: 28)
!114 = !DILocation(line: 108, column: 18, scope: !20)
!115 = !DILocation(line: 108, column: 41, scope: !20)
!116 = !DILocation(line: 108, column: 15, scope: !20)
!117 = !DILocation(line: 109, column: 18, scope: !20)
!118 = !DILocation(line: 109, column: 41, scope: !20)
!119 = !DILocation(line: 109, column: 15, scope: !20)
!120 = !DILocation(line: 113, column: 2, scope: !20)
!121 = !DILocation(line: 115, column: 31, scope: !20)
!122 = !DILocation(line: 115, column: 44, scope: !20)
!123 = !DILocation(line: 115, column: 58, scope: !20)
!124 = !DILocation(line: 115, column: 11, scope: !20)
!125 = !DILocation(line: 115, column: 9, scope: !20)
!126 = !DILocation(line: 116, column: 6, scope: !127)
!127 = distinct !DILexicalBlock(scope: !20, file: !1, line: 116, column: 6)
!128 = !DILocation(line: 116, column: 13, scope: !127)
!129 = !DILocation(line: 116, column: 6, scope: !20)
!130 = !DILocation(line: 117, column: 3, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 116, column: 35)
!132 = !DILocation(line: 119, column: 6, scope: !133)
!133 = distinct !DILexicalBlock(scope: !20, file: !1, line: 119, column: 6)
!134 = !DILocation(line: 119, column: 6, scope: !20)
!135 = !DILocation(line: 120, column: 3, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 119, column: 28)
!137 = !DILocation(line: 125, column: 37, scope: !20)
!138 = !DILocation(line: 125, column: 51, scope: !20)
!139 = !DILocation(line: 125, column: 11, scope: !20)
!140 = !DILocation(line: 125, column: 9, scope: !20)
!141 = !DILocation(line: 126, column: 6, scope: !142)
!142 = distinct !DILexicalBlock(scope: !20, file: !1, line: 126, column: 6)
!143 = !DILocation(line: 126, column: 6, scope: !20)
!144 = !DILocation(line: 127, column: 3, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 126, column: 28)
!146 = !DILocation(line: 130, column: 6, scope: !147)
!147 = distinct !DILexicalBlock(scope: !20, file: !1, line: 130, column: 6)
!148 = !DILocation(line: 130, column: 18, scope: !147)
!149 = !DILocation(line: 130, column: 6, scope: !20)
!150 = !DILocation(line: 142, column: 3, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 130, column: 35)
!152 = !DILocation(line: 145, column: 7, scope: !151)
!153 = !DILocation(line: 146, column: 7, scope: !151)
!154 = !DILocation(line: 144, column: 12, scope: !151)
!155 = !DILocation(line: 144, column: 10, scope: !151)
!156 = !DILocation(line: 147, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !151, file: !1, line: 147, column: 7)
!158 = !DILocation(line: 147, column: 7, scope: !151)
!159 = !DILocation(line: 148, column: 4, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !1, line: 147, column: 29)
!161 = !DILocation(line: 150, column: 2, scope: !151)
!162 = !DILocation(line: 154, column: 2, scope: !20)
!163 = !DILocation(line: 156, column: 7, scope: !164)
!164 = distinct !DILexicalBlock(scope: !20, file: !1, line: 154, column: 5)
!165 = !DILocation(line: 155, column: 10, scope: !164)
!166 = !DILocation(line: 157, column: 7, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !1, line: 157, column: 7)
!168 = !DILocation(line: 157, column: 7, scope: !164)
!169 = !DILocation(line: 158, column: 4, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !1, line: 157, column: 29)
!171 = !DILocation(line: 161, column: 2, scope: !164)
!172 = !DILocation(line: 161, column: 12, scope: !20)
!173 = !DILocation(line: 161, column: 11, scope: !20)
!174 = distinct !{!174, !162, !175}
!175 = !DILocation(line: 161, column: 20, scope: !20)
!176 = !DILocation(line: 163, column: 2, scope: !20)
!177 = !DILocation(line: 164, column: 1, scope: !20)
!178 = distinct !DISubprogram(name: "wbinvd", scope: !179, file: !179, line: 158, type: !180, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!179 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!180 = !DISubroutineType(types: !181)
!181 = !{null}
!182 = !DILocalVariable(name: "__edi", scope: !183, file: !179, line: 160, type: !184)
!183 = distinct !DILexicalBlock(scope: !178, file: !179, line: 160, column: 2)
!184 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!185 = !DILocation(line: 160, column: 2, scope: !183)
!186 = !DILocalVariable(name: "__esi", scope: !183, file: !179, line: 160, type: !184)
!187 = !DILocalVariable(name: "__edx", scope: !183, file: !179, line: 160, type: !184)
!188 = !DILocalVariable(name: "__ecx", scope: !183, file: !179, line: 160, type: !184)
!189 = !DILocalVariable(name: "__eax", scope: !183, file: !179, line: 160, type: !184)
!190 = !{i32 -2145989537, i32 -2145988655, i32 -2145988421, i32 -2145988370, i32 -2145988342, i32 -2145988317, i32 -2145988633, i32 -2145988620, i32 -2145988182, i32 -2145988063, i32 -2145988528, i32 -2145988501, i32 -2145988473, i32 -2145988443}
!191 = !DILocation(line: 161, column: 1, scope: !178)
!192 = distinct !DISubprogram(name: "acpi_hw_legacy_wake_prep", scope: !1, file: !1, line: 180, type: !21, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!193 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !192, file: !1, line: 180, type: !11)
!194 = !DILocation(line: 180, column: 41, scope: !192)
!195 = !DILocalVariable(name: "status", scope: !192, file: !1, line: 182, type: !4)
!196 = !DILocation(line: 182, column: 14, scope: !192)
!197 = !DILocalVariable(name: "sleep_type_reg_info", scope: !192, file: !1, line: 183, type: !25)
!198 = !DILocation(line: 183, column: 33, scope: !192)
!199 = !DILocalVariable(name: "sleep_enable_reg_info", scope: !192, file: !1, line: 184, type: !25)
!200 = !DILocation(line: 184, column: 33, scope: !192)
!201 = !DILocalVariable(name: "pm1a_control", scope: !192, file: !1, line: 185, type: !6)
!202 = !DILocation(line: 185, column: 6, scope: !192)
!203 = !DILocalVariable(name: "pm1b_control", scope: !192, file: !1, line: 186, type: !6)
!204 = !DILocation(line: 186, column: 6, scope: !192)
!205 = !DILocation(line: 195, column: 11, scope: !192)
!206 = !DILocation(line: 195, column: 9, scope: !192)
!207 = !DILocation(line: 198, column: 6, scope: !208)
!208 = distinct !DILexicalBlock(scope: !192, file: !1, line: 198, column: 6)
!209 = !DILocation(line: 198, column: 6, scope: !192)
!210 = !DILocation(line: 200, column: 7, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !1, line: 198, column: 28)
!212 = !DILocation(line: 199, column: 23, scope: !211)
!213 = !DILocation(line: 202, column: 7, scope: !211)
!214 = !DILocation(line: 201, column: 25, scope: !211)
!215 = !DILocation(line: 206, column: 12, scope: !211)
!216 = !DILocation(line: 206, column: 10, scope: !211)
!217 = !DILocation(line: 208, column: 7, scope: !218)
!218 = distinct !DILexicalBlock(scope: !211, file: !1, line: 208, column: 7)
!219 = !DILocation(line: 208, column: 7, scope: !211)
!220 = !DILocation(line: 212, column: 22, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !1, line: 208, column: 29)
!222 = !DILocation(line: 212, column: 43, scope: !221)
!223 = !DILocation(line: 213, column: 8, scope: !221)
!224 = !DILocation(line: 214, column: 8, scope: !221)
!225 = !DILocation(line: 212, column: 59, scope: !221)
!226 = !DILocation(line: 212, column: 20, scope: !221)
!227 = !DILocation(line: 212, column: 17, scope: !221)
!228 = !DILocation(line: 215, column: 19, scope: !221)
!229 = !DILocation(line: 215, column: 17, scope: !221)
!230 = !DILocation(line: 219, column: 21, scope: !221)
!231 = !DILocation(line: 220, column: 7, scope: !221)
!232 = !DILocation(line: 220, column: 28, scope: !221)
!233 = !DILocation(line: 219, column: 43, scope: !221)
!234 = !DILocation(line: 219, column: 17, scope: !221)
!235 = !DILocation(line: 221, column: 21, scope: !221)
!236 = !DILocation(line: 222, column: 7, scope: !221)
!237 = !DILocation(line: 222, column: 28, scope: !221)
!238 = !DILocation(line: 221, column: 43, scope: !221)
!239 = !DILocation(line: 221, column: 17, scope: !221)
!240 = !DILocation(line: 226, column: 36, scope: !221)
!241 = !DILocation(line: 227, column: 8, scope: !221)
!242 = !DILocation(line: 226, column: 10, scope: !221)
!243 = !DILocation(line: 228, column: 3, scope: !221)
!244 = !DILocation(line: 229, column: 2, scope: !211)
!245 = !DILocation(line: 231, column: 2, scope: !192)
!246 = distinct !DISubprogram(name: "acpi_hw_legacy_wake", scope: !1, file: !1, line: 247, type: !21, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!247 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !246, file: !1, line: 247, type: !11)
!248 = !DILocation(line: 247, column: 36, scope: !246)
!249 = !DILocalVariable(name: "status", scope: !246, file: !1, line: 249, type: !4)
!250 = !DILocation(line: 249, column: 14, scope: !246)
!251 = !DILocation(line: 255, column: 24, scope: !246)
!252 = !DILocation(line: 256, column: 2, scope: !246)
!253 = !DILocation(line: 266, column: 11, scope: !246)
!254 = !DILocation(line: 266, column: 9, scope: !246)
!255 = !DILocation(line: 267, column: 6, scope: !256)
!256 = distinct !DILexicalBlock(scope: !246, file: !1, line: 267, column: 6)
!257 = !DILocation(line: 267, column: 6, scope: !246)
!258 = !DILocation(line: 268, column: 3, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !1, line: 267, column: 28)
!260 = !DILocation(line: 271, column: 11, scope: !246)
!261 = !DILocation(line: 271, column: 9, scope: !246)
!262 = !DILocation(line: 272, column: 6, scope: !263)
!263 = distinct !DILexicalBlock(scope: !246, file: !1, line: 272, column: 6)
!264 = !DILocation(line: 272, column: 6, scope: !246)
!265 = !DILocation(line: 273, column: 3, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !1, line: 272, column: 28)
!267 = !DILocation(line: 280, column: 53, scope: !246)
!268 = !DILocation(line: 280, column: 2, scope: !246)
!269 = !DILocation(line: 287, column: 8, scope: !246)
!270 = !DILocation(line: 289, column: 36, scope: !246)
!271 = !DILocation(line: 296, column: 9, scope: !246)
!272 = !DILocation(line: 294, column: 30, scope: !246)
!273 = !DILocation(line: 294, column: 6, scope: !246)
!274 = !DILocation(line: 301, column: 9, scope: !246)
!275 = !DILocation(line: 299, column: 30, scope: !246)
!276 = !DILocation(line: 299, column: 6, scope: !246)
!277 = !DILocation(line: 308, column: 9, scope: !246)
!278 = !DILocation(line: 306, column: 30, scope: !246)
!279 = !DILocation(line: 306, column: 6, scope: !246)
!280 = !DILocation(line: 313, column: 9, scope: !246)
!281 = !DILocation(line: 311, column: 30, scope: !246)
!282 = !DILocation(line: 311, column: 6, scope: !246)
!283 = !DILocation(line: 315, column: 2, scope: !246)
!284 = !DILocation(line: 316, column: 2, scope: !246)
!285 = !DILocation(line: 317, column: 1, scope: !246)
