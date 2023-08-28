; ModuleID = '../bcout/drivers/acpi/acpica/tbutils.llvm.bc'
source_filename = "drivers/acpi/acpica/tbutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_facs = type { [4 x i8], i32, i32, i32, i32, i32, i64, i8, [3 x i8], i32, [24 x i8] }
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_table_list = type { %struct.acpi_table_desc*, i32, i32, i8 }
%struct.acpi_table_desc = type { i64, %struct.acpi_table_header*, i32, %union.acpi_name_union, i16, i8, i16 }
%union.acpi_name_union = type { i32 }
%struct.kmem_cache = type opaque
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
%struct.acpi_table_rsdp = type <{ [8 x i8], i8, [6 x i8], i8, i32, i32, i64, i8, [3 x i8] }>

@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@acpi_gbl_FACS = external dso_local global %struct.acpi_table_facs*, align 8
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@acpi_gbl_use32_bit_facs_addresses = external dso_local global i8, align 1
@acpi_gbl_xfacs_index = external dso_local global i32, align 4
@acpi_gbl_facs_index = external dso_local global i32, align 4
@acpi_gbl_original_dsdt_header = external dso_local global %struct.acpi_table_header, align 1
@acpi_gbl_DSDT = external dso_local global %struct.acpi_table_header*, align 8
@_acpi_module_name = internal constant [8 x i8] c"tbutils\00", align 1, !dbg !0
@.str = private unnamed_addr constant [65 x i8] c"The DSDT has been corrupted or replaced - old, new headers below\00", align 1
@.str.1 = private unnamed_addr constant [120 x i8] c"Please send DMI info to linux-acpi@vger.kernel.org\0AIf system does not work as expected, please boot with acpi=copy_dsdt\00", align 1
@acpi_gbl_root_table_list = external dso_local global %struct.acpi_table_list, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not copy DSDT of length 0x%X\00", align 1
@acpi_gbl_dsdt_index = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"Forced DSDT copy: length 0x%05X copied locally, original unmapped\00", align 1
@acpi_gbl_do_not_use_xsdt = external dso_local global i8, align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Invalid table length 0x%X in RSDT/XSDT\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"FACP\00", align 1
@acpi_gbl_fadt_index = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Table %p, Validation count overflows\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Table %p, Validation count underflows\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_initialize_facs() #0 !dbg !71 {
entry:
  %retval = alloca i32, align 4
  %facs = alloca %struct.acpi_table_facs*, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_facs** %facs, metadata !75, metadata !DIExpression()), !dbg !96
  %0 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !97
  %tobool = icmp ne i8 %0, 0, !dbg !97
  br i1 %tobool, label %if.then, label %if.else, !dbg !99

if.then:                                          ; preds = %entry
  store %struct.acpi_table_facs* null, %struct.acpi_table_facs** @acpi_gbl_FACS, align 8, !dbg !100
  store i32 0, i32* %retval, align 4, !dbg !102
  br label %return, !dbg !102

if.else:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 43), align 1, !dbg !103
  %tobool1 = icmp ne i64 %1, 0, !dbg !105
  br i1 %tobool1, label %land.lhs.true, label %if.else5, !dbg !106

land.lhs.true:                                    ; preds = %if.else
  %2 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 1), align 1, !dbg !107
  %tobool2 = icmp ne i32 %2, 0, !dbg !108
  br i1 %tobool2, label %lor.lhs.false, label %if.then4, !dbg !109

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i8, i8* @acpi_gbl_use32_bit_facs_addresses, align 1, !dbg !110
  %tobool3 = icmp ne i8 %3, 0, !dbg !110
  br i1 %tobool3, label %if.else5, label %if.then4, !dbg !111

if.then4:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, i32* @acpi_gbl_xfacs_index, align 4, !dbg !112
  %5 = bitcast %struct.acpi_table_facs** %facs to i8*, !dbg !114
  %6 = bitcast i8* %5 to %struct.acpi_table_header**, !dbg !114
  %call = call i32 @acpi_get_table_by_index(i32 %4, %struct.acpi_table_header** %6) #10, !dbg !115
  %7 = load %struct.acpi_table_facs*, %struct.acpi_table_facs** %facs, align 8, !dbg !116
  store %struct.acpi_table_facs* %7, %struct.acpi_table_facs** @acpi_gbl_FACS, align 8, !dbg !117
  br label %if.end9, !dbg !118

if.else5:                                         ; preds = %lor.lhs.false, %if.else
  %8 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 1), align 1, !dbg !119
  %tobool6 = icmp ne i32 %8, 0, !dbg !121
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !122

if.then7:                                         ; preds = %if.else5
  %9 = load i32, i32* @acpi_gbl_facs_index, align 4, !dbg !123
  %10 = bitcast %struct.acpi_table_facs** %facs to i8*, !dbg !125
  %11 = bitcast i8* %10 to %struct.acpi_table_header**, !dbg !125
  %call8 = call i32 @acpi_get_table_by_index(i32 %9, %struct.acpi_table_header** %11) #10, !dbg !126
  %12 = load %struct.acpi_table_facs*, %struct.acpi_table_facs** %facs, align 8, !dbg !127
  store %struct.acpi_table_facs* %12, %struct.acpi_table_facs** @acpi_gbl_FACS, align 8, !dbg !128
  br label %if.end, !dbg !129

if.end:                                           ; preds = %if.then7, %if.else5
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then4
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  store i32 0, i32* %retval, align 4, !dbg !130
  br label %return, !dbg !130

return:                                           ; preds = %if.end10, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !131
  ret i32 %13, !dbg !131
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_table_by_index(i32, %struct.acpi_table_header**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_tb_check_dsdt_header() #0 !dbg !132 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.acpi_table_header, %struct.acpi_table_header* @acpi_gbl_original_dsdt_header, i32 0, i32 1), align 1, !dbg !135
  %1 = load %struct.acpi_table_header*, %struct.acpi_table_header** @acpi_gbl_DSDT, align 8, !dbg !137
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %1, i32 0, i32 1, !dbg !138
  %2 = load i32, i32* %length, align 1, !dbg !138
  %cmp = icmp ne i32 %0, %2, !dbg !139
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !140

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8, i8* getelementptr inbounds (%struct.acpi_table_header, %struct.acpi_table_header* @acpi_gbl_original_dsdt_header, i32 0, i32 3), align 1, !dbg !141
  %conv = zext i8 %3 to i32, !dbg !142
  %4 = load %struct.acpi_table_header*, %struct.acpi_table_header** @acpi_gbl_DSDT, align 8, !dbg !143
  %checksum = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %4, i32 0, i32 3, !dbg !144
  %5 = load i8, i8* %checksum, align 1, !dbg !144
  %conv1 = zext i8 %5 to i32, !dbg !143
  %cmp2 = icmp ne i32 %conv, %conv1, !dbg !145
  br i1 %cmp2, label %if.then, label %if.end, !dbg !146

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, i32, i8*, ...) @acpi_bios_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 87, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0)) #10, !dbg !147
  call void @acpi_tb_print_table_header(i64 0, %struct.acpi_table_header* @acpi_gbl_original_dsdt_header) #10, !dbg !149
  %6 = load %struct.acpi_table_header*, %struct.acpi_table_header** @acpi_gbl_DSDT, align 8, !dbg !150
  call void @acpi_tb_print_table_header(i64 0, %struct.acpi_table_header* %6) #10, !dbg !151
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 94, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !152
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** @acpi_gbl_DSDT, align 8, !dbg !153
  %length4 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %7, i32 0, i32 1, !dbg !154
  %8 = load i32, i32* %length4, align 1, !dbg !154
  store i32 %8, i32* getelementptr inbounds (%struct.acpi_table_header, %struct.acpi_table_header* @acpi_gbl_original_dsdt_header, i32 0, i32 1), align 1, !dbg !155
  %9 = load %struct.acpi_table_header*, %struct.acpi_table_header** @acpi_gbl_DSDT, align 8, !dbg !156
  %checksum5 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %9, i32 0, i32 3, !dbg !157
  %10 = load i8, i8* %checksum5, align 1, !dbg !157
  store i8 %10, i8* getelementptr inbounds (%struct.acpi_table_header, %struct.acpi_table_header* @acpi_gbl_original_dsdt_header, i32 0, i32 3), align 1, !dbg !158
  br label %if.end, !dbg !159

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void, !dbg !160
}

; Function Attrs: noredzone
declare dso_local void @acpi_bios_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_tb_print_table_header(i64, %struct.acpi_table_header*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_table_header* @acpi_tb_copy_dsdt(i32 %table_index) #0 !dbg !161 {
entry:
  %retval = alloca %struct.acpi_table_header*, align 8
  %table_index.addr = alloca i32, align 4
  %new_table = alloca %struct.acpi_table_header*, align 8
  %table_desc = alloca %struct.acpi_table_desc*, align 8
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %new_table, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc, metadata !168, metadata !DIExpression()), !dbg !184
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !185
  %1 = load i32, i32* %table_index.addr, align 4, !dbg !186
  %idxprom = zext i32 %1 to i64, !dbg !187
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %0, i64 %idxprom, !dbg !187
  store %struct.acpi_table_desc* %arrayidx, %struct.acpi_table_desc** %table_desc, align 8, !dbg !188
  %2 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc, align 8, !dbg !189
  %length = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %2, i32 0, i32 2, !dbg !189
  %3 = load i32, i32* %length, align 8, !dbg !189
  %conv = zext i32 %3 to i64, !dbg !189
  %call = call i8* @acpi_os_allocate(i64 %conv) #10, !dbg !189
  %4 = bitcast i8* %call to %struct.acpi_table_header*, !dbg !189
  store %struct.acpi_table_header* %4, %struct.acpi_table_header** %new_table, align 8, !dbg !190
  %5 = load %struct.acpi_table_header*, %struct.acpi_table_header** %new_table, align 8, !dbg !191
  %tobool = icmp ne %struct.acpi_table_header* %5, null, !dbg !191
  br i1 %tobool, label %if.end, label %if.then, !dbg !193

if.then:                                          ; preds = %entry
  %6 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc, align 8, !dbg !194
  %length1 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %6, i32 0, i32 2, !dbg !194
  %7 = load i32, i32* %length1, align 8, !dbg !194
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %7) #10, !dbg !194
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %retval, align 8, !dbg !196
  br label %return, !dbg !196

if.end:                                           ; preds = %entry
  %8 = load %struct.acpi_table_header*, %struct.acpi_table_header** %new_table, align 8, !dbg !197
  %9 = bitcast %struct.acpi_table_header* %8 to i8*, !dbg !198
  %10 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc, align 8, !dbg !199
  %pointer = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %10, i32 0, i32 1, !dbg !200
  %11 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer, align 8, !dbg !200
  %12 = bitcast %struct.acpi_table_header* %11 to i8*, !dbg !198
  %13 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc, align 8, !dbg !201
  %length2 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %13, i32 0, i32 2, !dbg !202
  %14 = load i32, i32* %length2, align 8, !dbg !202
  %conv3 = zext i32 %14 to i64, !dbg !201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %12, i64 %conv3, i1 false), !dbg !198
  %15 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc, align 8, !dbg !203
  call void @acpi_tb_uninstall_table(%struct.acpi_table_desc* %15) #10, !dbg !204
  %16 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !205
  %17 = load i32, i32* @acpi_gbl_dsdt_index, align 4, !dbg !206
  %idxprom4 = zext i32 %17 to i64, !dbg !207
  %arrayidx5 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %16, i64 %idxprom4, !dbg !207
  %18 = load %struct.acpi_table_header*, %struct.acpi_table_header** %new_table, align 8, !dbg !208
  %19 = bitcast %struct.acpi_table_header* %18 to i8*, !dbg !208
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64, !dbg !208
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0, !dbg !208
  %20 = load %struct.acpi_table_header*, %struct.acpi_table_header** %new_table, align 8, !dbg !209
  call void @acpi_tb_init_table_descriptor(%struct.acpi_table_desc* %arrayidx5, i64 %sub.ptr.sub, i8 zeroext 2, %struct.acpi_table_header* %20) #10, !dbg !210
  %21 = load %struct.acpi_table_header*, %struct.acpi_table_header** %new_table, align 8, !dbg !211
  %length6 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %21, i32 0, i32 1, !dbg !211
  %22 = load i32, i32* %length6, align 1, !dbg !211
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %22) #10, !dbg !211
  %23 = load %struct.acpi_table_header*, %struct.acpi_table_header** %new_table, align 8, !dbg !212
  store %struct.acpi_table_header* %23, %struct.acpi_table_header** %retval, align 8, !dbg !213
  br label %return, !dbg !213

return:                                           ; preds = %if.end, %if.then
  %24 = load %struct.acpi_table_header*, %struct.acpi_table_header** %retval, align 8, !dbg !214
  ret %struct.acpi_table_header* %24, !dbg !214
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate(i64 %size) #0 !dbg !215 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !219, metadata !DIExpression()), !dbg !230
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !238, metadata !DIExpression()), !dbg !239
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !240, metadata !DIExpression()), !dbg !241
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !242, metadata !DIExpression()), !dbg !243
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !244, metadata !DIExpression()), !dbg !248
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !250, metadata !DIExpression()), !dbg !254
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !256, metadata !DIExpression()), !dbg !260
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !265, metadata !DIExpression()), !dbg !266
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !267, metadata !DIExpression()), !dbg !268
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !269, metadata !DIExpression()), !dbg !270
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !271, metadata !DIExpression()), !dbg !272
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !273, metadata !DIExpression()), !dbg !274
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !275, metadata !DIExpression()), !dbg !276
  %flags.addr.i11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i11, metadata !277, metadata !DIExpression()), !dbg !278
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !279, metadata !DIExpression()), !dbg !280
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !281, metadata !DIExpression()), !dbg !287
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !291, metadata !DIExpression()), !dbg !292
  %0 = load i64, i64* %size.addr, align 8, !dbg !293
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !294, metadata !DIExpression()), !dbg !295
  br label %do.body, !dbg !295

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !296, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !300, metadata !DIExpression()), !dbg !299
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !299
  %conv = zext i1 %cmp to i32, !dbg !299
  store i32 1, i32* %tmp, align 4, !dbg !299
  %1 = load i32, i32* %tmp, align 4, !dbg !299
  %call = call i64 @arch_local_save_flags() #10, !dbg !301
  store i64 %call, i64* %_flags, align 8, !dbg !301
  br label %do.end, !dbg !301

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !302, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !305, metadata !DIExpression()), !dbg !304
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !304
  %conv6 = zext i1 %cmp5 to i32, !dbg !304
  store i32 1, i32* %tmp7, align 4, !dbg !304
  %2 = load i32, i32* %tmp7, align 4, !dbg !304
  %3 = load i64, i64* %_flags, align 8, !dbg !306
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !307
  %and.i = and i64 %4, 512, !dbg !308
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !309
  %lnot.i = xor i1 %tobool.i, true, !dbg !309
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !309
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !306
  %5 = load i32, i32* %tmp8, align 4, !dbg !306
  store i32 %5, i32* %tmp1, align 4, !dbg !301
  %6 = load i32, i32* %tmp1, align 4, !dbg !295
  %tobool = icmp ne i32 %6, 0, !dbg !310
  %7 = zext i1 %tobool to i64, !dbg !310
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !310
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %cond, i32* %flags.addr.i11, align 4
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !311
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #9, !dbg !312
  br i1 %9, label %if.then.i, label %if.end9.i, !dbg !313

if.then.i:                                        ; preds = %do.end
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !314
  %cmp.i = icmp ugt i64 %10, 8192, !dbg !315
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !316

if.then1.i:                                       ; preds = %if.then.i
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !317
  %12 = load i32, i32* %flags.addr.i11, align 4, !dbg !318
  store i64 %11, i64* %size.addr.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !319
  %call.i.i = call i32 @get_order(i64 %13) #11, !dbg !320
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !274
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !321
  %15 = load i32, i32* %flags.addr.i.i, align 4, !dbg !322
  %16 = load i32, i32* %order.i.i, align 4, !dbg !323
  store i64 %14, i64* %size.addr.i.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i.i, align 4
  store i32 %16, i32* %order.addr.i.i.i, align 4
  %17 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !324
  %18 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !325
  %19 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !326
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %17, i32 %18, i32 %19) #12, !dbg !327
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !327
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !327
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !327
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !327
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !328
  br label %kmalloc.exit, !dbg !328

if.end.i:                                         ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !329
  store i64 %20, i64* %size.addr.i11.i, align 8
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !330
  %tobool.i.i = icmp ne i64 %21, 0, !dbg !330
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !332

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !333
  br label %kmalloc_index.exit.i, !dbg !333

if.end.i.i:                                       ; preds = %if.end.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !334
  %cmp.i.i = icmp ule i64 %22, 8, !dbg !336
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !337

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !338
  br label %kmalloc_index.exit.i, !dbg !338

if.end2.i.i:                                      ; preds = %if.end.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !339
  %cmp3.i.i = icmp ugt i64 %23, 64, !dbg !341
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !342

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !343
  %cmp4.i.i = icmp ule i64 %24, 96, !dbg !344
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !345

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !346
  br label %kmalloc_index.exit.i, !dbg !346

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !347
  %cmp7.i.i = icmp ugt i64 %25, 128, !dbg !349
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !350

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !351
  %cmp9.i.i = icmp ule i64 %26, 192, !dbg !352
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !353

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !354
  br label %kmalloc_index.exit.i, !dbg !354

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !355
  %cmp12.i.i = icmp ule i64 %27, 8, !dbg !357
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !358

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !359
  br label %kmalloc_index.exit.i, !dbg !359

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !360
  %cmp15.i.i = icmp ule i64 %28, 16, !dbg !362
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !363

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !364
  br label %kmalloc_index.exit.i, !dbg !364

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !365
  %cmp18.i.i = icmp ule i64 %29, 32, !dbg !367
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !368

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !369
  br label %kmalloc_index.exit.i, !dbg !369

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !370
  %cmp21.i.i = icmp ule i64 %30, 64, !dbg !372
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !373

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !374
  br label %kmalloc_index.exit.i, !dbg !374

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !375
  %cmp24.i.i = icmp ule i64 %31, 128, !dbg !377
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !378

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !379
  br label %kmalloc_index.exit.i, !dbg !379

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !380
  %cmp27.i.i = icmp ule i64 %32, 256, !dbg !382
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !383

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !384
  br label %kmalloc_index.exit.i, !dbg !384

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !385
  %cmp30.i.i = icmp ule i64 %33, 512, !dbg !387
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !388

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !389
  br label %kmalloc_index.exit.i, !dbg !389

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !390
  %cmp33.i.i = icmp ule i64 %34, 1024, !dbg !392
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !393

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !394
  br label %kmalloc_index.exit.i, !dbg !394

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !395
  %cmp36.i.i = icmp ule i64 %35, 2048, !dbg !397
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !398

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !399
  br label %kmalloc_index.exit.i, !dbg !399

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !400
  %cmp39.i.i = icmp ule i64 %36, 4096, !dbg !402
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !403

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !404
  br label %kmalloc_index.exit.i, !dbg !404

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !405
  %cmp42.i.i = icmp ule i64 %37, 8192, !dbg !407
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !408

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !409
  br label %kmalloc_index.exit.i, !dbg !409

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !410
  %cmp45.i.i = icmp ule i64 %38, 16384, !dbg !412
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !413

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !414
  br label %kmalloc_index.exit.i, !dbg !414

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !415
  %cmp48.i.i = icmp ule i64 %39, 32768, !dbg !417
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !418

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !419
  br label %kmalloc_index.exit.i, !dbg !419

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !420
  %cmp51.i.i = icmp ule i64 %40, 65536, !dbg !422
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !423

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !424
  br label %kmalloc_index.exit.i, !dbg !424

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !425
  %cmp54.i.i = icmp ule i64 %41, 131072, !dbg !427
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !428

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !429
  br label %kmalloc_index.exit.i, !dbg !429

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !430
  %cmp57.i.i = icmp ule i64 %42, 262144, !dbg !432
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !433

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !434
  br label %kmalloc_index.exit.i, !dbg !434

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !435
  %cmp60.i.i = icmp ule i64 %43, 524288, !dbg !437
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !438

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !439
  br label %kmalloc_index.exit.i, !dbg !439

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !440
  %cmp63.i.i = icmp ule i64 %44, 1048576, !dbg !442
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !443

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !444
  br label %kmalloc_index.exit.i, !dbg !444

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !445
  %cmp66.i.i = icmp ule i64 %45, 2097152, !dbg !447
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !448

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !449
  br label %kmalloc_index.exit.i, !dbg !449

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !450
  %cmp69.i.i = icmp ule i64 %46, 4194304, !dbg !452
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !453

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !454
  br label %kmalloc_index.exit.i, !dbg !454

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !455
  %cmp72.i.i = icmp ule i64 %47, 8388608, !dbg !457
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !458

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !459
  br label %kmalloc_index.exit.i, !dbg !459

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !460
  %cmp75.i.i = icmp ule i64 %48, 16777216, !dbg !462
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !463

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !464
  br label %kmalloc_index.exit.i, !dbg !464

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !465
  %cmp78.i.i = icmp ule i64 %49, 33554432, !dbg !467
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !468

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !469
  br label %kmalloc_index.exit.i, !dbg !469

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !470
  %cmp81.i.i = icmp ule i64 %50, 67108864, !dbg !472
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !473

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !474
  br label %kmalloc_index.exit.i, !dbg !474

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !475, !srcloc !478
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #9, !dbg !479, !srcloc !482
  unreachable, !dbg !483

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %51 = load i32, i32* %retval.i.i, align 4, !dbg !484
  store i32 %51, i32* %index.i, align 4, !dbg !485
  %52 = load i32, i32* %index.i, align 4, !dbg !486
  %tobool.i12 = icmp ne i32 %52, 0, !dbg !486
  br i1 %tobool.i12, label %if.end4.i, label %if.then3.i, !dbg !488

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !489
  br label %kmalloc.exit, !dbg !489

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %53 = load i32, i32* %flags.addr.i11, align 4, !dbg !490
  store i32 %53, i32* %flags.addr.i13.i, align 4
  %54 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !491
  %and.i.i = and i32 %54, 17, !dbg !491
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !491
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !491
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !491
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !491
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !493

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !494
  br label %kmalloc_type.exit.i, !dbg !494

if.end.i16.i:                                     ; preds = %if.end4.i
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !495
  %and2.i.i = and i32 %55, 1, !dbg !496
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !495
  %56 = zext i1 %tobool3.i.i to i64, !dbg !495
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !495
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !497
  br label %kmalloc_type.exit.i, !dbg !497

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %57 = load i32, i32* %retval.i12.i, align 4, !dbg !498
  %idxprom.i = zext i32 %57 to i64, !dbg !499
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !499
  %58 = load i32, i32* %index.i, align 4, !dbg !500
  %idxprom6.i = zext i32 %58 to i64, !dbg !499
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !499
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !499
  %60 = load i32, i32* %flags.addr.i11, align 4, !dbg !501
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !502
  store %struct.kmem_cache* %59, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %60, i32* %flags.addr.i17.i, align 4
  store i64 %61, i64* %size.addr.i18.i, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !503
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !504
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %62, i32 %63) #12, !dbg !505
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !505
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !505
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !505
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !505
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !243
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !506
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !507
  %66 = load i64, i64* %size.addr.i18.i, align 8, !dbg !508
  %67 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !509
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %64, i8* %65, i64 %66, i32 %67) #12, !dbg !510
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !511
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !512
  store i8* %68, i8** %retval.i, align 8, !dbg !513
  br label %kmalloc.exit, !dbg !513

if.end9.i:                                        ; preds = %do.end
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !514
  %70 = load i32, i32* %flags.addr.i11, align 4, !dbg !515
  %call10.i = call noalias i8* @__kmalloc(i64 %69, i32 %70) #12, !dbg !516
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !516
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !516
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !516
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !516
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !517
  br label %kmalloc.exit, !dbg !517

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %71 = load i8*, i8** %retval.i, align 8, !dbg !518
  ret i8* %71, !dbg !519
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local void @acpi_tb_uninstall_table(%struct.acpi_table_desc*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_tb_init_table_descriptor(%struct.acpi_table_desc*, i64, i8 zeroext, %struct.acpi_table_header*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_info(i8*, ...) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_parse_root_table(i64 %rsdp_address) #4 section ".init.text" !dbg !520 {
entry:
  %retval = alloca i32, align 4
  %rsdp_address.addr = alloca i64, align 8
  %rsdp = alloca %struct.acpi_table_rsdp*, align 8
  %table_entry_size = alloca i32, align 4
  %i = alloca i32, align 4
  %table_count = alloca i32, align 4
  %table = alloca %struct.acpi_table_header*, align 8
  %address = alloca i64, align 8
  %length = alloca i32, align 4
  %table_entry = alloca i8*, align 8
  %status = alloca i32, align 4
  %table_index = alloca i32, align 4
  store i64 %rsdp_address, i64* %rsdp_address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rsdp_address.addr, metadata !523, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata %struct.acpi_table_rsdp** %rsdp, metadata !525, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata i32* %table_entry_size, metadata !539, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.declare(metadata i32* %i, metadata !541, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.declare(metadata i32* %table_count, metadata !543, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !545, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata i64* %address, metadata !547, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.declare(metadata i32* %length, metadata !549, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.declare(metadata i8** %table_entry, metadata !551, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.declare(metadata i32* %status, metadata !553, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata i32* %table_index, metadata !555, metadata !DIExpression()), !dbg !556
  %0 = load i64, i64* %rsdp_address.addr, align 8, !dbg !557
  %call = call i8* @acpi_os_map_memory(i64 %0, i64 36) #10, !dbg !558
  %1 = bitcast i8* %call to %struct.acpi_table_rsdp*, !dbg !558
  store %struct.acpi_table_rsdp* %1, %struct.acpi_table_rsdp** %rsdp, align 8, !dbg !559
  %2 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %rsdp, align 8, !dbg !560
  %tobool = icmp ne %struct.acpi_table_rsdp* %2, null, !dbg !560
  br i1 %tobool, label %if.end, label %if.then, !dbg !562

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !563
  br label %return, !dbg !563

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %rsdp_address.addr, align 8, !dbg !565
  %4 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %rsdp, align 8, !dbg !566
  %5 = bitcast %struct.acpi_table_rsdp* %4 to i8*, !dbg !566
  %6 = bitcast i8* %5 to %struct.acpi_table_header*, !dbg !566
  call void @acpi_tb_print_table_header(i64 %3, %struct.acpi_table_header* %6) #10, !dbg !567
  %7 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %rsdp, align 8, !dbg !568
  %revision = getelementptr inbounds %struct.acpi_table_rsdp, %struct.acpi_table_rsdp* %7, i32 0, i32 3, !dbg !570
  %8 = load i8, i8* %revision, align 1, !dbg !570
  %conv = zext i8 %8 to i32, !dbg !568
  %cmp = icmp sgt i32 %conv, 1, !dbg !571
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !572

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %rsdp, align 8, !dbg !573
  %xsdt_physical_address = getelementptr inbounds %struct.acpi_table_rsdp, %struct.acpi_table_rsdp* %9, i32 0, i32 6, !dbg !574
  %10 = load i64, i64* %xsdt_physical_address, align 1, !dbg !574
  %tobool2 = icmp ne i64 %10, 0, !dbg !573
  br i1 %tobool2, label %land.lhs.true3, label %if.else, !dbg !575

land.lhs.true3:                                   ; preds = %land.lhs.true
  %11 = load i8, i8* @acpi_gbl_do_not_use_xsdt, align 1, !dbg !576
  %tobool4 = icmp ne i8 %11, 0, !dbg !576
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !577

if.then5:                                         ; preds = %land.lhs.true3
  %12 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %rsdp, align 8, !dbg !578
  %xsdt_physical_address6 = getelementptr inbounds %struct.acpi_table_rsdp, %struct.acpi_table_rsdp* %12, i32 0, i32 6, !dbg !580
  %13 = load i64, i64* %xsdt_physical_address6, align 1, !dbg !580
  store i64 %13, i64* %address, align 8, !dbg !581
  store i32 8, i32* %table_entry_size, align 4, !dbg !582
  br label %if.end8, !dbg !583

if.else:                                          ; preds = %land.lhs.true3, %land.lhs.true, %if.end
  %14 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %rsdp, align 8, !dbg !584
  %rsdt_physical_address = getelementptr inbounds %struct.acpi_table_rsdp, %struct.acpi_table_rsdp* %14, i32 0, i32 4, !dbg !586
  %15 = load i32, i32* %rsdt_physical_address, align 1, !dbg !586
  %conv7 = zext i32 %15 to i64, !dbg !587
  store i64 %conv7, i64* %address, align 8, !dbg !588
  store i32 4, i32* %table_entry_size, align 4, !dbg !589
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %16 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %rsdp, align 8, !dbg !590
  %17 = bitcast %struct.acpi_table_rsdp* %16 to i8*, !dbg !590
  call void @acpi_os_unmap_memory(i8* %17, i64 36) #10, !dbg !591
  %18 = load i64, i64* %address, align 8, !dbg !592
  %call9 = call i8* @acpi_os_map_memory(i64 %18, i64 36) #10, !dbg !593
  %19 = bitcast i8* %call9 to %struct.acpi_table_header*, !dbg !593
  store %struct.acpi_table_header* %19, %struct.acpi_table_header** %table, align 8, !dbg !594
  %20 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !595
  %tobool10 = icmp ne %struct.acpi_table_header* %20, null, !dbg !595
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !597

if.then11:                                        ; preds = %if.end8
  store i32 4, i32* %retval, align 4, !dbg !598
  br label %return, !dbg !598

if.end12:                                         ; preds = %if.end8
  %21 = load i64, i64* %address, align 8, !dbg !600
  %22 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !601
  call void @acpi_tb_print_table_header(i64 %21, %struct.acpi_table_header* %22) #10, !dbg !602
  %23 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !603
  %length13 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %23, i32 0, i32 1, !dbg !604
  %24 = load i32, i32* %length13, align 1, !dbg !604
  store i32 %24, i32* %length, align 4, !dbg !605
  %25 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !606
  %26 = bitcast %struct.acpi_table_header* %25 to i8*, !dbg !606
  call void @acpi_os_unmap_memory(i8* %26, i64 36) #10, !dbg !607
  %27 = load i32, i32* %length, align 4, !dbg !608
  %conv14 = zext i32 %27 to i64, !dbg !608
  %28 = load i32, i32* %table_entry_size, align 4, !dbg !610
  %conv15 = zext i32 %28 to i64, !dbg !610
  %add = add i64 36, %conv15, !dbg !611
  %cmp16 = icmp ult i64 %conv14, %add, !dbg !612
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !613

if.then18:                                        ; preds = %if.end12
  %29 = load i32, i32* %length, align 4, !dbg !614
  call void (i8*, i32, i8*, ...) @acpi_bios_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 289, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %29) #10, !dbg !614
  store i32 8197, i32* %retval, align 4, !dbg !616
  br label %return, !dbg !616

if.end19:                                         ; preds = %if.end12
  %30 = load i64, i64* %address, align 8, !dbg !617
  %31 = load i32, i32* %length, align 4, !dbg !618
  %conv20 = zext i32 %31 to i64, !dbg !618
  %call21 = call i8* @acpi_os_map_memory(i64 %30, i64 %conv20) #10, !dbg !619
  %32 = bitcast i8* %call21 to %struct.acpi_table_header*, !dbg !619
  store %struct.acpi_table_header* %32, %struct.acpi_table_header** %table, align 8, !dbg !620
  %33 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !621
  %tobool22 = icmp ne %struct.acpi_table_header* %33, null, !dbg !621
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !623

if.then23:                                        ; preds = %if.end19
  store i32 4, i32* %retval, align 4, !dbg !624
  br label %return, !dbg !624

if.end24:                                         ; preds = %if.end19
  %34 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !626
  %35 = load i32, i32* %length, align 4, !dbg !627
  %call25 = call i32 @acpi_tb_verify_checksum(%struct.acpi_table_header* %34, i32 %35) #10, !dbg !628
  store i32 %call25, i32* %status, align 4, !dbg !629
  %36 = load i32, i32* %status, align 4, !dbg !630
  %tobool26 = icmp ne i32 %36, 0, !dbg !630
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !632

if.then27:                                        ; preds = %if.end24
  %37 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !633
  %38 = bitcast %struct.acpi_table_header* %37 to i8*, !dbg !633
  %39 = load i32, i32* %length, align 4, !dbg !635
  %conv28 = zext i32 %39 to i64, !dbg !635
  call void @acpi_os_unmap_memory(i8* %38, i64 %conv28) #10, !dbg !636
  %40 = load i32, i32* %status, align 4, !dbg !637
  store i32 %40, i32* %retval, align 4, !dbg !637
  br label %return, !dbg !637

if.end29:                                         ; preds = %if.end24
  %41 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !638
  %length30 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %41, i32 0, i32 1, !dbg !639
  %42 = load i32, i32* %length30, align 1, !dbg !639
  %conv31 = zext i32 %42 to i64, !dbg !638
  %sub = sub i64 %conv31, 36, !dbg !640
  %43 = load i32, i32* %table_entry_size, align 4, !dbg !641
  %conv32 = zext i32 %43 to i64, !dbg !641
  %div = udiv i64 %sub, %conv32, !dbg !642
  %conv33 = trunc i64 %div to i32, !dbg !643
  store i32 %conv33, i32* %table_count, align 4, !dbg !644
  %44 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !645
  %45 = bitcast %struct.acpi_table_header* %44 to i8*, !dbg !645
  %add.ptr = getelementptr i8, i8* %45, i64 36, !dbg !645
  store i8* %add.ptr, i8** %table_entry, align 8, !dbg !646
  store i32 0, i32* %i, align 4, !dbg !647
  br label %for.cond, !dbg !649

for.cond:                                         ; preds = %for.inc, %if.end29
  %46 = load i32, i32* %i, align 4, !dbg !650
  %47 = load i32, i32* %table_count, align 4, !dbg !652
  %cmp34 = icmp ult i32 %46, %47, !dbg !653
  br i1 %cmp34, label %for.body, label %for.end, !dbg !654

for.body:                                         ; preds = %for.cond
  %48 = load i8*, i8** %table_entry, align 8, !dbg !655
  %49 = load i32, i32* %table_entry_size, align 4, !dbg !657
  %call36 = call i64 @acpi_tb_get_root_table_entry(i8* %48, i32 %49) #10, !dbg !658
  store i64 %call36, i64* %address, align 8, !dbg !659
  %50 = load i64, i64* %address, align 8, !dbg !660
  %tobool37 = icmp ne i64 %50, 0, !dbg !660
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !662

if.then38:                                        ; preds = %for.body
  br label %next_table, !dbg !663

if.end39:                                         ; preds = %for.body
  %51 = load i64, i64* %address, align 8, !dbg !665
  %call40 = call i32 @acpi_tb_install_standard_table(i64 %51, i8 zeroext 1, i8 zeroext 0, i8 zeroext 1, i32* %table_index) #10, !dbg !666
  store i32 %call40, i32* %status, align 4, !dbg !667
  %52 = load i32, i32* %status, align 4, !dbg !668
  %tobool41 = icmp ne i32 %52, 0, !dbg !668
  br i1 %tobool41, label %if.end46, label %land.lhs.true42, !dbg !670

land.lhs.true42:                                  ; preds = %if.end39
  %53 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !671
  %54 = load i32, i32* %table_index, align 4, !dbg !671
  %idxprom = zext i32 %54 to i64, !dbg !671
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %53, i64 %idxprom, !dbg !671
  %signature = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx, i32 0, i32 3, !dbg !671
  %55 = bitcast %union.acpi_name_union* %signature to i8*, !dbg !671
  %56 = bitcast i8* %55 to i32*, !dbg !671
  %57 = load i32, i32* %56, align 4, !dbg !671
  %58 = load i32, i32* bitcast ([5 x i8]* @.str.5 to i32*), align 4, !dbg !671
  %cmp43 = icmp eq i32 %57, %58, !dbg !671
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !672

if.then45:                                        ; preds = %land.lhs.true42
  %59 = load i32, i32* %table_index, align 4, !dbg !673
  store i32 %59, i32* @acpi_gbl_fadt_index, align 4, !dbg !675
  call void @acpi_tb_parse_fadt() #10, !dbg !676
  br label %if.end46, !dbg !677

if.end46:                                         ; preds = %if.then45, %land.lhs.true42, %if.end39
  br label %next_table, !dbg !671

next_table:                                       ; preds = %if.end46, %if.then38
  call void @llvm.dbg.label(metadata !678), !dbg !679
  %60 = load i32, i32* %table_entry_size, align 4, !dbg !680
  %61 = load i8*, i8** %table_entry, align 8, !dbg !681
  %idx.ext = zext i32 %60 to i64, !dbg !681
  %add.ptr47 = getelementptr i8, i8* %61, i64 %idx.ext, !dbg !681
  store i8* %add.ptr47, i8** %table_entry, align 8, !dbg !681
  br label %for.inc, !dbg !682

for.inc:                                          ; preds = %next_table
  %62 = load i32, i32* %i, align 4, !dbg !683
  %inc = add i32 %62, 1, !dbg !683
  store i32 %inc, i32* %i, align 4, !dbg !683
  br label %for.cond, !dbg !684, !llvm.loop !685

for.end:                                          ; preds = %for.cond
  %63 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !687
  %64 = bitcast %struct.acpi_table_header* %63 to i8*, !dbg !687
  %65 = load i32, i32* %length, align 4, !dbg !688
  %conv48 = zext i32 %65 to i64, !dbg !688
  call void @acpi_os_unmap_memory(i8* %64, i64 %conv48) #10, !dbg !689
  store i32 0, i32* %retval, align 4, !dbg !690
  br label %return, !dbg !690

return:                                           ; preds = %for.end, %if.then27, %if.then23, %if.then18, %if.then11, %if.then
  %66 = load i32, i32* %retval, align 4, !dbg !691
  ret i32 %66, !dbg !691
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_os_map_memory(i64, i64) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_unmap_memory(i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_verify_checksum(%struct.acpi_table_header*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_tb_get_root_table_entry(i8* %table_entry, i32 %table_entry_size) #0 !dbg !692 {
entry:
  %retval = alloca i64, align 8
  %table_entry.addr = alloca i8*, align 8
  %table_entry_size.addr = alloca i32, align 4
  %address64 = alloca i64, align 8
  store i8* %table_entry, i8** %table_entry.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %table_entry.addr, metadata !695, metadata !DIExpression()), !dbg !696
  store i32 %table_entry_size, i32* %table_entry_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_entry_size.addr, metadata !697, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.declare(metadata i64* %address64, metadata !699, metadata !DIExpression()), !dbg !700
  %0 = load i32, i32* %table_entry_size.addr, align 4, !dbg !701
  %conv = zext i32 %0 to i64, !dbg !701
  %cmp = icmp eq i64 %conv, 4, !dbg !703
  br i1 %cmp, label %if.then, label %if.else, !dbg !704

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %table_entry.addr, align 8, !dbg !705
  %2 = bitcast i8* %1 to i32*, !dbg !705
  %3 = load i32, i32* %2, align 4, !dbg !707
  %conv2 = zext i32 %3 to i64, !dbg !708
  store i64 %conv2, i64* %retval, align 8, !dbg !709
  br label %return, !dbg !709

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %table_entry.addr, align 8, !dbg !710
  %5 = bitcast i8* %4 to i64*, !dbg !710
  %6 = load i64, i64* %5, align 8, !dbg !710
  %7 = bitcast i64* %address64 to i8*, !dbg !710
  %8 = bitcast i8* %7 to i64*, !dbg !710
  store i64 %6, i64* %8, align 8, !dbg !710
  %9 = load i64, i64* %address64, align 8, !dbg !712
  store i64 %9, i64* %retval, align 8, !dbg !713
  br label %return, !dbg !713

return:                                           ; preds = %if.else, %if.then
  %10 = load i64, i64* %retval, align 8, !dbg !714
  ret i64 %10, !dbg !714
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_install_standard_table(i64, i8 zeroext, i8 zeroext, i8 zeroext, i32*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_tb_parse_fadt() #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_get_table(%struct.acpi_table_desc* %table_desc, %struct.acpi_table_header** %out_table) #0 !dbg !715 {
entry:
  %retval = alloca i32, align 4
  %table_desc.addr = alloca %struct.acpi_table_desc*, align 8
  %out_table.addr = alloca %struct.acpi_table_header**, align 8
  %status = alloca i32, align 4
  store %struct.acpi_table_desc* %table_desc, %struct.acpi_table_desc** %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc.addr, metadata !718, metadata !DIExpression()), !dbg !719
  store %struct.acpi_table_header** %out_table, %struct.acpi_table_header*** %out_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header*** %out_table.addr, metadata !720, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.declare(metadata i32* %status, metadata !722, metadata !DIExpression()), !dbg !723
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !724
  %validation_count = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %0, i32 0, i32 6, !dbg !726
  %1 = load i16, i16* %validation_count, align 4, !dbg !726
  %conv = zext i16 %1 to i32, !dbg !724
  %cmp = icmp eq i32 %conv, 0, !dbg !727
  br i1 %cmp, label %if.then, label %if.end3, !dbg !728

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !729
  %call = call i32 @acpi_tb_validate_table(%struct.acpi_table_desc* %2) #10, !dbg !731
  store i32 %call, i32* %status, align 4, !dbg !732
  %3 = load i32, i32* %status, align 4, !dbg !733
  %tobool = icmp ne i32 %3, 0, !dbg !733
  br i1 %tobool, label %if.then2, label %if.end, !dbg !735

if.then2:                                         ; preds = %if.then
  %4 = load i32, i32* %status, align 4, !dbg !736
  store i32 %4, i32* %retval, align 4, !dbg !736
  br label %return, !dbg !736

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !738

if.end3:                                          ; preds = %if.end, %entry
  %5 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !739
  %validation_count4 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %5, i32 0, i32 6, !dbg !741
  %6 = load i16, i16* %validation_count4, align 4, !dbg !741
  %conv5 = zext i16 %6 to i32, !dbg !739
  %cmp6 = icmp slt i32 %conv5, 65535, !dbg !742
  br i1 %cmp6, label %if.then8, label %if.end16, !dbg !743

if.then8:                                         ; preds = %if.end3
  %7 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !744
  %validation_count9 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %7, i32 0, i32 6, !dbg !746
  %8 = load i16, i16* %validation_count9, align 4, !dbg !747
  %inc = add i16 %8, 1, !dbg !747
  store i16 %inc, i16* %validation_count9, align 4, !dbg !747
  %9 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !748
  %validation_count10 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %9, i32 0, i32 6, !dbg !750
  %10 = load i16, i16* %validation_count10, align 4, !dbg !750
  %conv11 = zext i16 %10 to i32, !dbg !748
  %cmp12 = icmp sge i32 %conv11, 65535, !dbg !751
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !752

if.then14:                                        ; preds = %if.then8
  %11 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !753
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 393, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), %struct.acpi_table_desc* %11) #10, !dbg !753
  br label %if.end15, !dbg !755

if.end15:                                         ; preds = %if.then14, %if.then8
  br label %if.end16, !dbg !756

if.end16:                                         ; preds = %if.end15, %if.end3
  %12 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !757
  %pointer = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %12, i32 0, i32 1, !dbg !758
  %13 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer, align 8, !dbg !758
  %14 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %out_table.addr, align 8, !dbg !759
  store %struct.acpi_table_header* %13, %struct.acpi_table_header** %14, align 8, !dbg !760
  store i32 0, i32* %retval, align 4, !dbg !761
  br label %return, !dbg !761

return:                                           ; preds = %if.end16, %if.then2
  %15 = load i32, i32* %retval, align 4, !dbg !762
  ret i32 %15, !dbg !762
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_validate_table(%struct.acpi_table_desc*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_tb_put_table(%struct.acpi_table_desc* %table_desc) #0 !dbg !763 {
entry:
  %table_desc.addr = alloca %struct.acpi_table_desc*, align 8
  store %struct.acpi_table_desc* %table_desc, %struct.acpi_table_desc** %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc.addr, metadata !766, metadata !DIExpression()), !dbg !767
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !768
  %validation_count = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %0, i32 0, i32 6, !dbg !770
  %1 = load i16, i16* %validation_count, align 4, !dbg !770
  %conv = zext i16 %1 to i32, !dbg !768
  %cmp = icmp slt i32 %conv, 65535, !dbg !771
  br i1 %cmp, label %if.then, label %if.end8, !dbg !772

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !773
  %validation_count2 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %2, i32 0, i32 6, !dbg !775
  %3 = load i16, i16* %validation_count2, align 4, !dbg !776
  %dec = add i16 %3, -1, !dbg !776
  store i16 %dec, i16* %validation_count2, align 4, !dbg !776
  %4 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !777
  %validation_count3 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %4, i32 0, i32 6, !dbg !779
  %5 = load i16, i16* %validation_count3, align 4, !dbg !779
  %conv4 = zext i16 %5 to i32, !dbg !777
  %cmp5 = icmp sge i32 %conv4, 65535, !dbg !780
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !781

if.then7:                                         ; preds = %if.then
  %6 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !782
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 431, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), %struct.acpi_table_desc* %6) #10, !dbg !782
  br label %return, !dbg !784

if.end:                                           ; preds = %if.then
  br label %if.end8, !dbg !785

if.end8:                                          ; preds = %if.end, %entry
  %7 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !786
  %validation_count9 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %7, i32 0, i32 6, !dbg !788
  %8 = load i16, i16* %validation_count9, align 4, !dbg !788
  %conv10 = zext i16 %8 to i32, !dbg !786
  %cmp11 = icmp eq i32 %conv10, 0, !dbg !789
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !790

if.then13:                                        ; preds = %if.end8
  %9 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !791
  call void @acpi_tb_invalidate_table(%struct.acpi_table_desc* %9) #10, !dbg !793
  br label %if.end14, !dbg !794

if.end14:                                         ; preds = %if.then13, %if.end8
  br label %return, !dbg !795

return:                                           ; preds = %if.end14, %if.then7
  ret void, !dbg !796
}

; Function Attrs: noredzone
declare dso_local void @acpi_tb_invalidate_table(%struct.acpi_table_desc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !797 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !801, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !804, metadata !DIExpression()), !dbg !803
  %0 = load i64, i64* %__edi, align 8, !dbg !803
  store i64 %0, i64* %__edi, align 8, !dbg !803
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !805, metadata !DIExpression()), !dbg !803
  %1 = load i64, i64* %__esi, align 8, !dbg !803
  store i64 %1, i64* %__esi, align 8, !dbg !803
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !806, metadata !DIExpression()), !dbg !803
  %2 = load i64, i64* %__edx, align 8, !dbg !803
  store i64 %2, i64* %__edx, align 8, !dbg !803
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !807, metadata !DIExpression()), !dbg !803
  %3 = load i64, i64* %__ecx, align 8, !dbg !803
  store i64 %3, i64* %__ecx, align 8, !dbg !803
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !808, metadata !DIExpression()), !dbg !803
  %4 = load i64, i64* %__eax, align 8, !dbg !803
  store i64 %4, i64* %__eax, align 8, !dbg !803
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !803
  %6 = call i64 @llvm.read_register.i64(metadata !65), !dbg !809
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #9, !dbg !809, !srcloc !812
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !809
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !809
  store i64 %asmresult, i64* %__eax, align 8, !dbg !809
  call void @llvm.write_register.i64(metadata !65, i64 %asmresult1), !dbg !809
  %8 = load i64, i64* %__eax, align 8, !dbg !809
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !813, metadata !DIExpression()), !dbg !815
  store i64 -1, i64* %__mask, align 8, !dbg !815
  %9 = load i64, i64* %__mask, align 8, !dbg !815
  store i64 %9, i64* %tmp, align 8, !dbg !815
  %10 = load i64, i64* %tmp, align 8, !dbg !815
  %and = and i64 %8, %10, !dbg !809
  store i64 %and, i64* %__ret, align 8, !dbg !809
  %11 = load i64, i64* %__ret, align 8, !dbg !803
  store i64 %11, i64* %tmp2, align 8, !dbg !816
  %12 = load i64, i64* %tmp2, align 8, !dbg !803
  ret i64 %12, !dbg !817
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !818 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !820, metadata !DIExpression()), !dbg !825
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !827, metadata !DIExpression()), !dbg !828
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !829, metadata !DIExpression()), !dbg !830
  %0 = load i64, i64* %size.addr, align 8, !dbg !831
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !833
  br i1 %1, label %if.then, label %if.end447, !dbg !834

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !835
  %tobool = icmp ne i64 %2, 0, !dbg !835
  br i1 %tobool, label %if.end, label %if.then1, !dbg !838

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !839
  br label %return, !dbg !839

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !840
  %cmp = icmp ult i64 %3, 4096, !dbg !842
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !843

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !844
  br label %return, !dbg !844

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub = sub i64 %4, 1, !dbg !845
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !845
  br i1 %5, label %cond.true, label %cond.false442, !dbg !845

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub4 = sub i64 %6, 1, !dbg !845
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !845
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !845

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub6 = sub i64 %8, 1, !dbg !845
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !845
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !845

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !845

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub9 = sub i64 %9, 1, !dbg !845
  %and = and i64 %sub9, -9223372036854775808, !dbg !845
  %tobool10 = icmp ne i64 %and, 0, !dbg !845
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !845

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !845

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub13 = sub i64 %10, 1, !dbg !845
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !845
  %tobool15 = icmp ne i64 %and14, 0, !dbg !845
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !845

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !845

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub18 = sub i64 %11, 1, !dbg !845
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !845
  %tobool20 = icmp ne i64 %and19, 0, !dbg !845
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !845

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !845

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub23 = sub i64 %12, 1, !dbg !845
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !845
  %tobool25 = icmp ne i64 %and24, 0, !dbg !845
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !845

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !845

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub28 = sub i64 %13, 1, !dbg !845
  %and29 = and i64 %sub28, 576460752303423488, !dbg !845
  %tobool30 = icmp ne i64 %and29, 0, !dbg !845
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !845

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !845

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub33 = sub i64 %14, 1, !dbg !845
  %and34 = and i64 %sub33, 288230376151711744, !dbg !845
  %tobool35 = icmp ne i64 %and34, 0, !dbg !845
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !845

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !845

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub38 = sub i64 %15, 1, !dbg !845
  %and39 = and i64 %sub38, 144115188075855872, !dbg !845
  %tobool40 = icmp ne i64 %and39, 0, !dbg !845
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !845

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !845

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub43 = sub i64 %16, 1, !dbg !845
  %and44 = and i64 %sub43, 72057594037927936, !dbg !845
  %tobool45 = icmp ne i64 %and44, 0, !dbg !845
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !845

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !845

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub48 = sub i64 %17, 1, !dbg !845
  %and49 = and i64 %sub48, 36028797018963968, !dbg !845
  %tobool50 = icmp ne i64 %and49, 0, !dbg !845
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !845

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !845

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub53 = sub i64 %18, 1, !dbg !845
  %and54 = and i64 %sub53, 18014398509481984, !dbg !845
  %tobool55 = icmp ne i64 %and54, 0, !dbg !845
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !845

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !845

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub58 = sub i64 %19, 1, !dbg !845
  %and59 = and i64 %sub58, 9007199254740992, !dbg !845
  %tobool60 = icmp ne i64 %and59, 0, !dbg !845
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !845

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !845

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub63 = sub i64 %20, 1, !dbg !845
  %and64 = and i64 %sub63, 4503599627370496, !dbg !845
  %tobool65 = icmp ne i64 %and64, 0, !dbg !845
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !845

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !845

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub68 = sub i64 %21, 1, !dbg !845
  %and69 = and i64 %sub68, 2251799813685248, !dbg !845
  %tobool70 = icmp ne i64 %and69, 0, !dbg !845
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !845

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !845

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub73 = sub i64 %22, 1, !dbg !845
  %and74 = and i64 %sub73, 1125899906842624, !dbg !845
  %tobool75 = icmp ne i64 %and74, 0, !dbg !845
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !845

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !845

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub78 = sub i64 %23, 1, !dbg !845
  %and79 = and i64 %sub78, 562949953421312, !dbg !845
  %tobool80 = icmp ne i64 %and79, 0, !dbg !845
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !845

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !845

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub83 = sub i64 %24, 1, !dbg !845
  %and84 = and i64 %sub83, 281474976710656, !dbg !845
  %tobool85 = icmp ne i64 %and84, 0, !dbg !845
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !845

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !845

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub88 = sub i64 %25, 1, !dbg !845
  %and89 = and i64 %sub88, 140737488355328, !dbg !845
  %tobool90 = icmp ne i64 %and89, 0, !dbg !845
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !845

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !845

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub93 = sub i64 %26, 1, !dbg !845
  %and94 = and i64 %sub93, 70368744177664, !dbg !845
  %tobool95 = icmp ne i64 %and94, 0, !dbg !845
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !845

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !845

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub98 = sub i64 %27, 1, !dbg !845
  %and99 = and i64 %sub98, 35184372088832, !dbg !845
  %tobool100 = icmp ne i64 %and99, 0, !dbg !845
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !845

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !845

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub103 = sub i64 %28, 1, !dbg !845
  %and104 = and i64 %sub103, 17592186044416, !dbg !845
  %tobool105 = icmp ne i64 %and104, 0, !dbg !845
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !845

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !845

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub108 = sub i64 %29, 1, !dbg !845
  %and109 = and i64 %sub108, 8796093022208, !dbg !845
  %tobool110 = icmp ne i64 %and109, 0, !dbg !845
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !845

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !845

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub113 = sub i64 %30, 1, !dbg !845
  %and114 = and i64 %sub113, 4398046511104, !dbg !845
  %tobool115 = icmp ne i64 %and114, 0, !dbg !845
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !845

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !845

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub118 = sub i64 %31, 1, !dbg !845
  %and119 = and i64 %sub118, 2199023255552, !dbg !845
  %tobool120 = icmp ne i64 %and119, 0, !dbg !845
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !845

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !845

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub123 = sub i64 %32, 1, !dbg !845
  %and124 = and i64 %sub123, 1099511627776, !dbg !845
  %tobool125 = icmp ne i64 %and124, 0, !dbg !845
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !845

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !845

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub128 = sub i64 %33, 1, !dbg !845
  %and129 = and i64 %sub128, 549755813888, !dbg !845
  %tobool130 = icmp ne i64 %and129, 0, !dbg !845
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !845

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !845

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub133 = sub i64 %34, 1, !dbg !845
  %and134 = and i64 %sub133, 274877906944, !dbg !845
  %tobool135 = icmp ne i64 %and134, 0, !dbg !845
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !845

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !845

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub138 = sub i64 %35, 1, !dbg !845
  %and139 = and i64 %sub138, 137438953472, !dbg !845
  %tobool140 = icmp ne i64 %and139, 0, !dbg !845
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !845

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !845

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub143 = sub i64 %36, 1, !dbg !845
  %and144 = and i64 %sub143, 68719476736, !dbg !845
  %tobool145 = icmp ne i64 %and144, 0, !dbg !845
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !845

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !845

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub148 = sub i64 %37, 1, !dbg !845
  %and149 = and i64 %sub148, 34359738368, !dbg !845
  %tobool150 = icmp ne i64 %and149, 0, !dbg !845
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !845

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !845

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub153 = sub i64 %38, 1, !dbg !845
  %and154 = and i64 %sub153, 17179869184, !dbg !845
  %tobool155 = icmp ne i64 %and154, 0, !dbg !845
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !845

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !845

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub158 = sub i64 %39, 1, !dbg !845
  %and159 = and i64 %sub158, 8589934592, !dbg !845
  %tobool160 = icmp ne i64 %and159, 0, !dbg !845
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !845

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !845

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub163 = sub i64 %40, 1, !dbg !845
  %and164 = and i64 %sub163, 4294967296, !dbg !845
  %tobool165 = icmp ne i64 %and164, 0, !dbg !845
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !845

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !845

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub168 = sub i64 %41, 1, !dbg !845
  %and169 = and i64 %sub168, 2147483648, !dbg !845
  %tobool170 = icmp ne i64 %and169, 0, !dbg !845
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !845

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !845

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub173 = sub i64 %42, 1, !dbg !845
  %and174 = and i64 %sub173, 1073741824, !dbg !845
  %tobool175 = icmp ne i64 %and174, 0, !dbg !845
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !845

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !845

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub178 = sub i64 %43, 1, !dbg !845
  %and179 = and i64 %sub178, 536870912, !dbg !845
  %tobool180 = icmp ne i64 %and179, 0, !dbg !845
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !845

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !845

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub183 = sub i64 %44, 1, !dbg !845
  %and184 = and i64 %sub183, 268435456, !dbg !845
  %tobool185 = icmp ne i64 %and184, 0, !dbg !845
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !845

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !845

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub188 = sub i64 %45, 1, !dbg !845
  %and189 = and i64 %sub188, 134217728, !dbg !845
  %tobool190 = icmp ne i64 %and189, 0, !dbg !845
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !845

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !845

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub193 = sub i64 %46, 1, !dbg !845
  %and194 = and i64 %sub193, 67108864, !dbg !845
  %tobool195 = icmp ne i64 %and194, 0, !dbg !845
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !845

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !845

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub198 = sub i64 %47, 1, !dbg !845
  %and199 = and i64 %sub198, 33554432, !dbg !845
  %tobool200 = icmp ne i64 %and199, 0, !dbg !845
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !845

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !845

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub203 = sub i64 %48, 1, !dbg !845
  %and204 = and i64 %sub203, 16777216, !dbg !845
  %tobool205 = icmp ne i64 %and204, 0, !dbg !845
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !845

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !845

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub208 = sub i64 %49, 1, !dbg !845
  %and209 = and i64 %sub208, 8388608, !dbg !845
  %tobool210 = icmp ne i64 %and209, 0, !dbg !845
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !845

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !845

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub213 = sub i64 %50, 1, !dbg !845
  %and214 = and i64 %sub213, 4194304, !dbg !845
  %tobool215 = icmp ne i64 %and214, 0, !dbg !845
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !845

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !845

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub218 = sub i64 %51, 1, !dbg !845
  %and219 = and i64 %sub218, 2097152, !dbg !845
  %tobool220 = icmp ne i64 %and219, 0, !dbg !845
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !845

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !845

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub223 = sub i64 %52, 1, !dbg !845
  %and224 = and i64 %sub223, 1048576, !dbg !845
  %tobool225 = icmp ne i64 %and224, 0, !dbg !845
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !845

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !845

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub228 = sub i64 %53, 1, !dbg !845
  %and229 = and i64 %sub228, 524288, !dbg !845
  %tobool230 = icmp ne i64 %and229, 0, !dbg !845
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !845

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !845

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub233 = sub i64 %54, 1, !dbg !845
  %and234 = and i64 %sub233, 262144, !dbg !845
  %tobool235 = icmp ne i64 %and234, 0, !dbg !845
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !845

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !845

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub238 = sub i64 %55, 1, !dbg !845
  %and239 = and i64 %sub238, 131072, !dbg !845
  %tobool240 = icmp ne i64 %and239, 0, !dbg !845
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !845

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !845

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub243 = sub i64 %56, 1, !dbg !845
  %and244 = and i64 %sub243, 65536, !dbg !845
  %tobool245 = icmp ne i64 %and244, 0, !dbg !845
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !845

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !845

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub248 = sub i64 %57, 1, !dbg !845
  %and249 = and i64 %sub248, 32768, !dbg !845
  %tobool250 = icmp ne i64 %and249, 0, !dbg !845
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !845

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !845

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub253 = sub i64 %58, 1, !dbg !845
  %and254 = and i64 %sub253, 16384, !dbg !845
  %tobool255 = icmp ne i64 %and254, 0, !dbg !845
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !845

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !845

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub258 = sub i64 %59, 1, !dbg !845
  %and259 = and i64 %sub258, 8192, !dbg !845
  %tobool260 = icmp ne i64 %and259, 0, !dbg !845
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !845

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !845

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub263 = sub i64 %60, 1, !dbg !845
  %and264 = and i64 %sub263, 4096, !dbg !845
  %tobool265 = icmp ne i64 %and264, 0, !dbg !845
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !845

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !845

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub268 = sub i64 %61, 1, !dbg !845
  %and269 = and i64 %sub268, 2048, !dbg !845
  %tobool270 = icmp ne i64 %and269, 0, !dbg !845
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !845

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !845

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub273 = sub i64 %62, 1, !dbg !845
  %and274 = and i64 %sub273, 1024, !dbg !845
  %tobool275 = icmp ne i64 %and274, 0, !dbg !845
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !845

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !845

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub278 = sub i64 %63, 1, !dbg !845
  %and279 = and i64 %sub278, 512, !dbg !845
  %tobool280 = icmp ne i64 %and279, 0, !dbg !845
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !845

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !845

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub283 = sub i64 %64, 1, !dbg !845
  %and284 = and i64 %sub283, 256, !dbg !845
  %tobool285 = icmp ne i64 %and284, 0, !dbg !845
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !845

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !845

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub288 = sub i64 %65, 1, !dbg !845
  %and289 = and i64 %sub288, 128, !dbg !845
  %tobool290 = icmp ne i64 %and289, 0, !dbg !845
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !845

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !845

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub293 = sub i64 %66, 1, !dbg !845
  %and294 = and i64 %sub293, 64, !dbg !845
  %tobool295 = icmp ne i64 %and294, 0, !dbg !845
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !845

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !845

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub298 = sub i64 %67, 1, !dbg !845
  %and299 = and i64 %sub298, 32, !dbg !845
  %tobool300 = icmp ne i64 %and299, 0, !dbg !845
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !845

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !845

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub303 = sub i64 %68, 1, !dbg !845
  %and304 = and i64 %sub303, 16, !dbg !845
  %tobool305 = icmp ne i64 %and304, 0, !dbg !845
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !845

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !845

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub308 = sub i64 %69, 1, !dbg !845
  %and309 = and i64 %sub308, 8, !dbg !845
  %tobool310 = icmp ne i64 %and309, 0, !dbg !845
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !845

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !845

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub313 = sub i64 %70, 1, !dbg !845
  %and314 = and i64 %sub313, 4, !dbg !845
  %tobool315 = icmp ne i64 %and314, 0, !dbg !845
  %71 = zext i1 %tobool315 to i64, !dbg !845
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !845
  br label %cond.end, !dbg !845

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !845
  br label %cond.end317, !dbg !845

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !845
  br label %cond.end319, !dbg !845

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !845
  br label %cond.end321, !dbg !845

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !845
  br label %cond.end323, !dbg !845

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !845
  br label %cond.end325, !dbg !845

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !845
  br label %cond.end327, !dbg !845

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !845
  br label %cond.end329, !dbg !845

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !845
  br label %cond.end331, !dbg !845

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !845
  br label %cond.end333, !dbg !845

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !845
  br label %cond.end335, !dbg !845

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !845
  br label %cond.end337, !dbg !845

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !845
  br label %cond.end339, !dbg !845

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !845
  br label %cond.end341, !dbg !845

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !845
  br label %cond.end343, !dbg !845

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !845
  br label %cond.end345, !dbg !845

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !845
  br label %cond.end347, !dbg !845

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !845
  br label %cond.end349, !dbg !845

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !845
  br label %cond.end351, !dbg !845

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !845
  br label %cond.end353, !dbg !845

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !845
  br label %cond.end355, !dbg !845

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !845
  br label %cond.end357, !dbg !845

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !845
  br label %cond.end359, !dbg !845

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !845
  br label %cond.end361, !dbg !845

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !845
  br label %cond.end363, !dbg !845

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !845
  br label %cond.end365, !dbg !845

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !845
  br label %cond.end367, !dbg !845

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !845
  br label %cond.end369, !dbg !845

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !845
  br label %cond.end371, !dbg !845

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !845
  br label %cond.end373, !dbg !845

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !845
  br label %cond.end375, !dbg !845

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !845
  br label %cond.end377, !dbg !845

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !845
  br label %cond.end379, !dbg !845

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !845
  br label %cond.end381, !dbg !845

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !845
  br label %cond.end383, !dbg !845

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !845
  br label %cond.end385, !dbg !845

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !845
  br label %cond.end387, !dbg !845

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !845
  br label %cond.end389, !dbg !845

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !845
  br label %cond.end391, !dbg !845

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !845
  br label %cond.end393, !dbg !845

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !845
  br label %cond.end395, !dbg !845

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !845
  br label %cond.end397, !dbg !845

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !845
  br label %cond.end399, !dbg !845

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !845
  br label %cond.end401, !dbg !845

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !845
  br label %cond.end403, !dbg !845

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !845
  br label %cond.end405, !dbg !845

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !845
  br label %cond.end407, !dbg !845

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !845
  br label %cond.end409, !dbg !845

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !845
  br label %cond.end411, !dbg !845

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !845
  br label %cond.end413, !dbg !845

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !845
  br label %cond.end415, !dbg !845

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !845
  br label %cond.end417, !dbg !845

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !845
  br label %cond.end419, !dbg !845

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !845
  br label %cond.end421, !dbg !845

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !845
  br label %cond.end423, !dbg !845

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !845
  br label %cond.end425, !dbg !845

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !845
  br label %cond.end427, !dbg !845

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !845
  br label %cond.end429, !dbg !845

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !845
  br label %cond.end431, !dbg !845

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !845
  br label %cond.end433, !dbg !845

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !845
  br label %cond.end435, !dbg !845

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !845
  br label %cond.end437, !dbg !845

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !845
  br label %cond.end440, !dbg !845

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !845

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !845
  br label %cond.end444, !dbg !845

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !845
  %sub443 = sub i64 %72, 1, !dbg !845
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !845
  br label %cond.end444, !dbg !845

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !845
  %sub446 = sub i32 %cond445, 12, !dbg !846
  %add = add i32 %sub446, 1, !dbg !847
  store i32 %add, i32* %retval, align 4, !dbg !848
  br label %return, !dbg !848

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !849
  %dec = add i64 %73, -1, !dbg !849
  store i64 %dec, i64* %size.addr, align 8, !dbg !849
  %74 = load i64, i64* %size.addr, align 8, !dbg !850
  %shr = lshr i64 %74, 12, !dbg !850
  store i64 %shr, i64* %size.addr, align 8, !dbg !850
  %75 = load i64, i64* %size.addr, align 8, !dbg !851
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !828
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !852
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !853
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !852, !srcloc !854
  store i32 %78, i32* %bitpos.i, align 4, !dbg !852
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !855
  %add.i = add i32 %79, 1, !dbg !856
  store i32 %add.i, i32* %retval, align 4, !dbg !857
  br label %return, !dbg !857

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !858
  ret i32 %80, !dbg !858
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !859 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !820, metadata !DIExpression()), !dbg !863
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !827, metadata !DIExpression()), !dbg !865
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !866, metadata !DIExpression()), !dbg !867
  %0 = load i64, i64* %n.addr, align 8, !dbg !868
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !865
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !869
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !870
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !869, !srcloc !854
  store i32 %3, i32* %bitpos.i, align 4, !dbg !869
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !871
  %add.i = add i32 %4, 1, !dbg !872
  %sub = sub i32 %add.i, 1, !dbg !873
  ret i32 %sub, !dbg !874
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !875 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !881, metadata !DIExpression()), !dbg !882
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !883, metadata !DIExpression()), !dbg !884
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !885, metadata !DIExpression()), !dbg !886
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !887, metadata !DIExpression()), !dbg !888
  %0 = load i8*, i8** %object.addr, align 8, !dbg !889
  ret i8* %0, !dbg !890
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !63, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/tbutils.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !20, !47, !48, !52, !21, !53, !16, !54, !55, !58, !60, !61}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !15, line: 421, baseType: !16)
!15 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !17, line: 21, baseType: !18)
!17 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !19, line: 27, baseType: !7)
!19 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !23, line: 68, size: 288, elements: !24)
!23 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !30, !31, !35, !36, !40, !44, !45, !46}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !22, file: !23, line: 69, baseType: !26, size: 32)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !28)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{!29}
!29 = !DISubrange(count: 4)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !22, file: !23, line: 70, baseType: !16, size: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !22, file: !23, line: 71, baseType: !32, size: 8, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !22, file: !23, line: 72, baseType: !32, size: 8, offset: 72)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !22, file: !23, line: 73, baseType: !37, size: 48, offset: 80)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 48, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 6)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !22, file: !23, line: 74, baseType: !41, size: 64, offset: 128)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 8)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !22, file: !23, line: 75, baseType: !16, size: 32, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !22, file: !23, line: 76, baseType: !26, size: 32, offset: 224)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !22, file: !23, line: 77, baseType: !16, size: 32, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !15, line: 127, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !17, line: 23, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !19, line: 31, baseType: !51)
!51 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !15, line: 129, baseType: !49)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !17, line: 19, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !19, line: 24, baseType: !57)
!57 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !59, line: 148, baseType: !7)
!59 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!60 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!62 = !{!0}
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !42)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!65 = !{!"rsp"}
!66 = !{i32 7, !"Dwarf Version", i32 4}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"Code Model", i32 2}
!70 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!71 = distinct !DISubprogram(name: "acpi_tb_initialize_facs", scope: !3, file: !3, line: 35, type: !72, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{!14}
!74 = !{}
!75 = !DILocalVariable(name: "facs", scope: !71, file: !3, line: 37, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_facs", file: !23, line: 162, size: 512, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !91, !92}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !77, file: !23, line: 163, baseType: !26, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !77, file: !23, line: 164, baseType: !16, size: 32, offset: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_signature", scope: !77, file: !23, line: 165, baseType: !16, size: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_waking_vector", scope: !77, file: !23, line: 166, baseType: !16, size: 32, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "global_lock", scope: !77, file: !23, line: 167, baseType: !16, size: 32, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !23, line: 168, baseType: !16, size: 32, offset: 160)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "xfirmware_waking_vector", scope: !77, file: !23, line: 169, baseType: !49, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !77, file: !23, line: 170, baseType: !32, size: 8, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !77, file: !23, line: 171, baseType: !88, size: 24, offset: 264)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 24, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 3)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ospm_flags", scope: !77, file: !23, line: 172, baseType: !16, size: 32, offset: 288)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !77, file: !23, line: 173, baseType: !93, size: 192, offset: 320)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 192, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 24)
!96 = !DILocation(line: 37, column: 26, scope: !71)
!97 = !DILocation(line: 41, column: 6, scope: !98)
!98 = distinct !DILexicalBlock(scope: !71, file: !3, line: 41, column: 6)
!99 = !DILocation(line: 41, column: 6, scope: !71)
!100 = !DILocation(line: 42, column: 17, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !3, line: 41, column: 33)
!102 = !DILocation(line: 43, column: 3, scope: !101)
!103 = !DILocation(line: 44, column: 27, scope: !104)
!104 = distinct !DILexicalBlock(scope: !98, file: !3, line: 44, column: 13)
!105 = !DILocation(line: 44, column: 13, scope: !104)
!106 = !DILocation(line: 44, column: 33, scope: !104)
!107 = !DILocation(line: 45, column: 22, scope: !104)
!108 = !DILocation(line: 45, column: 8, scope: !104)
!109 = !DILocation(line: 46, column: 7, scope: !104)
!110 = !DILocation(line: 46, column: 11, scope: !104)
!111 = !DILocation(line: 44, column: 13, scope: !98)
!112 = !DILocation(line: 47, column: 33, scope: !113)
!113 = distinct !DILexicalBlock(scope: !104, file: !3, line: 46, column: 47)
!114 = !DILocation(line: 48, column: 12, scope: !113)
!115 = !DILocation(line: 47, column: 9, scope: !113)
!116 = !DILocation(line: 51, column: 19, scope: !113)
!117 = !DILocation(line: 51, column: 17, scope: !113)
!118 = !DILocation(line: 52, column: 2, scope: !113)
!119 = !DILocation(line: 52, column: 27, scope: !120)
!120 = distinct !DILexicalBlock(scope: !104, file: !3, line: 52, column: 13)
!121 = !DILocation(line: 52, column: 13, scope: !120)
!122 = !DILocation(line: 52, column: 13, scope: !104)
!123 = !DILocation(line: 53, column: 33, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !3, line: 52, column: 33)
!125 = !DILocation(line: 54, column: 12, scope: !124)
!126 = !DILocation(line: 53, column: 9, scope: !124)
!127 = !DILocation(line: 57, column: 19, scope: !124)
!128 = !DILocation(line: 57, column: 17, scope: !124)
!129 = !DILocation(line: 58, column: 2, scope: !124)
!130 = !DILocation(line: 62, column: 2, scope: !71)
!131 = !DILocation(line: 63, column: 1, scope: !71)
!132 = distinct !DISubprogram(name: "acpi_tb_check_dsdt_header", scope: !3, file: !3, line: 80, type: !133, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!133 = !DISubroutineType(types: !134)
!134 = !{null}
!135 = !DILocation(line: 85, column: 36, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !3, line: 85, column: 6)
!137 = !DILocation(line: 85, column: 46, scope: !136)
!138 = !DILocation(line: 85, column: 61, scope: !136)
!139 = !DILocation(line: 85, column: 43, scope: !136)
!140 = !DILocation(line: 85, column: 68, scope: !136)
!141 = !DILocation(line: 86, column: 36, scope: !136)
!142 = !DILocation(line: 86, column: 6, scope: !136)
!143 = !DILocation(line: 86, column: 48, scope: !136)
!144 = !DILocation(line: 86, column: 63, scope: !136)
!145 = !DILocation(line: 86, column: 45, scope: !136)
!146 = !DILocation(line: 85, column: 6, scope: !132)
!147 = !DILocation(line: 87, column: 3, scope: !148)
!148 = distinct !DILexicalBlock(scope: !136, file: !3, line: 86, column: 73)
!149 = !DILocation(line: 91, column: 3, scope: !148)
!150 = !DILocation(line: 92, column: 33, scope: !148)
!151 = !DILocation(line: 92, column: 3, scope: !148)
!152 = !DILocation(line: 94, column: 3, scope: !148)
!153 = !DILocation(line: 100, column: 42, scope: !148)
!154 = !DILocation(line: 100, column: 57, scope: !148)
!155 = !DILocation(line: 100, column: 40, scope: !148)
!156 = !DILocation(line: 102, column: 7, scope: !148)
!157 = !DILocation(line: 102, column: 22, scope: !148)
!158 = !DILocation(line: 101, column: 42, scope: !148)
!159 = !DILocation(line: 103, column: 2, scope: !148)
!160 = !DILocation(line: 104, column: 1, scope: !132)
!161 = distinct !DISubprogram(name: "acpi_tb_copy_dsdt", scope: !3, file: !3, line: 120, type: !162, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!162 = !DISubroutineType(types: !163)
!163 = !{!21, !16}
!164 = !DILocalVariable(name: "table_index", arg: 1, scope: !161, file: !3, line: 120, type: !16)
!165 = !DILocation(line: 120, column: 49, scope: !161)
!166 = !DILocalVariable(name: "new_table", scope: !161, file: !3, line: 122, type: !21)
!167 = !DILocation(line: 122, column: 28, scope: !161)
!168 = !DILocalVariable(name: "table_desc", scope: !161, file: !3, line: 123, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !23, line: 334, size: 256, elements: !171)
!171 = !{!172, !173, !174, !175, !180, !182, !183}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !170, file: !23, line: 335, baseType: !53, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !170, file: !23, line: 336, baseType: !21, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !170, file: !23, line: 337, baseType: !16, size: 32, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !170, file: !23, line: 338, baseType: !176, size: 32, offset: 160)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !23, line: 327, size: 32, elements: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !176, file: !23, line: 328, baseType: !16, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !176, file: !23, line: 329, baseType: !26, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !170, file: !23, line: 339, baseType: !181, size: 16, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !15, line: 445, baseType: !55)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !170, file: !23, line: 340, baseType: !32, size: 8, offset: 208)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !170, file: !23, line: 341, baseType: !55, size: 16, offset: 224)
!184 = !DILocation(line: 123, column: 26, scope: !161)
!185 = !DILocation(line: 125, column: 41, scope: !161)
!186 = !DILocation(line: 125, column: 48, scope: !161)
!187 = !DILocation(line: 125, column: 16, scope: !161)
!188 = !DILocation(line: 125, column: 13, scope: !161)
!189 = !DILocation(line: 127, column: 14, scope: !161)
!190 = !DILocation(line: 127, column: 12, scope: !161)
!191 = !DILocation(line: 128, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !161, file: !3, line: 128, column: 6)
!193 = !DILocation(line: 128, column: 6, scope: !161)
!194 = !DILocation(line: 129, column: 3, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !3, line: 128, column: 18)
!196 = !DILocation(line: 131, column: 3, scope: !195)
!197 = !DILocation(line: 134, column: 9, scope: !161)
!198 = !DILocation(line: 134, column: 2, scope: !161)
!199 = !DILocation(line: 134, column: 20, scope: !161)
!200 = !DILocation(line: 134, column: 32, scope: !161)
!201 = !DILocation(line: 134, column: 41, scope: !161)
!202 = !DILocation(line: 134, column: 53, scope: !161)
!203 = !DILocation(line: 135, column: 26, scope: !161)
!204 = !DILocation(line: 135, column: 2, scope: !161)
!205 = !DILocation(line: 138, column: 11, scope: !161)
!206 = !DILocation(line: 138, column: 18, scope: !161)
!207 = !DILocation(line: 137, column: 33, scope: !161)
!208 = !DILocation(line: 139, column: 11, scope: !161)
!209 = !DILocation(line: 141, column: 11, scope: !161)
!210 = !DILocation(line: 137, column: 2, scope: !161)
!211 = !DILocation(line: 143, column: 2, scope: !161)
!212 = !DILocation(line: 145, column: 10, scope: !161)
!213 = !DILocation(line: 145, column: 2, scope: !161)
!214 = !DILocation(line: 146, column: 1, scope: !161)
!215 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !216, file: !216, line: 50, type: !217, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!216 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!217 = !DISubroutineType(types: !218)
!218 = !{!47, !48}
!219 = !DILocalVariable(name: "s", arg: 1, scope: !220, file: !6, line: 445, type: !223)
!220 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !221, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!221 = !DISubroutineType(types: !222)
!222 = !{!47, !223, !58, !226}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !225, line: 117, flags: DIFlagFwdDecl)
!225 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 55, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !228, line: 72, baseType: !229)
!228 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !228, line: 16, baseType: !60)
!230 = !DILocation(line: 445, column: 72, scope: !220, inlinedAt: !231)
!231 = distinct !DILocation(line: 552, column: 10, scope: !232, inlinedAt: !237)
!232 = distinct !DILexicalBlock(scope: !233, file: !6, line: 540, column: 34)
!233 = distinct !DILexicalBlock(scope: !234, file: !6, line: 540, column: 6)
!234 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !235, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!235 = !DISubroutineType(types: !236)
!236 = !{!47, !226, !58}
!237 = distinct !DILocation(line: 52, column: 9, scope: !215)
!238 = !DILocalVariable(name: "flags", arg: 2, scope: !220, file: !6, line: 446, type: !58)
!239 = !DILocation(line: 446, column: 9, scope: !220, inlinedAt: !231)
!240 = !DILocalVariable(name: "size", arg: 3, scope: !220, file: !6, line: 446, type: !226)
!241 = !DILocation(line: 446, column: 23, scope: !220, inlinedAt: !231)
!242 = !DILocalVariable(name: "ret", scope: !220, file: !6, line: 448, type: !47)
!243 = !DILocation(line: 448, column: 8, scope: !220, inlinedAt: !231)
!244 = !DILocalVariable(name: "flags", arg: 1, scope: !245, file: !6, line: 318, type: !58)
!245 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !246, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!246 = !DISubroutineType(types: !247)
!247 = !{!5, !58}
!248 = !DILocation(line: 318, column: 67, scope: !245, inlinedAt: !249)
!249 = distinct !DILocation(line: 553, column: 20, scope: !232, inlinedAt: !237)
!250 = !DILocalVariable(name: "size", arg: 1, scope: !251, file: !6, line: 346, type: !226)
!251 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !252, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!252 = !DISubroutineType(types: !253)
!253 = !{!7, !226}
!254 = !DILocation(line: 346, column: 58, scope: !251, inlinedAt: !255)
!255 = distinct !DILocation(line: 547, column: 11, scope: !232, inlinedAt: !237)
!256 = !DILocalVariable(name: "size", arg: 1, scope: !257, file: !6, line: 472, type: !226)
!257 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !258, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!258 = !DISubroutineType(types: !259)
!259 = !{!47, !226, !58, !7}
!260 = !DILocation(line: 472, column: 28, scope: !257, inlinedAt: !261)
!261 = distinct !DILocation(line: 481, column: 9, scope: !262, inlinedAt: !263)
!262 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !235, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!263 = distinct !DILocation(line: 545, column: 11, scope: !264, inlinedAt: !237)
!264 = distinct !DILexicalBlock(scope: !232, file: !6, line: 544, column: 7)
!265 = !DILocalVariable(name: "flags", arg: 2, scope: !257, file: !6, line: 472, type: !58)
!266 = !DILocation(line: 472, column: 40, scope: !257, inlinedAt: !261)
!267 = !DILocalVariable(name: "order", arg: 3, scope: !257, file: !6, line: 472, type: !7)
!268 = !DILocation(line: 472, column: 60, scope: !257, inlinedAt: !261)
!269 = !DILocalVariable(name: "size", arg: 1, scope: !262, file: !6, line: 478, type: !226)
!270 = !DILocation(line: 478, column: 51, scope: !262, inlinedAt: !263)
!271 = !DILocalVariable(name: "flags", arg: 2, scope: !262, file: !6, line: 478, type: !58)
!272 = !DILocation(line: 478, column: 63, scope: !262, inlinedAt: !263)
!273 = !DILocalVariable(name: "order", scope: !262, file: !6, line: 480, type: !7)
!274 = !DILocation(line: 480, column: 15, scope: !262, inlinedAt: !263)
!275 = !DILocalVariable(name: "size", arg: 1, scope: !234, file: !6, line: 538, type: !226)
!276 = !DILocation(line: 538, column: 45, scope: !234, inlinedAt: !237)
!277 = !DILocalVariable(name: "flags", arg: 2, scope: !234, file: !6, line: 538, type: !58)
!278 = !DILocation(line: 538, column: 57, scope: !234, inlinedAt: !237)
!279 = !DILocalVariable(name: "index", scope: !232, file: !6, line: 542, type: !7)
!280 = !DILocation(line: 542, column: 16, scope: !232, inlinedAt: !237)
!281 = !DILocalVariable(name: "flags", arg: 1, scope: !282, file: !283, line: 162, type: !60)
!282 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !283, file: !283, line: 162, type: !284, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!283 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!284 = !DISubroutineType(types: !285)
!285 = !{!286, !60}
!286 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!287 = !DILocation(line: 162, column: 67, scope: !282, inlinedAt: !288)
!288 = distinct !DILocation(line: 52, column: 23, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !216, line: 52, column: 23)
!290 = distinct !DILexicalBlock(scope: !215, file: !216, line: 52, column: 23)
!291 = !DILocalVariable(name: "size", arg: 1, scope: !215, file: !216, line: 50, type: !48)
!292 = !DILocation(line: 50, column: 48, scope: !215)
!293 = !DILocation(line: 52, column: 17, scope: !215)
!294 = !DILocalVariable(name: "_flags", scope: !290, file: !216, line: 52, type: !60)
!295 = !DILocation(line: 52, column: 23, scope: !290)
!296 = !DILocalVariable(name: "__dummy", scope: !297, file: !216, line: 52, type: !60)
!297 = distinct !DILexicalBlock(scope: !298, file: !216, line: 52, column: 23)
!298 = distinct !DILexicalBlock(scope: !290, file: !216, line: 52, column: 23)
!299 = !DILocation(line: 52, column: 23, scope: !297)
!300 = !DILocalVariable(name: "__dummy2", scope: !297, file: !216, line: 52, type: !60)
!301 = !DILocation(line: 52, column: 23, scope: !298)
!302 = !DILocalVariable(name: "__dummy", scope: !303, file: !216, line: 52, type: !60)
!303 = distinct !DILexicalBlock(scope: !289, file: !216, line: 52, column: 23)
!304 = !DILocation(line: 52, column: 23, scope: !303)
!305 = !DILocalVariable(name: "__dummy2", scope: !303, file: !216, line: 52, type: !60)
!306 = !DILocation(line: 52, column: 23, scope: !289)
!307 = !DILocation(line: 164, column: 11, scope: !282, inlinedAt: !288)
!308 = !DILocation(line: 164, column: 17, scope: !282, inlinedAt: !288)
!309 = !DILocation(line: 164, column: 9, scope: !282, inlinedAt: !288)
!310 = !DILocation(line: 52, column: 23, scope: !215)
!311 = !DILocation(line: 540, column: 27, scope: !233, inlinedAt: !237)
!312 = !DILocation(line: 540, column: 6, scope: !233, inlinedAt: !237)
!313 = !DILocation(line: 540, column: 6, scope: !234, inlinedAt: !237)
!314 = !DILocation(line: 544, column: 7, scope: !264, inlinedAt: !237)
!315 = !DILocation(line: 544, column: 12, scope: !264, inlinedAt: !237)
!316 = !DILocation(line: 544, column: 7, scope: !232, inlinedAt: !237)
!317 = !DILocation(line: 545, column: 25, scope: !264, inlinedAt: !237)
!318 = !DILocation(line: 545, column: 31, scope: !264, inlinedAt: !237)
!319 = !DILocation(line: 480, column: 33, scope: !262, inlinedAt: !263)
!320 = !DILocation(line: 480, column: 23, scope: !262, inlinedAt: !263)
!321 = !DILocation(line: 481, column: 29, scope: !262, inlinedAt: !263)
!322 = !DILocation(line: 481, column: 35, scope: !262, inlinedAt: !263)
!323 = !DILocation(line: 481, column: 42, scope: !262, inlinedAt: !263)
!324 = !DILocation(line: 474, column: 23, scope: !257, inlinedAt: !261)
!325 = !DILocation(line: 474, column: 29, scope: !257, inlinedAt: !261)
!326 = !DILocation(line: 474, column: 36, scope: !257, inlinedAt: !261)
!327 = !DILocation(line: 474, column: 9, scope: !257, inlinedAt: !261)
!328 = !DILocation(line: 545, column: 4, scope: !264, inlinedAt: !237)
!329 = !DILocation(line: 547, column: 25, scope: !232, inlinedAt: !237)
!330 = !DILocation(line: 348, column: 7, scope: !331, inlinedAt: !255)
!331 = distinct !DILexicalBlock(scope: !251, file: !6, line: 348, column: 6)
!332 = !DILocation(line: 348, column: 6, scope: !251, inlinedAt: !255)
!333 = !DILocation(line: 349, column: 3, scope: !331, inlinedAt: !255)
!334 = !DILocation(line: 351, column: 6, scope: !335, inlinedAt: !255)
!335 = distinct !DILexicalBlock(scope: !251, file: !6, line: 351, column: 6)
!336 = !DILocation(line: 351, column: 11, scope: !335, inlinedAt: !255)
!337 = !DILocation(line: 351, column: 6, scope: !251, inlinedAt: !255)
!338 = !DILocation(line: 352, column: 3, scope: !335, inlinedAt: !255)
!339 = !DILocation(line: 354, column: 32, scope: !340, inlinedAt: !255)
!340 = distinct !DILexicalBlock(scope: !251, file: !6, line: 354, column: 6)
!341 = !DILocation(line: 354, column: 37, scope: !340, inlinedAt: !255)
!342 = !DILocation(line: 354, column: 42, scope: !340, inlinedAt: !255)
!343 = !DILocation(line: 354, column: 45, scope: !340, inlinedAt: !255)
!344 = !DILocation(line: 354, column: 50, scope: !340, inlinedAt: !255)
!345 = !DILocation(line: 354, column: 6, scope: !251, inlinedAt: !255)
!346 = !DILocation(line: 355, column: 3, scope: !340, inlinedAt: !255)
!347 = !DILocation(line: 356, column: 32, scope: !348, inlinedAt: !255)
!348 = distinct !DILexicalBlock(scope: !251, file: !6, line: 356, column: 6)
!349 = !DILocation(line: 356, column: 37, scope: !348, inlinedAt: !255)
!350 = !DILocation(line: 356, column: 43, scope: !348, inlinedAt: !255)
!351 = !DILocation(line: 356, column: 46, scope: !348, inlinedAt: !255)
!352 = !DILocation(line: 356, column: 51, scope: !348, inlinedAt: !255)
!353 = !DILocation(line: 356, column: 6, scope: !251, inlinedAt: !255)
!354 = !DILocation(line: 357, column: 3, scope: !348, inlinedAt: !255)
!355 = !DILocation(line: 358, column: 6, scope: !356, inlinedAt: !255)
!356 = distinct !DILexicalBlock(scope: !251, file: !6, line: 358, column: 6)
!357 = !DILocation(line: 358, column: 11, scope: !356, inlinedAt: !255)
!358 = !DILocation(line: 358, column: 6, scope: !251, inlinedAt: !255)
!359 = !DILocation(line: 358, column: 26, scope: !356, inlinedAt: !255)
!360 = !DILocation(line: 359, column: 6, scope: !361, inlinedAt: !255)
!361 = distinct !DILexicalBlock(scope: !251, file: !6, line: 359, column: 6)
!362 = !DILocation(line: 359, column: 11, scope: !361, inlinedAt: !255)
!363 = !DILocation(line: 359, column: 6, scope: !251, inlinedAt: !255)
!364 = !DILocation(line: 359, column: 26, scope: !361, inlinedAt: !255)
!365 = !DILocation(line: 360, column: 6, scope: !366, inlinedAt: !255)
!366 = distinct !DILexicalBlock(scope: !251, file: !6, line: 360, column: 6)
!367 = !DILocation(line: 360, column: 11, scope: !366, inlinedAt: !255)
!368 = !DILocation(line: 360, column: 6, scope: !251, inlinedAt: !255)
!369 = !DILocation(line: 360, column: 26, scope: !366, inlinedAt: !255)
!370 = !DILocation(line: 361, column: 6, scope: !371, inlinedAt: !255)
!371 = distinct !DILexicalBlock(scope: !251, file: !6, line: 361, column: 6)
!372 = !DILocation(line: 361, column: 11, scope: !371, inlinedAt: !255)
!373 = !DILocation(line: 361, column: 6, scope: !251, inlinedAt: !255)
!374 = !DILocation(line: 361, column: 26, scope: !371, inlinedAt: !255)
!375 = !DILocation(line: 362, column: 6, scope: !376, inlinedAt: !255)
!376 = distinct !DILexicalBlock(scope: !251, file: !6, line: 362, column: 6)
!377 = !DILocation(line: 362, column: 11, scope: !376, inlinedAt: !255)
!378 = !DILocation(line: 362, column: 6, scope: !251, inlinedAt: !255)
!379 = !DILocation(line: 362, column: 26, scope: !376, inlinedAt: !255)
!380 = !DILocation(line: 363, column: 6, scope: !381, inlinedAt: !255)
!381 = distinct !DILexicalBlock(scope: !251, file: !6, line: 363, column: 6)
!382 = !DILocation(line: 363, column: 11, scope: !381, inlinedAt: !255)
!383 = !DILocation(line: 363, column: 6, scope: !251, inlinedAt: !255)
!384 = !DILocation(line: 363, column: 26, scope: !381, inlinedAt: !255)
!385 = !DILocation(line: 364, column: 6, scope: !386, inlinedAt: !255)
!386 = distinct !DILexicalBlock(scope: !251, file: !6, line: 364, column: 6)
!387 = !DILocation(line: 364, column: 11, scope: !386, inlinedAt: !255)
!388 = !DILocation(line: 364, column: 6, scope: !251, inlinedAt: !255)
!389 = !DILocation(line: 364, column: 26, scope: !386, inlinedAt: !255)
!390 = !DILocation(line: 365, column: 6, scope: !391, inlinedAt: !255)
!391 = distinct !DILexicalBlock(scope: !251, file: !6, line: 365, column: 6)
!392 = !DILocation(line: 365, column: 11, scope: !391, inlinedAt: !255)
!393 = !DILocation(line: 365, column: 6, scope: !251, inlinedAt: !255)
!394 = !DILocation(line: 365, column: 26, scope: !391, inlinedAt: !255)
!395 = !DILocation(line: 366, column: 6, scope: !396, inlinedAt: !255)
!396 = distinct !DILexicalBlock(scope: !251, file: !6, line: 366, column: 6)
!397 = !DILocation(line: 366, column: 11, scope: !396, inlinedAt: !255)
!398 = !DILocation(line: 366, column: 6, scope: !251, inlinedAt: !255)
!399 = !DILocation(line: 366, column: 26, scope: !396, inlinedAt: !255)
!400 = !DILocation(line: 367, column: 6, scope: !401, inlinedAt: !255)
!401 = distinct !DILexicalBlock(scope: !251, file: !6, line: 367, column: 6)
!402 = !DILocation(line: 367, column: 11, scope: !401, inlinedAt: !255)
!403 = !DILocation(line: 367, column: 6, scope: !251, inlinedAt: !255)
!404 = !DILocation(line: 367, column: 26, scope: !401, inlinedAt: !255)
!405 = !DILocation(line: 368, column: 6, scope: !406, inlinedAt: !255)
!406 = distinct !DILexicalBlock(scope: !251, file: !6, line: 368, column: 6)
!407 = !DILocation(line: 368, column: 11, scope: !406, inlinedAt: !255)
!408 = !DILocation(line: 368, column: 6, scope: !251, inlinedAt: !255)
!409 = !DILocation(line: 368, column: 26, scope: !406, inlinedAt: !255)
!410 = !DILocation(line: 369, column: 6, scope: !411, inlinedAt: !255)
!411 = distinct !DILexicalBlock(scope: !251, file: !6, line: 369, column: 6)
!412 = !DILocation(line: 369, column: 11, scope: !411, inlinedAt: !255)
!413 = !DILocation(line: 369, column: 6, scope: !251, inlinedAt: !255)
!414 = !DILocation(line: 369, column: 26, scope: !411, inlinedAt: !255)
!415 = !DILocation(line: 370, column: 6, scope: !416, inlinedAt: !255)
!416 = distinct !DILexicalBlock(scope: !251, file: !6, line: 370, column: 6)
!417 = !DILocation(line: 370, column: 11, scope: !416, inlinedAt: !255)
!418 = !DILocation(line: 370, column: 6, scope: !251, inlinedAt: !255)
!419 = !DILocation(line: 370, column: 26, scope: !416, inlinedAt: !255)
!420 = !DILocation(line: 371, column: 6, scope: !421, inlinedAt: !255)
!421 = distinct !DILexicalBlock(scope: !251, file: !6, line: 371, column: 6)
!422 = !DILocation(line: 371, column: 11, scope: !421, inlinedAt: !255)
!423 = !DILocation(line: 371, column: 6, scope: !251, inlinedAt: !255)
!424 = !DILocation(line: 371, column: 26, scope: !421, inlinedAt: !255)
!425 = !DILocation(line: 372, column: 6, scope: !426, inlinedAt: !255)
!426 = distinct !DILexicalBlock(scope: !251, file: !6, line: 372, column: 6)
!427 = !DILocation(line: 372, column: 11, scope: !426, inlinedAt: !255)
!428 = !DILocation(line: 372, column: 6, scope: !251, inlinedAt: !255)
!429 = !DILocation(line: 372, column: 26, scope: !426, inlinedAt: !255)
!430 = !DILocation(line: 373, column: 6, scope: !431, inlinedAt: !255)
!431 = distinct !DILexicalBlock(scope: !251, file: !6, line: 373, column: 6)
!432 = !DILocation(line: 373, column: 11, scope: !431, inlinedAt: !255)
!433 = !DILocation(line: 373, column: 6, scope: !251, inlinedAt: !255)
!434 = !DILocation(line: 373, column: 26, scope: !431, inlinedAt: !255)
!435 = !DILocation(line: 374, column: 6, scope: !436, inlinedAt: !255)
!436 = distinct !DILexicalBlock(scope: !251, file: !6, line: 374, column: 6)
!437 = !DILocation(line: 374, column: 11, scope: !436, inlinedAt: !255)
!438 = !DILocation(line: 374, column: 6, scope: !251, inlinedAt: !255)
!439 = !DILocation(line: 374, column: 26, scope: !436, inlinedAt: !255)
!440 = !DILocation(line: 375, column: 6, scope: !441, inlinedAt: !255)
!441 = distinct !DILexicalBlock(scope: !251, file: !6, line: 375, column: 6)
!442 = !DILocation(line: 375, column: 11, scope: !441, inlinedAt: !255)
!443 = !DILocation(line: 375, column: 6, scope: !251, inlinedAt: !255)
!444 = !DILocation(line: 375, column: 27, scope: !441, inlinedAt: !255)
!445 = !DILocation(line: 376, column: 6, scope: !446, inlinedAt: !255)
!446 = distinct !DILexicalBlock(scope: !251, file: !6, line: 376, column: 6)
!447 = !DILocation(line: 376, column: 11, scope: !446, inlinedAt: !255)
!448 = !DILocation(line: 376, column: 6, scope: !251, inlinedAt: !255)
!449 = !DILocation(line: 376, column: 32, scope: !446, inlinedAt: !255)
!450 = !DILocation(line: 377, column: 6, scope: !451, inlinedAt: !255)
!451 = distinct !DILexicalBlock(scope: !251, file: !6, line: 377, column: 6)
!452 = !DILocation(line: 377, column: 11, scope: !451, inlinedAt: !255)
!453 = !DILocation(line: 377, column: 6, scope: !251, inlinedAt: !255)
!454 = !DILocation(line: 377, column: 32, scope: !451, inlinedAt: !255)
!455 = !DILocation(line: 378, column: 6, scope: !456, inlinedAt: !255)
!456 = distinct !DILexicalBlock(scope: !251, file: !6, line: 378, column: 6)
!457 = !DILocation(line: 378, column: 11, scope: !456, inlinedAt: !255)
!458 = !DILocation(line: 378, column: 6, scope: !251, inlinedAt: !255)
!459 = !DILocation(line: 378, column: 32, scope: !456, inlinedAt: !255)
!460 = !DILocation(line: 379, column: 6, scope: !461, inlinedAt: !255)
!461 = distinct !DILexicalBlock(scope: !251, file: !6, line: 379, column: 6)
!462 = !DILocation(line: 379, column: 11, scope: !461, inlinedAt: !255)
!463 = !DILocation(line: 379, column: 6, scope: !251, inlinedAt: !255)
!464 = !DILocation(line: 379, column: 33, scope: !461, inlinedAt: !255)
!465 = !DILocation(line: 380, column: 6, scope: !466, inlinedAt: !255)
!466 = distinct !DILexicalBlock(scope: !251, file: !6, line: 380, column: 6)
!467 = !DILocation(line: 380, column: 11, scope: !466, inlinedAt: !255)
!468 = !DILocation(line: 380, column: 6, scope: !251, inlinedAt: !255)
!469 = !DILocation(line: 380, column: 33, scope: !466, inlinedAt: !255)
!470 = !DILocation(line: 381, column: 6, scope: !471, inlinedAt: !255)
!471 = distinct !DILexicalBlock(scope: !251, file: !6, line: 381, column: 6)
!472 = !DILocation(line: 381, column: 11, scope: !471, inlinedAt: !255)
!473 = !DILocation(line: 381, column: 6, scope: !251, inlinedAt: !255)
!474 = !DILocation(line: 381, column: 33, scope: !471, inlinedAt: !255)
!475 = !DILocation(line: 382, column: 2, scope: !476, inlinedAt: !255)
!476 = distinct !DILexicalBlock(scope: !477, file: !6, line: 382, column: 2)
!477 = distinct !DILexicalBlock(scope: !251, file: !6, line: 382, column: 2)
!478 = !{i32 -2144106973, i32 -2144106944, i32 -2144106898, i32 -2144106840, i32 -2144106786, i32 -2144106732, i32 -2144106677, i32 -2144106646}
!479 = !DILocation(line: 382, column: 2, scope: !480, inlinedAt: !255)
!480 = distinct !DILexicalBlock(scope: !481, file: !6, line: 382, column: 2)
!481 = distinct !DILexicalBlock(scope: !477, file: !6, line: 382, column: 2)
!482 = !{i32 -2144106203, i32 -2144106196, i32 -2144106142, i32 -2144106111, i32 -2144106081}
!483 = !DILocation(line: 382, column: 2, scope: !481, inlinedAt: !255)
!484 = !DILocation(line: 386, column: 1, scope: !251, inlinedAt: !255)
!485 = !DILocation(line: 547, column: 9, scope: !232, inlinedAt: !237)
!486 = !DILocation(line: 549, column: 8, scope: !487, inlinedAt: !237)
!487 = distinct !DILexicalBlock(scope: !232, file: !6, line: 549, column: 7)
!488 = !DILocation(line: 549, column: 7, scope: !232, inlinedAt: !237)
!489 = !DILocation(line: 550, column: 4, scope: !487, inlinedAt: !237)
!490 = !DILocation(line: 553, column: 33, scope: !232, inlinedAt: !237)
!491 = !DILocation(line: 325, column: 6, scope: !492, inlinedAt: !249)
!492 = distinct !DILexicalBlock(scope: !245, file: !6, line: 325, column: 6)
!493 = !DILocation(line: 325, column: 6, scope: !245, inlinedAt: !249)
!494 = !DILocation(line: 326, column: 3, scope: !492, inlinedAt: !249)
!495 = !DILocation(line: 332, column: 9, scope: !245, inlinedAt: !249)
!496 = !DILocation(line: 332, column: 15, scope: !245, inlinedAt: !249)
!497 = !DILocation(line: 332, column: 2, scope: !245, inlinedAt: !249)
!498 = !DILocation(line: 336, column: 1, scope: !245, inlinedAt: !249)
!499 = !DILocation(line: 553, column: 5, scope: !232, inlinedAt: !237)
!500 = !DILocation(line: 553, column: 41, scope: !232, inlinedAt: !237)
!501 = !DILocation(line: 554, column: 5, scope: !232, inlinedAt: !237)
!502 = !DILocation(line: 554, column: 12, scope: !232, inlinedAt: !237)
!503 = !DILocation(line: 448, column: 31, scope: !220, inlinedAt: !231)
!504 = !DILocation(line: 448, column: 34, scope: !220, inlinedAt: !231)
!505 = !DILocation(line: 448, column: 14, scope: !220, inlinedAt: !231)
!506 = !DILocation(line: 450, column: 22, scope: !220, inlinedAt: !231)
!507 = !DILocation(line: 450, column: 25, scope: !220, inlinedAt: !231)
!508 = !DILocation(line: 450, column: 30, scope: !220, inlinedAt: !231)
!509 = !DILocation(line: 450, column: 36, scope: !220, inlinedAt: !231)
!510 = !DILocation(line: 450, column: 8, scope: !220, inlinedAt: !231)
!511 = !DILocation(line: 450, column: 6, scope: !220, inlinedAt: !231)
!512 = !DILocation(line: 451, column: 9, scope: !220, inlinedAt: !231)
!513 = !DILocation(line: 552, column: 3, scope: !232, inlinedAt: !237)
!514 = !DILocation(line: 557, column: 19, scope: !234, inlinedAt: !237)
!515 = !DILocation(line: 557, column: 25, scope: !234, inlinedAt: !237)
!516 = !DILocation(line: 557, column: 9, scope: !234, inlinedAt: !237)
!517 = !DILocation(line: 557, column: 2, scope: !234, inlinedAt: !237)
!518 = !DILocation(line: 558, column: 1, scope: !234, inlinedAt: !237)
!519 = !DILocation(line: 52, column: 2, scope: !215)
!520 = distinct !DISubprogram(name: "acpi_tb_parse_root_table", scope: !3, file: !3, line: 222, type: !521, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!521 = !DISubroutineType(types: !522)
!522 = !{!14, !53}
!523 = !DILocalVariable(name: "rsdp_address", arg: 1, scope: !520, file: !3, line: 222, type: !53)
!524 = !DILocation(line: 222, column: 48, scope: !520)
!525 = !DILocalVariable(name: "rsdp", scope: !520, file: !3, line: 224, type: !526)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_rsdp", file: !23, line: 105, size: 288, elements: !528)
!528 = !{!529, !530, !531, !532, !533, !534, !535, !536, !537}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !527, file: !23, line: 106, baseType: !41, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !527, file: !23, line: 107, baseType: !32, size: 8, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !527, file: !23, line: 108, baseType: !37, size: 48, offset: 72)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !527, file: !23, line: 109, baseType: !32, size: 8, offset: 120)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rsdt_physical_address", scope: !527, file: !23, line: 110, baseType: !16, size: 32, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !527, file: !23, line: 111, baseType: !16, size: 32, offset: 160)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "xsdt_physical_address", scope: !527, file: !23, line: 112, baseType: !49, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "extended_checksum", scope: !527, file: !23, line: 113, baseType: !32, size: 8, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !527, file: !23, line: 114, baseType: !88, size: 24, offset: 264)
!538 = !DILocation(line: 224, column: 26, scope: !520)
!539 = !DILocalVariable(name: "table_entry_size", scope: !520, file: !3, line: 225, type: !16)
!540 = !DILocation(line: 225, column: 6, scope: !520)
!541 = !DILocalVariable(name: "i", scope: !520, file: !3, line: 226, type: !16)
!542 = !DILocation(line: 226, column: 6, scope: !520)
!543 = !DILocalVariable(name: "table_count", scope: !520, file: !3, line: 227, type: !16)
!544 = !DILocation(line: 227, column: 6, scope: !520)
!545 = !DILocalVariable(name: "table", scope: !520, file: !3, line: 228, type: !21)
!546 = !DILocation(line: 228, column: 28, scope: !520)
!547 = !DILocalVariable(name: "address", scope: !520, file: !3, line: 229, type: !53)
!548 = !DILocation(line: 229, column: 24, scope: !520)
!549 = !DILocalVariable(name: "length", scope: !520, file: !3, line: 230, type: !16)
!550 = !DILocation(line: 230, column: 6, scope: !520)
!551 = !DILocalVariable(name: "table_entry", scope: !520, file: !3, line: 231, type: !52)
!552 = !DILocation(line: 231, column: 6, scope: !520)
!553 = !DILocalVariable(name: "status", scope: !520, file: !3, line: 232, type: !14)
!554 = !DILocation(line: 232, column: 14, scope: !520)
!555 = !DILocalVariable(name: "table_index", scope: !520, file: !3, line: 233, type: !16)
!556 = !DILocation(line: 233, column: 6, scope: !520)
!557 = !DILocation(line: 239, column: 28, scope: !520)
!558 = !DILocation(line: 239, column: 9, scope: !520)
!559 = !DILocation(line: 239, column: 7, scope: !520)
!560 = !DILocation(line: 240, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !520, file: !3, line: 240, column: 6)
!562 = !DILocation(line: 240, column: 6, scope: !520)
!563 = !DILocation(line: 241, column: 3, scope: !564)
!564 = distinct !DILexicalBlock(scope: !561, file: !3, line: 240, column: 13)
!565 = !DILocation(line: 244, column: 29, scope: !520)
!566 = !DILocation(line: 245, column: 8, scope: !520)
!567 = !DILocation(line: 244, column: 2, scope: !520)
!568 = !DILocation(line: 250, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !520, file: !3, line: 250, column: 6)
!570 = !DILocation(line: 250, column: 13, scope: !569)
!571 = !DILocation(line: 250, column: 22, scope: !569)
!572 = !DILocation(line: 250, column: 27, scope: !569)
!573 = !DILocation(line: 251, column: 6, scope: !569)
!574 = !DILocation(line: 251, column: 12, scope: !569)
!575 = !DILocation(line: 251, column: 34, scope: !569)
!576 = !DILocation(line: 251, column: 38, scope: !569)
!577 = !DILocation(line: 250, column: 6, scope: !520)
!578 = !DILocation(line: 257, column: 36, scope: !579)
!579 = distinct !DILexicalBlock(scope: !569, file: !3, line: 251, column: 64)
!580 = !DILocation(line: 257, column: 42, scope: !579)
!581 = !DILocation(line: 257, column: 11, scope: !579)
!582 = !DILocation(line: 258, column: 20, scope: !579)
!583 = !DILocation(line: 259, column: 2, scope: !579)
!584 = !DILocation(line: 262, column: 36, scope: !585)
!585 = distinct !DILexicalBlock(scope: !569, file: !3, line: 259, column: 9)
!586 = !DILocation(line: 262, column: 42, scope: !585)
!587 = !DILocation(line: 262, column: 13, scope: !585)
!588 = !DILocation(line: 262, column: 11, scope: !585)
!589 = !DILocation(line: 263, column: 20, scope: !585)
!590 = !DILocation(line: 270, column: 23, scope: !520)
!591 = !DILocation(line: 270, column: 2, scope: !520)
!592 = !DILocation(line: 274, column: 29, scope: !520)
!593 = !DILocation(line: 274, column: 10, scope: !520)
!594 = !DILocation(line: 274, column: 8, scope: !520)
!595 = !DILocation(line: 275, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !520, file: !3, line: 275, column: 6)
!597 = !DILocation(line: 275, column: 6, scope: !520)
!598 = !DILocation(line: 276, column: 3, scope: !599)
!599 = distinct !DILexicalBlock(scope: !596, file: !3, line: 275, column: 14)
!600 = !DILocation(line: 279, column: 29, scope: !520)
!601 = !DILocation(line: 279, column: 38, scope: !520)
!602 = !DILocation(line: 279, column: 2, scope: !520)
!603 = !DILocation(line: 285, column: 11, scope: !520)
!604 = !DILocation(line: 285, column: 18, scope: !520)
!605 = !DILocation(line: 285, column: 9, scope: !520)
!606 = !DILocation(line: 286, column: 23, scope: !520)
!607 = !DILocation(line: 286, column: 2, scope: !520)
!608 = !DILocation(line: 288, column: 6, scope: !609)
!609 = distinct !DILexicalBlock(scope: !520, file: !3, line: 288, column: 6)
!610 = !DILocation(line: 288, column: 51, scope: !609)
!611 = !DILocation(line: 288, column: 49, scope: !609)
!612 = !DILocation(line: 288, column: 13, scope: !609)
!613 = !DILocation(line: 288, column: 6, scope: !520)
!614 = !DILocation(line: 289, column: 3, scope: !615)
!615 = distinct !DILexicalBlock(scope: !609, file: !3, line: 288, column: 70)
!616 = !DILocation(line: 292, column: 3, scope: !615)
!617 = !DILocation(line: 295, column: 29, scope: !520)
!618 = !DILocation(line: 295, column: 38, scope: !520)
!619 = !DILocation(line: 295, column: 10, scope: !520)
!620 = !DILocation(line: 295, column: 8, scope: !520)
!621 = !DILocation(line: 296, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !520, file: !3, line: 296, column: 6)
!623 = !DILocation(line: 296, column: 6, scope: !520)
!624 = !DILocation(line: 297, column: 3, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !3, line: 296, column: 14)
!626 = !DILocation(line: 302, column: 35, scope: !520)
!627 = !DILocation(line: 302, column: 42, scope: !520)
!628 = !DILocation(line: 302, column: 11, scope: !520)
!629 = !DILocation(line: 302, column: 9, scope: !520)
!630 = !DILocation(line: 303, column: 6, scope: !631)
!631 = distinct !DILexicalBlock(scope: !520, file: !3, line: 303, column: 6)
!632 = !DILocation(line: 303, column: 6, scope: !520)
!633 = !DILocation(line: 304, column: 24, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !3, line: 303, column: 28)
!635 = !DILocation(line: 304, column: 31, scope: !634)
!636 = !DILocation(line: 304, column: 3, scope: !634)
!637 = !DILocation(line: 305, column: 3, scope: !634)
!638 = !DILocation(line: 310, column: 23, scope: !520)
!639 = !DILocation(line: 310, column: 30, scope: !520)
!640 = !DILocation(line: 310, column: 37, scope: !520)
!641 = !DILocation(line: 311, column: 8, scope: !520)
!642 = !DILocation(line: 310, column: 73, scope: !520)
!643 = !DILocation(line: 310, column: 16, scope: !520)
!644 = !DILocation(line: 310, column: 14, scope: !520)
!645 = !DILocation(line: 312, column: 16, scope: !520)
!646 = !DILocation(line: 312, column: 14, scope: !520)
!647 = !DILocation(line: 316, column: 9, scope: !648)
!648 = distinct !DILexicalBlock(scope: !520, file: !3, line: 316, column: 2)
!649 = !DILocation(line: 316, column: 7, scope: !648)
!650 = !DILocation(line: 316, column: 14, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !3, line: 316, column: 2)
!652 = !DILocation(line: 316, column: 18, scope: !651)
!653 = !DILocation(line: 316, column: 16, scope: !651)
!654 = !DILocation(line: 316, column: 2, scope: !648)
!655 = !DILocation(line: 321, column: 36, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !3, line: 316, column: 36)
!657 = !DILocation(line: 321, column: 49, scope: !656)
!658 = !DILocation(line: 321, column: 7, scope: !656)
!659 = !DILocation(line: 320, column: 11, scope: !656)
!660 = !DILocation(line: 325, column: 8, scope: !661)
!661 = distinct !DILexicalBlock(scope: !656, file: !3, line: 325, column: 7)
!662 = !DILocation(line: 325, column: 7, scope: !656)
!663 = !DILocation(line: 326, column: 4, scope: !664)
!664 = distinct !DILexicalBlock(scope: !661, file: !3, line: 325, column: 17)
!665 = !DILocation(line: 329, column: 43, scope: !656)
!666 = !DILocation(line: 329, column: 12, scope: !656)
!667 = !DILocation(line: 329, column: 10, scope: !656)
!668 = !DILocation(line: 334, column: 7, scope: !669)
!669 = distinct !DILexicalBlock(scope: !656, file: !3, line: 334, column: 7)
!670 = !DILocation(line: 334, column: 28, scope: !669)
!671 = !DILocation(line: 335, column: 7, scope: !669)
!672 = !DILocation(line: 334, column: 7, scope: !656)
!673 = !DILocation(line: 338, column: 26, scope: !674)
!674 = distinct !DILexicalBlock(scope: !669, file: !3, line: 337, column: 23)
!675 = !DILocation(line: 338, column: 24, scope: !674)
!676 = !DILocation(line: 339, column: 4, scope: !674)
!677 = !DILocation(line: 340, column: 3, scope: !674)
!678 = !DILabel(scope: !656, name: "next_table", file: !3, line: 342)
!679 = !DILocation(line: 342, column: 1, scope: !656)
!680 = !DILocation(line: 344, column: 18, scope: !656)
!681 = !DILocation(line: 344, column: 15, scope: !656)
!682 = !DILocation(line: 345, column: 2, scope: !656)
!683 = !DILocation(line: 316, column: 32, scope: !651)
!684 = !DILocation(line: 316, column: 2, scope: !651)
!685 = distinct !{!685, !654, !686}
!686 = !DILocation(line: 345, column: 2, scope: !648)
!687 = !DILocation(line: 347, column: 23, scope: !520)
!688 = !DILocation(line: 347, column: 30, scope: !520)
!689 = !DILocation(line: 347, column: 2, scope: !520)
!690 = !DILocation(line: 348, column: 2, scope: !520)
!691 = !DILocation(line: 349, column: 1, scope: !520)
!692 = distinct !DISubprogram(name: "acpi_tb_get_root_table_entry", scope: !3, file: !3, line: 166, type: !693, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!693 = !DISubroutineType(types: !694)
!694 = !{!53, !52, !16}
!695 = !DILocalVariable(name: "table_entry", arg: 1, scope: !692, file: !3, line: 166, type: !52)
!696 = !DILocation(line: 166, column: 34, scope: !692)
!697 = !DILocalVariable(name: "table_entry_size", arg: 2, scope: !692, file: !3, line: 166, type: !16)
!698 = !DILocation(line: 166, column: 51, scope: !692)
!699 = !DILocalVariable(name: "address64", scope: !692, file: !3, line: 168, type: !49)
!700 = !DILocation(line: 168, column: 6, scope: !692)
!701 = !DILocation(line: 174, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !692, file: !3, line: 174, column: 6)
!703 = !DILocation(line: 174, column: 23, scope: !702)
!704 = !DILocation(line: 174, column: 6, scope: !692)
!705 = !DILocation(line: 180, column: 6, scope: !706)
!706 = distinct !DILexicalBlock(scope: !702, file: !3, line: 174, column: 48)
!707 = !DILocation(line: 180, column: 5, scope: !706)
!708 = !DILocation(line: 179, column: 11, scope: !706)
!709 = !DILocation(line: 179, column: 3, scope: !706)
!710 = !DILocation(line: 187, column: 3, scope: !711)
!711 = distinct !DILexicalBlock(scope: !702, file: !3, line: 181, column: 9)
!712 = !DILocation(line: 200, column: 35, scope: !711)
!713 = !DILocation(line: 200, column: 3, scope: !711)
!714 = !DILocation(line: 202, column: 1, scope: !692)
!715 = distinct !DISubprogram(name: "acpi_tb_get_table", scope: !3, file: !3, line: 368, type: !716, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!716 = !DISubroutineType(types: !717)
!717 = !{!14, !169, !20}
!718 = !DILocalVariable(name: "table_desc", arg: 1, scope: !715, file: !3, line: 368, type: !169)
!719 = !DILocation(line: 368, column: 43, scope: !715)
!720 = !DILocalVariable(name: "out_table", arg: 2, scope: !715, file: !3, line: 369, type: !20)
!721 = !DILocation(line: 369, column: 32, scope: !715)
!722 = !DILocalVariable(name: "status", scope: !715, file: !3, line: 371, type: !14)
!723 = !DILocation(line: 371, column: 14, scope: !715)
!724 = !DILocation(line: 375, column: 6, scope: !725)
!725 = distinct !DILexicalBlock(scope: !715, file: !3, line: 375, column: 6)
!726 = !DILocation(line: 375, column: 18, scope: !725)
!727 = !DILocation(line: 375, column: 35, scope: !725)
!728 = !DILocation(line: 375, column: 6, scope: !715)
!729 = !DILocation(line: 379, column: 35, scope: !730)
!730 = distinct !DILexicalBlock(scope: !725, file: !3, line: 375, column: 41)
!731 = !DILocation(line: 379, column: 12, scope: !730)
!732 = !DILocation(line: 379, column: 10, scope: !730)
!733 = !DILocation(line: 380, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !3, line: 380, column: 7)
!735 = !DILocation(line: 380, column: 7, scope: !730)
!736 = !DILocation(line: 381, column: 4, scope: !737)
!737 = distinct !DILexicalBlock(scope: !734, file: !3, line: 380, column: 29)
!738 = !DILocation(line: 383, column: 2, scope: !730)
!739 = !DILocation(line: 385, column: 6, scope: !740)
!740 = distinct !DILexicalBlock(scope: !715, file: !3, line: 385, column: 6)
!741 = !DILocation(line: 385, column: 18, scope: !740)
!742 = !DILocation(line: 385, column: 35, scope: !740)
!743 = !DILocation(line: 385, column: 6, scope: !715)
!744 = !DILocation(line: 386, column: 3, scope: !745)
!745 = distinct !DILexicalBlock(scope: !740, file: !3, line: 385, column: 65)
!746 = !DILocation(line: 386, column: 15, scope: !745)
!747 = !DILocation(line: 386, column: 31, scope: !745)
!748 = !DILocation(line: 392, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !745, file: !3, line: 392, column: 7)
!750 = !DILocation(line: 392, column: 19, scope: !749)
!751 = !DILocation(line: 392, column: 36, scope: !749)
!752 = !DILocation(line: 392, column: 7, scope: !745)
!753 = !DILocation(line: 393, column: 4, scope: !754)
!754 = distinct !DILexicalBlock(scope: !749, file: !3, line: 392, column: 67)
!755 = !DILocation(line: 396, column: 3, scope: !754)
!756 = !DILocation(line: 397, column: 2, scope: !745)
!757 = !DILocation(line: 399, column: 15, scope: !715)
!758 = !DILocation(line: 399, column: 27, scope: !715)
!759 = !DILocation(line: 399, column: 3, scope: !715)
!760 = !DILocation(line: 399, column: 13, scope: !715)
!761 = !DILocation(line: 400, column: 2, scope: !715)
!762 = !DILocation(line: 401, column: 1, scope: !715)
!763 = distinct !DISubprogram(name: "acpi_tb_put_table", scope: !3, file: !3, line: 418, type: !764, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !169}
!766 = !DILocalVariable(name: "table_desc", arg: 1, scope: !763, file: !3, line: 418, type: !169)
!767 = !DILocation(line: 418, column: 48, scope: !763)
!768 = !DILocation(line: 423, column: 6, scope: !769)
!769 = distinct !DILexicalBlock(scope: !763, file: !3, line: 423, column: 6)
!770 = !DILocation(line: 423, column: 18, scope: !769)
!771 = !DILocation(line: 423, column: 35, scope: !769)
!772 = !DILocation(line: 423, column: 6, scope: !763)
!773 = !DILocation(line: 424, column: 3, scope: !774)
!774 = distinct !DILexicalBlock(scope: !769, file: !3, line: 423, column: 65)
!775 = !DILocation(line: 424, column: 15, scope: !774)
!776 = !DILocation(line: 424, column: 31, scope: !774)
!777 = !DILocation(line: 430, column: 7, scope: !778)
!778 = distinct !DILexicalBlock(scope: !774, file: !3, line: 430, column: 7)
!779 = !DILocation(line: 430, column: 19, scope: !778)
!780 = !DILocation(line: 430, column: 36, scope: !778)
!781 = !DILocation(line: 430, column: 7, scope: !774)
!782 = !DILocation(line: 431, column: 4, scope: !783)
!783 = distinct !DILexicalBlock(scope: !778, file: !3, line: 430, column: 67)
!784 = !DILocation(line: 434, column: 4, scope: !783)
!785 = !DILocation(line: 436, column: 2, scope: !774)
!786 = !DILocation(line: 438, column: 6, scope: !787)
!787 = distinct !DILexicalBlock(scope: !763, file: !3, line: 438, column: 6)
!788 = !DILocation(line: 438, column: 18, scope: !787)
!789 = !DILocation(line: 438, column: 35, scope: !787)
!790 = !DILocation(line: 438, column: 6, scope: !763)
!791 = !DILocation(line: 442, column: 28, scope: !792)
!792 = distinct !DILexicalBlock(scope: !787, file: !3, line: 438, column: 41)
!793 = !DILocation(line: 442, column: 3, scope: !792)
!794 = !DILocation(line: 443, column: 2, scope: !792)
!795 = !DILocation(line: 445, column: 2, scope: !763)
!796 = !DILocation(line: 446, column: 1, scope: !763)
!797 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !798, file: !798, line: 646, type: !799, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!798 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!799 = !DISubroutineType(types: !800)
!800 = !{!60}
!801 = !DILocalVariable(name: "__ret", scope: !802, file: !798, line: 648, type: !60)
!802 = distinct !DILexicalBlock(scope: !797, file: !798, line: 648, column: 9)
!803 = !DILocation(line: 648, column: 9, scope: !802)
!804 = !DILocalVariable(name: "__edi", scope: !802, file: !798, line: 648, type: !60)
!805 = !DILocalVariable(name: "__esi", scope: !802, file: !798, line: 648, type: !60)
!806 = !DILocalVariable(name: "__edx", scope: !802, file: !798, line: 648, type: !60)
!807 = !DILocalVariable(name: "__ecx", scope: !802, file: !798, line: 648, type: !60)
!808 = !DILocalVariable(name: "__eax", scope: !802, file: !798, line: 648, type: !60)
!809 = !DILocation(line: 648, column: 9, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !798, line: 648, column: 9)
!811 = distinct !DILexicalBlock(scope: !802, file: !798, line: 648, column: 9)
!812 = !{i32 -2145780579, i32 -2145778264, i32 -2145778030, i32 -2145777979, i32 -2145777951, i32 -2145777926, i32 -2145778242, i32 -2145778229, i32 -2145777791, i32 -2145777672, i32 -2145778137, i32 -2145778110, i32 -2145778082, i32 -2145778052}
!813 = !DILocalVariable(name: "__mask", scope: !814, file: !798, line: 648, type: !60)
!814 = distinct !DILexicalBlock(scope: !810, file: !798, line: 648, column: 9)
!815 = !DILocation(line: 648, column: 9, scope: !814)
!816 = !DILocation(line: 648, column: 9, scope: !811)
!817 = !DILocation(line: 648, column: 2, scope: !797)
!818 = distinct !DISubprogram(name: "get_order", scope: !819, file: !819, line: 29, type: !284, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!819 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!820 = !DILocalVariable(name: "x", arg: 1, scope: !821, file: !822, line: 366, type: !50)
!821 = distinct !DISubprogram(name: "fls64", scope: !822, file: !822, line: 366, type: !823, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!822 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!823 = !DISubroutineType(types: !824)
!824 = !{!286, !50}
!825 = !DILocation(line: 366, column: 40, scope: !821, inlinedAt: !826)
!826 = distinct !DILocation(line: 46, column: 9, scope: !818)
!827 = !DILocalVariable(name: "bitpos", scope: !821, file: !822, line: 368, type: !286)
!828 = !DILocation(line: 368, column: 6, scope: !821, inlinedAt: !826)
!829 = !DILocalVariable(name: "size", arg: 1, scope: !818, file: !819, line: 29, type: !60)
!830 = !DILocation(line: 29, column: 63, scope: !818)
!831 = !DILocation(line: 31, column: 27, scope: !832)
!832 = distinct !DILexicalBlock(scope: !818, file: !819, line: 31, column: 6)
!833 = !DILocation(line: 31, column: 6, scope: !832)
!834 = !DILocation(line: 31, column: 6, scope: !818)
!835 = !DILocation(line: 32, column: 8, scope: !836)
!836 = distinct !DILexicalBlock(scope: !837, file: !819, line: 32, column: 7)
!837 = distinct !DILexicalBlock(scope: !832, file: !819, line: 31, column: 34)
!838 = !DILocation(line: 32, column: 7, scope: !837)
!839 = !DILocation(line: 33, column: 4, scope: !836)
!840 = !DILocation(line: 35, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !819, line: 35, column: 7)
!842 = !DILocation(line: 35, column: 12, scope: !841)
!843 = !DILocation(line: 35, column: 7, scope: !837)
!844 = !DILocation(line: 36, column: 4, scope: !841)
!845 = !DILocation(line: 38, column: 10, scope: !837)
!846 = !DILocation(line: 38, column: 28, scope: !837)
!847 = !DILocation(line: 38, column: 41, scope: !837)
!848 = !DILocation(line: 38, column: 3, scope: !837)
!849 = !DILocation(line: 41, column: 6, scope: !818)
!850 = !DILocation(line: 42, column: 7, scope: !818)
!851 = !DILocation(line: 46, column: 15, scope: !818)
!852 = !DILocation(line: 374, column: 2, scope: !821, inlinedAt: !826)
!853 = !DILocation(line: 376, column: 14, scope: !821, inlinedAt: !826)
!854 = !{i32 664229}
!855 = !DILocation(line: 377, column: 9, scope: !821, inlinedAt: !826)
!856 = !DILocation(line: 377, column: 16, scope: !821, inlinedAt: !826)
!857 = !DILocation(line: 46, column: 2, scope: !818)
!858 = !DILocation(line: 48, column: 1, scope: !818)
!859 = distinct !DISubprogram(name: "__ilog2_u64", scope: !860, file: !860, line: 30, type: !861, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!860 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!861 = !DISubroutineType(types: !862)
!862 = !{!286, !49}
!863 = !DILocation(line: 366, column: 40, scope: !821, inlinedAt: !864)
!864 = distinct !DILocation(line: 32, column: 9, scope: !859)
!865 = !DILocation(line: 368, column: 6, scope: !821, inlinedAt: !864)
!866 = !DILocalVariable(name: "n", arg: 1, scope: !859, file: !860, line: 30, type: !49)
!867 = !DILocation(line: 30, column: 21, scope: !859)
!868 = !DILocation(line: 32, column: 15, scope: !859)
!869 = !DILocation(line: 374, column: 2, scope: !821, inlinedAt: !864)
!870 = !DILocation(line: 376, column: 14, scope: !821, inlinedAt: !864)
!871 = !DILocation(line: 377, column: 9, scope: !821, inlinedAt: !864)
!872 = !DILocation(line: 377, column: 16, scope: !821, inlinedAt: !864)
!873 = !DILocation(line: 32, column: 18, scope: !859)
!874 = !DILocation(line: 32, column: 2, scope: !859)
!875 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !876, file: !876, line: 137, type: !877, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!876 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!877 = !DISubroutineType(types: !878)
!878 = !{!47, !223, !879, !226, !58}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!881 = !DILocalVariable(name: "s", arg: 1, scope: !875, file: !876, line: 137, type: !223)
!882 = !DILocation(line: 137, column: 54, scope: !875)
!883 = !DILocalVariable(name: "object", arg: 2, scope: !875, file: !876, line: 137, type: !879)
!884 = !DILocation(line: 137, column: 69, scope: !875)
!885 = !DILocalVariable(name: "size", arg: 3, scope: !875, file: !876, line: 138, type: !226)
!886 = !DILocation(line: 138, column: 12, scope: !875)
!887 = !DILocalVariable(name: "flags", arg: 4, scope: !875, file: !876, line: 138, type: !58)
!888 = !DILocation(line: 138, column: 24, scope: !875)
!889 = !DILocation(line: 140, column: 17, scope: !875)
!890 = !DILocation(line: 140, column: 2, scope: !875)
